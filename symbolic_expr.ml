open Core

type expr_tree = Empty | Constant of string | Variable of string | Node of node
      and node = { op: string; args: expr_tree list}

type assignment = {v_assign: string; e_assign: expr_tree}

let rec vars_of_expr_tree (tree: expr_tree): string list =
  match tree with
    | Empty | Constant _  -> 
        []
    | Variable v          -> 
        [v]
    | Node n              -> 
        begin
          match n.args with
          | hd::tl  -> List.append (vars_of_expr_tree hd) 
                                  (vars_of_expr_tree (Node {op = n.op; args = tl}))
          | []      -> []
        end
