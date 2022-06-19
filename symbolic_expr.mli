(* an expression tree *)
type constant_value = I32value of int | I64value of int 
      | F32value of float | F64value of float 
      | Stringvalue of string

type expr_tree = Empty | Constant of constant_value | Variable of string 
               | ExprList of expr_tree list | Node of node
      and node = { op: string; args: expr_tree list }

val string_of_expr_tree:  expr_tree -> string
val format_expr_tree:     expr_tree -> string
val vars_of_expr_tree:    expr_tree -> string list
val compare:              expr_tree -> expr_tree -> int