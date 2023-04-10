open Core
open Wm

(* variables *)
type var_type = Var_parameter | Var_local | Var_retvalue | Var_global | Var_temp | Var_memory

type var =
  {
    vtype:  var_type;
    nt:     valtype;
    idx:    int;
    vname:  string;
   }

let string_of_var (v: var): string =
  let string_of_vart (vart: var_type): string =
  match vart with | Var_parameter -> "p" | Var_local -> "l" | Var_retvalue -> "r" | Var_global -> "g" | Var_temp -> "t" | Var_memory -> ""
  in
  let string_of_valt (valt: valtype): string =
  match valt with | Numtype I32 -> "n" | Numtype I64 -> "N" | Numtype F32 -> "f" | Numtype F64 -> "F" | _ -> "R"
  in

  match v.vtype with 
    | Var_parameter | Var_local | Var_retvalue | Var_global | Var_temp ->  sprintf "%s%s%d" (string_of_vart v.vtype) (string_of_valt v.nt) v.idx
    | Var_memory    -> sprintf "%s[%d]" v.vname v.idx

type constant_value = Int_value of int | Int64_value of int64
      | Float_value of float | String_value of string

type et = Empty | Constant of constant_value | Variable of var 
               | ExprList of et list | Node of node
      and node = { op: string; args: et list }

(* variables *)
let compare_vars (v1: var) (v2: var): int =
  String.compare (string_of_var v1) (string_of_var v2)

let rec local_type_of_index (local_types: local_type list) (index: int) (types_index: int) (types_count: int): valtype =
  match index < types_count + (List.nth_exn local_types types_index).n with
  | true  -> (List.nth_exn local_types types_index).v
  | _     -> local_type_of_index local_types index (types_index+1) (types_count + (List.nth_exn local_types types_index).n)

let valtype_of_var (param_types: resulttype list) (local_types: local_type list) (idx: int): valtype =
  let nparams = List.length param_types in
  if idx < nparams then
    List.nth_exn param_types idx
  else
    local_type_of_index local_types (idx - nparams) 0 0

let initialize_local_value (local_types: local_type list) (nparams: int) (i: int): constant_value =
  match local_type_of_index local_types (i - nparams) 0 0 with
    | Numtype nt ->
      (match nt with
        | I32 -> Int_value 0
        | I64 -> Int64_value 0L
        | F32
        | F64 -> Float_value 0.0)
    | _ -> failwith "Invalid numtype"
    
(* expression tree *)
let string_of_constant_value (c: constant_value): string =
  match c with
  | Int_value     i -> string_of_int i
  | Int64_value   i -> Int64.to_string i
  | Float_value   f -> string_of_float f
  | String_value  s -> s

let rec string_of_et (e: et): string =
  match e with
    | Empty   -> "Empty" (* empty expression *)
    | Constant c -> string_of_constant_value c
    | Variable v -> (string_of_var v)
    | ExprList el -> String.concat ["["; String.concat ~sep:"; " (List.map ~f:string_of_et el); "]"]
    | Node n  ->
      begin
        if String.is_prefix ~prefix:"list_" n.op then
          String.concat [n.op; "(["; String.concat ~sep:"; " (List.map ~f:string_of_et n.args); "])"]
        else
        begin
          match List.length n.args with 
          | 0 ->  failwith "Invalid expr tree"
          | 1 ->  (* unary operator *)
                    String.concat[n.op; "("; string_of_et (List.hd_exn n.args); ")"]
          | 2 ->  (* binary operator *)
                  let arg1 = List.hd_exn n.args in
                  let arg2 = List.hd_exn (List.tl_exn n.args) in
                  begin
                    match arg1, arg2 with
                    | Variable _, Variable _ (* binary *)
                    | Variable _, Constant _
                    | Constant _, Variable _
                    | Constant _, Constant _
                        -> String.concat[string_of_et arg1; " "; n.op; " "; string_of_et arg2]
                    | Node _, Node _
                        -> String.concat["("; string_of_et arg1; ") "; n.op; " ("; string_of_et arg2; ")"]
                    | _, Node _
                        -> String.concat[string_of_et arg1; " "; n.op; " ("; string_of_et arg2; ")"]
                    | Node _, _
                        -> String.concat["("; string_of_et arg1; ") "; n.op; " "; string_of_et arg2]
                    | _, _
                        -> String.concat["("; string_of_et arg1; ") "; n.op; " ("; string_of_et arg2; ")"]
                  end
          | 3 ->  (* ternary operator *)
                  let arg1 = List.hd_exn n.args in
                  let arg2 = List.hd_exn (List.tl_exn n.args) in
                  let arg3 = List.hd_exn (List.tl_exn (List.tl_exn n.args)) in
                  String.concat[n.op; "(";  string_of_et arg1; ", ";
                                            string_of_et arg2; ", ";
                                            string_of_et arg3; ")"]
          | _ ->  (* list of operands *)
                  String.concat [n.op; "("; String.concat ~sep:", " (List.map ~f:string_of_et n.args); ")"]
        end
      end

