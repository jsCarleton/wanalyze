open Core
open Wasm_module
open Opcodes

type ssa = {
  result:         string;
  op1:            string;
  op2:            string;
  operation:      string;
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

let find_alive (sl: ssa list): ssa =
  List.find_exn ~f:(fun x -> x.alive) sl

let find_and_kill (sl: ssa list): ssa =
  let s = find_alive sl in
    s.alive <- false;
    s

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
    op1 = string_of_retval index r;
    op2 = ""; operation = ""; alive = true}

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
        { result = "TODO OP_call_indirect"; op1 = ""; op2 = ""; operation = ""; alive = true} :: acc)
    | Reference  ->
        { result = "TODO Reference"; op1 = ""; op2 = ""; operation = ""; alive = true} :: acc
    | Parametric  ->
        { result = "TODO Parametric"; op1 = ""; op2 = ""; operation = ""; alive = true} :: acc
    | VariableGL ->
        { result = name_of_tvar (List.length acc);
          op1 = local_value param_types local_types (int_of_get_argL op.arg);
          op2 = ""; operation = ""; alive = true} :: acc         
    | VariableSL  ->
        { result = local_value param_types local_types (int_of_get_argL op.arg);
          op1 = (find_and_kill acc).result;
          op2 = ""; operation = ""; alive = false} :: acc
    | VariableTL  ->
        { result = local_value param_types local_types (int_of_get_argL op.arg);
          op1 = (find_alive acc).result;
          op2 = ""; operation = ""; alive = true} :: acc
    | VariableGG  ->
        { result = "TODO VariableGG"; op1 = ""; op2 = ""; operation = ""; alive = true} :: acc
    | VariableSG  ->
        { result = "TODO VariableSG"; op1 = ""; op2 = ""; operation = ""; alive = true} :: acc
    | Table  ->
        { result = "TODO Table"; op1 = ""; op2 = ""; operation = ""; alive = true} :: acc
    | MemoryL  ->
        { result = "TODO MemoryL"; op1 = ""; op2 = ""; operation = ""; alive = true} :: acc
    | MemoryS  ->
        { result = "TODO MemoryS"; op1 = ""; op2 = ""; operation = ""; alive = true} :: acc
    | MemoryM  ->
        { result = "TODO MemoryM"; op1 = ""; op2 = ""; operation = ""; alive = true} :: acc
    | Constop  ->
        { result = name_of_tvar (List.length acc);
          op1 = string_of_const_arg op.arg;
          op2 = ""; operation = ""; alive = true} :: acc
    | Unop  ->
        { result = "TODO Unop"; op1 = ""; op2 = ""; operation = ""; alive = true} :: acc
    | Binop operation
    | Relop operation  ->
        let op2 = (find_and_kill acc).result in
        let op1 = (find_and_kill acc).result in
          { result = name_of_tvar (List.length acc); op1; op2; operation; alive = true} :: acc         
    | Testop  ->
        { result = "TODO Testop"; op1 = ""; op2 = ""; operation = ""; alive = true} :: acc
    | Cvtop   ->
      { result = name_of_tvar (List.length acc); op1 = (find_and_kill acc).result; op2 = ""; operation = op.opname; alive = true} :: acc         

let ssa_of_expr (w: wasm_module) (param_types: resulttype list) (local_types: local_type list) (e: expr): ssa list =
  List.rev (List.fold ~f:(ssa_of_op w param_types local_types) ~init:[] e)

let string_of_ssa (s: ssa): string =
  String.concat[
    (match s.alive with | true -> "+" | false -> "-");
    s.result;
    " = ";
    (match s.op2 with
    | ""  -> String.concat [s.operation; " "; s.op1]
    | _   -> String.concat [s.op1; " "; s.operation; " "; s.op2])]

let string_of_ssa_list (sl: ssa list): string =
  String.concat ~sep:"\n" 
    (List.map ~f:string_of_ssa sl)