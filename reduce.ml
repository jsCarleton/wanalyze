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
type pending_states = program_states option list

type states =
{
  mutable active:   program_states;
  mutable pending:  pending_states;
  mutable final:    program_states;
}

(* printing the state *)
let string_of_instr_count (count: int) = "  steps: " ^ string_of_int count ^ "; "
let string_of_value_stack (stack: string list) = "stack: [" ^ (String.concat ~sep:", " stack) ^ "]; "
let string_of_local_values (locals: string array) = "locals: [" ^ (String.concat ~sep:", " (Array.to_list locals)) ^ "]"
let string_of_state (state: program_state): string =
  string_of_instr_count state.instr_count ^ string_of_value_stack state.value_stack ^ string_of_local_values state.local_values
let string_of_ps (ps: program_states): string = String.concat ~sep:"\n" (List.map ~f:string_of_state ps)

(* Updating the state of the program *)
let pop_value (state: program_state) =
  state.value_stack <- list_tail state.value_stack

(* Parametric operators *)
let update_states_parametricop (op: op_type) (s: states): states = 
  match op.opcode with
  | 0x1a -> (* drop *) List.iter ~f:pop_value s.active; s
  | 0x1b -> (* select *) s (* TODO *)
  | 0x1c -> (* select t* *) s (* TODO *)
  | _ -> failwith (sprintf "Invalid parametric %x " op.opcode)  

(* Control operators *)
let state_copy (s: program_state): program_state =
  {instr_count=s.instr_count; value_stack=s.value_stack; local_values=s.local_values; global_values=s.global_values}
let states_copy (states: program_states): program_states =
  List.map ~f:state_copy states
let push_pending_states (dest: pending_states) (src: program_states option): pending_states =
  match src with
  | Some s ->  List.cons (Some (states_copy s)) dest
  | _ -> List.cons None dest
let pop_pending_states (src: pending_states): program_states =
  match List.hd_exn src with
  | Some s -> s
  | _ -> failwith "Invalid pending states"
let push_retval (state: program_state) (retval: string) =
  state.value_stack <- List.cons retval state.value_stack

(* call op handling *)
let update_state_callop _ (param_count: int) (retval_count: int) (state: program_state) =
(*   printf "Calling %d, nparams: %d, nrets: %d\n" fidx param_count retval_count;
 *)  state.value_stack <- List.drop state.value_stack param_count;
  List.iter ~f:(push_retval state) (List.init retval_count ~f:(fun i -> "R" ^ string_of_int i))
let update_states_callop (param_counts: int list) (retval_counts: int list)  (op: op_type) (s: states): states =
  (match op.arg with
  | Funcidx fidx -> 
(*       printf "Calling %d\n" fidx;
 *)      List.iter ~f:(update_state_callop fidx (List.nth_exn param_counts fidx) (List.nth_exn retval_counts fidx)) s.active;
  | _ -> failwith "Invalid call argument");
  s
let states_equal (s1: program_state) (s2: program_state): bool =
  (List.length s1.value_stack) = (List.length s2.value_stack)
let rec filter_unique (dest: program_states) (src: program_state): bool =
  match dest with
  | [] -> true
  | hd::_ when (states_equal hd src) -> false
  | _::tl -> filter_unique tl src
let unique_states (dest: program_states) (src: program_states): program_states =
  List.append dest (List.filter ~f:(filter_unique dest) src)

let update_states_controlop (param_counts: int list) (retval_counts: int list) (op: op_type) (s: states): states = 
  match op.opcode with
  (* all other control ops: unreachable, nop, br, br_if, br_table, return, call_indirect *)
  | 0x00 -> failwith "Unimplemented unreachable"
  (* nop - nothing to do *)
  | 0x01 -> s
  (* block *)
  | 0x02 -> (* TODO *)
      s.pending <- push_pending_states s.pending None;
      s
  (* loop *)
  | 0x03 -> (* TODO *)
      s.pending <- push_pending_states s.pending None;
      s
  (* if - make a copy of our current states on the pending stack *)
    | 0x04 ->
        List.iter ~f:pop_value s.active;
        s.pending <- push_pending_states s.pending (Some s.active);
        s
  (* else - swap the top of the pending stack and our current states *)
  | 0x05 ->
    let current = s.active in
      s.active <- pop_pending_states s.pending;
      s.pending <- List.cons (Some current) (List.tl_exn s.pending);
      s
  (* end - pop states from the pending stack and append to the current states,
          unless it's the end of the program in which case we append the current
          states to the final states *)
  | 0x0b ->
    (match op.nesting with
    | -1 -> 
        s.final <- unique_states s.final (states_copy s.active);
        s
    |  _ ->
        (match List.hd_exn s.pending with
        | Some states -> s.active <- unique_states s.active states
        | _ -> ());
        s.pending <- List.tl_exn s.pending;
        s
    )
  (* br *)
  | 0x0c -> s.active <- List.tl_exn s.active; s (* TODO *)
  (* br_if *)
  | 0x0d -> 
      List.iter ~f:pop_value s.active;
      s.pending <- push_pending_states s.pending (Some s.active);s (* TODO *)
  | 0x0e -> failwith "Unimplemented br_table"
  (* return - remember our current states as final states, clear any current states *)
  | 0x0f -> 
      s.final <- unique_states s.final (states_copy s.active);
      s.active <- [];
      s
  (* call *) (* TODO - account for the type signature *)
  | 0x10 -> 
      update_states_callop param_counts retval_counts op s
  (* call_indirect *)
  | 0x11 -> failwith "Unimplemented call_indirect"
  (* all other op codes *)
  | _ -> failwith "Invalid control op"

