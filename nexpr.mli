type nexpr =
  {
    nvars:          int;
    vars:           string array;
    initial_vals:   string array;
    update_exprs:   string array;
    expr_cond:      Et.et;
   }

val nexprs_of_et:     Et.et -> nexpr list
val simplify_code:    Et.et -> Et.et
val solve_of_nexpr:   nexpr -> Et.et
val string_of_nexpr:  nexpr -> string

