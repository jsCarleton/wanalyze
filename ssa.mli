type ssa = {
  result:         Et.var;
  mutable etree:  Et.et;
  mutable alive:  bool;
}

val string_of_ssa:      ssa -> string 
val string_of_ssa_list: ssa list -> string -> bool -> string
val ssa_of_expr:        Ex.execution_context -> ssa list
val ssa_of_codepath:    Ex.execution_context -> Cp.cp -> ssa list
val explode_var:        ssa list -> Et.var -> ssa
