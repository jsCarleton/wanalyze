open Core
open Easy_logging

(* Types *)
type numtype =
  | I32 | I64 | F32 | F64

type reftype =
  | Funcref | Externref

type valtype =
  | Numtype of numtype
  | Reftype of reftype

type resulttype = valtype

let valtype_of_int i =
  match i with
  | 0x7f -> Numtype I32
  | 0x7e -> Numtype I64
  | 0x7d -> Numtype F32
  | 0x7c -> Numtype F64
  | 0x70 -> Reftype Funcref
  | 0x6f -> Reftype Externref
  | _ -> failwith (String.concat ["Invalid valtype: " ; (string_of_int i)])

type labelidx = int
type blockidx = int
type funcidx = int
type typeidx = int
type blocktype = 
  | Emptytype
  | Valuetype of valtype
  | Typeindex of typeidx
type tableidx = int
type localidx = int
type globalidx = int
type elemidx = int
type dataidx = int
type memidx = int

type functype =
{
  rt1:    resulttype list;
  rt2:    resulttype list;
}
let create_functype rt1 rt2 = { rt1; rt2}

(* Imports *)
type limits =
| Noupper of int
| Lowerupper of int*int

type tabletype =
{
  et:   reftype;
  lim:  limits;
}

type memtype = limits

type mut =
| Const
| Var

type globaltype = 
{
  t:  valtype;
  m:  mut;
}

type importdesc = 
| Functype    of typeidx
| Tabletype   of tabletype
| Memtype     of memtype
| Globaltype  of globaltype

type import =
{
  module_name: string;
  import_name: string;
  description: importdesc;
  index:       int;
}

(* Functions *)

(* Tables *)
(* TODO *)

(* Memories *)
(* TODO *)

(* Exports *)
type exportdesc =
| Func    of funcidx
| Table   of tableidx
| Mem     of memidx
| Global  of globalidx

type export =
{
  name: string;
  desc: exportdesc;
}

(* Start *)
(* TODO *)

(* Elements *)
type br_table =
{
  table:  labelidx list;
  index:  labelidx;
}
type call_indirect =
{
  y:      typeidx;
  x:      tableidx;
}
type table_init =
{
  y:      elemidx;
  x:      tableidx;
}
type table_copy =
{
  x:      tableidx;
  y:      tableidx;
}
type memarg =
{
  a:      int;
  o:      int;
  bits:   int;
}
type op_arg =
  | Blocktype of blocktype
  | Labelidx of labelidx
  | BrTable of br_table
  | Funcidx of funcidx
  | CallIndirect of call_indirect
  | Reftype of reftype
  | ValtypeList of valtype list
  | Globalidx of globalidx
  | Localidx of localidx
  | Tableidx of tableidx
  | Elemidx of elemidx
  | TableCopy of table_copy
  | Memarg of memarg
  | Dataidx of dataidx
  | I32value of int
  | I64value of int64
  | F32value of float (* do we distinguish between float32 and float64? *)
  | F64value of float
  | TruncSat of int
  | EmptyArg

type instr_type =
  | Control
  | Reference
  | Parametric
  | VariableGL 
  | VariableSL 
  | VariableTL 
  | VariableGG 
  | VariableSG 
  | Table 
  | MemoryL 
  | MemoryS 
  | MemoryM 
  | Constop
  | Unop 
  | Binop of string
  | Testop 
  | Relop of string
  | Cvtop

type op_type =
{
  opcode:     int;
  opname:     string;
  arg:        op_arg;
  nesting:    int;            (* the lexical nesting level of the instruction *)
  instrtype:  instr_type;
}
type expr = op_type list

type expr_func =
{
  e:   expr;
  y:   funcidx list;
}
type elem_func =
{
  y:   funcidx list;
}
type table_expr_elem_func =
{
  x:  tableidx;
  e:  expr;
  y:  funcidx list;
}
type expr_expr =
{
  e:  expr;
  el: expr list;
}
type ref_expr =
{
  et: reftype;
  el: expr list;
}
type table_expr_ref_expr =
{
  x:  tableidx;
  e:  expr;
  et: reftype;
  el: expr list;
}

type element =
| ExprFunc of expr_func
| ElemFuncP of elem_func
| TableExprElemFunc of table_expr_elem_func
| ElemFuncD of elem_func
| ExprExpr of expr_expr
| RefExprP of ref_expr
| TableExprRefExpr of table_expr_ref_expr
| RefExprD of ref_expr

(* Code, including segments *)

type segment_type =
  UNR_SEG | IF_SEG | ELSE_SEG | END_SEG | BR_SEG | BRIF_SEG | BRT_SEG | RET_SEG | LOOP_SEG | LAST_SEG
