open Core
open Wm
open Et

type mem_element = {
  elem_type:    numtype;
  elem_offset:  int;
  elem_value:   Et.et;
}

type program_state =
{
  mutable instr_count:    int;
  mutable value_stack:    Et.et list;
  mutable local_values:   Et.et array;
  mutable global_values:  Et.et array;
  mutable mem_values:     mem_element list;
}

type program_states = program_state list
type pending_states = program_states option list

type states =
{
  mutable active:   program_states;
  mutable pending:  pending_states;
  mutable final:    program_states;
}

type execution =
{
  eindex:             int;            (* the index of the bb being executed *)
  pred_index:         int;
  succ_index:         int;
  initial:            program_state;  (* the program state before the first instruction of the bb is executed *)
  mutable final:      program_state;  (* the program state after the last instruction of the bb is executed *)
  mutable succ_cond:  et;             (* the expression that must be true in order for the first successor state to be entered *) 
}

type execution_context =
{
    w:              Wm.wm;
    w_e:            Wm.expr;
    w_state:        program_state;
    param_types:    Wm.resulttype list;
    local_types:    Wm.local_type list;
}

(*
      memory element properties, accessor
*)
let elem_type_of_arg (arg: op_arg): numtype =
  match arg with
  | Memarg m -> m.mem_nt
  | _ -> failwith "Invalid argument for memory operator"
let elem_offset_of_arg (arg: op_arg): int =
  match arg with
  | Memarg m -> m.o
  | _ -> failwith "Invalid argument for memory operator"

let find_mem_elem (mem_values: mem_element list) (arg: op_arg): et =
  let elem_value_of_mem_values (mem_values: mem_element list) (o: int): et =
    match List.find ~f:(fun e -> e.elem_offset = o) mem_values with 
    | Some me -> me.elem_value
    | None    -> Variable {vtype = Var_memory; nt = Numtype (elem_type_of_arg arg); idx = o; vname = "m"}
  in

  match arg with
  | Memarg m -> elem_value_of_mem_values mem_values m.o
  | _ -> failwith "Accessing undefined memory"

(* 
    n_iglobals
    return the number of globals that are imported by the module
*)
let rec n_iglobals (imports: import list) (acc: int): int =
  match imports with
  | []      -> acc
  | hd::tl  ->
    (match hd.description with 
      | Globaltype _ -> n_iglobals tl (acc+1)
      | _            -> n_iglobals tl acc)

(* 
    n_mglobals
    return the number of globals that are defined by the module
*)
let n_mglobals (globals: global list): int =
  List.length globals

(* Updating the state of the program *)
(* stack operations *)
let stack_cdr   (state: program_state): et list = List.tl_exn state.value_stack
let top_n_values
                (state: program_state) (n: int) =
  List.take state.value_stack n
let drop_n_values
                (state: program_state) (n: int) =
  state.value_stack <- List.drop state.value_stack n
let drop_value  (state: program_state) = drop_n_values state 1
let push_value  (state: program_state) (v: et) = state.value_stack <- List.cons v state.value_stack
let poke_value  (state: program_state) (v: et) = state.value_stack <- List.cons v (stack_cdr state)
let peek_value  (state: program_state): et = List.hd_exn state.value_stack
let pop_value   (state: program_state): et =
  let value = peek_value state in
  drop_value state;
  value

(* value array operations *)
let copy_values (values: et array): et array =
  Array.copy values
let create_values (len: int): et array =
  Array.create ~len:len Empty
let init_values (len: int) (f: (int -> et)): et array =
  Array.init len ~f:f
let get_value (values: et array) (i:int): et =
  Array.get values i
let set_value (values: et array) (i: int) (v: et) =
  Array.set values i v
let get_local (state: program_state) (i: int): et =
  get_value state.local_values i
let set_local (state: program_state) (i: int) (v: et) =
  set_value state.local_values i v
let get_global (state: program_state) (i: int): et =
  get_value state.global_values i
let set_global (state: program_state) (i: int) (v: et) =
  set_value state.global_values i v

