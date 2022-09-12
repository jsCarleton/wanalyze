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

(* TODO this isn't right and might not be needed *)
let compare_metrics (lm1: loop_metric) (lm2: loop_metric): int =
  match lm1, lm2 with
  | Infinite, Infinite  -> 0
  | Infinite, _         -> 1
  | _, Infinite         -> -1
  | LMI m1, LMI m2      ->
      if String.compare (Et.string_of_et m1.prefix_cost) (Et.string_of_et m2.prefix_cost) = 0 then
        if String.compare (Et.string_of_et m1.loop_cost) (Et.string_of_et m2.loop_cost) = 0 then
          String.compare (Et.string_of_et m1.loop_cond) (Et.string_of_et m2.loop_cond)
        else
          String.compare (Et.string_of_et m1.loop_cost) (Et.string_of_et m2.loop_cost) 
      else
        String.compare (Et.string_of_et m1.prefix_cost) (Et.string_of_et m2.prefix_cost)

let rec all_loops (prefixes: Cp.cp list) (loop_paths: Cp.cp list) (all_loop_paths: Cp.cp list) (acc: loop_path_parts list):
          loop_path_parts list =
  match prefixes, loop_paths with
  | [], _        -> acc
  | _::tl1, []   -> all_loops tl1 all_loop_paths all_loop_paths acc
  | _, hd2::tl2  -> all_loops prefixes tl2 all_loop_paths ({prefix_part = (List.hd_exn prefixes); loop_part = hd2}::acc)    

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

(* TODO do we need both symbolic execution and SSA to do this? *)
let cost_of_loop (ctx: Ex.execution_context) (bback: Bb.bb) (lp: loop_path_parts): loop_metric =
  (* a key part of this is locating the bb that the condition of the loop is tested ... *)
  let cs_o =
    (match bback.bbtype with
        | BB_br_if      -> Some {cond_bb = bback; sense = true}
        | BB_br
        | BB_br_table   -> site_of_nesting_if lp.loop_part
        | _             -> failwith "Invalid branchback bb"
    ) in
  (* TODO we're getting the loop cond by executing just the loop_part. is this right? couldn't it be the case
    that there's a side effect of the prefix_part that the loop needs? *)
  match cs_o with
  | None    -> Infinite
  | Some cs ->
    let _, loop_cond = Ex.reduce_bblock ctx.w 
              (Cp.expr_of_codepath ctx.w_e lp.loop_part cs.cond_bb)
              (Ex.empty_program_state ctx.w ctx.param_types ctx.local_types) in
    let loop_vars     = Et.vars_of_et loop_cond in
    let prefix_ssa    = Ssa.ssa_of_codepath ctx lp.prefix_part in
    let lv_entry_vals = List.map ~f:(Ssa.explode_var prefix_ssa) loop_vars in
    let loop_ssa      = Ssa.ssa_of_codepath ctx lp.loop_part in
    let lv_loop_vals  = List.map ~f:(Ssa.explode_var loop_ssa) loop_vars in
      LMI { prefix_cost = Cp.cost_of_codepath ctx.w_e lp.prefix_part;
            loop_cost = Cp.cost_of_codepath ctx.w_e lp.loop_part;
            loop_cond = if cs.sense then loop_cond else Node { op = "not"; args = [loop_cond]};
            loop_vars;
            lv_entry_vals;
            lv_loop_vals}

let cost_of_loops (ctx: Ex.execution_context) (prefixes: Cp.cp list) (loop_paths: Cp.cp list)
      (bback: Bb.bb): loop_metric list =
  List.dedup_and_sort ~compare:compare_metrics (* TODO is this dedup needed? *)
    (List.map ~f:(cost_of_loop ctx bback) (all_loops prefixes loop_paths loop_paths []))

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

let string_of_pci (pci: path_cost_info): string =
  sprintf "terminal: %d cost: %d path: %s" 
    pci.terminal.bbindex
    pci.cost
    (Bb.string_of_raw_bblocks pci.path)

let rec path_cost' (start_bb: Bb.bb) (end_bb: Bb.bb) (pcil: path_cost_info list): path_cost_info =

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

let max_cost_paths (path_bbs: Bb.bb list) (exit_bbs: Bb.bb list): Bb.bb list list =

  let pci_of_bb_path (start_bb: Bb.bb) (end_bb: Bb.bb): path_cost_info =
    path_cost' start_bb end_bb [{terminal=start_bb; path=[]; cost=0}]

  in

  List.map ~f:(fun pci -> pci.path) (List.map ~f:(pci_of_bb_path (List.hd_exn path_bbs)) exit_bbs)
