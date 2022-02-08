open Core
open Easy_logging

(* Type definitions *)
(* Part 1 - Module definitions *)
(* most of these are definitions taken from the wasm spec *)

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

(* this type is supplemented with additional information to facilitate analysis *)
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

(* Code, including bblocks *)

type local_type =
{
  n:  int;
  v:  valtype;
}

(* basic blocks and code paths are supplementary information that we store as part of the func definition to
    facilitate analysis *)
(* basic blocks have a type that's determined by the control instruction that terminates the bblock *)
type bb_type =
  BB_unknown |
  BB_unreachable | BB_block | BB_loop | BB_if | BB_else | BB_end | BB_br | BB_br_if | BB_br_table | BB_return

type bblock =
{
          index:    int;      (* the index of this bblock in the list of bblocks, makes things easier to have this *)
          start_op: int;      (* index into e of the first op in the expr *)
  mutable end_op:   int;      (* index+1 of the last op in the expr *)
  mutable succ:     int list; (* bblock indexes of bblocks that can be directly reached from this bblock *)
  mutable pred:     int list; (* bblock indexes of bblocks that can directly reach this bblock *)
  mutable bbtype:	  bb_type;  (* effectively the control opcode that created this bblock *)
  mutable nesting:  int;      (* nesting level of the last opcode in the bblock *)
  mutable labels:   int list; (* destination labels used in BR, BR_IF, BR_TABLE instructions *)
  mutable br_dest:	int;			(* for LOOP, BLOCK and IF instructions the bblock that's the target of a branch for this instruction  *)
}

type code_path = int list

(* type that describes a function that's implement in a wasm module *)
type func =
{
  locals:     local_type list;    (* local variable types of the function *)
  e:          expr;               (* code of the function *)
  bblocks:    bblock list;        (* basic blocks *)
  code_paths: code_path list;     (* code paths *)
}

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

(* Type definitions *)
(* Part 2 - Analysis definitions *)
(* definitions that our analysis is based on *)
(* the types op_code, bblock and code_path are defined above but are strictly speaking a by-product of our analysis *)

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

type execution =
{
  index:              int;              (* the index of the bblock being executed *)
  pred_index:         int;
  succ_index:         int;
  initial:            program_state;    (* the program state before the first instruction of the bblock is executed *)
  mutable final:      program_state;    (* the program state after the last instruction of the bblock is executed *)
  mutable succ_cond:  string;           (* the expression that must be true in order for the first successor state to be entered *) 
}

(* Implementation *)
(* Part 1 - symbolic variable initialization of locals, parameters and function return values *)
(* globals need the symbolic execution definitions to be initialized *)

let string_of_resulttype (t: resulttype): string =
  match t with
  | Numtype nt ->
      (match nt with
        | I32 -> "n"
        | I64 -> "N"
        | F32 -> "f"
        | F64 -> "F")
  | _ -> "?"

let rec local_type_of_index (local_types: local_type list) (index: int) (types_index: int) (types_count: int): valtype =
  match index < types_count + (List.nth_exn local_types types_index).n with
  | true  -> (List.nth_exn local_types types_index).v
  | _     -> local_type_of_index local_types index (types_index+1) (types_count + (List.nth_exn local_types types_index).n)

let local_value (param_types: resulttype list) (local_types: local_type list) (i: int) =
  let nparams = List.length param_types in
  match i < nparams with 
  | true  -> String.concat ["p"; string_of_resulttype (List.nth_exn param_types i); string_of_int i] 
  | _     -> String.concat ["l"; string_of_resulttype (local_type_of_index local_types (i - nparams) 0 0); string_of_int i]

let string_of_retval (index: int) (rt: resulttype): string =
  String.concat ["r"; (string_of_resulttype rt); (string_of_int index)]

(* Implementation *)
(* Part 2 - basic blocks *)

let bb_type_of_opcode (op: int): bb_type =
  match op with
  | (* unreachable *) 0x00 -> BB_unreachable
  | (* block *)       0x02 -> BB_block
  | (* loop *)        0x03 -> BB_loop
  | (* if *)          0x04 -> BB_if
  | (* else *)        0x05 -> BB_else
  | (* end *)         0x0b -> BB_end
  | (* br *)          0x0c -> BB_br
  | (* br_if *)       0x0d -> BB_br_if
  | (* br_table *)    0x0e -> BB_br_table   
  | (* return *)      0x0f -> BB_return
  | _                      -> failwith (sprintf "Invalid opcode for bb %x" op)

let mult_succ_count (bblocks: bblock list): int =
  List.fold bblocks ~init:0 ~f:(fun a x -> match x.succ with |[] | [_] -> a | _ -> a+1)

let rec bblocks_of_expr' (e: expr) (bb_acc: bblock list) (current: bblock): bblock list =
match e with
| [] -> bb_acc
| _  ->
  match (List.hd_exn e).opcode with
    (* 1. each of these control instructions cause the current bblock to end *)
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
      (* 1.2 end the bblock, start a new one*)
      current.bbtype <- bb_type_of_opcode (List.hd_exn e).opcode;
      current.nesting <- (List.hd_exn e).nesting;
      (* the new block doesn't have a correct type until we discover what it is*)
      bblocks_of_expr' (List.tl_exn e) (List.append bb_acc [current]) 
                    {index=current.index+1; start_op=current.end_op; end_op=current.end_op+1; succ=[]; pred=[]; bbtype= BB_unknown;
                     nesting = -2; labels=[]; br_dest= -1}
    (* 2. all other opcodes get added to the current bblock *)
    | _ ->
      current.end_op <- current.end_op + 1;
      bblocks_of_expr' (List.tl_exn e) bb_acc current

let rec get_end_else_bblock (bblocks: bblock list) (index: int) (nesting: int): int =
  match (List.nth_exn bblocks index).bbtype with
  | BB_else when (List.nth_exn bblocks index).nesting = nesting -> index+1
  | BB_end  when (List.nth_exn bblocks index).nesting = nesting -> index+1
  | _ -> get_end_else_bblock bblocks (index+1) nesting

let rec get_end_bblock (bblocks: bblock list) (index: int) (nesting: int): int =
  match (List.nth_exn bblocks index).bbtype with
  | BB_end when (List.nth_exn bblocks index).nesting = nesting -> index+1
  | _ -> get_end_bblock bblocks (index+1) nesting

let rec get_target_loop (bblocks: bblock list) (index: int) (nesting: int) (label: int): int =
  match index >= 0 with
  | true ->
    (let s = List.nth_exn bblocks index in
    match s.bbtype with
    | BB_block  when s.nesting = nesting - label - 1 -> s.br_dest
    | BB_loop   when s.nesting = nesting - label - 1 -> s.br_dest
    | BB_if     when s.nesting = nesting - label - 1 -> s.br_dest
    | _ -> get_target_loop bblocks (index-1) nesting label
    )
  | false -> -1
  
let rec get_target_end (bblocks: bblock list) (index: int) (nesting: int) (label: int): int =
  match index < List.length bblocks with
  | true ->
    (let s = List.nth_exn bblocks index in
    match s.bbtype with
    | BB_block  when nesting = s.nesting - label -> s.br_dest + 1
    | BB_if     when nesting = s.nesting - label -> s.br_dest + 1
    | _ -> get_target_end bblocks (index+1) nesting label
    )
  | false -> -1 (* failwith "Unable to find branch target" *)
    
let br_target (bblocks: bblock list) (index: int) (nesting: int) (label: int): int =
  match get_target_loop bblocks (index-1) nesting label with 
  | -1 -> get_target_end bblocks (index-1) nesting label
  | i  -> i

let last_bblock (bblocks: bblock list): int =
  List.length bblocks

let set_successor (bblocks: bblock list) (index: int) =
  let s = List.nth_exn bblocks index in
  match s.bbtype with
    | BB_end
    | BB_block
    | BB_loop ->
        s.succ <- [index+1]
    | BB_if ->
        s.succ <- [index+1; get_end_else_bblock bblocks index s.nesting]
    | BB_else ->
        s.succ <- [get_end_bblock bblocks index s.nesting]
    | BB_br_if ->
        s.succ <- List.cons (s.index+1) (List.map ~f:(br_target bblocks index s.nesting) s.labels)
    | BB_br
    | BB_br_table ->
        s.succ <- List.map ~f:(br_target bblocks index s.nesting) s.labels
    | BB_unreachable
    | BB_return ->
        s.succ <- [last_bblock bblocks]
    | BB_unknown ->
        failwith "Unknown bb block type in set_successor"
 
let rec set_successors (bblocks: bblock list) (index: int) =
match index < List.length bblocks with
  | true -> set_successor bblocks index;
            set_successors bblocks (index+1)
  | _ -> ()

let rec set_br_dest (bblocks: bblock list) (index: int) =
match index < List.length bblocks with
| false -> ()
| true ->
    (let s = List.nth_exn bblocks index in
    match s.bbtype with
      | BB_loop           -> s.br_dest <- index + 1
      | BB_if | BB_block  -> s.br_dest <- get_end_bblock bblocks index s.nesting 
      | _ -> ()
    );
  set_br_dest bblocks (index+1)

(* Implementation *)
(* Part 3 - symbolic execution *)

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
let update_state_callop (_: wasm_module) (param_count: int) (retval_types: resulttype list) (state: program_state) =
  state.value_stack <- List.drop state.value_stack param_count;
  List.iter ~f:(push_retval state) 
    (List.init (List.length retval_types) ~f:(fun i -> (string_of_retval i (List.nth_exn retval_types i))))

let update_states_callop (w: wasm_module) (param_counts: int list) (op: op_type) (s: states) =
  match op.arg with
  | Funcidx fidx -> 
       List.iter  ~f:(update_state_callop w (List.nth_exn param_counts fidx) 
                                            (List.nth_exn w.type_section (List.nth_exn w.function_section fidx)).rt2)
                  s.active;
  | _ -> failwith "Invalid call argument"

let nparams (w: wasm_module) (fidx: int) =
  List.length (List.nth_exn w.type_section (List.nth_exn w.function_section fidx)).rt1
        
(* call indirect handling*)
let update_states_callindop (w: wasm_module) (op: op_type) (s: states) =
  match op.arg with
  | CallIndirect c -> 
       List.iter  ~f:(update_state_callop w (nparams w c.y)
                                            (List.nth_exn w.type_section (List.nth_exn w.function_section c.y)).rt2)
                  s.active;
  | _ -> failwith "Invalid call indirect argument"

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

let update_states_controlop (w: wasm_module) (param_counts: int list) (op: op_type) (s: states) = 
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
      update_states_callop w param_counts op s
  (* call_indirect *)
  | 0x11 ->
      update_states_callindop w op s
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
  Array.set state.local_values (int_of_get_argL op.arg) (List.hd_exn state.value_stack)
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
 
(* TODO this does the same thing as update_state_binop *)
(* rel operators *)
let update_state_relop (f: string) (state: program_state) =
  let arg2 = List.hd_exn state.value_stack in
  state.value_stack <- List.tl_exn state.value_stack;
  let arg1 = List.hd_exn state.value_stack in
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
let update_s (w: wasm_module) (s: states) (param_counts: int list) (op: op_type) =
  (Logging.get_logger "wanalyze")#info "States: %d " (List.length s.final);
   List.iter ~f:update_instr_count s.active;
  match op.instrtype with
  | Control ->    ((Logging.get_logger "wanalyze")#info "type: Control";update_states_controlop w param_counts op s)
  | Reference ->  failwith "Unimplemented reference"
  | Parametric -> (Logging.get_logger "wanalyze")#info  "type: Parametric";List.iter ~f:(update_state_parametricop op) s.active
  | VariableGL -> (Logging.get_logger "wanalyze")#info  "type: VariableGL";List.iter ~f:(update_state_varGLop op) s.active
  | VariableSL -> (Logging.get_logger "wanalyze")#info  "type: VariableSL";List.iter ~f:(update_state_varSLop op) s.active
  | VariableTL -> (Logging.get_logger "wanalyze")#info  "type: VariableTL";List.iter ~f:(update_state_varTLop op) s.active
  | VariableGG -> (Logging.get_logger "wanalyze")#info  "type: VariableGG";List.iter ~f:(update_state_varGGop op) s.active
  | VariableSG -> (Logging.get_logger "wanalyze")#info  "type: VariableSG";List.iter ~f:(update_state_varSGop op) s.active
  | Table ->      failwith "Unimplemented table"
  | MemoryL ->    (Logging.get_logger "wanalyze")#info  "type: MemoryL";List.iter ~f:(update_state_memloadop op) s.active
  | MemoryS ->    (Logging.get_logger "wanalyze")#info  "type: MemoryS";List.iter ~f:update_state_memstoreop s.active
  | MemoryM ->    (Logging.get_logger "wanalyze")#info  "type: MemoryM"; () (* nothing to do in this case *)
  | Constop ->    (Logging.get_logger "wanalyze")#info  "type: Constop";List.iter ~f:(update_state_constop op) s.active
  | Unop ->       (Logging.get_logger "wanalyze")#info  "type: Unop";List.iter ~f:(update_state_unop op) s.active
  | Binop f ->    (Logging.get_logger "wanalyze")#info  "type: Binop";List.iter ~f:(update_state_binop f) s.active
  | Testop ->     (Logging.get_logger "wanalyze")#info  "type: Testop";List.iter ~f:(update_state_testop op) s.active
  | Relop f ->    (Logging.get_logger "wanalyze")#info  "type: Relop";List.iter ~f:(update_state_binop f) s.active
  | Cvtop ->      (Logging.get_logger "wanalyze")#info  "type: Cvtop";List.iter ~f:(update_state_cvtop op) s.active

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

let update_state_controlop (w: wasm_module) (op: op_type) (s: program_state): string = 
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
        update_state_callop w (nparams w fidx)
                              (List.nth_exn w.type_section (List.nth_exn w.function_section fidx)).rt2
                            s
    | _ -> failwith "Invalid call argument"); ""
  (* call_indirect *)
  | 0x11 -> "" (* TODO *)
  (* all other op codes *)
  | _ -> failwith "Invalid control op"
    
let reduce_op (w: wasm_module) (op: op_type) (s: program_state): string =
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

let rec reduce_expr (w: wasm_module) (e: expr) (s: program_state): string =
  match e with
  | []      ->  List.hd_exn s.value_stack
  | hd::tl  ->  let (_: string) = reduce_op w hd s in
                reduce_expr w tl s

(**
  reduce_bblock' symbolically executes the code in an expr.
  Parameters:
  s             the starting program_state, as a side-effect of symbolic execution this state is updated
  e             expr containing the code to be executed
  succ_cond     success condition for the last br_if or if instruction, if any, in the code
  w
  The last two parameters are required to be able to symbolically a call instruction
  Returns:
  the succ_cond value
 *)
let rec reduce_bblock' (w: wasm_module) (s: program_state) (e: expr) (succ_cond: string) :
      string =
  match e with
  | []      -> succ_cond
  | hd::tl  -> 
      reduce_bblock' w s tl (reduce_op w hd s)

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
let reduce_bblock (w: wasm_module) (e: expr) (i: program_state):
      program_state*string =
  (Logging.get_logger "wanalyze")#info "reducing bblock";
  let f = {instr_count = 0; value_stack=(List.map ~f:(fun x -> x) i.value_stack); local_values=(Array.copy i.local_values);
              global_values=(Array.copy i.global_values)} in
  let s = reduce_bblock' w f e "" in
  f,s

let execute_bblock (w: wasm_module) (bb: bblock) (index: int) (e: expr) (ex_acc: execution list) (initial: program_state): execution list =
  let final, succ_cond = (reduce_bblock w (List.sub e ~pos:bb.start_op ~len:(bb.end_op - bb.start_op)) 
                                      initial) in
    (* TODO call execute_bblocks'' recursively *)
    List.append ex_acc [{index; pred_index= -1; succ_index= -1; initial; final; succ_cond}]

let execute_bblocks' (w: wasm_module) (bblocks: bblock list) (indices: int list) (e: expr) (ex_acc: execution list)
      (initial: program_state): execution list =
  match indices with
  | [] -> ex_acc
  (* TODO call execute_bblocks' recursively *)
  | hd::_ ->
      execute_bblock w (List.nth_exn bblocks hd) hd e ex_acc initial

let set_pred' (bblocks: bblock list) (src: int) (dest: int) =
  match dest < List.length bblocks with 
  | true -> (List.nth_exn bblocks dest).pred <- List.cons src (List.nth_exn bblocks dest).pred
  | _ -> ()
let set_pred (bblocks: bblock list) (bb: bblock) =
  List.iter ~f:(set_pred' bblocks bb.index) bb.succ

let bblocks_of_expr (e: expr) : bblock list =
  let bblocks = bblocks_of_expr' e [] {index=0; start_op=0; end_op=1; succ=[]; pred=[]; bbtype=BB_unknown; nesting = -2;
                                     labels=[]; br_dest= -1} in
  set_br_dest bblocks 0;
  set_successors bblocks 0;
  List.iter ~f:(set_pred bblocks) bblocks;
  bblocks

(* Implementation *)
(* Part 4 - code paths *)

(*
    succ_of_cp
    Takes a list of bblocks and a code path and returns the list of bblocks that
    are immediate successors to the code path
*)
let succ_of_cp (bblocks: bblock list) (cp: code_path): int list =
    (List.nth_exn bblocks (List.hd_exn cp)).succ

(*
    term_of_cp_bb
        Takes a code path and a successor bblock id
        Returns the code path if the successor bblock has index greater than the
        index of the last bblock in the given code path.
        None otherwise
*)
let term_of_cp_bb(bblocks: bblock list) (cp: code_path) (succ: int): code_path option =
    match       (succ >= List.length bblocks) 
            ||  (List.nth_exn bblocks (List.hd_exn cp)).index >= (List.nth_exn bblocks succ).index with
    | true  -> Some cp
    |  _    -> None
    
(*
    terms_of_cp
        Takes a code path and returns a list containing the terminal code paths that are terminated
        by the next bblock one bblock longer than the given code path
*)
let terms_of_cp (bblocks: bblock list) (cp: code_path): code_path list =
    List.filter_map ~f:(term_of_cp_bb bblocks cp) (succ_of_cp bblocks cp)

(*
    nterm_of_cp_bb
    Takes a code path and a successor bblock id
    Returns an updated code path if the successor bblock has index greater than the
    index of the last bblock in the given code path.
    None otherwise
*)
let nterm_of_cp_bb (bblocks: bblock list) (cp: code_path) (succ: int): code_path option =
    match       (succ < List.length bblocks) 
            &&  (List.nth_exn bblocks (List.hd_exn cp)).index < (List.nth_exn bblocks succ).index with
    | true    -> Some (List.cons succ cp)
    | _       -> None

(*
    nterms_of_cp
        Takes a code path and returns a list containing the non-terminal code paths that are one bblock longer
        than the given code path
*)
let nterms_of_cp (bblocks: bblock list) (cp: code_path): code_path list =
    List.filter_map ~f:(nterm_of_cp_bb bblocks cp) (succ_of_cp bblocks cp)

(*
    is_term
        Takes a code path and returns true if it has reached a terminal state, false otherwise
*)
let is_term (bblocks: bblock list) (cp: code_path): bool =
    match (List.nth_exn bblocks (List.hd_exn cp)).bbtype with
    | BB_return
    | BB_unreachable -> true
    | _ ->
        (match succ_of_cp bblocks cp with
        | []    -> true
        | _     -> false)

(*
    step_code_path
        Takes list of bblocks and a code path
        Returns a pair of lists of code-paths that's the resulting non-terminal and terminal paths respectively
*)
let step_code_path (bblocks: bblock list) (cp: code_path): (code_path list)*(code_path list) =
    match is_term bblocks cp with
    | true  -> [], [cp]
    | _     -> (nterms_of_cp bblocks cp), (terms_of_cp bblocks cp)

(* 
    code_paths_of_bblocks'
        Takes a list of bblocks, a list of non-terminal code paths and a list of terminal code paths
        Returns the terminal code paths *unless* we think there are too many code paths. In that case
        we return []
*)
let rec code_paths_of_bblocks' (bblocks: bblock list) (nterm: code_path list) (term: code_path list): code_path list =
  match (mult_succ_count bblocks) < 30 with   (* hack to prevent this code from running for a very long time *)
  | true ->
    (match nterm with
    | []        -> term
    | hd::tl    ->
        let n,t = step_code_path bblocks hd in
            code_paths_of_bblocks' bblocks (List.append n tl) (List.append t term))
  | _ -> []

(*
    For convenience we build each code path in reverse order. Here we reverse that since
    we actually need them in flow graph order for execution purposes
*)
let code_paths_of_bblocks (bblocks: bblock list) (nterm: code_path list) (term: code_path list): code_path list =
  List.map ~f:List.rev (code_paths_of_bblocks' bblocks nterm term)

(* Implementation *)
(* Part 5 - globals *)
(* this is here because we need the symbolic execution definitions to be able to
    initialize globals *)

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

let string_of_mglobal (w: wasm_module) (e: expr) (s: program_state): string = 
      reduce_expr w e s

let string_of_iglobal (import_name: string) (index: int) (t: valtype):  string =
  String.concat ["g"; string_of_resulttype t; string_of_int index; " ("; import_name; ")"]

let rec create_globals (w:wasm_module) (s: program_state) (imports: import list) (globals: global list) (n_imports: int)
          (global_vals: string array) (next: int): string array =
  match imports with
    | [] ->
      (match globals with
      | []      -> global_vals
      | hd::tl  ->
          let g_val = string_of_mglobal w hd.e s in
          Array.set global_vals next g_val;
          Array.set s.global_values next g_val;
          create_globals w s [] tl n_imports global_vals (next+1))
    | hd::tl ->
      (match hd.description with
        | Globaltype gt ->  let g_val = (string_of_iglobal hd.import_name hd.index gt.t) in
                            Array.set global_vals next g_val;
                            Array.set s.global_values next g_val;
                            create_globals w s tl globals n_imports global_vals (next+1)
        | _             ->  create_globals w s tl globals n_imports global_vals next)

let sum_nlocals acc (l: local_type) = acc + l.n

(* Implementation *)
(* Part 6 - program state *)
(*
    empty_program_state
      returns a program state with the stack, locals and globals initialized based on the
      module definitions
*)
let empty_program_state (w: wasm_module) (param_types: resulttype list) (local_types: local_type list): program_state =
  let n_i = n_iglobals w.import_section 0 in    (* globals that are imported*)
  let n_m = n_mglobals w.global_section in      (* globals defined in the module *)
  let global_values = create_globals            (* we need a state to create the local variables*)
                      w
                      { instr_count = 0;
                        value_stack = [];
                        local_values = Array.create ~len:0 "";
                        global_values = (Array.create ~len:(n_i + n_m) "")
                      }
                      w.import_section
                      w.global_section
                      n_i
                      (Array.create ~len:(n_i + n_m) "")
                      0 in
{ instr_count   = 0;
  value_stack   = []; 
  local_values  = Array.init 
                    ((List.length param_types) + (List.fold_left ~f:sum_nlocals ~init:0 local_types))
                    ~f:(local_value param_types local_types); 
  global_values = global_values }

(* Implementation *)
(* Part 7 - basic block execution *)

let execute_bblocks (w: wasm_module) (bblocks: bblock list) (fnum: int) (e: expr): execution list =
  let param_types   = (List.nth_exn w.type_section (List.nth_exn w.function_section fnum)).rt1 in
  let local_types   = (List.nth_exn w.code_section (fnum - w.last_import_func)).locals in 
  execute_bblocks'
      w           (* module *)
      bblocks     (* bblocks to execute *)
      [0]         (* index of the bblock to start with *)
      e           (* code of those bblocks *)
      []          (* results of the execution so far *)
      (empty_program_state w param_types local_types)
                  (* initial state of the program *)

let create name =
  { module_name = name; data_count = 0;
    type_section = []; import_section = []; function_section = []; table_section = []; 
    memory_section = []; global_section = []; export_section = []; start_section = None; 
    element_section = []; code_section = []; data_section = [];
    last_import_func = 0; next_global = 0; next_memory = 0; next_table = 0; next_data = 0}
  
(* Implementation *)
(* Part 8 - section updating *)

(* type section *)
let update_type_section (w: wasm_module) (rt1, rt2) =
  w.type_section 
    <- List.append w.type_section [{rt1 = List.map ~f:valtype_of_int rt1; rt2 = List.map ~f:valtype_of_int rt2}]; true

(* import section *)
let index_of (w: wasm_module) desc =
  (match desc with
  | Functype _ -> w.last_import_func <- w.last_import_func + 1; w.last_import_func-1
  | Tabletype _ -> w.next_table <- w.next_table + 1; w.next_table-1
  | Memtype _ -> w.next_memory <- w.next_memory + 1; w.next_memory-1
  | Globaltype _ -> w.next_global <- w.next_global + 1; w.next_global-1
  )
let update_import_section (w: wasm_module) module_name import_name description =
  match description with
  | None -> false
  | Some desc ->
      w.import_section 
          <- List.append w.import_section [{module_name; import_name; description=desc; index = index_of w desc}];
      (match desc with
      | Functype i ->
          w.function_section <- List.append w.function_section [i]
      | _ -> ());
      true

(* function section *)
let update_function_section (w: wasm_module) i =
  w.function_section <- List.append w.function_section [i]; true

(* table section *)
let update_table_section (w: wasm_module) t =
  w.table_section <- List.append w.table_section [t]; true

(* memory section *)
let update_memory_section (w: wasm_module) m =
  w.memory_section <- List.append w.memory_section [m]; true

(* global section *)
let index_of_global (w: wasm_module) =
  w.next_global <- w.next_global + 1; w.next_global-1
let update_global_section (w: wasm_module) gt e =
  w.global_section <- List.append w.global_section [{gt; e; index = index_of_global w}]; true

(* export section *)
let update_export_section (w: wasm_module) name desc =
  w.export_section <- List.append w.export_section [{name; desc}]; true

(* start section *)
let update_start_section (w: wasm_module) idx = w.start_section <- Some idx; true

(* element section *)
let update_element_section (w: wasm_module) elem =
  w.element_section <- List.append w.element_section [elem]; true

(* code section *)
let update_code_section (w: wasm_module) locals e =
  let bblocks = bblocks_of_expr e in
  w.code_section <- List.append w.code_section
    [{  locals; 
        e; 
        bblocks;
        code_paths = code_paths_of_bblocks bblocks [[0]] []}]

(* data section *)
let index_of_data (w: wasm_module) =
  w.next_data <- w.next_data + 1; w.next_data-1
let update_data_section (w: wasm_module) details =
  w.data_section <- w.data_section@[{index = index_of_data w; details}]; true

(* data count *)
let update_data_count_section (w: wasm_module) count = w.data_count <- count; true