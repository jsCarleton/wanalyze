open Core
open Wasm_module

(* Program state types *)
type program_state =
{
  mutable instr_count:    int;
  mutable value_stack:    string list;
  mutable local_values:   string array;
  mutable global_values:  string array;
}
type possible_states = program_state list

(* printing the state *)
let string_of_instr_count (count: int) = "Instructions: " ^ string_of_int count ^ "\n"
let string_of_value_stack (stack: string list) = "Stack: [" ^ (String.concat ~sep:", " stack) ^ "]\n"
let string_of_local_values (locals: string array) = "Locals: [" ^ (String.concat ~sep:", " (Array.to_list locals)) ^ "]\n"
let string_of_state (state: program_state): string =
  string_of_instr_count state.instr_count ^ string_of_value_stack state.value_stack ^ string_of_local_values state.local_values
let string_of_ps (ps: possible_states): string =
  String.concat ~sep:"\n" (List.map ~f:string_of_state ps)

(* updating the state of the program *)

(* variable operators *)
let int_of_get_argL arg =
  match arg with
  | Localidx i -> i
  | _ -> failwith "Invalid local index"
let int_of_get_argG arg =
    match arg with
    | Globalidx i -> i
    | _ -> failwith "Invalid global index"
let update_state_varGLop (op: op_type) (state: program_state) = (* get local *)
  state.value_stack <- List.cons (Array.get state.local_values (int_of_get_argL op.arg)) state.value_stack;
  state.instr_count <- state.instr_count + 1
let update_state_varSLop (op: op_type) (state: program_state) = (* set local *)
  let value = list_head state.value_stack in
  state.value_stack <- list_tail state.value_stack;
  Array.set state.local_values (int_of_get_argL op.arg) value
let update_state_varTLop (op: op_type) (state: program_state) = (* tee local *)
  let value = list_head state.value_stack in
  Array.set state.local_values (int_of_get_argL op.arg) value
let update_state_varGGop (op: op_type) (state: program_state) = (* get local *)
  state.value_stack <- List.cons (Array.get state.global_values (int_of_get_argG op.arg)) state.value_stack;
  state.instr_count <- state.instr_count + 1
let update_state_varSGop (op: op_type) (state: program_state) = (* set local *)
  let value = list_head state.value_stack in
  state.value_stack <- list_tail state.value_stack;
  Array.set state.global_values (int_of_get_argG op.arg) value

(* memory operator *)
let string_of_load_arg arg =
  match arg with
  | Memarg m -> string_of_memarg m
  | _ -> failwith "Invalid memory argument"
let update_state_memloadop (op: op_type) (state: program_state) = 
  state.value_stack <- List.cons (op.opname ^ "@(" ^ string_of_load_arg op.arg ^ ")") state.value_stack;
  state.instr_count <- state.instr_count + 1
let update_state_memstoreop (state: program_state) = 
  state.value_stack <- list_tail state.value_stack;
  state.instr_count <- state.instr_count + 1

(* constant operators *)
let string_of_const_arg arg =
  match arg with
  | I32value i -> string_of_int i
  | I64value i -> sprintf "%Ld" i
  | F32value f -> string_of_float f
  | F64value f -> string_of_float f
  | _-> failwith "Invalid const argument"
let update_state_constop (op: op_type) (state: program_state) =
  state.value_stack <- List.cons (string_of_const_arg op.arg) state.value_stack;
  state.instr_count <- state.instr_count + 1

(* unary operators *)
let update_state_unop (op: op_type) (state: program_state) = 
  state.value_stack <- List.cons (op.opname ^ "(" ^ (list_head state.value_stack) ^ ")") (list_tail state.value_stack);
  state.instr_count <- state.instr_count + 1

(* binary operators *)
let update_state_binop (f: string) (state: program_state) =
  let arg1 = list_head state.value_stack in
  state.value_stack <- list_tail state.value_stack;
  let arg2 = list_head state.value_stack in
  state.value_stack <- list_tail state.value_stack;
  state.value_stack <- List.cons ("(" ^ arg1 ^ " " ^ f ^ " " ^arg2 ^ ")") state.value_stack

(* test operators *)
let update_state_testop (op: op_type) (state: program_state) = 
  state.value_stack <- List.cons (op.opname ^ "(" ^ (list_head state.value_stack) ^ ")") (list_tail state.value_stack);
  state.instr_count <- state.instr_count + 1
  
let update_ps (ps: possible_states) (op:op_type): possible_states =
  match op.instrtype with
  | Control -> ps
  | Reference -> ps
  | Parametric -> ps
  | VariableGL -> List.iter ~f:(update_state_varGLop op) ps; ps
  | VariableSL -> List.iter ~f:(update_state_varSLop op) ps; ps
  | VariableTL -> List.iter ~f:(update_state_varTLop op) ps; ps
  | VariableGG -> List.iter ~f:(update_state_varGGop op) ps; ps
  | VariableSG -> List.iter ~f:(update_state_varSGop op) ps; ps
  | Table -> ps
  | MemoryL -> List.iter ~f:(update_state_memloadop op) ps; ps
  | MemoryS -> List.iter ~f:update_state_memstoreop ps; ps
  | MemoryM -> ps
  | Constop -> List.iter ~f:(update_state_constop op) ps; ps
  | Unop -> List.iter ~f:(update_state_unop op) ps; ps
  | Binop f -> List.iter ~f:(update_state_binop f) ps; ps
  | Testop -> List.iter ~f:(update_state_testop op) ps; ps
  | Relop -> ps
  | Cvtop -> ps
  
