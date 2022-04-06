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

type loop_paths =
{
  prefix_path:  Code_path.code_path;  (* the code path that leads to the loop *)
  loop_path:    Code_path.code_path;  (* the code path inside the loop *)
}

let compare_metrics m1 m2: int =
  if  m1.prefix_cost = m2.prefix_cost then
    if m1.loop_cost = m2.loop_cost then
      String.compare (Execution.string_of_expr_tree m1.loop_cond) (Execution.string_of_expr_tree m2.loop_cond)
    else
      Int.compare m1.loop_cost m2.loop_cost
  else
    Int.compare m1.prefix_cost m2.prefix_cost

let rec all_loops (cp1: Code_path.code_path list) (cp2: Code_path.code_path list) (cp2all: Code_path.code_path list) (acc: loop_paths list): loop_paths list =
    match cp1, cp2 with
    | [], _        -> acc
    | _::tl1, []   -> all_loops tl1 cp2all cp2all acc
    | _, hd2::tl2  -> all_loops cp1 tl2 cp2all ({prefix_path = (List.hd_exn cp1); loop_path = (List.tl_exn hd2)}::acc) (* TODO this tl on hd2 is a hack *)

let cost_of_loop w e param_types local_types (bback: Bblock.bblock) lp: loop_metric_info =
  match bback.bbtype with
  | BB_br_if ->
      let _,loop_cond = Execution.reduce_bblock w 
                            (Code_path.expr_of_code_path e (List.concat [lp.prefix_path; lp.loop_path]) bback [])
                            (Execution.empty_program_state w param_types local_types) in
        {prefix_cost = cost_of_code_path lp.prefix_path; loop_cost = cost_of_code_path lp.loop_path; loop_cond}
  | BB_br ->        {prefix_cost = 0; loop_cost = 0; loop_cond = Constant "br"} (* TODO *)
  | BB_br_table ->  {prefix_cost = 0; loop_cost = 0; loop_cond = Constant "br_table"} (* TODO *)
  | _ ->            failwith "Invalid branchback"

let cost_of_loops w e param_types local_types (prefixes: Code_path.code_path list) (loop_paths: Code_path.code_path list) (bback: Bblock.bblock): loop_metric_info list =
  let al = all_loops prefixes loop_paths loop_paths [] in
  let ual = 
  List.dedup_and_sort ~compare:compare_metrics
    (List.map ~f:(cost_of_loop w e param_types local_types bback)
      (all_loops prefixes loop_paths loop_paths [])) in
    Printf.printf "Prefixes: %d Loop paths: %d All: %d, unique: %d\n" (List.length prefixes) (List.length loop_paths)(List.length al) (List.length ual);
    ual
