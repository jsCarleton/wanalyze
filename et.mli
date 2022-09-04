(* variables *)
type var_type = Var_parameter | Var_local | Var_retvalue | Var_global | Var_temp | Var_memory

type var =
  {
    vtype:  var_type;
    nt:     Wm.valtype;
    idx:    int;
    vname:  string;
   }

(* expression trees *)
type constant_value = Int_value of int | Int64_value of int64
      | Float_value of float | String_value of string

type et = Empty | Constant of constant_value | Variable of var 
               | ExprList of et list | Node of node
      and node = { op: string; args: et list }

val string_of_var:          var -> string
val valtype_of_var:         Wm.resulttype list -> Wm.local_type list -> int -> Wm.valtype
val compare_vars:           var -> var -> int
val string_of_et:           et -> string
val format_et:              et -> string
val print_et:               et -> (string -> unit) -> unit
val vars_of_et:             et -> var list
val compare:                et -> et -> int
val simplify:               et -> et
val initialize_local_value: Wm.local_type list -> int -> int -> constant_value
val et_of_local_value:      Wm.resulttype list -> Wm.local_type list -> int -> et
