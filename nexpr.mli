type nexpr =
  {
    nvars:          int;
    vars:           Et.var array;
    initial_vals:   Et.et array;
    update_exprs:   Et.et array;
    expr_cond:      Et.et;
   }

val nexprs_of_et:       Et.et -> nexpr list
val simplify_code:      Et.et -> Et.et
val solve_of_nexpr:     nexpr -> Et.et
val string_of_nexpr:    nexpr -> string