(* Variable operators *)
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
let update_s (s: states) (param_counts: int list) (retval_counts: int list)  (op: op_type): states =
(*   printf "States: %d " (List.length s.final);
 *)  List.iter ~f:update_instr_count s.active;
  match op.instrtype with
  | Control -> eprintf "type: Control\n";update_states_controlop param_counts retval_counts op s
  | Reference -> failwith "Unimplemented reference"
  | Parametric -> eprintf "type: Parametric\n";update_states_parametricop op s
  | VariableGL -> eprintf "type: VariableGL\n";List.iter ~f:(update_state_varGLop op) s.active; s
  | VariableSL -> eprintf "type: VariableSL\n";List.iter ~f:(update_state_varSLop op) s.active; s
  | VariableTL -> eprintf "type: VariableTL\n";List.iter ~f:(update_state_varTLop op) s.active; s
  | VariableGG -> eprintf "type: VariableGG\n";List.iter ~f:(update_state_varGGop op) s.active; s
  | VariableSG -> eprintf "type: VariableSG\n";List.iter ~f:(update_state_varSGop op) s.active; s
  | Table -> failwith "Unimplemented table"
  | MemoryL -> eprintf "type: MemoryL\n";List.iter ~f:(update_state_memloadop op) s.active; s
  | MemoryS -> eprintf "type: MemoryS\n";List.iter ~f:update_state_memstoreop s.active; s
  | MemoryM -> eprintf "type: MemoryM\n";s (* nothing to do in this case *)
  | Constop -> eprintf "type: Constop\n";List.iter ~f:(update_state_constop op) s.active; s
  | Unop -> eprintf "type: Unop\n";List.iter ~f:(update_state_unop op) s.active; s
  | Binop f -> eprintf "type: Binop\n";List.iter ~f:(update_state_binop f) s.active; s
  | Testop -> eprintf "type: Testop\n";List.iter ~f:(update_state_testop op) s.active; s
  | Relop f -> eprintf "type: Relop\n";List.iter ~f:(update_state_binop f) s.active; s
  | Cvtop -> failwith "Unimplemented cvtop"

let local_value n i = 
  match i >= n with
  | true -> "??"
  | _    -> "N" ^ string_of_int i

let rec reduce_fn' (e: expr) (param_counts: int list) (retval_counts: int list) (s: states): states =
    match e with
    | []     -> s
    | hd::tl -> 
       printf "%s" (string_of_ps s.active);
       printf "\n%s\n" (string_of_inline_expr [List.nth_exn e 0]);
       reduce_fn' tl param_counts retval_counts (update_s s param_counts retval_counts hd) 
let reduce_fn (f: func) (param_counts: int list) (retval_counts: int list) (nparams: int) (nlocals: int): states =
  reduce_fn'
    f.e param_counts retval_counts
    {active=[{instr_count=0;
                value_stack=[]; 
                local_values=Array.init (nparams + nlocals) ~f:(local_value nparams); 
                global_values=Array.create ~len:1000 "abc"}];
     pending=[];
     final=[]}

let sum_nlocals acc l = acc + l.n
let print_reduction (param_counts: int list) (retval_counts: int list) (last_import_idx: funcidx) (func_idx: funcidx) (f: func) =
  let nparams = List.nth_exn param_counts (func_idx+last_import_idx) in
  let nlocals = List.fold_left ~f:sum_nlocals ~init:0 f.locals in
  printf "\n\nStarting state for function %d:, %d parameters %d locals " (func_idx+last_import_idx) nparams nlocals;
  printf "Final states:\n%s" (string_of_ps (reduce_fn f param_counts retval_counts nparams nlocals).final)
 
let param_count  (func_sigs: functype list) (func_idx: int): int = List.length (List.nth_exn func_sigs func_idx).rt1
let retval_count (func_sigs: functype list) (func_idx: int): int = List.length (List.nth_exn func_sigs func_idx).rt2

let filter_import_fn (imp: import): bool =
  match imp.description with
  | Functype _ -> true
  | _ -> false

let get_import_typeidx (imp: import): typeidx =
  match imp.description with
    | Functype idx -> idx
    | _ -> failwith "Not an import function"
  
let print_reductions (w: wasm_module) =
  let all_fn_sigs = List.append (List.map ~f:get_import_typeidx (List.filter w.import_section ~f:filter_import_fn)) w.function_section in
  let param_counts = List.map ~f:(param_count  w.type_section) all_fn_sigs in
  let retval_counts= List.map ~f:(retval_count w.type_section) all_fn_sigs in
  List.iteri ~f:(print_reduction param_counts retval_counts w.last_import_func) w.code_section