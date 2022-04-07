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

let cost_of_code_paths (cps: Code_path.code_path list): int =
    List.fold (List.map ~f:cost_of_code_path cps) ~init:0 ~f:(fun acc x -> if acc > x then acc else x)

let rec max_cost_of_code_paths (cps: Code_path.code_path list) (init: int): int =
    match cps with
    | [] -> init
    | hd::tl ->
        let new_max = cost_of_code_path hd in
        match new_max > init with
        | true  -> max_cost_of_code_paths tl new_max
        | false -> max_cost_of_code_paths tl init

type loop_metric_info =
{
  prefix_cost:  int;        (* the cost of the prefix portion of the loop *)
  loop_cost:    int;        (* the static cost of the loop portion of the loop *)
  loop_cond:    Symbolic_expr.expr_tree;  (* the condition under which the loop iterates *)
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

let site_of_nesting_if (_: Code_path.code_path) (bb: Bblock.bblock): cond_site =
    if List.length bb.pred > 1 then
        failwith "TODO multiple predecessors"
    (* TODO *)
    else
        let cond_bb = List.nth_exn bb.pred 0 in
        match cond_bb.bbtype with
        | BB_if     -> {cond_bb; sense=true}
        | BB_else   -> (* negate *) failwith "TODO handle this bbtype"
        | BB_br_if  -> (* negate *) {cond_bb; sense=false}
        | _         -> failwith "TODO handle this bbtype"

let cost_of_loop w e param_types local_types (bback: Bblock.bblock) (lp: loop_path_parts): loop_metric_info =
(* a key part of this is locating the bblock that the condition of the loop is tested ... *)
  match bback.bbtype with
  | BB_br_if ->
    (* ... in the case of a br_if loop it's easy, it's the bblock that contains the br_if *)
    let _,loop_cond = Execution.reduce_bblock w 
                        (Code_path.expr_of_code_path e (List.concat [lp.prefix_part; lp.loop_part]) bback [])
                        (Execution.empty_program_state w param_types local_types) in
        {prefix_cost = cost_of_code_path lp.prefix_part; 
         loop_cost = cost_of_code_path lp.loop_part;
         loop_cond}
  | BB_br ->
    (* ... for a br loop, its the condition of the if bblock that the br is nested in. If the br is actually in the if bblock then 
        we use that condition. Otherwise when it's in the else bblock then we negate that condition *)
    let cs = site_of_nesting_if lp.loop_part bback in
    let _,loop_cond = Execution.reduce_bblock w 
                        (Code_path.expr_of_code_path e (List.concat [lp.prefix_part; lp.loop_part]) cs.cond_bb [])
                        (Execution.empty_program_state w param_types local_types) in
        {prefix_cost = cost_of_code_path lp.prefix_part;
         loop_cost = cost_of_code_path lp.loop_part;
         loop_cond =
            if cs.sense then
                loop_cond
            else 
                Node { op = "not"; arg1 = loop_cond; arg2 = Empty; arg3 = Empty}}
  | BB_br_table -> failwith "TODO handle this case"
  | _ -> 
    failwith "Invalid branchback"

let cost_of_loops w e param_types local_types (prefixes: Code_path.code_path list) (loop_paths: Code_path.code_path list) (bback: Bblock.bblock): loop_metric_info list =
  let al = all_loops prefixes loop_paths loop_paths [] in
  let ual = 
  List.dedup_and_sort ~compare:compare_metrics (* TODO is this dedup needed? *)
    (List.map ~f:(cost_of_loop w e param_types local_types bback)
      (all_loops prefixes loop_paths loop_paths [])) in
    Printf.printf "\nPrefixes: %d Loop paths: %d All: %d, unique: %d\n" (List.length prefixes) (List.length loop_paths)(List.length al) (List.length ual);
    ual
