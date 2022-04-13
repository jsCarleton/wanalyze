type code_path = Bblock.bblock list

(*
  loop_prefix
  for a given loop_exit, a loop_prefix consists of the path (in bblocks) from the start
  of the program and the value of the loop_exit's condition variables at the end of the path
*)
type loop_prefix = {
  prefix_cp:        Bblock.bblock list;  (* path to the loop from the start of the program *)
(* TODO  loop_var_values:  ssa list;     (* values of loop condition variables at path end *) *)
}

(*
  loop
  consists of a the bblocks that make up the loop and the list of loop exits
*)

type loop = {
  loop_bblocks:   Bblock.bblock list; (* list of consecutive bblocks that comprise the loop, from the loop bblock `to the corresponding end bblock `*)
  looping_paths:  code_path list;     (* list of possible looping paths through the loop *)
  branchbacks:    Bblock.bblock list; (* list of bblocks that contain branchbacks *)
}

type loops_class = {
  loops_series:   bool;
  loops_parallel: bool;
  loops_nested:   bool;
}

(* cost calculations *)
val paths_with_no_loops             : code_path list -> code_path list
val exit_bblocks_of_loop            : loop -> Bblock.bblock list
val paths_from_bblocks              : Bblock.bblock list -> code_path list
val condition_of_loop               : Wasm_module.wasm_module -> Wasm_module.expr -> Wasm_module.resulttype list 
        -> Wasm_module.local_type list -> Bblock.bblock -> code_path -> Symbolic_expr.expr_tree
val conditions_of_paths             : Wasm_module.wasm_module -> Wasm_module.expr -> Wasm_module.resulttype list 
        -> Wasm_module.local_type list -> code_path list -> code_path list -> Bblock.bblock -> Symbolic_expr.expr_tree list

val expr_of_code_path               : Wasm_module.expr -> code_path -> Bblock.bblock -> Wasm_module.expr list -> Wasm_module.expr

(* code paths*)
val unique_paths_to_bblock          : code_path list -> Bblock.bblock -> code_path list
val code_paths_of_bblocks           : Bblock.bblock list -> code_path list -> code_path list -> code_path list
val code_paths_from_to              : Bblock.bblock -> Bblock.bblock -> code_path list

(* loops *)
val has_loop                        : Bblock.bblock list -> bool
val compare_cps                     : code_path -> code_path -> int
val loop_code_paths                 : Bblock.bblock list -> code_path list -> code_path list
val loops_of_bblocks                : Bblock.bblock list -> loop list
val ids_with_loops                  : Bblock.bblock list -> int list
val classify_loops                  : loop list -> Bblock.bblock list -> loops_class

(* simple case analysis *)
val analyze_simple_loop             : Wasm_module.wasm_module -> Wasm_module.expr -> Wasm_module.resulttype list -> Wasm_module.local_type list
                        -> Bblock.bblock -> Symbolic_expr.expr_tree
val simple_brif_loop                : Bblock.bblock list -> Bblock.bblock -> int option
val simple_br_loop                  : Bblock.bblock list -> Bblock.bblock -> int option
val ids_with_simple_brif_loops      : Bblock.bblock list -> int list
val ids_with_simple_br_loops        : Bblock.bblock list -> int list
val bblocks_with_simple_brif_loops  : Bblock.bblock list -> Bblock.bblock list
