open Core
open Wasm_module

type ssa = {
  result:     string;
  op1:        string;
  op2:        string;
  operation:  string;
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
let ssa_of_op (param_types: resulttype list) (local_types: local_type list) (t_index: int) (op: op_type): ssa =
  match op.instrtype with
    | Control  ->
        { result = "TODO Control"; op1 = ""; op2 = ""; operation = ""}
    | Reference  ->
        { result = "TODO Reference"; op1 = ""; op2 = ""; operation = ""}
    | Parametric  ->
        { result = "TODO Parametric"; op1 = ""; op2 = ""; operation = ""}
    | VariableGL ->
        { result = sprintf "t%d" t_index;
          op1 = local_value param_types local_types (int_of_get_argL op.arg);
          op2 = "";
          operation = ""}         
    | VariableSL  ->
        { result = "TODO VariableSL"; op1 = ""; op2 = ""; operation = ""}
    | VariableTL  ->
        { result = "TODO VariableTL"; op1 = ""; op2 = ""; operation = ""}
    | VariableGG  ->
        { result = "TODO VariableGG"; op1 = ""; op2 = ""; operation = ""}
    | VariableSG  ->
        { result = "TODO VariableSG"; op1 = ""; op2 = ""; operation = ""}
    | Table  ->
        { result = "TODO Table"; op1 = ""; op2 = ""; operation = ""}
    | MemoryL  ->
        { result = "TODO MemoryL"; op1 = ""; op2 = ""; operation = ""}
    | MemoryS  ->
        { result = "TODO MemoryS"; op1 = ""; op2 = ""; operation = ""}
    | MemoryM  ->
        { result = "TODO MemoryM"; op1 = ""; op2 = ""; operation = ""}
    | Constop  ->
        { result = "TODO Constop"; op1 = ""; op2 = ""; operation = ""}
    | Unop  ->
        { result = "TODO Unop"; op1 = ""; op2 = ""; operation = ""}
    | Binop _  ->
        { result = "TODO Binop"; op1 = ""; op2 = ""; operation = ""}
    | Testop  ->
        { result = "TODO Testop"; op1 = ""; op2 = ""; operation = ""}
    | Relop _  ->
        { result = "TODO Relop"; op1 = ""; op2 = ""; operation = ""}
    | Cvtop   ->
        { result = "TODO Cvtop"; op1 = ""; op2 = ""; operation = ""}

let ssa_of_expr (param_types: resulttype list) (local_types: local_type list) (e: expr): ssa list =
  List.mapi ~f:(ssa_of_op param_types local_types) e

let string_of_ssa (ss: ssa list): string =
  String.concat ~sep:"\n" (List.map ~f:(fun s -> String.concat [s.result; " = "; s.op1; s.operation; s.op2]) ss)