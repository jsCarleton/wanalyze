open Core

type expr_tree = Empty | Constant of string | Variable of string | Node of node
      and node = { op: string; arg1: expr_tree; arg2: expr_tree; arg3: expr_tree }

type assignment = {v_assign: string; e_assign: expr_tree}

let rec variables_of_expr_tree (tree: expr_tree): string list =
  match tree with
    | Empty | Constant _ -> []
    | Variable v -> [v]
    | Node n -> List.append (List.append (variables_of_expr_tree n.arg1) 
                                         (variables_of_expr_tree n.arg2)) 
                            (variables_of_expr_tree n.arg3)
