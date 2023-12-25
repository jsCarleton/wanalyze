open Core

type loop_metric_info =
{
  prefix_cost:      Et.et;  (* the cost of the prefix portion of the loop *)
  loop_cost:        Et.et;  (* cost of the loop portion of the loop *)
  loop_cond:        Et.et;  (* the condition under which the loop iterates *)
  loop_vars:        Et.var list;    (* the names of the variables that appear in the loop_cond *)
  lv_entry_vals:    Ssa.ssa list;   (* loop variable values, in ssa form, at the beginning of the loop *)
  lv_loop_vals:     Ssa.ssa list;   (* loop variable values, in sss form, when the branchback block has been executed *)
}

type loop_metric = Infinite | LMI of loop_metric_info

type loop_path_parts =
{
  prefix_part:  Cp.cp;  (* the code path that leads to the loop *)
  loop_part:    Cp.cp;  (* the code path inside the loop *)
}

let classify_cond (lm: loop_metric): string =
  let rec has_function (cond: Et.et): bool =
    match cond with
    | Empty | Constant _ | Variable _ | ExprList _ -> false
    | Node n when (String.compare n.op "R") = 0 -> true
    | Node n -> List.exists ~f:has_function n.args
  in
  let rec operator_ok (cond: Et.et): bool =
    let op_list = [">"; "<"; "="; "<="; ">="; "i32.eqz"; "+"; "-"; "not"; "=="; "!="] in
    match cond with
    | Empty | Constant _ | Variable _ | ExprList _ -> true
    | Node n when not (List.exists ~f:(fun x -> String.compare x n.op = 0) op_list) -> false
    | Node n -> List.for_all ~f:(fun x -> operator_ok x) n.args
  in

  let classify_cond' (cond: Et.et): string =
    if has_function cond then 
      ("Function")
    else
      (if operator_ok cond then
        ("OK")
      else
        ("Constraint complex"))
  in

  match lm with
  | Infinite -> "infinite"
  | LMI lmi -> classify_cond' lmi.loop_cond

let string_of_lm (lm: loop_metric): string =
  match lm with
  | Infinite -> "infinite"
  | LMI lmi ->
    String.concat ~sep:"\n" [
      Et.string_of_et lmi.loop_cond;
      String.concat ~sep:";" (List.map ~f:Et.string_of_var lmi.loop_vars);
      String.concat ~sep:";" (List.map ~f:Ssa.string_of_ssa lmi.lv_entry_vals);
      String.concat ~sep:";" (List.map ~f:Ssa.string_of_ssa lmi.lv_loop_vals)
    ]

type cond_site =
{
    cond_bb:    Bb.bb;  (* basic block where the evaluation of the condition is done *)
    sense:      bool;   (* if false then the condition must be negated *)
}

let site_of_nesting_if (lp: Cp.cp): cond_site option =
  let cond_bb_o =
    List.find 
      ~f:(fun bb -> match bb.bbtype with | BB_if | BB_else | BB_br_if | BB_br_table -> true | _ -> false)
      (List.rev lp) in
  match cond_bb_o with
  | None -> None
  | Some cond_bb ->
      begin
        match cond_bb.bbtype with 
          | BB_if       -> Some {cond_bb; sense=true}
          | BB_else     -> 
              let cond_bb =
                List.find_exn 
                    ~f:(fun bb -> match bb.bbtype with | BB_if | BB_br_if -> true | _ -> false)
                    (List.rev lp) in
                (* negate *) Some {cond_bb; sense=false}
          | BB_br_if    ->  (* negate *) Some {cond_bb; sense=false}
          | BB_br_table -> Some {cond_bb; sense=true}
          | _           -> failwith "TODO handle this bbtype"
      end

let cost_of_loop (ctx: Ex.execution_context) (bback: Bb.bb) (lp: loop_path_parts): loop_metric =
  (* a key part of this is locating the bb that the condition of the loop is tested ... *)
  let cs_o =
    (match bback.bbtype with
        | BB_br_if      -> Some {cond_bb = bback; sense = true}
        | BB_br
        | BB_br_table   -> site_of_nesting_if lp.loop_part
        | _             -> failwith "Invalid branchback bb"
    ) in
  match cs_o with
  | None    -> Infinite
  | Some cs ->
    let _, loop_cond = Ex.reduce_bblock ctx.w 
        (Cp.expr_of_codepath ctx.w_e lp.loop_part cs.cond_bb)
        (Ex.empty_program_state ctx.w ctx.param_types ctx.local_types) in
    let loop_vars     = Et.vars_of_et loop_cond in
    let prefix_ssa    = Ssa.ssa_of_codepath ctx lp.prefix_part true in
    let lv_entry_vals = List.map ~f:(Ssa.explode_var prefix_ssa) loop_vars in
    let loop_ssa      = Ssa.ssa_of_codepath ctx lp.loop_part false in
    let lv_loop_vals  = List.map ~f:(Ssa.explode_var loop_ssa) loop_vars in
    LMI { prefix_cost = Cp.cost_of_codepath ctx.w_e lp.prefix_part;
            loop_cost = Cp.cost_of_codepath ctx.w_e lp.loop_part;
            loop_cond = if cs.sense then loop_cond else Node { op = "not"; op_disp = Et.Function; args = [loop_cond]};
            loop_vars;
            lv_entry_vals;
            lv_loop_vals}
 
