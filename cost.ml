open Core

let cost_of_bblock (bb: Bblock.bblock): int =
    match bb.bbtype with
    | BB_unreachable
    | BB_block
    | BB_loop
    | BB_if
    | BB_else
    | BB_end
    | BB_br
    | BB_br_if
    | BB_br_table
    | BB_return
        -> bb.end_op - bb.start_op
    | BB_unknown -> failwith "Unknown bblock type in cost"

let cost_of_code_path (cp: Code_path.code_path): int =
    List.fold ~f:(+) (List.map ~f:cost_of_bblock cp) ~init:0

let max_cost_of_code_paths (cps: Code_path.code_path list) (init: int): int =
  List.fold (List.map ~f:cost_of_code_path cps) ~init:init ~f:(fun acc x -> if acc > x then acc else x)

type loop_metric_info =
{
  prefix_cost:      int;            (* the cost of the prefix portion of the loop *)
  loop_cost:        int;            (* the static cost of the loop portion of the loop *)
  loop_cond:        Symbolic_expr.expr_tree;  (* the condition under which the loop iterates *)
  loop_vars:        string list;    (* the names of the variables that appear in the loop_cond *)
  lv_entry_vals:    Ssa.ssa list;   (* loop variable values, in ssa form, at the beginning of the loop *)
  lv_loop_vals:     Ssa.ssa list;   (* loop variable values, in sss form, when the branchback block has been executed *)
}

type loop_path_parts =
{
  prefix_part:  Code_path.code_path;  (* the code path that leads to the loop *)
  loop_part:    Code_path.code_path;  (* the code path inside the loop *)
}

let compare_metrics m1 m2: int =
  if  m1.prefix_cost = m2.prefix_cost then
    if m1.loop_cost = m2.loop_cost then
      String.compare (Execution.string_of_expr_tree m1.loop_cond) (Execution.string_of_expr_tree m2.loop_cond)
    else
      Int.compare m1.loop_cost m2.loop_cost
  else
    Int.compare m1.prefix_cost m2.prefix_cost

let rec all_loops (cp1: Code_path.code_path list) (cp2: Code_path.code_path list) (cp2all: Code_path.code_path list) (acc: loop_path_parts list): loop_path_parts list =
    match cp1, cp2 with
    | [], _        -> acc
    | _::tl1, []   -> all_loops tl1 cp2all cp2all acc
    | _, hd2::tl2  -> all_loops cp1 tl2 cp2all ({prefix_part = (List.hd_exn cp1); loop_part = hd2}::acc)    

type cond_site =
{
    cond_bb:    Bblock.bblock;  (* basic block where the evaluation of the condition is done *)
    sense:      bool;           (* if false then the condition must be negated *)
}

let site_of_nesting_if (lp: Code_path.code_path): cond_site =
  let cond_bb =
    List.find_exn 
      ~f:(fun bb -> match bb.bbtype with | BB_if | BB_else | BB_br_if | BB_br_table -> true | _ -> false)
      (List.rev lp) in
  match cond_bb.bbtype with 
    | BB_if       -> {cond_bb; sense=true}
    | BB_else     -> 
        let cond_bb = 
          List.find_exn 
              ~f:(fun bb -> match bb.bbtype with | BB_if | BB_br_if -> true | _ -> false)
              (List.rev lp) in
          (* negate *) {cond_bb; sense=false}
    | BB_br_if    ->  (* negate *) {cond_bb; sense=false}
    | BB_br_table -> {cond_bb; sense=true}
    | _           -> failwith "TODO handle this bbtype"

(* TODO do we need both symbolic execution and SSA to do this? *)
let cost_of_loop w e param_types local_types (bback: Bblock.bblock) (lp: loop_path_parts): loop_metric_info =
  (* a key part of this is locating the bblock that the condition of the loop is tested ... *)
  let cs =
    (match bback.bbtype with
        | BB_br_if      -> {cond_bb = bback; sense = true}
        | BB_br
        | BB_br_table   -> site_of_nesting_if lp.loop_part
        | _             -> failwith "Invalid branchback bblock"
    ) in
  (* TODO we're getting the loop cond by executing just the loop_part. is this right? couldn't it be the case
    that there's a side effect of the prefix_part that the loop needs? *)
  let _, loop_cond = Execution.reduce_bblock w 
            (Code_path.expr_of_code_path e lp.loop_part cs.cond_bb [])
            (Execution.empty_program_state w param_types local_types) in
  let loop_vars     = Symbolic_expr.vars_of_expr_tree loop_cond in
  let prefix_ssa    = Ssa.ssa_of_code_path w e param_types local_types lp.prefix_part in
  let lv_entry_vals = List.map ~f:(Ssa.explode_var prefix_ssa) loop_vars in
  let loop_ssa      = Ssa.ssa_of_code_path w e param_types local_types lp.loop_part in
  let lv_loop_vals  = List.map ~f:(Ssa.explode_var loop_ssa) loop_vars in
    {prefix_cost = cost_of_code_path lp.prefix_part;
        loop_cost = cost_of_code_path lp.loop_part;
        loop_cond = if cs.sense then loop_cond else Node { op = "not"; arg1 = loop_cond; arg2 = Empty; arg3 = Empty};
        loop_vars;
        lv_entry_vals;
        lv_loop_vals}

let cost_of_loops w e param_types local_types (prefixes: Code_path.code_path list) (loop_paths: Code_path.code_path list)
      (bback: Bblock.bblock): loop_metric_info list =
  List.dedup_and_sort ~compare:compare_metrics (* TODO is this dedup needed? *)
    (List.map ~f:(cost_of_loop w e param_types local_types bback)
      (all_loops prefixes loop_paths loop_paths []))