let const_args (args: et list): bool =
  List.for_all ~f:(fun e -> match e with Constant _ -> true | _ -> false) args

let format_et (e: et): string =

  let const_args (args: et list): bool =
    List.for_all ~f:(fun e -> match e with Constant _ -> true | _ -> false) args
  in

  let rec format_et' (indent: int) (e:et): string =
    match e with
    | Empty   -> "Empty" (* empty expression *)
    | Constant c -> string_of_constant_value c
    | Variable v -> (string_of_var v)
    | ExprList el -> String.concat ["["; String.concat ~sep:"; " (List.map ~f:(format_et' indent) el); "]"]
    | Node n ->
      (* if it's a list operator we handle the arguments differently *)
      if String.is_prefix ~prefix:"list_" n.op then
        (* if the arguments are all constants then we print them on a single line *)
        if const_args n.args then
          string_of_et e 
        else
          let spaces = (String.make indent ' ') in
          let spaces2 = (String.make (indent+2) ' ') in
          String.concat [ n.op;
                    "([\n";
                    spaces2;
                    String.concat ~sep:(String.concat [";\n"; spaces2])
                                  (List.map ~f:(format_et' (indent+2)) n.args);
                    "\n";
                    spaces;
                    "])"]
      else
        begin
          match List.length n.args with 
          | 0 ->  failwith "Invalid expr tree"
          | 1 ->  (* unary operator *)
                    String.concat[n.op; "("; format_et' 0 (List.hd_exn n.args); ")"]
          | 2 ->  (* binary operator *)
                  let arg1 = List.hd_exn n.args in
                  let arg2 = List.hd_exn (List.tl_exn n.args) in
                  begin
                    match arg1, arg2 with
                    | Variable _, Variable _ (* binary *)
                    | Variable _, Constant _
                    | Constant _, Variable _
                    | Constant _, Constant _
                        -> String.concat[format_et' indent arg1; " "; n.op; " "; format_et' indent arg2]
                    | Node _, Node _
                        -> String.concat["("; format_et' indent arg1; ") "; n.op; " ("; format_et' indent arg2; ")"]
                    | _, Node _
                        -> String.concat[format_et' indent arg1; " "; n.op; " ("; format_et' indent arg2; ")"]
                    | Node _, _
                        -> String.concat["("; format_et' indent arg1; ") "; n.op; " "; format_et' indent arg2]
                    | _, _
                        -> String.concat["("; format_et' indent arg1; ") "; n.op; " ("; format_et' indent arg2; ")"]
                  end
          | 3 ->  (* ternary operator *)
                  let arg1 = List.hd_exn n.args in
                  let arg2 = List.hd_exn (List.tl_exn n.args) in
                  let arg3 = List.hd_exn (List.tl_exn (List.tl_exn n.args)) in
                  String.concat[n.op; "(";  format_et' indent arg1; ", ";
                                            format_et' indent arg2; ", ";
                                            format_et' indent arg3; ")"]
          | _ ->  (* list of operands *)
                  String.concat [n.op; "("; String.concat ~sep:", " (List.map ~f:(format_et' indent) n.args); ")"]
        end
  in

  format_et' 0 e

let print_et (e: et) p =

  let rec p_el (print_et': int -> et -> unit) ~sep (indent: int) (el: et list) =
  match el with
    | []      -> ()
    | [hd]    -> print_et' indent hd 
    | hd::tl  -> (print_et' indent hd; p sep; p_el print_et' ~sep:sep indent tl)
  in

  let rec print_et' (indent: int) (e: et) =
    match e with
    | Empty   -> p "Empty" (* empty expression *)
    | Constant c -> p (string_of_constant_value c)
    | Variable v -> p (string_of_var v)
    | ExprList el -> p "["; p_el print_et' ~sep:"; " indent el; p "]"
    | Node n ->
      (* if it's a list operator we handle the arguments differently *)
      if String.is_prefix ~prefix:"list_" n.op then
        (* if the arguments are all constants then we print them on a single line *)
        if const_args n.args then
          p (string_of_et e) 
        else
          let spaces = (String.make indent ' ') in
          let spaces2 = (String.make (indent+2) ' ') in
          p n.op; p "([\n"; p spaces2; p_el print_et' ~sep:(String.concat [";\n"; spaces2]) (indent+2) n.args; p "\n"; p spaces; p "])"
      else
        begin
          match List.length n.args with 
          | 0 ->  failwith "Invalid expr tree"
          | 1 ->  (* unary operator *)
                  p n.op; p "("; print_et' 0 (List.hd_exn n.args); p ")"
          | 2 ->  (* binary operator *)
                  let arg1 = List.hd_exn n.args in
                  let arg2 = List.hd_exn (List.tl_exn n.args) in
                  begin
                    match arg1, arg2 with
                    | Variable _, Variable _ (* binary *)
                    | Variable _, Constant _
                    | Constant _, Variable _
                    | Constant _, Constant _
                        -> print_et' indent arg1; p " "; p n.op; p " "; print_et' indent arg2
                    | Node _, Node _
                        -> p "("; print_et' indent arg1; p ") "; p n.op; p " ("; print_et' indent arg2; p ")" 
                    | _, Node _
                        -> print_et' indent arg1; p " "; p n.op; p " ("; print_et' indent arg2; p ")"
                    | Node _, _
                        -> p "("; print_et' indent arg1; p ") "; p n.op; p " "; print_et' indent arg2
                    | _, _
                        -> p "("; print_et' indent arg1; p ") "; p n.op; p " ("; print_et' indent arg2; p ")" 
                  end
          | 3 ->  (* ternary operator *)
                  let arg1 = List.hd_exn n.args in
                  let arg2 = List.hd_exn (List.tl_exn n.args) in
                  let arg3 = List.hd_exn (List.tl_exn (List.tl_exn n.args)) in
                  p n.op; p "("; print_et' indent arg1; p ", "; print_et' indent arg2; p ", "; print_et' indent arg3; p ")"
          | _ ->  (* list of operands *)
                  p n.op; p "("; p_el print_et' ~sep:", " indent n.args; p ")"
        end
  in

  print_et' 0 e

let vars_of_et (tree: et): var list =

  let rec vars_of_et' (tree: et): var list =
    match tree with
    | Empty | Constant _  -> 
        []
    | Variable v          -> 
        [v]
    | ExprList el         ->
      List.concat (List.map ~f:vars_of_et' el)
    | Node n              -> 
        begin
          match n.args with
          | hd::tl  -> List.append (vars_of_et' hd) 
                                   (vars_of_et' (Node {op = n.op; args = tl}))
          | []      -> []
        end
    in

  List.dedup_and_sort ~compare:compare_vars (vars_of_et' tree)

let rec compare (e1: et) (e2: et): int =
match e1,e2 with
  | Empty, Empty  -> 
       0
  | _, Empty      -> 
      +1
  | Empty, _      ->
      -1
  | Constant c1, Constant c2 ->
      String.compare (string_of_constant_value c1) (string_of_constant_value c2)
  | Variable v1, Variable v2 ->  
      compare_vars v1 v2
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

let et_of_local_value (param_types: resulttype list) (local_types: local_type list) (idx: int): et =
  let nparams = List.length param_types in
  if idx < nparams then 
    Variable {vtype = Var_parameter;
              nt    = List.nth_exn param_types idx; 
              idx;
              vname = ""}
  else
    Variable {vtype = Var_local;
              nt    = valtype_of_var param_types local_types idx; 
              idx;
              vname = ""}

(**
  simplify
  
  Simplifies an expression tree

  Parameters:
  e   expression tree to be simplified

  Returns:
  an equivalent, possibly simplified, expression tree
 *)

 let rec simplify (e: et): et =

  let rec simplify_max (n: node): et =
    match n.args with
    | []    -> Constant (Int_value 0)
    | [e1]  -> e1
    | e1::e2::tl ->
      match e1, e2 with
      | Constant (Int_value i1), Constant (Int_value i2) ->
          simplify_max
            { op = n.op;
              args = if i1 > i2 then (Constant (Int_value i1))::tl else (Constant (Int_value i2))::tl
            }
      | _ -> Node n
  in

  let rec simplify_sum (n: node): et =
    match n.args with
    | []    -> Constant (Int_value 0)
    | [e1]  -> e1
    | e1::e2::tl ->
      match e1, e2 with
      | Constant (Int_value i1), Constant (Int_value i2) ->
          simplify_sum
            { op = n.op;
              args = (Constant (Int_value (i1+i2)))::tl
            }
      | _ -> Node n
  in

  match e with
  | Empty | Constant _ | Variable _ | ExprList _ -> e
  | Node n ->
      match n.op with
      | "list_max" -> simplify_max {op = "list_max"; args = List.map ~f:simplify n.args}
      | "list_sum" -> simplify_sum {op = "list_sum"; args = List.map ~f:simplify n.args}
      | _ -> Node { op = n.op; args = List.map ~f:simplify n.args}
