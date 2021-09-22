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
type program_states = program_state list

type states =
{
  mutable active:   program_states;
  mutable pending:  program_states list;
}

(* printing the state *)
let string_of_instr_count (count: int) = "  steps: " ^ string_of_int count ^ "; "
let string_of_value_stack (stack: string list) = "stack: [" ^ (String.concat ~sep:", " stack) ^ "]; "
let string_of_local_values (locals: string array) = "locals: [" ^ (String.concat ~sep:", " (Array.to_list locals)) ^ "]"
let string_of_state (state: program_state): string =
  string_of_instr_count state.instr_count ^ string_of_value_stack state.value_stack ^ string_of_local_values state.local_values
let string_of_ps (ps: program_states): string = String.concat ~sep:"\n" (List.map ~f:string_of_state ps)

(* updating the state of the program *)

(* control operators *)
let update_state_ifop (state: program_state) =
  state.value_stack <- list_tail state.value_stack
let state_copy (s: program_state): program_state =
  {instr_count=s.instr_count; value_stack=s.value_stack; local_values=s.local_values; global_values=s.global_values}
let states_copy (states: program_states): program_states =
  List.map ~f:state_copy states
let push_states (dest: program_states list) (src: program_states): program_states list =
  List.cons (states_copy src) dest

let update_states_controlop (op: op_type) (s: states): states = 
  match op.opcode with
  (* all other control ops: unreachable, nop, br, br_if, br_table, return, call_indirect *)
  | 0x00 | 0x01 | 0x0c | 0x0d | 0x0e | 0x0f | 0x11 ->  failwith "Unimplemented control1"
  (* block, loop, if *)
  | 0x02 | 0x03 -> failwith "Unimplemented control2"
  (* if *)
  | 0x04 ->
      List.iter ~f:update_state_ifop s.active;
      s.pending <- push_states s.pending s.active;
      s
  (* else *)
  | 0x05 -> failwith "Unimplemented control3"
  (* end *)
  | 0x0b ->
    (match op.nesting with
    | -1 -> s
    |  _ ->
      let new_states = List.nth_exn s.pending 0 in
      s.active <- List.append s.active new_states;
      s.pending <- List.tl_exn s.pending;
      s
    )
  (* call *) (* TODO - account for the type signature *)
  | 0x10 -> s
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
  state.value_stack <- List.cons (Array.get state.local_values (int_of_get_argL op.arg)) state.value_stack
let update_state_varSLop (op: op_type) (state: program_state) = (* set local *)
  let value = list_head state.value_stack in
  state.value_stack <- list_tail state.value_stack;
  Array.set state.local_values (int_of_get_argL op.arg) value
let update_state_varTLop (op: op_type) (state: program_state) = (* tee local *)
  let value = list_head state.value_stack in
  Array.set state.local_values (int_of_get_argL op.arg) value
let update_state_varGGop (op: op_type) (state: program_state) = (* get local *)
  state.value_stack <- List.cons (Array.get state.global_values (int_of_get_argG op.arg)) state.value_stack
let update_state_varSGop (op: op_type) (state: program_state) = (* set local *)
  let value = list_head state.value_stack in
  state.value_stack <- list_tail state.value_stack;
  Array.set state.global_values (int_of_get_argG op.arg) value

(* memory operator *)
let update_state_memloadop (op: op_type) (state: program_state) = 
  let addr = list_head state.value_stack in
  state.value_stack <- list_tail state.value_stack;
  state.value_stack <- List.cons (op.opname ^ "@(" ^ addr ^ ")") state.value_stack
let update_state_memstoreop (state: program_state) = 
  state.value_stack <- list_tail state.value_stack

(* constant operators *)
let string_of_const_arg arg =
  match arg with
  | I32value i -> string_of_int i
  | I64value i -> sprintf "%Ld" i
  | F32value f -> string_of_float f
  | F64value f -> string_of_float f
  | _-> failwith "Invalid const argument"
