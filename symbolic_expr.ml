open Core

(* expression tree *)
type constant_value = Int32_value of int | Int64_value of int64
      | Float_value of float
      | String_value of string

type expr_tree = Empty | Constant of constant_value | Variable of string 
               | ExprList of expr_tree list | Node of node
      and node = { op: string; args: expr_tree list }

let string_of_constant_value (c: constant_value): string =
  match c with
  | Int32_value i  -> string_of_int i
  | Int64_value i  -> string_of_int i
  | Float_value f  -> string_of_float f
  | String_value s -> s

let rec string_of_expr_tree (e: expr_tree): string =
  match e with
    | Empty   -> "Empty" (* empty expression *)
    | Constant c -> string_of_constant_value c
    | Variable s -> s
    | ExprList el -> String.concat ["["; String.concat ~sep:"; " (List.map ~f:string_of_expr_tree el); "]"]
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
                        -> String.concat["("; string_of_expr_tree arg1; ") "; n.op; " ("; string_of_expr_tree arg2; ")"]
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
                  String.concat [n.op; "("; String.concat ~sep:", " (List.map ~f:string_of_expr_tree n.args); ")"]
        end
      end

let format_expr_tree (e: expr_tree): string =

  let const_args (args: expr_tree list): bool =
    List.for_all ~f:(fun e -> match e with Constant _ -> true | _ -> false) args
  in

  let rec format_expr_tree' (indent: int) (e:expr_tree): string =
    match e with
    | Empty   -> "Empty" (* empty expression *)
    | Constant c -> string_of_constant_value c
    | Variable s -> s
    | ExprList el -> String.concat ["["; String.concat ~sep:"; " (List.map ~f:(format_expr_tree' indent) el); "]"]
    | Node n ->
      (* if it's a list operator we handle the arguments differently *)
      if String.is_prefix ~prefix:"list_" n.op then
        (* if the arguments are all constants then we print them on a single line *)
        if const_args n.args then
          string_of_expr_tree e 
        else
          let spaces = (String.make indent ' ') in
          let spaces2 = (String.make (indent+2) ' ') in
          String.concat [ n.op;
                    "([\n";
                    spaces2;
                    String.concat ~sep:(String.concat [";\n"; spaces2])
                                  (List.map ~f:(format_expr_tree' (indent+2)) n.args);
                    "\n";
                    spaces;
                    "])"]
      else
        begin
          match List.length n.args with 
          | 0 ->  failwith "Invalid expr tree"
          | 1 ->  (* unary operator *)
                    String.concat[n.op; "("; format_expr_tree' 0 (List.hd_exn n.args); ")"]
          | 2 ->  (* binary operator *)
                  let arg1 = List.hd_exn n.args in
                  let arg2 = List.hd_exn (List.tl_exn n.args) in
                  begin
                    match arg1, arg2 with
                    | Variable _, Variable _ (* binary *)
                    | Variable _, Constant _
                    | Constant _, Variable _
                    | Constant _, Constant _
                        -> String.concat[format_expr_tree' indent arg1; " "; n.op; " "; format_expr_tree' indent arg2]
                    | Node _, Node _
                        -> String.concat["("; format_expr_tree' indent arg1; ") "; n.op; " ("; format_expr_tree' indent arg2; ")"]
                    | _, Node _
                        -> String.concat[format_expr_tree' indent arg1; " "; n.op; " ("; format_expr_tree' indent arg2; ")"]
                    | Node _, _
                        -> String.concat["("; format_expr_tree' indent arg1; ") "; n.op; " "; format_expr_tree' indent arg2]
                    | _, _
                        -> String.concat["("; format_expr_tree' indent arg1; ") "; n.op; " ("; format_expr_tree' indent arg2; ")"]
                  end
          | 3 ->  (* ternary operator *)
                  let arg1 = List.hd_exn n.args in
                  let arg2 = List.hd_exn (List.tl_exn n.args) in
                  let arg3 = List.hd_exn (List.tl_exn (List.tl_exn n.args)) in
                  String.concat[n.op; "(";  format_expr_tree' indent arg1; ", ";
                                            format_expr_tree' indent arg2; ", ";
                                            format_expr_tree' indent arg3; ")"]
          | _ ->  (* list of operands *)
                  String.concat [n.op; "("; String.concat ~sep:", " (List.map ~f:(format_expr_tree' indent) n.args); ")"]
        end
  in

  format_expr_tree' 0 e

let vars_of_expr_tree (tree: expr_tree): string list =

  let rec vars_of_expr_tree' (tree: expr_tree): string list =
    match tree with
    | Empty | Constant _  -> 
        []
    | Variable v          -> 
        [v]
    | ExprList el         ->
      List.concat (List.map ~f:vars_of_expr_tree' el)
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
  | Constant c1, Constant c2 ->
      String.compare (string_of_constant_value c1) (string_of_constant_value c2)
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
