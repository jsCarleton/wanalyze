open Core

(* expression tree *)
type expr_tree = Empty | Constant of string | Variable of string | Node of node
      and node = { op: string; args: expr_tree list}

type assignment = {v_assign: string; e_assign: expr_tree}

let rec string_of_expr_tree (e: expr_tree): string =
  match e with
    | Empty   -> "" (* empty expression *)
    | Constant s | Variable s -> s
    | Node n  ->
      begin
        if String.is_prefix ~prefix:"list_" n.op then
          String.concat [n.op; "(["; String.concat ~sep:"; " (List.map ~f:string_of_expr_tree n.args); "])"]
        else
        begin
          match List.length n.args with 
          | 0 ->  failwith "Invalid expr tree"
          | 1 ->  (* unary operator *)
                    String.concat[n.op; "("; string_of_expr_tree (List.hd_exn n.args); ")"]
          | 2 ->  (* binary operator *)
                  let arg1 = List.hd_exn n.args in
                  let arg2 = List.hd_exn (List.tl_exn n.args) in
                  begin
                    match arg1, arg2 with
                    | Variable _, Variable _ (* binary *)
                    | Variable _, Constant _
                    | Constant _, Variable _
                    | Constant _, Constant _
                        -> String.concat[string_of_expr_tree arg1; " "; n.op; " "; string_of_expr_tree arg2]
                    | Node _, Node _
                        -> String.concat["("; string_of_expr_tree arg1; ")"; n.op; " ("; string_of_expr_tree arg2; ")"]
                    | _, Node _
                        -> String.concat[string_of_expr_tree arg1; " "; n.op; " ("; string_of_expr_tree arg2; ")"]
                    | Node _, _
                        -> String.concat["("; string_of_expr_tree arg1; ") "; n.op; " "; string_of_expr_tree arg2]
                    | _, _
                        -> String.concat["("; string_of_expr_tree arg1; ") "; n.op; " ("; string_of_expr_tree arg2; ")"]
                  end
          | 3 ->  (* ternary operator *)
                  let arg1 = List.hd_exn n.args in
                  let arg2 = List.hd_exn (List.tl_exn n.args) in
                  let arg3 = List.hd_exn (List.tl_exn (List.tl_exn n.args)) in
                  String.concat[n.op; "(";  string_of_expr_tree arg1; ", ";
                                            string_of_expr_tree arg2; ", ";
                                            string_of_expr_tree arg3; ")"]
          | _ ->  (* list of operands *)
                  String.concat [n.op; "(["; String.concat ~sep:"; " (List.map ~f:string_of_expr_tree n.args); "])"]
        end
      end

let vars_of_expr_tree (tree: expr_tree): string list =

  let rec vars_of_expr_tree' (tree: expr_tree): string list =
    match tree with
    | Empty | Constant _  -> 
        []
    | Variable v          -> 
        [v]
    | Node n              -> 
        begin
          match n.args with
          | hd::tl  -> List.append (vars_of_expr_tree' hd) 
                                  (vars_of_expr_tree' (Node {op = n.op; args = tl}))
          | []      -> []
        end
    in

  List.dedup_and_sort ~compare:String.compare (vars_of_expr_tree' tree)

let rec compare (e1: expr_tree) (e2: expr_tree): int =
match e1,e2 with
  | Empty, Empty  -> 
       0
  | _, Empty      -> 
      +1
  | Empty, _      ->
      -1
  | Constant s1, Constant s2
  | Variable s1, Variable s2 ->  
      String.compare s1 s2
  | Node n1, Node n2  ->
      if (String.compare n1.op n2.op = 0) && ((List.length n1.args) = (List.length n2.args)) then
        if List.for_all2_exn ~f:(fun n1_arg n2_arg -> compare n1_arg n2_arg = 0) n1.args n2.args then
          0
        else
          +1
      else
        String.compare n1.op n2.op
  | _, _ ->
      -1
