type expr_tree = Empty | Constant of string | Variable of string | Node of node
      and node = { op: string; left: expr_tree; right: expr_tree }