(*
    cost_of_bb_path

    Given a source and destination bb determine the cost of the highest-cost path from
    the source to the destination.

    Parameters:
      src:    source bblock
      dst:    dest bblock

    Returns:
      cost
*)

(* path cost info - the max cost from the start bb to terminal *)
type path_cost_info = {terminal: Bb.bb; mutable path: Bb.bb list; mutable cost: int}

let rec path_cost' (start_bb: Bb.bb) (end_bb: Bb.bb) (pcil: path_cost_info list): path_cost_info =

  (* pc1 > pc2 if path is deeper or if equal depth then cost is greater *)
  let pci_compare (pci1: path_cost_info) (pci2: path_cost_info): int =
    if pci1.terminal.bbindex = pci2.terminal.bbindex then
      pci1.cost - pci2.cost
    else
      pci1.terminal.bbindex - pci2.terminal.bbindex
  in

  let bb_match (bblock: Bb.bb) (pci: path_cost_info): bool =
    bblock.bbindex = pci.terminal.bbindex
  in

  let update_pcil (pci: path_cost_info) (pcil: path_cost_info list) (succ_bb: Bb.bb): path_cost_info list =
    match List.find ~f:(bb_match succ_bb) pcil with
    | Some succ_pci 
        ->  (if pci.cost + (Bb.cost_of_bb pci.terminal) > succ_pci.cost then
            begin
              succ_pci.path <- pci.terminal::pci.path;
              succ_pci.cost <- pci.cost + (Bb.cost_of_bb pci.terminal)
            end
            else
              ());
            pcil
    | None
        -> {terminal=succ_bb; path=pci.terminal::pci.path; cost=pci.cost + (Bb.cost_of_bb pci.terminal)}::pcil
  in

  match pcil with
  | [] -> {terminal = start_bb; path = []; cost = -1}
  | _  ->
    (* doing a depth first traversal *)
    let pcil' = List.sort ~compare:pci_compare pcil in
    let next_pci = List.hd_exn pcil' in
    match next_pci.terminal with
    | next_bb when next_bb.bbindex = end_bb.bbindex
        -> {terminal = next_pci.terminal; 
                path = List.rev (next_pci.terminal::next_pci.path); 
                cost = next_pci.cost + (Bb.cost_of_bb end_bb)}
    | next_bb when next_bb.bbindex <= end_bb.bbindex
        -> path_cost' start_bb end_bb 
                      (List.fold ~init:(List.tl_exn pcil') ~f:(update_pcil next_pci) 
                        (List.filter ~f:(fun x -> x.bbindex > next_bb.bbindex && x.bbindex <= end_bb.bbindex) next_bb.succ))
    | _ ->  {terminal = start_bb; path = []; cost = -1}

let cost_of_bb_path (start_bb: Bb.bb) (end_bb: Bb.bb): int =
  let pci = path_cost' start_bb end_bb [{terminal=start_bb; path=[]; cost=0}] in
    pci.cost

(*
    max_cost_paths

    Given a list of basic blocks and a list of exit basic blocks return a list
    of basic block paths that are the maximum cost paths in the list that terminate
    at each of the exits.

    Parameters:
      src:    source bblock
      dst:    dest bblock

    Returns:
      cost
*)

let max_cost_paths (path_bbs: Bb.bb list) (exit_bbs: Bb.bb list): Bb.bb list list =

  let pci_of_bb_path (start_bb: Bb.bb) (end_bb: Bb.bb): path_cost_info =
    path_cost' start_bb end_bb [{terminal=start_bb; path=[]; cost=0}]
  in

  List.map ~f:(fun pci -> pci.path) (List.map ~f:(pci_of_bb_path (List.hd_exn path_bbs)) exit_bbs)
