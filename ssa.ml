open Core
open Wasm_module
open Opcode
open Execution
open Bblock
open Symbolic_expr

type ssa = {
  result:         string;
  mutable etree:  Symbolic_expr.expr_tree;
  mutable alive:  bool;
}

let find_alive' (sl: ssa list): ssa =
  List.find_exn ~f:(fun x -> x.alive) sl

let find_alive (sl: ssa list): Symbolic_expr.expr_tree =
  Variable (find_alive' sl).result

let find_and_kill (sl: ssa list): Symbolic_expr.expr_tree =
  let s = find_alive' sl in
    s.alive <- false;
    Variable s.result

let rec mark_dead (s: ssa list) (count: int) =
  match count with
  | 0 -> ()
  | _ ->
    (match s with
    | [] -> failwith (sprintf "Not enough live SSAs %d" count)
    | hd::tl ->
        (match hd.alive with
        | true ->
            hd.alive <- false;
            mark_dead tl (count - 1)
        | false ->
            mark_dead tl count))

let name_of_tvar (t_index: int): string =
  sprintf "t%d" t_index

let ssa_of_rt (start: int) (index: int) (r: resulttype) : ssa =
  { result = name_of_tvar (start+index); 
    etree = expr_tree_of_retval index r;
    alive = true}

let string_of_ssa (alive: bool) (s: ssa): string =
  String.concat[
    (match s.alive,alive with | _, false -> "" | true,_ -> "+" | false,_ -> "-");
    s.result;
    " = ";
    string_of_expr_tree s.etree]
    
let string_of_ssa_list (sl: ssa list) (sep: string) (alive: bool): string =
  (String.concat ~sep:sep (List.map ~f:(string_of_ssa alive) (List.rev sl)))

let ssa_of_op (ctx: execution_context) (acc: ssa list) (op: op_type): ssa list =
  match op.instrtype with
  | Control  ->
      (match opcode_of_int op.opcode with
      | OP_unreachable | OP_nop | OP_block | OP_loop | OP_else | OP_end | OP_br | OP_return -> acc
      | OP_if | OP_br_if | OP_br_table -> 
          mark_dead acc 1; acc
      | OP_call ->
        (match op.arg with
        | Funcidx fidx ->
            (* mark the arguments to the function dead *)
            mark_dead acc (nparams ctx.w fidx);
            (* create SSAs for each of the return values *)
            let retvals = (List.mapi ~f:(ssa_of_rt (List.length acc)) (ret_types ctx.w fidx)) in
            List.append retvals acc
        | _ -> failwith "Invalid call argument")
      | OP_call_indirect ->
        (match op.arg with
          | CallIndirect c ->
              (* mark the arguments to the function dead *)
              mark_dead acc (List.length (List.nth_exn ctx.w.type_section c.y).rt1);
              (* create SSAs for each of the return values *)
              List.append (List.mapi ~f:(ssa_of_rt (List.length acc)) (List.nth_exn ctx.w.type_section c.y).rt2) acc
          | _ -> failwith "Invalid call_indirect argument")
      | _ -> failwith (sprintf "Invalid control opcode %x" op.opcode))
  | Reference  -> failwith "Reference"
  | Parametric  ->
      (match opcode_of_int op.opcode with
        | OP_drop ->
          mark_dead acc 1;
          acc
        | OP_select ->
          let c = find_and_kill acc in
          let val2 = find_and_kill acc in
          let val1 = find_and_kill acc in
            { result = name_of_tvar (List.length acc); 
              etree = Node {op = "select"; arg1 = c; arg2 = val2; arg3 = val1}; alive = true}
              :: acc
        | _ -> failwith (sprintf "Invalid parametric opcode %x" op.opcode))
  | VariableGL ->
      { result = name_of_tvar (List.length acc);
        etree = Variable (string_of_local_value ctx.param_types ctx.local_types (int_of_get_argL op.arg));
        alive = true} :: acc         
  | VariableSL  ->
      { result = string_of_local_value ctx.param_types ctx.local_types (int_of_get_argL op.arg);
        etree = find_and_kill acc;
        alive = false} :: acc
  | VariableTL  ->
      { result = string_of_local_value ctx.param_types ctx.local_types (int_of_get_argL op.arg);
        etree = find_alive acc;
        alive = false} :: acc
  | VariableGG  ->
      { result = name_of_tvar (List.length acc);
        etree = Variable (string_of_global_value (int_of_get_argL op.arg));
        alive = true} :: acc         
  | VariableSG  ->
      { result = string_of_global_value (int_of_get_argL op.arg);
        etree = find_and_kill acc;
        alive = false} :: acc
  | Table  ->
      failwith "Table"
  | MemoryL  ->
      { result = name_of_tvar (List.length acc); 
        etree = Node {op = ""; arg1 = find_and_kill acc; arg2 = Empty; arg3 = Empty};
        alive = true} :: acc
  | MemoryS  ->
      let arg1 = find_and_kill acc in
      let result = String.concat["@("; string_of_expr_tree (find_and_kill acc); ")"] in
      { result; etree = Node { op = ""; arg1; arg2 = Empty; arg3 = Empty}; alive = false} :: acc
  | MemoryM  ->
      failwith "MemoryM"
  | Constop  ->
      { result = name_of_tvar (List.length acc);
        etree = Constant (string_of_const_arg op.arg);
        alive = true} :: acc
  | Unop ->
      let arg1 = find_and_kill acc in
        { result = name_of_tvar (List.length acc); 
          etree = Node {op = op.opname; arg1; arg2 = Empty; arg3 = Empty};
          alive = true} :: acc         
  | Binop op
  | Relop op  ->
      let arg2 = find_and_kill acc in
      let arg1 = find_and_kill acc in
        { result = name_of_tvar (List.length acc); 
          etree = Node {op; arg1; arg2; arg3 = Empty};
          alive = true} :: acc         
  | Testop ->
      { result = name_of_tvar (List.length acc);
        etree = Node {op = op.opname; arg1 = find_and_kill acc; arg2 = Empty; arg3 = Empty};
        alive = true} :: acc
  | Cvtop   ->
      { result = name_of_tvar (List.length acc);
        etree = Node {op = op.opname; arg1 = find_and_kill acc; arg2 = Empty; arg3 = Empty};
        alive = true} :: acc         

let ssa_of_expr (ctx: execution_context): ssa list =
 List.fold_left ~f:(ssa_of_op ctx) ~init:[] ctx.w_e

let ssa_of_local (ll: local_type list) (i: int) (_: local_type): ssa =
  { result = local_name ll 0 i; etree = Constant (local_value ll 0 i); alive = true}

let ssa_of_locals (ll: local_type list): ssa list =
  List.mapi ~f:(ssa_of_local ll) ll

let ssa_of_expr' (ctx: execution_context) (e: expr) acc: ssa list =
  List.fold_left ~f:(ssa_of_op ctx) ~init:acc e

let ssa_of_bblock (ctx: execution_context) acc (bb: Bblock.bblock): ssa list =
  ssa_of_expr' ctx (expr_of_bblock ctx.w_e bb) acc

let ssa_of_code_path (ctx: execution_context) (cp: Code_path.code_path): ssa list =
  List.fold ~f:(ssa_of_bblock ctx) ~init:(ssa_of_locals ctx.local_types) cp

let rec expand_expr_tree (e: expr_tree) (s_src: ssa): expr_tree =
  match e with 
  | Variable v
      -> (match (String.compare v s_src.result) with 
            | 0 -> s_src.etree
            | _ -> e)
  | Node n -> Node {op = n.op;
                    arg1 = expand_expr_tree (n.arg1) s_src;
                    arg2 = expand_expr_tree (n.arg2) s_src;
                    arg3 = expand_expr_tree (n.arg3) s_src;}
  | _ -> e

let explode_var (s: ssa list) (result: string): ssa =
  let i = Variable result in
  {result; etree = List.fold_left ~f:expand_expr_tree ~init:i s; alive = true}
