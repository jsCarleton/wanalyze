open Core

type nexpr =
  {
    nvars:          int;
    vars:           Et.var array;
    initial_vals:   string array;
    update_exprs:   string array;
    expr_cond:      Et.et;
   }

let nexprs_of_et (n: Et.et ): nexpr list =

  let nexpr_of_N_args (args: Et.et list): nexpr =
    let a = Array.of_list (List.map ~f:(fun (arg: Et.et) -> match arg with | ExprList l -> l | _ -> failwith "Invalid arg to N")  args) in
    { nvars = List.length a.(0);
      vars  = Array.of_list (List.map ~f:(fun ve -> match ve with | Variable v -> v | _ -> failwith "Invalid variable in N") a.(0));
      initial_vals = Array.of_list (List.map ~f:(fun iv -> match iv with | Constant (String_value v) -> v | _ -> failwith "Invalid initial in N") a.(2));
      update_exprs = Array.of_list (List.map ~f:(fun iv -> match iv with | Constant (String_value v) -> v | _ -> failwith "Invalid update in N") a.(3));
      expr_cond = match a.(1) with | [h] -> h | _ -> failwith "Invalid cond in N"}
  in

  let rec nexprs_of_et' acc (n: Et.et): nexpr list =
    match n with
    | Node node -> 
        begin
          match node.op with 
          | "N" -> (nexpr_of_N_args node.args) :: acc
          | _ -> List.append (List.concat (List.map ~f:(nexprs_of_et' acc) node.args)) acc
        end
    | _ -> acc

  in

  nexprs_of_et' [] n

let rec simplify_code (e: Et.et): Et.et =
  let isOne (e: Et.et): bool =
    match e with
    | Constant (Int_value n)   when n = 1  -> true
    | Constant (Int64_value n) when (Int64.compare n 1L) = 0 -> true
    | _ -> false
  in
  let isZero (e: Et.et): bool =
    match e with
    | Constant (Int_value n)   when n = 0  -> true
    | Constant (Int64_value n) when (Int64.compare n 0L) = 0 -> true
    | _ -> false
  in

  let invert (e: Et.et): Et.et =
    match e with
    | Node n ->
      begin
        match n.op with
        | "<"  -> Node {n with op = ">="}
        | "<=" -> Node {n with op = ">"}
        | ">"  -> Node {n with op = "<="}
        | ">=" -> Node {n with op = "<"}
        | "="  -> Node {n with op = "!="}
        | "!=" -> Node {n with op = "="}
        | _ -> e
      end
    | _ -> Node {op = "not"; op_disp = Function; args = [e]}
  in

  match e with
  | Node n ->
    begin
      match List.length n.args with
      | 1 ->
        begin
          match n.op with
          | "i32.eqz" -> simplify_code (Node {op = "="; op_disp = Infix; args = (Constant (Int_value 0)) :: n.args})
          | "not"     -> invert (List.hd_exn (List.map ~f:simplify_code n.args))
          | _ -> Node {n with args = List.map ~f:simplify_code n.args}
          end
      | 2 ->
        begin
          match n.op with
          | "&&" when (isOne (List.hd_exn n.args))     -> simplify_code (List.nth_exn n.args 1)
          | "&&" when (isOne (List.nth_exn n.args 1))  -> simplify_code (List.hd_exn n.args)
          | "!=" when (isZero (List.hd_exn n.args))    -> simplify_code (List.nth_exn n.args 1)
          | "!=" when (isZero (List.nth_exn n.args 1)) -> simplify_code (List.hd_exn n.args)
          | "="  when (isZero (List.hd_exn n.args))    -> invert (simplify_code (List.nth_exn n.args 1))
          | "="  when (isZero (List.nth_exn n.args 1)) -> invert (simplify_code (List.hd_exn n.args))
          | _ -> Node {n with args = List.map ~f:simplify_code n.args}
        end
      | _ -> Node {n with args = List.map ~f:simplify_code n.args}
    end
  | _ -> e


let solve_of_nexpr (n: nexpr): Et.et = n.expr_cond

let string_of_nexpr (n: nexpr) = 
  sprintf "     nvars: %d\n      vars:%s\n     inits:%s\n  nupdates:%s\n      cond: %s\nsimplified: %s" 
    n.nvars
    (Array.fold ~f:(fun x y -> x ^ " " ^ (Et.string_of_var y)) ~init:"" n.vars)
    (Array.fold ~f:(fun x y -> x ^ " " ^ y) ~init:"" n.initial_vals)
    (Array.fold ~f:(fun x y -> x ^ " " ^ y) ~init:"" n.update_exprs)
    (Et.string_of_et n.expr_cond)
    (Et.string_of_et (simplify_code n.expr_cond))
