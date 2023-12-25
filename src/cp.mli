type cp = Bb.bb list

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
  looping_paths:  cp list;     (* list of possible looping paths through the loop *)
  branchbacks:    Bb.bb list; (* list of bblocks that contain branchbacks *)
}

type loops_class = {
  loops_series:   bool;
  loops_parallel: bool;
  loops_nested:   bool;
}

(* cost calculations *)
val cost_of_codepath:       Wm.expr -> cp -> Et.et
val max_cost_of_codepaths:  Wm.expr -> cp list -> Et.et
val paths_with_no_loops:    cp list -> cp list
val exit_bblocks_of_loop:   loop -> Bb.bb list
val condition_of_loop:      Ex.execution_context -> Bb.bb -> cp -> Et.et
val conditions_of_paths:    Ex.execution_context -> cp list -> cp list -> Bb.bb -> Et.et list
val expr_of_codepath:       Wm.expr -> cp -> Bb.bb -> Wm.expr

(* code paths*)
val unique_paths_to_bblock:        cp list -> Bb.bb -> cp list
val codepaths_of_bbs:              Bb.bb list -> cp list -> cp list -> cp list
val codepaths_from_to_bb:          Bb.bb -> Bb.bb -> cp list option
val codepaths_from_to_bb_exn:      Bb.bb -> Bb.bb -> cp list
val codepaths_from_bbs_to_bb:      Bb.bb list -> Bb.bb -> cp list option
val exit_paths:                    cp list -> cp list -> cp list

(* loops *)
val has_loop:             Bb.bb list -> bool
val compare_cps:          cp -> cp -> int
val loop_bblocks_of_bbs:  Bb.bb list -> Bb.bb list list

(* simple case analysis *)
val analyze_simple_loop:            Ex.execution_context -> Bb.bb -> Et.et
val simple_brif_loop:               Bb.bb list -> Bb.bb -> int option
val simple_br_loop:                 Bb.bb list -> Bb.bb -> int option
val ids_with_simple_brif_loops:     Bb.bb list -> int list
