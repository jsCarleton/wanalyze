(* an expression tree *)
type expr_tree = Empty | Constant of string | Variable of string | Node of node
      and node = { op: string; args: expr_tree list }

type assignment = {v_assign: string; e_assign: expr_tree}

val string_of_expr_tree:  expr_tree -> string
val format_expr_tree:     expr_tree -> string
val vars_of_expr_tree:    expr_tree -> string list
val compare:              expr_tree -> expr_tree -> int