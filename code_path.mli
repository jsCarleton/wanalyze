type code_path = Bb.bb list

(*
  loop_prefix
  for a given loop_exit, a loop_prefix consists of the path (in bblocks) from the start
  of the program and the value of the loop_exit's condition variables at the end of the path
*)
type loop_prefix = {
  prefix_cp:        Bb.bb list;  (* path to the loop from the start of the program *)
(* TODO  loop_var_values:  ssa list;     (* values of loop condition variables at path end *) *)
}

(*
  loop
  consists of a the bblocks that make up the loop and the list of loop exits
*)

type loop = {
  loop_bblocks:   Bb.bb list; (* list of consecutive bblocks that comprise the loop, from the loop bb `to the corresponding end bb `*)
  looping_paths:  code_path list;     (* list of possible looping paths through the loop *)
  branchbacks:    Bb.bb list; (* list of bblocks that contain branchbacks *)
}

type loops_class = {
  loops_series:   bool;
  loops_parallel: bool;
  loops_nested:   bool;
}

(* cost calculations *)
val cost_of_code_path               : Wasm_module.expr -> code_path -> Et.et
val max_cost_of_code_paths          : Wasm_module.expr -> code_path list -> Et.et
val paths_with_no_loops             : code_path list -> code_path list
val exit_bblocks_of_loop            : loop -> Bb.bb list
val paths_from_bblocks              : Bb.bb list -> code_path list
val condition_of_loop               : Execution.execution_context -> Bb.bb -> code_path -> Et.et
val conditions_of_paths             : Execution.execution_context -> code_path list -> code_path list -> Bb.bb
      -> Et.et list
val expr_of_code_path               : Wasm_module.expr -> code_path -> Bb.bb -> Wasm_module.expr

(* code paths*)
val unique_paths_to_bblock          : code_path list -> Bb.bb -> code_path list
val code_paths_of_bbs           : Bb.bb list -> code_path list -> code_path list -> code_path list
val code_paths_from_to_bb           : Bb.bb -> Bb.bb -> code_path list option
val code_paths_from_to_bb_exn       : Bb.bb -> Bb.bb -> code_path list
val code_paths_from_bbs_to_bb       : Bb.bb list -> Bb.bb -> code_path list option
val looping_paths_of_loop_bblocks   : Bb.bb list -> code_path list
val exit_paths                      : code_path list -> code_path list -> code_path list

(* loops *)
val has_loop                        : Bb.bb list -> bool
val compare_cps                     : code_path -> code_path -> int
val loop_code_paths                 : Bb.bb list -> code_path list -> code_path list
val loops_of_bbs                : Bb.bb list -> loop list
val ids_with_loops                  : Bb.bb list -> int list
val classify_loops                  : loop list -> loops_class
val branchbacks_of_loop             : Bb.bb list -> Bb.bb list

(* simple case analysis *)
val analyze_simple_loop             : Execution.execution_context -> Bb.bb -> Et.et
val simple_brif_loop                : Bb.bb list -> Bb.bb -> int option
val simple_br_loop                  : Bb.bb list -> Bb.bb -> int option
val ids_with_simple_brif_loops      : Bb.bb list -> int list
val ids_with_simple_br_loops        : Bb.bb list -> int list
val bblocks_with_simple_brif_loops  : Bb.bb list -> Bb.bb list
