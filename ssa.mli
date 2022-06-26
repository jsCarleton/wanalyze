type ssa = {
  result:         string;
  mutable etree:  Et.et;
  mutable alive:  bool;
}

val string_of_ssa       : ssa -> string 
val string_of_ssa_list  : ssa list -> string -> bool -> string
val ssa_of_expr         : Execution.execution_context -> ssa list
val ssa_of_code_path    : Execution.execution_context -> Code_path.code_path -> ssa list
val explode_var         : ssa list -> string -> ssa
