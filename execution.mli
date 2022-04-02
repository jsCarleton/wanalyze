val string_of_expr_tree : Symbolic_expr.expr_tree -> string
val succ_cond_of_bblock : Wasm_module.wasm_module -> Wasm_module.program_state -> Wasm_module.expr -> Symbolic_expr.expr_tree -> Symbolic_expr.expr_tree
val empty_program_state : Wasm_module.wasm_module -> Wasm_module.resulttype list -> Wasm_module.local_type list -> Wasm_module.program_state
val bblocks_of_expr     : Wasm_module.expr -> Bblock.bblock list
val reduce_bblock       : Wasm_module.wasm_module -> Wasm_module.expr -> Wasm_module.program_state -> Wasm_module.program_state * Symbolic_expr.expr_tree
val expr_tree_of_retval : int -> Wasm_module.resulttype -> Symbolic_expr.expr_tree
val nparams             : Wasm_module.wasm_module -> int -> int
val ret_types           : Wasm_module.wasm_module -> int -> Wasm_module.resulttype list
val int_of_get_argL     : Wasm_module.op_arg -> int
val string_of_const_arg : Wasm_module.op_arg -> string
