open Core
open Wasm_module
open Opcodes
open Symbolic_expr

type ssa = {
  result:         string;
  mutable etree:  expr_tree;
  mutable alive:  bool;
}
(* type op_type =
{
  opcode:     int;
  opname:     string;
  arg:        op_arg;
  nesting:    int;            (* the lexical nesting level of the instruction *)
  instrtype:  instr_type;
}
 *)

let find_alive' (sl: ssa list): ssa =
  List.find_exn ~f:(fun x -> x.alive) sl

let find_alive (sl: ssa list): expr_tree =
  Variable (find_alive' sl).result

let find_and_kill (sl: ssa list): expr_tree =
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

let ssa_of_op (w: wasm_module) (param_types: resulttype list) (local_types: local_type list) (acc: ssa list)
    (op: op_type): ssa list =
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
              mark_dead acc (nparams w fidx);
              (* create SSAs for each of the return values *)
              List.append (List.mapi ~f:(ssa_of_rt (List.length acc)) (ret_types w fidx)) acc
          | _ -> failwith "Invalid call argument")
        | OP_call_indirect ->
          (match op.arg with
            | CallIndirect c ->
                (* mark the arguments to the function dead *)
                mark_dead acc (List.length (List.nth_exn w.type_section c.y).rt1);
                (* create SSAs for each of the return values *)
                List.append (List.mapi ~f:(ssa_of_rt (List.length acc)) (List.nth_exn w.type_section c.y).rt2) acc
            | _ -> failwith "Invalid call_indirect argument")
        | _ -> failwith (sprintf "Invalid control opcode %x" op.opcode))
    | Reference  ->
        { result = "TODO Reference"; etree = Empty; alive = true} :: acc
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
          etree = Variable (string_of_local_value param_types local_types (int_of_get_argL op.arg));
          alive = true} :: acc         
    | VariableSL  ->
        { result = string_of_local_value param_types local_types (int_of_get_argL op.arg);
          etree = find_and_kill acc;
          alive = false} :: acc
    | VariableTL  ->
        { result = string_of_local_value param_types local_types (int_of_get_argL op.arg);
          etree = find_alive acc;
          alive = false} :: acc
    | VariableGG  ->
        { result = "TODO VariableGG"; etree = Empty; alive = true} :: acc
    | VariableSG  ->
        { result = "TODO VariableSG"; etree = Empty; alive = true} :: acc
    | Table  ->
        { result = "TODO Table"; etree = Empty; alive = true} :: acc
    | MemoryL  ->
        { result = name_of_tvar (List.length acc); 
          etree = Node {op = ""; arg1 = find_and_kill acc; arg2 = Empty; arg3 = Empty};
          alive = true} :: acc
    | MemoryS  ->
        let arg1 = find_and_kill acc in
        let result = String.concat["@("; string_of_expr_tree (find_and_kill acc); ")"] in
        { result; etree = Node { op = ""; arg1; arg2 = Empty; arg3 = Empty}; alive = false} :: acc
    | MemoryM  ->
        { result = "TODO MemoryM"; etree = Empty; alive = true} :: acc
    | Constop  ->
        { result = name_of_tvar (List.length acc);
          etree = Constant (string_of_const_arg op.arg);
          alive = true} :: acc
    | Unop  ->
        { result = "TODO Unop"; etree = Empty; alive = true} :: acc
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

let ssa_of_expr (w: wasm_module) (param_types: resulttype list) (local_types: local_type list) (e: expr): ssa list =
 List.fold ~f:(ssa_of_op w param_types local_types) ~init:[] e

let string_of_ssa (alive: bool) (s: ssa): string =
  String.concat[
    (match s.alive,alive with | _, false -> "" | true,_ -> "+" | false,_ -> "-");
    s.result;
    " = ";
    string_of_expr_tree s.etree]

let string_of_ssa_list (sl: ssa list) (sep: string) (alive: bool): string =
  (String.concat ~sep:sep (List.map ~f:(string_of_ssa alive) (List.rev sl)))