let update_state_constop (op: op_type) (state: program_state) =
  state.value_stack <- List.cons (string_of_const_arg op.arg) state.value_stack

(* unary operators *)
let update_state_unop (op: op_type) (state: program_state) = 
  state.value_stack <- List.cons (op.opname ^ "(" ^ (list_head state.value_stack) ^ ")") (list_tail state.value_stack)

(* binary operators *)
let update_state_binop (f: string) (state: program_state) =
  let arg1 = list_head state.value_stack in
  state.value_stack <- list_tail state.value_stack;
  let arg2 = list_head state.value_stack in
  state.value_stack <- list_tail state.value_stack;
  state.value_stack <- List.cons ("(" ^ arg1 ^ " " ^ f ^ " " ^arg2 ^ ")") state.value_stack

(* test operators *)
let update_state_testop (op: op_type) (state: program_state) = 
  state.value_stack <- List.cons (op.opname ^ "(" ^ (list_head state.value_stack) ^ ")") (list_tail state.value_stack)
  
(* rel operators *)
let update_state_relop (f: string) (state: program_state) =
  let arg1 = list_head state.value_stack in
  state.value_stack <- list_tail state.value_stack;
  let arg2 = list_head state.value_stack in
  state.value_stack <- list_tail state.value_stack;
  state.value_stack <- List.cons ("(" ^ arg1 ^ " " ^ f ^ " " ^arg2 ^ ")") state.value_stack

(* instruction counter*)
let update_instr_count (state: program_state) =
  state.instr_count <- state.instr_count + 1

(* given an instruction, update states *)
let update_s (s: states) (op: op_type): states =
  List.iter ~f:update_instr_count s.active;
  match op.instrtype with
  | Control -> update_states_controlop op s
  | Reference -> failwith "Unimplemented reference"
  | Parametric -> failwith "Unimplemented parametric"
  | VariableGL -> List.iter ~f:(update_state_varGLop op) s.active; s
  | VariableSL -> List.iter ~f:(update_state_varSLop op) s.active; s
  | VariableTL -> List.iter ~f:(update_state_varTLop op) s.active; s
  | VariableGG -> List.iter ~f:(update_state_varGGop op) s.active; s
  | VariableSG -> List.iter ~f:(update_state_varSGop op) s.active; s
  | Table -> failwith "Unimplemented table"
  | MemoryL -> List.iter ~f:(update_state_memloadop op) s.active; s
  | MemoryS -> List.iter ~f:update_state_memstoreop s.active; s
  | MemoryM -> s (* nothing to do in this case *)
  | Constop -> List.iter ~f:(update_state_constop op) s.active; s
  | Unop -> List.iter ~f:(update_state_unop op) s.active; s
  | Binop f -> List.iter ~f:(update_state_binop f) s.active; s
  | Testop -> List.iter ~f:(update_state_testop op) s.active; s
  | Relop f -> List.iter ~f:(update_state_binop f) s.active; s
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

let rec reduce_fn' (e: expr) (s: states): states =
    match e with
    | []     -> s
    | hd::tl -> 
      printf "%s" (string_of_ps s.active);
      printf "\n%s\n" (string_of_inline_expr [List.nth_exn e 0]);
      reduce_fn' tl (update_s s hd) 
let reduce_fn (f: func) (nparams: int): states =
  reduce_fn'
    f.e
    {active=[{instr_count=0;
                value_stack=[]; 
                local_values=Array.init ((List.length f.locals) + nparams) ~f:(local_value nparams); 
                global_values=Array.create ~len:1000 "abc"}];
     pending=[]}

let print_reduction (f: func) (nparams: int) =
  printf "\n\nStarting state:\n";
  printf "Final states:\n%s" (string_of_ps (reduce_fn f nparams).active)

let param_count types func_type = List.length (List.nth_exn types func_type).rt1
let print_reductions (fs: func list) (param_types: typeidx list) (types: functype list) =
  List.iter2_exn ~f:print_reduction fs (List.map ~f:(param_count types) param_types)