(* Read in a 32-bit IEEE 754 floating point number *)
(* adapted from http://www.elliottoti.com/code/general/float32.html *)
let float_of_float32 (bits: int) =
  let rec pow2 = function
          | 0 -> 1
          | n -> 2 * (pow2 (n - 1))
  in
  let getbit b n =
          (b land (pow2 n)) lsr n 
  in
  let b0 = bits lsr 24 in        
  let b1 = (bits lsr 16) land 0xFF in        
  let b2 = (bits lsr 8) land 0xFF in        
  let b3 = bits land 0xFF in
  let sign = getbit b3 7
  and exponent = 128*(getbit b3 6) + 64*(getbit b3 5) + 32*(getbit b3 4) 
                                  + 16*(getbit b3 3) + 8*(getbit b3 2) + 4*(getbit b3 1) 
                                  + 2*(getbit b3 0) + (getbit b2 7) 
  and significand = b0 + 256*b1 + 65536*(((b2 lsl 1) land 0xFF ) lsr 1) in
  let max_significand = (float (pow2 23)) -. 1.0 in
  if exponent = 255 then
          if significand = 0 then
                  if sign = 0 then Float.neg_infinity else Float.infinity
          else
                  Float.nan
  else if exponent = 0 then
          if significand = 0 then
                  if sign = 0 then 0.0 else -0.0
          else
                  let fs = if sign = 0 then 1.0 else -1.0
                  and fexp = (2.0) ** (-126.0)
                  and fsig = ((float significand) /. max_significand) in
                  fs *. fexp *. fsig
  else
          let fs = if sign = 0 then 1.0 else -1.0
          and fexp = (2.0) ** (float (exponent - 127))
          and fsig = 1.0 +. ((float significand) /. max_significand) in
          fs *. fexp *. fsig

let et_of_const_arg (arg: op_arg): et =
  match arg with
    | I32value i    -> Constant (Int_value i)
    | I64value i    -> Constant (Int64_value i)
    | F32value bits -> Constant (Float_value (float_of_float32 bits))
    | F64value f    -> Constant (Float_value f)
    | _             -> failwith "Invalid const argument"

let et_of_retval (idx: int) (nt: valtype) (fidx: int) (params: et list): et =
  Node {  op = "R";
          op_disp = Function;
          args =  [Constant (Int_value fidx)]@
            [Constant (Int_value idx)]@
            [Constant (String_value (string_of_valtype nt))]@
            params}

let et_of_unop (op: string) (arg1: et): et =
  Node {op; op_disp = Function; args = [arg1]}

let et_of_binop (op: string) (arg1: et) (arg2: et): et =
  match arg1, arg2 with
  | Variable v1, Variable v2 when ((compare_vars v1 v2) <> 0) -> failwith "Invalid binop arguments"
  | _ -> ();
  Node {op = op; op_disp = Infix; args = [arg1; arg2]}

(* Parametric operators *)
let update_state_parametricop (op: op_type) (s: program_state) = 
  match op.opcode with
  | 0x1a -> (* drop *)      drop_value s
  | 0x1b    (* select *)
  | 0x1c -> (* select t* *)  
      let c  = pop_value s in
      let v1 = pop_value s in
      let v2 = pop_value s in
      push_value s (Node{op = "select"; op_disp = Function; args = [c; v1; v2]})
  | _ -> failwith (sprintf "Invalid parametric %x " op.opcode)  

(* Control operators *)
(* call op handling *)
let update_state_callop (_: wm) (param_count: int) (retval_types: resulttype list) (state: program_state) (fidx: int) =
  let params = top_n_values state param_count in
  drop_n_values state param_count;
  List.iter ~f:(push_value state) 
    (List.init (List.length retval_types) ~f:(fun i -> (et_of_retval i (List.nth_exn retval_types i) fidx params)))

let ret_types (w: wm) (fidx: int): resulttype list =
  (List.nth_exn w.type_section (List.nth_exn w.function_section fidx)).rt2

let nparams (w: wm) (fidx: int) =
  List.length (List.nth_exn w.type_section (List.nth_exn w.function_section fidx)).rt1
        
(* call indirect handling*)

(* de-duplication of states WIP *)
(* Variable operators *)
let int_of_get_argL arg =
  match arg with
  | Localidx i | Globalidx i -> i
  | _ -> failwith "Invalid local index"
let int_of_get_argG arg =
    match arg with
    | Globalidx i -> i
    | _ -> failwith "Invalid global index"
let update_state_varGLop (op: op_type) (state: program_state) = (* get local *)
  push_value state (get_local state (int_of_get_argL op.arg))
let update_state_varSLop (op: op_type) (state: program_state) = (* set local *)
  set_local state (int_of_get_argL op.arg) (pop_value state)
let update_state_varTLop (op: op_type) (state: program_state) = (* tee local *)
  set_local state  (int_of_get_argL op.arg) (peek_value state)
let update_state_varGGop (op: op_type) (state: program_state) = (* get local *)
  push_value state (get_global state (int_of_get_argG op.arg))
let update_state_varSGop (op: op_type) (state: program_state) = (* set local *)
  set_global state (int_of_get_argG op.arg) (pop_value state)

(* memory operator *)
let update_state_memloadop (op: op_type) (state: program_state) = 
  poke_value state (find_mem_elem state.mem_values op.arg)

let update_state_memstoreop (op: op_type) (state: program_state) =
  let (_: et) = pop_value state in (* TODO we need to use this offset to make memory store correct *)
  let v = pop_value state in
  state.mem_values <- 
    { elem_type   = elem_type_of_arg op.arg;
      elem_offset = elem_offset_of_arg op.arg;
      elem_value  = v}
    :: state.mem_values

(* constant operators *)
let update_state_constop (op: op_type) (state: program_state) =
  push_value state (et_of_const_arg op.arg)

(* unary operators *)
let update_state_unop (op: op_type) (state: program_state) = 
  poke_value state (et_of_unop op.opname (peek_value state))

(* binary operators *)
let update_state_binop (f: string) (state: program_state) =
  let arg2 = pop_value state in
  let arg1 = peek_value state in
  poke_value state (et_of_binop f arg1 arg2)

(* test operators *)
let update_state_testop (op: op_type) (state: program_state) =
  poke_value state (et_of_unop op.opname (peek_value state))
 
(* cvt operators *)
let update_state_cvtop (op: op_type) (state: program_state) =
  match op.opcode with
  | 0xfc ->
      poke_value state (et_of_unop "TODO" (peek_value state))
  | _ ->
      poke_value state (et_of_unop op.opname (peek_value state))

(* instruction counter*)
let update_instr_count (state: program_state) = state.instr_count <- state.instr_count + 1

let update_state_controlop (w: wm) (op: op_type) (s: program_state): et =

  let param_count (w: wm) (arg: op_arg): int = 
    match arg with
    | Blocktype bt -> (
      match bt with
      | Emptytype | Valuetype _  -> 0
      | Typeindex n -> List.length (List.nth_exn w.type_section n).rt1
    )
    | _ -> failwith "Invalid blocktype arg"
  in

  match op.opcode with
  (* unreachable, nop, else, end, br, return - nothing to do *)
  | 0x00 | 0x01 | 0x0b | 0x05 | 0x0c | 0x0f -> Empty
  (* block, loop - pop values from the stack *)
  | 0x02 | 0x03 ->
      drop_n_values s (param_count w op.arg);
      Empty
  (* if - pop values from the stack, get the condition from the top of the stack *)
  | 0x04 ->
      drop_n_values s (param_count w op.arg);
      let succ_cond = pop_value s in
      succ_cond
  (* br_if, br_table - get the condition from the top of the stack *) (* TODO fix br_table *)
  | 0x0d | 0x0e ->
      let succ_cond = pop_value s in
      succ_cond
  (* call *)
  | 0x10 ->
    (match op.arg with
    | Funcidx fidx -> 
        update_state_callop w (nparams w fidx) (ret_types w fidx) s fidx
    | _ -> failwith "Invalid call argument"); Empty
  (* call_indirect *)
  | 0x11 -> Empty (* TODO *)
  (* all other op codes *)
  | _ -> failwith "Invalid control op"
      
let reduce_op (w: wm) (op: op_type) (s: program_state) (trace: bool): et =
  if trace then
      Printf.printf "%s [%s] \n%!" (Opcode.string_of_opcode (Opcode.opcode_of_int op.opcode)) (string_of_ets s.value_stack)
  else ();
  update_instr_count s;
  match op.instrtype with
  | Control -> update_state_controlop w op s
  | _ ->
    (match op.instrtype with
    | Reference ->  failwith "Unimplemented reference"
    | Parametric -> update_state_parametricop op s
    | VariableGL -> update_state_varGLop op s
    | VariableSL -> update_state_varSLop op s
    | VariableTL -> update_state_varTLop op s
    | VariableGG -> update_state_varGGop op s
    | VariableSG -> update_state_varSGop op s
    | Table ->      failwith "Unimplemented table"
    | MemoryL ->    update_state_memloadop op s
    | MemoryS ->    update_state_memstoreop op s
    | MemoryM ->    () (* nothing to do in this case *)
    | Constop ->    update_state_constop op s
    | Unop ->       update_state_unop op s
    | Binop f ->    update_state_binop f s
    | Testop ->     update_state_testop op s
    | Relop f ->    update_state_binop f s
    | Cvtop ->      update_state_cvtop op s
    | Control ->    failwith "Can't happen."
    ); Empty

(**
  reduce_bblock
  
  Symbolically execute the code in an expr

  Parameters:
  s             the starting program_state, as a side-effect of symbolic execution this state is updated
  e             expr containing the code to be executed
  succ_cond     success condition for the last br_if or if instruction, if any, in the code
  w
  The last two parameters are required to be able to symbolically a call instruction
  Returns:
  the succ_cond value
 *)

let rec succ_cond_of_bb (w: wm) (s: program_state) (e: expr) (succ_cond: et) :
      et =
  match e with
  | []      -> succ_cond
  | hd::tl  -> 
      succ_cond_of_bb w s tl (reduce_op w hd s false)

(**
  reduce_bblock from an initial program state, symbolically executes the code in an expr.
  Parameters:
  e             expr containing the code to be executed
  i             the initial program state
  w
  The last two parameters are required to be able to symbolically a call instruction
  Returns:
  a pair containing the final program_state and the succ_cond value of the code
 *)
let reduce_bblock (w: wm) (e: expr) (i: program_state):
      program_state*et =
  let f = { instr_count = 0; 
            value_stack   = List.map ~f:(fun x -> x) i.value_stack; 
            local_values  = copy_values i.local_values;
            global_values = copy_values i.global_values;
            mem_values    = List.map ~f:(fun x -> x) i.mem_values} in
  let s = succ_cond_of_bb w f e Empty in
  f,s

let rec reduce_expr (w: wm) (e: expr) (s: program_state): et =
  match e with
  | []      ->  List.hd_exn s.value_stack
  | hd::tl  ->  let (_: et) = reduce_op w hd s false in
                reduce_expr w tl s

let et_of_mglobal (w: wm) (e: expr) (s: program_state): et = 
  reduce_expr w e s

let et_of_iglobal (import_name: string) (idx: int) (t: valtype):  et =
  Variable {vtype = Var_global; idx; nt = t; vname = import_name} 

let rec create_globals (w:wm) (s: program_state) (imports: import list) (globals: global list) (n_imports: int)
          (global_vals: et array) (next: int): et array =
  match imports with
    | [] ->
      (match globals with
      | []      -> global_vals
      | hd::tl  ->
          let g_val = et_of_mglobal w hd.e s in
          set_value global_vals next g_val;
          set_global s next g_val;
          create_globals w s [] tl n_imports global_vals (next+1))
    | hd::tl ->
      (match hd.description with
        | Globaltype gt ->  let g_val = (et_of_iglobal hd.import_name hd.iindex gt.t) in
                            set_value global_vals next g_val;
                            set_global s next g_val;
                            create_globals w s tl globals n_imports global_vals (next+1)
        | _             ->  create_globals w s tl globals n_imports global_vals next)

let sum_nlocals acc (l: local_type): int = acc + l.n
let count_locals (ll: local_type list): int = List.fold_left ~f:sum_nlocals ~init:0 ll

(*
    empty_program_state
      returns a program state with the stack, locals, globals and memory initialized
      based on the module definitions
*)

let empty_program_state 
    (w: wm) (param_types: resulttype list) (local_types: local_type list): 
    program_state =
  let n_i = n_iglobals w.import_section 0 in  (* globals that are imported*)
  let n_m = n_mglobals w.global_section in    (* globals defined in the module *)
  let global_values = create_globals      (* we need a state to create the local variables*)
                      w
                      { instr_count   = 0;
                        value_stack   = [];
                        local_values  = create_values 0;
                        global_values = create_values (n_i + n_m);
                        mem_values    = []
                      }
                      w.import_section
                      w.global_section
                      n_i
                     (create_values (n_i + n_m))
                      0 in
{ instr_count   = 0;
  value_stack   = []; 
  local_values  = init_values
                    ((List.length param_types) + (count_locals local_types))
                    (et_of_local_value param_types local_types); 
  global_values = global_values;
  mem_values    = [] }