let segtype_of_opcode (opcode: int) : segment_type =
  match opcode with
  | 0x00 -> UNR_SEG | 0x03 -> LOOP_SEG | 0x04 -> IF_SEG | 0x05 -> ELSE_SEG | 0x0b -> END_SEG | 0x0c -> BR_SEG | 0x0d -> BRIF_SEG
  | 0x0e -> BRT_SEG | 0x0f -> RET_SEG  | _ -> failwith (String.concat ["Invalid segment type: "; string_of_int opcode])

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

(*
type segment_state =
{
  pred:       int;            (* the index of the predecessor segment *)
  initial:    program_state;  (* the state after the predecessor segment was executed *)
  final:      program_state;  (* the state after the predecessor segment was executed *)
  succ_cond:  string;         (* the expression that must be true in order for the first successor state to be entered *) 
}
*)
  
type segment =
{
          index:      int;      (* the index of this segment in the list of segments, makes things easier to have this *)
          start_op:   int;      (* index into e of the first op in the expr *)
  mutable end_op:     int;      (* index+1 of the last op in the expr *)
  mutable succ:       int list; (* segment indexes of segments that can be directly reached from this segment *)
  mutable pred:       int list; (* segment indexes of segments that can directly reach this segment *)
  mutable segtype:	  int;      (* the control opcode that created this segment *)
  mutable nesting:    int;      (* the nesting level of the last opcode in the segment *)
  mutable labels:     int list; (* the destination labels used in BR, BR_IF, BR_TABLE instructions *)
  mutable br_dest:	  int;			(* for LOOP, BLOCK and IF instructions the segment that's the target of a branch for this instruction  *)
}

type execution =
{
  index:              int;              (* the index of the segment being executed *)
  pred_index:         int;
  succ_index:         int;
  initial:            program_state;    (* the program state before the first instruction of the segment is executed *)
  mutable final:      program_state;    (* the program state after the last instruction of the segment is executed *)
  mutable succ_cond:  string;           (* the expression that must be true in order for the first successor state to be entered *) 
}

let rec segments_of_expr' (e: expr) (seg_acc: segment list) (current: segment): segment list =
match e with
| [] -> seg_acc
| _  ->
  match (List.hd_exn e).opcode with
    (* 1. each of these control instructions cause the current segment to end *)
    | (* unreachable *) 0x00
    | (* block *)       0x02
    | (* loop *)        0x03
    | (* if *)          0x04
    | (* else *)        0x05
    | (* end *)         0x0b
    | (* br *)          0x0c
    | (* br_if *)       0x0d
    | (* br_table *)    0x0e
    | (* return *)      0x0f ->
      (* 1.1 if we have a branch instruction we remember the labels *)
      (match (List.hd_exn e).arg with
      | Labelidx labelidx  -> current.labels <- [labelidx]
      | BrTable br_table   -> current.labels <- br_table.table
      | _ -> ()
      );
      (* 1.2 end the segment, start a new one*)
      current.segtype <- (List.hd_exn e).opcode;
      current.nesting <- (List.hd_exn e).nesting;
      segments_of_expr' (List.tl_exn e) (List.append seg_acc [current]) 
                    {index=current.index+1; start_op=current.end_op; end_op=current.end_op+1; succ=[]; pred=[]; segtype= -1;
                     nesting = -2; labels=[]; br_dest= -1}
    (* 2. all other opcodes get added to the current segment *)
    | _ ->
      current.end_op <- current.end_op + 1;
      segments_of_expr' (List.tl_exn e) seg_acc current

let rec get_end_else_segment (segments: segment list) (index: int) (nesting: int): int =
  match (List.nth_exn segments index).segtype with
  | 0x05 when (List.nth_exn segments index).nesting = nesting -> index+1
  | 0x0b when (List.nth_exn segments index).nesting = nesting -> index+1
  | _ -> get_end_else_segment segments (index+1) nesting

let rec get_end_segment (segments: segment list) (index: int) (nesting: int): int =
  match (List.nth_exn segments index).segtype with
  | 0x0b when (List.nth_exn segments index).nesting = nesting -> index+1
  | _ -> get_end_segment segments (index+1) nesting

let rec get_target_loop (segments: segment list) (index: int) (nesting: int) (label: int): int =
  match index >= 0 with
  | true ->
    (let s = List.nth_exn segments index in
    match s.segtype with
    | 0x02 when s.nesting = nesting - label - 1 -> s.br_dest
    | 0x03 when s.nesting = nesting - label - 1 -> s.br_dest
    | 0x04 when s.nesting = nesting - label - 1 -> s.br_dest
    | _ -> get_target_loop segments (index-1) nesting label
    )
  | false -> -1
  
let rec get_target_end (segments: segment list) (index: int) (nesting: int) (label: int): int =
  match index < List.length segments with
  | true ->
    (let s = List.nth_exn segments index in
    match s.segtype with
    | 0x02 when nesting = s.nesting - label -> s.br_dest + 1
    | 0x04 when nesting = s.nesting - label -> s.br_dest + 1
    | _ -> get_target_end segments (index+1) nesting label
    )
  | false -> -1 (* failwith "Unable to find branch target" *)
    
let br_target (segments: segment list) (index: int) (nesting: int) (label: int): int =
  match get_target_loop segments (index-1) nesting label with 
  | -1 -> get_target_end segments (index-1) nesting label
  | i  -> i

let last_segment (segments: segment list): int =
  List.length segments

let set_successor (segments: segment list) (index: int) =
  let s = List.nth_exn segments index in
  match s.segtype with
    | (* unreachable *) 0x00  -> ()
    | (* end *)         0x0b
    | (* block *)       0x02
    | (* loop *)        0x03  ->
        s.succ <- [index+1]
    | (* if *)          0x04  ->
        s.succ <- [index+1; get_end_else_segment segments index s.nesting]
    | (* else *)        0x05  ->
        s.succ <- [get_end_segment segments index s.nesting]
    | (* br_if *)       0x0d ->
        s.succ <- List.cons (s.index+1) (List.map ~f:(br_target segments index s.nesting) s.labels)
    | (* br *)          0x0c
    | (* br_table *)    0x0e ->
        s.succ <- List.map ~f:(br_target segments index s.nesting) s.labels
    | (* return *)      0x0f ->
        s.succ <- [last_segment segments]
    | _ -> failwith (String.concat ["Unknown segtype: "; string_of_int s.segtype])
 
let rec set_successors (segments: segment list) (index: int) =
match index < List.length segments with
  | true -> set_successor segments index;
            set_successors segments (index+1)
  | _ -> ()

let rec set_br_dest (segments: segment list) (index: int) =
match index < List.length segments with
| false -> ()
| true ->
    (let s = List.nth_exn segments index in
    match s.segtype with
      | (* loop *)      0x03        -> s.br_dest <- index + 1
      | (* if, block *) 0x04 | 0x02 -> s.br_dest <- get_end_segment segments index s.nesting 
      | _ -> ()
    );
  set_br_dest segments (index+1)
  
(* printing the state *)
let string_of_instr_count (count: int) = String.concat ["  steps: " ; string_of_int count ; "; "]
let string_of_value_stack (stack: string list) = String.concat ["stack: [" ; (String.concat ~sep:", " stack) ; "]; "]
let string_of_local_values (locals: string array) = String.concat ["locals: [" ; (String.concat ~sep:", " (Array.to_list locals)) ; "]; "]
let string_of_global_values (globals: string array) = String.concat ["globals: [" ; (String.concat ~sep:", " (Array.to_list globals)) ; "]"]
let string_of_state (print_locals: bool) (state: program_state): string =
  String.concat [ string_of_instr_count state.instr_count;
                  string_of_value_stack state.value_stack;
                  (match print_locals with | true -> string_of_local_values state.local_values | false -> "");
                  string_of_global_values state.global_values]
let string_of_ps (ps: program_states): string = String.concat ~sep:"\n" (List.map ~f:(string_of_state true) ps)

(* Updating the state of the program *)
let pop_value (state: program_state) = state.value_stack <- List.tl_exn state.value_stack

(* Parametric operators *)
let update_state_parametricop (op: op_type) (s: program_state) = 
  match op.opcode with
  | 0x1a -> (* drop *)      pop_value s
  | 0x1b -> (* select *)    pop_value s; pop_value s (* TODO *)
  | 0x1c -> (* select t* *) pop_value s; pop_value s (* TODO *)
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
let update_state_callop fidx (param_count: int) (retval_count: int) (state: program_state) =
  (Logging.get_logger "wanalyze")#info "Calling %d, nparams: %d, nrets: %d" fidx param_count retval_count;
   state.value_stack <- List.drop state.value_stack param_count;
  List.iter ~f:(push_retval state) (List.init retval_count ~f:(fun i -> String.concat ["R" ; string_of_int i]))
let update_states_callop (param_counts: int list) (retval_counts: int list) (op: op_type) (s: states) =
  (match op.arg with
  | Funcidx fidx -> 
       (Logging.get_logger "wanalyze")#info "Calling %d" fidx;
       List.iter ~f:(update_state_callop fidx (List.nth_exn param_counts fidx) (List.nth_exn retval_counts fidx)) s.active;
  | _ -> failwith "Invalid call argument")

(* call indirect handling*)
let update_states_callindop (types: functype list) (op: op_type) (s: states) =
  (match op.arg with
  | CallIndirect c -> 
(*        (Logging.get_logger "wanalyze")#info "Calling %d" fidx;
 *)       List.iter ~f:(update_state_callop 1 (List.length (List.nth_exn types c.y).rt1) (List.length (List.nth_exn types c.y).rt2)) s.active;
  | _ -> failwith "Invalid call indirect argument")

(* de-duplication of states WIP *)
let states_equal (s1: program_state) (s2: program_state): bool =
  (List.length s1.value_stack) = (List.length s2.value_stack)

let rec filter_unique (dest: program_states) (src: program_state): bool =
  match dest with
  | [] -> true
  | hd::_ when (states_equal hd src) -> false
  | _::tl -> filter_unique tl src
let unique_states (dest: program_states) (src: program_states): program_states =
  List.append dest (List.filter ~f:(filter_unique dest) src)

let update_states_controlop (param_counts: int list) (retval_counts: int list) (types: functype list) (op: op_type) (s: states) = 
  match op.opcode with
  (* unreachable, nop - nothing to do *)
  | 0x00 | 0x01 -> ()
  (* block *)
  | 0x02 -> (* TODO *)
      s.pending <- push_pending_states s.pending None
  (* loop *)
  | 0x03 -> (* TODO *)
      s.pending <- push_pending_states s.pending None
  (* if - make a copy of our current states on the pending stack *)
    | 0x04 ->
        List.iter ~f:pop_value s.active;
        s.pending <- push_pending_states s.pending (Some s.active)
  (* else - swap the top of the pending stack and our current states *)
  | 0x05 ->
    let current = s.active in
      s.active <- pop_pending_states s.pending;
      s.pending <- List.cons (Some current) (List.tl_exn s.pending)
  (* end - pop states from the pending stack and append to the current states,
          unless it's the end of the program in which case we append the current
          states to the final states *)
  | 0x0b ->
    (match op.nesting with
    | -1 -> 
        s.final <- unique_states s.final (states_copy s.active)
    |  _ ->
        (match List.hd_exn s.pending with
        | Some states -> s.active <- unique_states s.active states
        | _ -> ());
        s.pending <- List.tl_exn s.pending
    )
  (* br *)
  | 0x0c -> () (* TODO *)
  (* br_if *)
  | 0x0d -> 
      List.iter ~f:pop_value s.active (* TODO *)
  (* br_table *)
  | 0x0e -> List.iter ~f:pop_value s.active (* TODO *)
  (* return - remember our current states as final states, clear any current states *)
  | 0x0f -> 
      s.final <- unique_states s.final (states_copy s.active);
      s.active <- []
  (* call *)
  | 0x10 -> 
      update_states_callop param_counts retval_counts op s
  (* call_indirect *)
  | 0x11 ->
      update_states_callindop types op s
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
  Array.set state.local_values (int_of_get_argL op.arg) (List.hd_exn state.value_stack);
  state.value_stack <- List.tl_exn state.value_stack
let update_state_varTLop (op: op_type) (state: program_state) = (* tee local *)
  Array.set state.local_values (int_of_get_argL op.arg) "" (*(List.hd_exn state.value_stack)*)
let update_state_varGGop (op: op_type) (state: program_state) = (* get local *)
  state.value_stack <- List.cons (Array.get state.global_values (int_of_get_argG op.arg)) state.value_stack
let update_state_varSGop (op: op_type) (state: program_state) = (* set local *)
  let value = List.hd_exn state.value_stack in
  state.value_stack <- List.tl_exn state.value_stack;
  Array.set state.global_values (int_of_get_argG op.arg) value

(* memory operator *)
let update_state_memloadop (op: op_type) (state: program_state) = 
  let addr = List.hd_exn state.value_stack in
  state.value_stack <- List.tl_exn state.value_stack;
  state.value_stack <- List.cons (String.concat [op.opname ; "@(" ; addr ; ")"]) state.value_stack
let update_state_memstoreop (state: program_state) = 
  state.value_stack <- List.tl_exn state.value_stack

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
  state.value_stack <- List.cons (String.concat [op.opname ; "(" ; (List.hd_exn state.value_stack) ; ")"]) (List.tl_exn state.value_stack)

(* binary operators *)
let update_state_binop (f: string) (state: program_state) =
  let result = String.concat ["(" ; (List.nth_exn state.value_stack 1) ; " " ; f ; " " ; (List.nth_exn state.value_stack 0) ; ")"] in
  state.value_stack <- List.cons result (List.tl_exn (List.tl_exn state.value_stack))

(* test operators *)
let update_state_testop (op: op_type) (state: program_state) = 
  state.value_stack <- List.cons (String.concat [op.opname ; "(" ; (List.hd_exn state.value_stack) ; ")"]) (List.tl_exn state.value_stack)
  
(* rel operators *)
let update_state_relop (f: string) (state: program_state) =
  let arg1 = List.hd_exn state.value_stack in
  state.value_stack <- List.tl_exn state.value_stack;
  let arg2 = List.hd_exn state.value_stack in
  state.value_stack <- List.tl_exn state.value_stack;
  state.value_stack <- List.cons (String.concat ["(" ; arg1 ; " " ; f ; " " ; arg2 ; ")"]) state.value_stack

(* cvt operators *)
let update_state_cvtop (op: op_type) (state: program_state) =
  match op.opcode with
  | 0xfc ->
      state.value_stack <- List.cons (String.concat ["TODO (" ; (List.hd_exn state.value_stack) ; ")"]) (List.tl_exn state.value_stack)
  | _ ->
      state.value_stack <- List.cons (String.concat [op.opname ; "(" ; (List.hd_exn state.value_stack) ; ")"]) (List.tl_exn state.value_stack)

(* instruction counter*)
let update_instr_count (state: program_state) = state.instr_count <- state.instr_count + 1

(* given an instruction, update states *)
let update_s (s: states) (param_counts: int list) (retval_counts: int list) (types: functype list) (op: op_type) =
  (Logging.get_logger "wanalyze")#info "States: %d " (List.length s.final);
   List.iter ~f:update_instr_count s.active;
  match op.instrtype with
  | Control -> ((Logging.get_logger "wanalyze")#info "type: Control";update_states_controlop param_counts retval_counts types op s)
  | Reference -> failwith "Unimplemented reference"
  | Parametric -> (Logging.get_logger "wanalyze")#info  "type: Parametric";List.iter ~f:(update_state_parametricop op) s.active
  | VariableGL -> (Logging.get_logger "wanalyze")#info  "type: VariableGL";List.iter ~f:(update_state_varGLop op) s.active
  | VariableSL -> (Logging.get_logger "wanalyze")#info  "type: VariableSL";List.iter ~f:(update_state_varSLop op) s.active
  | VariableTL -> (Logging.get_logger "wanalyze")#info  "type: VariableTL";List.iter ~f:(update_state_varTLop op) s.active
  | VariableGG -> (Logging.get_logger "wanalyze")#info  "type: VariableGG";List.iter ~f:(update_state_varGGop op) s.active
  | VariableSG -> (Logging.get_logger "wanalyze")#info  "type: VariableSG";List.iter ~f:(update_state_varSGop op) s.active
  | Table -> failwith "Unimplemented table"
  | MemoryL -> (Logging.get_logger "wanalyze")#info  "type: MemoryL";List.iter ~f:(update_state_memloadop op) s.active
  | MemoryS -> (Logging.get_logger "wanalyze")#info  "type: MemoryS";List.iter ~f:update_state_memstoreop s.active
  | MemoryM -> (Logging.get_logger "wanalyze")#info  "type: MemoryM"; () (* nothing to do in this case *)
  | Constop -> (Logging.get_logger "wanalyze")#info  "type: Constop";List.iter ~f:(update_state_constop op) s.active
  | Unop -> (Logging.get_logger "wanalyze")#info  "type: Unop";List.iter ~f:(update_state_unop op) s.active
  | Binop f -> (Logging.get_logger "wanalyze")#info  "type: Binop";List.iter ~f:(update_state_binop f) s.active
  | Testop -> (Logging.get_logger "wanalyze")#info  "type: Testop";List.iter ~f:(update_state_testop op) s.active
  | Relop f -> (Logging.get_logger "wanalyze")#info  "type: Relop";List.iter ~f:(update_state_binop f) s.active
  | Cvtop -> (Logging.get_logger "wanalyze")#info  "type: Cvtop";List.iter ~f:(update_state_cvtop op) s.active

let local_value n i = 
  match i >= n with
  | true -> "??"
  | _    -> String.concat ["N" ; string_of_int i]

(* TODO is this needed? *)
let reduce_fn'' (e: expr) (param_counts: int list) (retval_counts: int list) (types: functype list) (s: states): states =
  for index = 0 to (List.length e) -1 do
    (Logging.get_logger "wanalyze")#info "Instruction: %d" index;
    (*     (Logging.get_logger "wanalyze")#info "Active states: %d%!" (List.length s.active);
    (Logging.get_logger "wanalyze")#info "%s%!" (string_of_ps s.active) ;
    (Logging.get_logger "wanalyze")#info "%s%!" (string_of_inline_expr [List.nth_exn e index]);
 *)    update_s s param_counts retval_counts types (List.nth_exn e index)
  done;
  s

(* TODO is this needed? *)
let rec reduce_fn' (e: expr) (param_counts: int list) (retval_counts: int list) (types: functype list) (s: states): states =
    match e with
    | []     -> s
    | hd::tl -> 
(*       (Logging.get_logger "wanalyze")#info "%s%!" (string_of_ps s.active);
      (Logging.get_logger "wanalyze")#info "Active states: %d%!" (List.length s.active);
      (Logging.get_logger "wanalyze")#info " %s%!" (string_of_inline_expr [List.nth_exn e 0]);
 *)      update_s s param_counts retval_counts types hd;
      reduce_fn' tl param_counts retval_counts types s

let param_count  (func_sigs: functype list) (func_idx: int): int =
    List.length (List.nth_exn func_sigs func_idx).rt1
let retval_count (func_sigs: functype list) (func_idx: int): int =
    List.length (List.nth_exn func_sigs func_idx).rt2

let filter_import_fn (imp: import): bool =
  match imp.description with
  | Functype _ -> true
  | _ -> false

let get_import_typeidx (imp: import): typeidx =
  match imp.description with
    | Functype idx -> idx
    | _ -> failwith "Not an import function"

let update_state_controlop (op: op_type) (s: program_state) (param_counts: int list) (retval_counts: int list): string = 
  match op.opcode with
  (* unreachable, nop, block, loop, else, end, br, return - nothing to do *)
  | 0x00 | 0x01 | 0x02 | 0x03 | 0x05 | 0x0b | 0x0c | 0x0f -> ""
  (* if, br_if, br_table - get the condition from the top of the stack *) (* TODO fix br_table *)
  | 0x04 | 0x0d | 0x0e ->
      let succ_cond = (List.hd_exn s.value_stack) in
      s.value_stack <- (List.tl_exn s.value_stack);
      succ_cond
  (* call *)
  | 0x10 ->
    (match op.arg with
    | Funcidx fidx -> 
        update_state_callop fidx (List.nth_exn param_counts fidx) (List.nth_exn retval_counts fidx) s
    | _ -> failwith "Invalid call argument"); ""
  (* call_indirect *)
  | 0x11 -> "" (* TODO *)
  (* all other op codes *)
  | _ -> failwith "Invalid control op"
    
let reduce_op (s: program_state) (op: op_type) (param_counts: int list) (retval_counts: int list): string =
    update_instr_count s;
    match op.instrtype with
    | Control -> update_state_controlop op s param_counts retval_counts
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
      | MemoryS ->    update_state_memstoreop s
      | MemoryM ->    () (* nothing to do in this case *)
      | Constop ->    update_state_constop op s
      | Unop ->       update_state_unop op s
      | Binop f ->    update_state_binop f s
      | Testop ->     update_state_testop op s
      | Relop f ->    update_state_binop f s
      | Cvtop ->      update_state_cvtop op s
      | Control ->    failwith "Can't happen."
      ); ""
 

let rec reduce_segment' (s: program_state) (e: expr) (succ_cond: string) (param_counts: int list) (retval_counts: int list):
      string =
  match e with
  | []      -> succ_cond
  | hd::tl  -> 
    (Logging.get_logger "wanalyze")#info "in reduce_segment\' %d %d %d" 
        (s.instr_count) 
        (List.length s.value_stack)
        (Array.fold ~f:(fun x y -> x + String.length y) ~init:0 s.local_values);
    reduce_segment' s tl (reduce_op s hd param_counts retval_counts) param_counts retval_counts

let reduce_segment (e: expr) (i: program_state) (param_counts: int list) (retval_counts: int list):
      program_state*string =
  let f = {instr_count = 0; value_stack=(List.map ~f:(fun x -> x) i.value_stack); local_values=(Array.copy i.local_values);
              global_values=(Array.copy i.global_values)} in
  let s = reduce_segment' f e "" param_counts retval_counts in
  f,s

let execute_segment (s: segment) (index: int) (e: expr) (ex_acc: execution list) (initial: program_state)
        (param_counts: int list) (retval_counts: int list): execution list =
  (Logging.get_logger "wanalyze")#info "in execute_segments\'\'%s" (string_of_state true initial);
  let final, succ_cond = (reduce_segment  (List.sub e ~pos:s.start_op ~len:(s.end_op - s.start_op)) 
                                      initial param_counts retval_counts) in
    (* TODO call execute_segments'' recursively *)
    List.append ex_acc [{index; pred_index= -1; succ_index= -1; initial; final; succ_cond}]

let execute_segments' (segments: segment list) (indices: int list) (e: expr) (ex_acc: execution list) (initial: program_state)
        (param_counts: int list) (retval_counts: int list): execution list =
  match indices with
  | [] -> ex_acc
  (* TODO call execute_segments' recursively *)
  | hd::_ ->
      execute_segment (List.nth_exn segments hd) hd e ex_acc initial param_counts retval_counts

let set_pred' (segments: segment list) (src: int) (dest: int) =
  match dest < List.length segments with 
  | true -> (List.nth_exn segments dest).pred <- List.cons src (List.nth_exn segments dest).pred
  | _ -> ()
let set_pred (segments: segment list) (s: segment) =
  List.iter ~f:(set_pred' segments s.index) s.succ

let segments_of_expr (e: expr) : segment list =
  let segments = segments_of_expr' e [] {index=0; start_op=0; end_op=1; succ=[]; pred=[]; segtype= -1; nesting = -2;
                                     labels=[]; br_dest= -1} in
  set_br_dest segments 0;
  set_successors segments 0;
  List.iter ~f:(set_pred segments) segments;
  segments

let graph_node (src: int) (label: string) (dest: int): string =
  match src >= dest with
  | true  -> 
      String.concat ["    "; string_of_int src; " -> "; string_of_int dest; "[color=\"red\" fontcolor=\"red\" label=\""; label; "\"];\n"]
  | false -> 
      String.concat ["    "; string_of_int src; " -> "; string_of_int dest; "[label=\""; label; "\"];\n"]

let graph_segment (index: int) (segtype: int) (succ: int list) (pred: int list) (last: int): string =
  match List.length pred > 0 || index = 0 with
  | true ->
    (match segtype with
    | (* unreachable *) 0x00 -> ""
    | (* end *)         0x0b -> graph_node index "end" (List.nth_exn succ 0)
    | (* block *)       0x02 -> graph_node index "block" (List.nth_exn succ 0)
    | (* loop *)        0x03 -> graph_node index "loop" (List.nth_exn succ 0)
    | (* if *)          0x04 ->
        String.concat [
          graph_node index "if" (List.nth_exn succ 0);
          graph_node index "~if" (List.nth_exn succ 1);
        ]
    | (* else *)        0x05 -> graph_node index "else" (List.nth_exn succ 0)
    | (* br_if *)       0x0d ->
        String.concat [
          graph_node index "~br_if" (List.nth_exn succ 0);
          graph_node index "br_if" (List.nth_exn succ 1);
        ]
    | (* br *)          0x0c -> graph_node index "br" (List.nth_exn succ 0)
    | (* br_table *)    0x0e -> String.concat (List.map ~f:(graph_node index  "br_table") succ)
    | (* return *)      0x0f -> graph_node index "return" last
    | _ -> failwith (String.concat ["Unknown segtype to graph: "; string_of_int segtype]))
  | _ -> ""

let graph_prefix (module_name: string) (func_idx: int) (last: int): string =
  String.concat[
          "digraph finite_state_machine {\n";
          "    label = \""; module_name; " - function "; string_of_int func_idx; "\"\n";
          "    labelloc =  t\n";
          "    labelfontsize = 16\n";
          "    labelfontcolor = black\n";
          "    labelfontname = \"Helvetica\"\n";
          "    node [shape = doublecircle]; 0 "; string_of_int last; ";\n";
          "    node [shape = circle];\n"]
let graph_suffix = "}\n"
let rec graph_segments' (segments: segment list) (last: int) (acc: string): string =
  match segments with
  | [] -> acc
  | hd::tl -> graph_segments' tl last (String.concat [acc; graph_segment hd.index hd.segtype hd.succ hd.pred last])
let graph_segments (module_name: string) (func_idx: int) (segments: segment list): string =
  let last = (List.length segments) in
  String.concat [ graph_prefix module_name func_idx last; 
                  graph_segments' segments (List.length segments) "";
                  graph_suffix]

type local_type =
{
  n:  int;
  v:  valtype;
}
type func =
{
  locals:   local_type list;
  e:        expr;
  segments: segment list;
}

(* TODO: delete this? *)
let reduce_fn (f: func) (param_counts: int list) (retval_counts: int list) (types: functype list) (nparams: int) (nlocals: int): states =
  reduce_fn''
    f.e param_counts retval_counts types
    {active=[{instr_count=0;
                value_stack=[]; 
                local_values=Array.init (nparams + nlocals) ~f:(local_value nparams); 
                global_values=Array.create ~len:10 "abc"}];
     pending=[];
     final=[]}

(* Globals *)
type global =
{
  index:  int;
  gt:     globaltype;
  e:      expr;
}

(* Data *)
type expr_bytes =
{
  e:  expr;
  b:  bytes;
}
type mem_expr_bytes =
{
  x:  memidx;
  e:  expr;
  b:  bytes;
}
type data_details =
| ExprBytes of expr_bytes
| Bytes of bytes
| MemExprBytes of mem_expr_bytes
type data =
{
  index:    int;
  details:  data_details;
}

(* Data Count *)

(* wasm Module *)
type wasm_module =
{
  module_name:              string;
  mutable data_count:       int;
  mutable type_section:     functype list;
  mutable import_section:   import list;
  mutable function_section: typeidx list;
  mutable table_section:    tabletype list;
  mutable memory_section:   memtype list;
  mutable global_section:   global list;
  mutable export_section:   export list;
  mutable start_section:    funcidx option;
  mutable element_section:  element list;
  mutable code_section:     func list;
  mutable data_section:     data list;
  mutable last_import_func: funcidx;
  mutable next_global:      int;
  mutable next_memory:      int;
  mutable next_table:       int;
  mutable next_data:        int;
}

let get_size (m: memtype): int =
match m with
| Noupper min         -> min
| Lowerupper (_,max)  -> max

let rec get_memory_size (i:import list): int =
  match (List.hd_exn i).description with
  | Memtype m -> (get_size m)
  | _ -> get_memory_size (List.tl_exn i)

let sum_nlocals acc (l: local_type) = acc + l.n

let execute_segments (w: wasm_module) (segments: segment list) (fidx: int) (e: expr): execution list =
  let all_fn_sigs = List.append (List.map ~f:get_import_typeidx (List.filter w.import_section ~f:filter_import_fn)) w.function_section in
  let param_counts = List.map ~f:(param_count  w.type_section) all_fn_sigs in
  let retval_counts= List.map ~f:(retval_count w.type_section) all_fn_sigs in
  let nparams = List.nth_exn param_counts fidx in
  let nlocals = List.fold_left ~f:sum_nlocals ~init:0 (List.nth_exn w.code_section (fidx - w.last_import_func)).locals in
  (Logging.get_logger "wanalyze")#info "execute_segments fidx: %d nparams: %d nlocals: %d" fidx nparams nlocals;
  execute_segments'
      segments    (* segments to execute *)
      [0]         (* index of the segment to start with *)
      e           (* code of those segments *)
      []          (* results of the execution so far *)
      (* the initial state of the program *)
      {instr_count=0; value_stack=[]; local_values=Array.init (nparams + nlocals) ~f:(local_value nparams); 
          global_values=Array.create ~len:10 "abc"}
      (* parameter count for each function *)
      param_counts
      (* return value count for each function *)
      retval_counts

let create name =
  { module_name = name; data_count = 0;
    type_section = []; import_section = []; function_section = []; table_section = []; 
    memory_section = []; global_section = []; export_section = []; start_section = None; 
    element_section = []; code_section = []; data_section = [];
    last_import_func = 0; next_global = 0; next_memory = 0; next_table = 0; next_data = 0}

(* TODO this doesn't really make sense as written *)
let print_reduction (param_counts: int list) (retval_counts: int list) (w: wasm_module) (func_idx: funcidx) (f: func) =
  let nparams = List.nth_exn param_counts (func_idx + w.last_import_func) in
  let nlocals = List.fold_left ~f:sum_nlocals ~init:0 f.locals in
  let fname = String.concat["funcs/"; (Filename.chop_extension w.module_name); "-func"; string_of_int (func_idx + w.last_import_func); ".trace"] in
  let oc = Out_channel.create fname in
    Out_channel.output_string oc (sprintf "Start state: %s\n" (string_of_ps [{instr_count = 0; value_stack = []; 
                                                                local_values = Array.init (nparams + nlocals) ~f:(local_value nparams); 
                                                                global_values = Array.create ~len:10 "abc"}]));
    Out_channel.output_string oc (sprintf "Final states:%s\n" (string_of_ps (reduce_fn f param_counts retval_counts w.type_section nparams nlocals).final));
    Out_channel.close oc

let print_reductions (w: wasm_module) =
  Gc.set {(Gc.get ()) with verbose = 0x01};
  let all_fn_sigs = List.append (List.map ~f:get_import_typeidx (List.filter w.import_section ~f:filter_import_fn)) w.function_section in
  let param_counts = List.map ~f:(param_count  w.type_section) all_fn_sigs in
  let retval_counts= List.map ~f:(retval_count w.type_section) all_fn_sigs in
  List.iteri ~f:(print_reduction param_counts retval_counts w) w.code_section
    
(* Section updating *)
(* type section *)
let update_type_section w (rt1, rt2) =
  w.type_section 
    <- List.append w.type_section [create_functype (List.map ~f:valtype_of_int rt1) (List.map ~f:valtype_of_int rt2) ]; true

(* import section *)
let index_of w desc =
  (match desc with
  | Functype _ -> w.last_import_func <- w.last_import_func + 1; w.last_import_func-1
  | Tabletype _ -> w.next_table <- w.next_table + 1; w.next_table-1
  | Memtype _ -> w.next_memory <- w.next_memory + 1; w.next_memory-1
  | Globaltype _ -> w.next_global <- w.next_global + 1; w.next_global-1
  )
let update_import_section w module_name import_name description =
  match description with
  | None -> false
  | Some desc ->
      w.import_section 
          <- List.append w.import_section [{module_name; import_name; description=desc; index = index_of w desc}];
      true

(* function section *)
let update_function_section w i =
  w.function_section <- List.append w.function_section [i]; true

(* table section *)
let update_table_section w t =
  w.table_section <- List.append w.table_section [t]; true

(* memory section *)
let update_memory_section w m =
  w.memory_section <- List.append w.memory_section [m]; true

(* global section *)
let index_of_global w =
  w.next_global <- w.next_global + 1; w.next_global-1
let update_global_section w gt e =
  w.global_section <- List.append w.global_section [{gt; e; index = index_of_global w}]; true

(* export section *)
let update_export_section w name desc =
  w.export_section <- List.append w.export_section [{name; desc}]; true

(* start section *)
let update_start_section w idx = w.start_section <- Some idx; true

(* element section *)
let update_element_section w elem =
  w.element_section <- List.append w.element_section [elem]; true

(* code section *)
let update_code_section w locals e =
  w.code_section <- List.append w.code_section [{locals; e; segments=segments_of_expr e}]

(* data section *)
let index_of_data w =
  w.next_data <- w.next_data + 1; w.next_data-1
let update_data_section w details =
  w.data_section <- w.data_section@[{index = index_of_data w; details}]; true

(* data count *)
let update_data_count_section w count = w.data_count <- count; true