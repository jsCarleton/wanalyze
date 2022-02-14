type expr_tree = Empty | Node of node
      and node = { op: string; left: expr_tree; right: expr_tree }