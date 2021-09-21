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
let string_of_instr_count (count: int) = "  Instructions: " ^ string_of_int count ^ "\n"
let string_of_value_stack (stack: string list) = "  Stack: [" ^ (String.concat ~sep:", " stack) ^ "]\n"
let string_of_local_values (locals: string array) = "  Locals: [" ^ (String.concat ~sep:", " (Array.to_list locals)) ^ "]\n"
let string_of_state (state: program_state): string =
  string_of_instr_count state.instr_count ^ string_of_value_stack state.value_stack ^ string_of_local_values state.local_values
let string_of_ps (ps: possible_states): string =
  String.concat ~sep:"\n" (List.map ~f:string_of_state ps)

(* updating the state of the program *)

(* control operators *)
let update_state_ifop (state: program_state) =
  state.value_stack <- list_tail state.value_stack;
  state.instr_count <- state.instr_count + 1

let update_states_controlop (op: op_type) (ps: possible_states): possible_states = 
  match op.opcode with
  (* all other control ops: unreachable, nop, br, br_if, br_table, return, call_indirect *)
  | 0x00 | 0x01 | 0x0c | 0x0d | 0x0e | 0x0f | 0x11 ->  failwith "Unimplemented control1"
  (* block, loop, if *)
  | 0x02 | 0x03 -> failwith "Unimplemented control2"
  (* if *)
  | 0x04 ->
      List.iter ~f:update_state_ifop ps; List.append ps ps
  (* else *)
  | 0x05 -> failwith "Unimplemented control3"
  (* end *)
  | 0x0b -> ps (* TODO *)
  (* call *) (* TODO - account for the type signature *)
  | 0x10 -> ps
  (* all other op codes *)
  | _ -> failwith "Invalid control op"

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
let update_state_memloadop (op: op_type) (state: program_state) = 
  let addr = list_head state.value_stack in
  state.value_stack <- list_tail state.value_stack;
  state.value_stack <- List.cons (op.opname ^ "@(" ^ addr ^ ")") state.value_stack;
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
  
(* rel operators *)
let update_state_relop (f: string) (state: program_state) =
  let arg1 = list_head state.value_stack in
  state.value_stack <- list_tail state.value_stack;
  let arg2 = list_head state.value_stack in
  state.value_stack <- list_tail state.value_stack;
  state.value_stack <- List.cons ("(" ^ arg1 ^ " " ^ f ^ " " ^arg2 ^ ")") state.value_stack

let update_ps (ps: possible_states) (op: op_type): possible_states =
  match op.instrtype with
  | Control -> update_states_controlop op ps
  | Reference -> failwith "Unimplemented reference"
  | Parametric -> failwith "Unimplemented parametric"
  | VariableGL -> List.iter ~f:(update_state_varGLop op) ps; ps
  | VariableSL -> List.iter ~f:(update_state_varSLop op) ps; ps
  | VariableTL -> List.iter ~f:(update_state_varTLop op) ps; ps
  | VariableGG -> List.iter ~f:(update_state_varGGop op) ps; ps
  | VariableSG -> List.iter ~f:(update_state_varSGop op) ps; ps
  | Table -> failwith "Unimplemented table"
  | MemoryL -> List.iter ~f:(update_state_memloadop op) ps; ps
  | MemoryS -> List.iter ~f:update_state_memstoreop ps; ps
  | MemoryM -> ps (* nothing to do in this case *)
  | Constop -> List.iter ~f:(update_state_constop op) ps; ps
  | Unop -> List.iter ~f:(update_state_unop op) ps; ps
  | Binop f -> List.iter ~f:(update_state_binop f) ps; ps
  | Testop -> List.iter ~f:(update_state_testop op) ps; ps
  | Relop f -> List.iter ~f:(update_state_binop f) ps; ps
  | Cvtop -> failwith "Unimplemented cvtop"
  
 (*  
type func =
{
  locals:   local_type list;
  e:        expr;
}
{
  mutable instr_count:    int;
  mutable value_stack:    string list;
  mutable local_values:   string array;
  mutable global_values:  string array;
}

type functype =
{
  rt1:    resulttype list;
  rt2:    resulttype list;
}

 *)

let local_value n i = 
  match i >= n with
  | true -> "??"
  | _    -> "N" ^ string_of_int i

let rec reduce_fn' (e: expr) (ps: possible_states): possible_states =
    match e with
    | []     -> ps
    | hd::tl -> 
      printf "%s\n" (string_of_inline_expr [List.nth_exn e 0]);
      let ps' = update_ps ps hd in
      printf "%s" (string_of_ps ps');
      reduce_fn' tl ps' 
let reduce_fn (f: func) (nparams: int): possible_states =
  eprintf "function has %d locals\n" (List.length f.locals);
  reduce_fn'
    f.e
    [{instr_count=0; 
        value_stack=[]; 
        local_values=Array.init ((List.length f.locals) + nparams) ~f:(local_value nparams); 
        global_values=Array.create ~len:1000 "abc"}]

let print_reduction (f: func) (nparams: int) =
  printf "%s" (string_of_ps (reduce_fn f nparams))