(* an expression tree *)
type constant_value = Int_value of int | Int64_value of int64
      | Float_value of float | String_value of string

type et = Empty | Constant of constant_value | Variable of string 
               | ExprList of et list | Node of node
      and node = { op: string; args: et list }

val string_of_et: et -> string
val format_et:    et -> string
val print_et:     et -> (string -> unit) -> unit
val vars_of_et:   et -> string list
val compare:      et -> et -> int
val simplify:     et -> et
