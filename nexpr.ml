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
          | "N" -> Printf.printf "found an N\n%!"; (nexpr_of_N_args node.args) :: acc
          | _ -> List.append (List.concat (List.map ~f:(nexprs_of_et' acc) node.args)) acc
        end
    | _ -> acc

  in

  nexprs_of_et' [] n

let simplify_code (x: Et.et): Et.et = x
let solve_of_nexpr (n: nexpr): Et.et = n.expr_cond

let string_of_nexpr (n: nexpr) = 
  sprintf "  nvars: %d\n   vars:%s\n  inits:%s\nupdates:%s\n   cond: %s" 
    n.nvars
    (Array.fold ~f:(fun x y -> x ^ " " ^ (Et.string_of_var y)) ~init:"" n.vars)
    (Array.fold ~f:(fun x y -> x ^ " " ^ y) ~init:"" n.initial_vals)
    (Array.fold ~f:(fun x y -> x ^ " " ^ y) ~init:"" n.update_exprs)
    (Et.string_of_et n.expr_cond)


