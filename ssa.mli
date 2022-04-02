type ssa = {
  result:         string;
  mutable etree:  Symbolic_expr.expr_tree;
  mutable alive:  bool;
}

val string_of_ssa_list  : ssa list -> string -> bool -> string
val ssa_of_expr         : Wasm_module.wasm_module -> Wasm_module.resulttype list -> Wasm_module.local_type list -> Wasm_module.expr -> ssa list
val ssa_of_code_path    : Wasm_module.wasm_module -> Wasm_module.expr -> Wasm_module.resulttype list -> Wasm_module.local_type list -> Code_path.code_path -> ssa list