type expr_tree = Empty | Constant of string | Variable of string | Node of node
      and node = { op: string; arg1: expr_tree; arg2: expr_tree; arg3: expr_tree }
type assignment = {v_assign: string; e_assign: expr_tree}
val vars_of_expr_tree : expr_tree -> string list