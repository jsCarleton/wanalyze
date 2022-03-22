open Core
open Easy_logging
open Symbolic_expr

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
  | IgnoreArg of int
  | Dataidx of dataidx
  | I32value of int
  | I64value of int64
  | F32value of int (* since OCAML doesn't seem to have 32 bit floats we just keep the bits *)
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
  BB_unknown
  | BB_unreachable | BB_block | BB_loop | BB_if | BB_else | BB_end | BB_br | BB_br_if | BB_br_table | BB_return

let string_of_bb_type b =
  match b with
  BB_unknown -> "unknown"
  | BB_unreachable -> "unreachable" | BB_block -> "block" | BB_loop -> "loop" | BB_if -> "if" | BB_else -> "else"
  | BB_end -> "end" | BB_br -> "br" | BB_br_if -> "if" | BB_br_table -> "br_table" | BB_return -> "return"

type bblock =
{
          index:    int;          (* the index of this bblock in the list of bblocks, makes things easier to have this *)
          start_op: int;          (* index into e of the first op in the expr *)
  mutable end_op:   int;          (* index+1 of the last op in the expr *)
  mutable succ:     bblock list;  (* bblocks that can be directly reached from this bblock *)
  mutable pred:     bblock list;  (* bblocks that can directly reach this bblock *)
  mutable bbtype:	  bb_type;      (* effectively the control opcode that created this bblock *)
  mutable nesting:  int;          (* nesting level of the last opcode in the bblock *)
  mutable labels:   int list;     (* destination labels used in BR, BR_IF, BR_TABLE instructions *)
  mutable br_dest:	bblock option;(* for LOOP, BLOCK and IF instructions the bblock that's the target of a branch for this instruction  *)
}

let expr_of_bblock (e: expr) (bb: bblock): expr =
  (List.sub e ~pos:bb.start_op ~len:(bb.end_op - bb.start_op))

type code_path = bblock list

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
  mutable value_stack:    expr_tree list;
  mutable local_values:   expr_tree array;
  mutable global_values:  expr_tree array;
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
  mutable succ_cond:  expr_tree;        (* the expression that must be true in order for the first successor state to be entered *) 
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

let param_name (param_types: resulttype list) (i: int): string =
  String.concat ["p"; string_of_resulttype (List.nth_exn param_types i); string_of_int i]

let local_value (local_types: local_type list) (nparams: int) (i: int): string =
  match local_type_of_index local_types (i - nparams) 0 0 with
    | Numtype nt ->
      (match nt with
        | I32 -> "0"
        | I64 -> "0L"
        | F32 -> "0.0f"
        | F64 -> "0.0")
    | _ -> "?"

let local_name (local_types: local_type list) (nparams: int) (i: int): string =
  String.concat ["l"; string_of_resulttype (local_type_of_index local_types (i - nparams) 0 0); string_of_int i]

let expr_tree_of_local_value (param_types: resulttype list) (local_types: local_type list) (i: int): expr_tree =
  let nparams = List.length param_types in
  match i < nparams with 
  | true  -> Variable (param_name param_types i)
  | _     -> Variable (local_name local_types nparams i)

let string_of_local_value (param_types: resulttype list) (local_types: local_type list) (i: int): string =
  let nparams = List.length param_types in
  match i < nparams with 
  | true  -> param_name param_types i
  | _     -> local_name local_types nparams i

let string_of_global_value (i: int): string =
  sprintf "g%d" i

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
                     nesting = -2; labels=[]; br_dest= None}
    (* 2. all other opcodes get added to the current bblock *)
    | _ ->
      current.end_op <- current.end_op + 1;
      bblocks_of_expr' (List.tl_exn e) bb_acc current

let rec get_end_else_bblock (bblocks: bblock list) (index: int) (nesting: int): bblock =
  match (List.nth_exn bblocks index).bbtype with
  | BB_else when (List.nth_exn bblocks index).nesting = nesting -> (List.nth_exn bblocks (index+1))
  | BB_end  when (List.nth_exn bblocks index).nesting = nesting -> (List.nth_exn bblocks (index+1))
  | _ -> get_end_else_bblock bblocks (index+1) nesting

let rec get_end_bblock (bblocks: bblock list) (index: int) (nesting: int): bblock =
  match (List.nth_exn bblocks index).bbtype with
  | BB_end when (List.nth_exn bblocks index).nesting = nesting -> (List.nth_exn bblocks (index+1))
  | _ -> get_end_bblock bblocks (index+1) nesting

let rec get_target_loop (bblocks: bblock list) (index: int) (nesting: int) (label: int): bblock option =
  match index >= 0 with
  | true ->
    (let s = List.nth_exn bblocks index in
    match s.bbtype with
    | BB_block  when s.nesting = nesting - label - 1 -> s.br_dest
    | BB_loop   when s.nesting = nesting - label - 1 -> s.br_dest
    | BB_if     when s.nesting = nesting - label - 1 -> s.br_dest
    | _ -> get_target_loop bblocks (index-1) nesting label
    )
  | false -> None

let br_dest_index (br_dest: bblock option): int =
  match br_dest with
  | Some bb -> bb.index
  | _       -> failwith "No branch destination found"

let rec get_target_end (bblocks: bblock list) (index: int) (nesting: int) (label: int): bblock =
  match index < List.length bblocks with
  | true ->
    (let s = List.nth_exn bblocks index in
    match s.bbtype with
    | BB_block  when nesting = s.nesting - label -> (List.nth_exn bblocks ((br_dest_index s.br_dest) + 1))
    | BB_if     when nesting = s.nesting - label -> (List.nth_exn bblocks ((br_dest_index s.br_dest) + 1))
    | _ -> get_target_end bblocks (index+1) nesting label
    )
  | false -> failwith "Unable to find branch target"
    
let br_target (bblocks: bblock list) (index: int) (nesting: int) (label: int): bblock =
  match get_target_loop bblocks (index-1) nesting label with 
  | None    -> get_target_end bblocks (index-1) nesting label
  | Some bb -> bb

let set_successor (bblocks: bblock list) (index: int) =
  let s = List.nth_exn bblocks index in
  match s.bbtype with
    | BB_end ->
        (match (index+1) >= (List.length bblocks) with
          | true  -> s.succ <- []
          | false -> s.succ <- [List.nth_exn bblocks (index+1)])
    | BB_block
    | BB_loop ->
        s.succ <- [List.nth_exn bblocks (index+1)]
    | BB_if ->
        s.succ <- [List.nth_exn bblocks (index+1); get_end_else_bblock bblocks index s.nesting]
    | BB_else ->
        s.succ <- [get_end_bblock bblocks index s.nesting]
    | BB_br_if ->
        s.succ <- List.cons (List.nth_exn bblocks (index+1)) (List.map ~f:(br_target bblocks index s.nesting) s.labels)
    | BB_br
    | BB_br_table ->
        s.succ <- List.map ~f:(br_target bblocks index s.nesting) s.labels
    | BB_unreachable
    | BB_return ->
        s.succ <- []
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
      | BB_loop           -> s.br_dest <- Some (List.nth_exn bblocks (index + 1))
      | BB_if | BB_block  -> s.br_dest <- Some (get_end_bblock bblocks index s.nesting)
      | _ -> ()
    );
  set_br_dest bblocks (index+1)

(* Implementation *)
(* Part 3 - symbolic execution *)

(* Updating the state of the program *)
(* stack operations *)
let stack_cdr   (state: program_state): expr_tree list = List.tl_exn state.value_stack
let drop_n_values
                (state: program_state) (n: int) =
  state.value_stack <- List.drop state.value_stack n
let drop_value  (state: program_state) = drop_n_values state 1
let push_value  (state: program_state) (v: expr_tree) = state.value_stack <- List.cons v state.value_stack
let poke_value  (state: program_state) (v: expr_tree) = state.value_stack <- List.cons v (stack_cdr state)
let peek_value  (state: program_state): expr_tree = List.hd_exn state.value_stack
let pop_value   (state: program_state): expr_tree =
  let value = peek_value state in
  drop_value state;
  value

(* value array operations *)
let copy_values (values: expr_tree array): expr_tree array =
  Array.copy values
let create_values (len: int): expr_tree array =
  Array.create ~len:len Empty
let init_values (len: int) (f: (int -> expr_tree)): expr_tree array =
  Array.init len ~f:f
let get_value (values: expr_tree array) (i:int): expr_tree =
  Array.get values i
let set_value (values: expr_tree array) (i: int) (v: expr_tree) =
  Array.set values i v
let get_local (state: program_state) (i: int): expr_tree =
  get_value state.local_values i
let set_local (state: program_state) (i: int) (v: expr_tree) =
  set_value state.local_values i v
let get_global (state: program_state) (i: int): expr_tree =
  get_value state.global_values i
let set_global (state: program_state) (i: int) (v: expr_tree) =
  set_value state.global_values i v

let string_of_const_arg arg: string =
  match arg with
    | I32value i -> string_of_int i
    | I64value i -> sprintf "%Ld" i
    | F32value f -> sprintf "0x%x" f
    | F64value f -> string_of_float f
    | _-> failwith "Invalid const argument"
    
let expr_tree_of_const_arg arg: expr_tree =
 Constant (string_of_const_arg arg)

let expr_tree_of_retval (index: int) (rt: resulttype): expr_tree =
  Variable (String.concat ["r"; (string_of_resulttype rt); (string_of_int index)])

let expr_tree_of_unop (op: string) (arg1: expr_tree): expr_tree =
  Node {op = op; arg1; arg2 = Empty; arg3 = Empty}

let expr_tree_of_binop (op: string) (arg1: expr_tree) (arg2: expr_tree): expr_tree =
  Node {op = op; arg1; arg2; arg3 = Empty}

let rec string_of_expr_tree (e: expr_tree): string =
  match e with
    | Empty   -> "" (* empty expression *)
    | Constant s | Variable s -> s
    | Node n  ->
      (match n.arg1, n.arg2, n.arg3 with
        | Empty, Empty, Empty -> failwith "Invalid expr tree"
        | _, Empty, Empty (* unary operator *)
            -> String.concat[n.op; "("; string_of_expr_tree n.arg1; ")"]
        | Variable _, Variable _, Empty (* binary *)
        | Variable _, Constant _, Empty
        | Constant _, Variable _, Empty
        | Constant _, Constant _, Empty
            -> String.concat[string_of_expr_tree n.arg1; " "; n.op; " "; string_of_expr_tree n.arg2]
        | Node _, Node _, Empty
            -> String.concat["("; string_of_expr_tree n.arg1; ") "; n.op; " ("; string_of_expr_tree n.arg2; ")"]
        | _, Node _, Empty
          -> String.concat[string_of_expr_tree n.arg1; " "; n.op; " ("; string_of_expr_tree n.arg2; ")"]
        | Node _, _, Empty
          -> String.concat["("; string_of_expr_tree n.arg1; ") "; n.op; " "; string_of_expr_tree n.arg2]
        | _, _, Empty
            -> String.concat["("; string_of_expr_tree n.arg1; ") "; n.op; " ("; string_of_expr_tree n.arg2; ")"]
        | _, _, _ (* ternary operator *)
            ->String.concat[n.op; "(";  string_of_expr_tree n.arg1; ", ";
                                        string_of_expr_tree n.arg2; ", ";
                                        string_of_expr_tree n.arg3; ")"]
        )

(* Parametric operators *)
let update_state_parametricop (op: op_type) (s: program_state) = 
  match op.opcode with
  | 0x1a -> (* drop *)      drop_value s
  | 0x1b -> (* select *)    drop_value s; drop_value s (* TODO *)
  | 0x1c -> (* select t* *) drop_value s; drop_value s (* TODO *)
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

(* call op handling *)
let update_state_callop (_: wasm_module) (param_count: int) (retval_types: resulttype list) (state: program_state) =
  drop_n_values state param_count;
  List.iter ~f:(push_value state) 
    (List.init (List.length retval_types) ~f:(fun i -> (expr_tree_of_retval i (List.nth_exn retval_types i))))

let ret_types (w: wasm_module) (fidx: int): resulttype list =
  (List.nth_exn w.type_section (List.nth_exn w.function_section fidx)).rt2

let update_states_callop (w: wasm_module) (param_counts: int list) (op: op_type) (s: states) =
  match op.arg with
  | Funcidx fidx -> 
       List.iter  ~f:(update_state_callop w (List.nth_exn param_counts fidx) (ret_types w fidx)) s.active;
  | _ -> failwith "Invalid call argument"

let nparams (w: wasm_module) (fidx: int) =
  List.length (List.nth_exn w.type_section (List.nth_exn w.function_section fidx)).rt1
        
(* call indirect handling*)
let update_states_callindop (w: wasm_module) (op: op_type) (s: states) =
  match op.arg with
  | CallIndirect c -> 
       List.iter  ~f:(update_state_callop w (nparams w c.y) (List.nth_exn w.type_section c.y).rt2) s.active;
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
      List.iter ~f:drop_value s.active;
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
      List.iter ~f:drop_value s.active (* TODO *)
  (* br_table *)
  | 0x0e -> List.iter ~f:drop_value s.active (* TODO *)
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
  poke_value state (expr_tree_of_unop (String.concat[op.opname; "@"]) (peek_value state))
let update_state_memstoreop (state: program_state) = 
  drop_value state

(* constant operators *)
let update_state_constop (op: op_type) (state: program_state) =
  push_value state (expr_tree_of_const_arg op.arg)

(* unary operators *)
let update_state_unop (op: op_type) (state: program_state) = 
  poke_value state (expr_tree_of_unop op.opname (peek_value state))

(* binary operators *)
let update_state_binop (f: string) (state: program_state) =
  let arg2 = pop_value state in
  let arg1 = peek_value state in
  poke_value state (expr_tree_of_binop f arg1 arg2)

(* test operators *)
let update_state_testop (op: op_type) (state: program_state) =
  poke_value state (expr_tree_of_unop op.opname (peek_value state))
 
(* this does the same thing as update_state_binop *)
(* rel operators *)
let update_state_relop = update_state_binop

(* cvt operators *)
let update_state_cvtop (op: op_type) (state: program_state) =
  match op.opcode with
  | 0xfc ->
      poke_value state (expr_tree_of_unop "TODO" (peek_value state))
  | _ ->
      poke_value state (expr_tree_of_unop op.opname (peek_value state))

(* instruction counter*)
let update_instr_count (state: program_state) = state.instr_count <- state.instr_count + 1

(* given an instruction, update states *)
let update_s (w: wasm_module) (s: states) (param_counts: int list) (op: op_type) =
   List.iter ~f:update_instr_count s.active;
  match op.instrtype with
  | Control ->    update_states_controlop w param_counts op s
  | Reference ->  failwith "Unimplemented reference"
  | Parametric -> List.iter ~f:(update_state_parametricop op) s.active
  | VariableGL -> List.iter ~f:(update_state_varGLop op) s.active
  | VariableSL -> List.iter ~f:(update_state_varSLop op) s.active
  | VariableTL -> List.iter ~f:(update_state_varTLop op) s.active
  | VariableGG -> List.iter ~f:(update_state_varGGop op) s.active
  | VariableSG -> List.iter ~f:(update_state_varSGop op) s.active
  | Table ->      failwith "Unimplemented table"
  | MemoryL ->    List.iter ~f:(update_state_memloadop op) s.active
  | MemoryS ->    List.iter ~f:update_state_memstoreop s.active
  | MemoryM ->    () (* nothing to do in this case *)
  | Constop ->    List.iter ~f:(update_state_constop op) s.active
  | Unop ->       List.iter ~f:(update_state_unop op) s.active
  | Binop f ->    List.iter ~f:(update_state_binop f) s.active
  | Testop ->     List.iter ~f:(update_state_testop op) s.active
  | Relop f ->    List.iter ~f:(update_state_binop f) s.active
  | Cvtop ->      List.iter ~f:(update_state_cvtop op) s.active

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

let update_state_controlop (w: wasm_module) (op: op_type) (s: program_state): expr_tree = 
  match op.opcode with
  (* unreachable, nop, block, loop, else, end, br, return - nothing to do *)
  | 0x00 | 0x01 | 0x02 | 0x03 | 0x05 | 0x0b | 0x0c | 0x0f -> Empty
  (* if, br_if, br_table - get the condition from the top of the stack *) (* TODO fix br_table *)
  | 0x04 | 0x0d | 0x0e ->
      let succ_cond = (List.hd_exn s.value_stack) in
      s.value_stack <- (List.tl_exn s.value_stack);
      succ_cond
  (* call *)
  | 0x10 ->
    (match op.arg with
    | Funcidx fidx -> 
        update_state_callop w (nparams w fidx) (ret_types w fidx) s
    | _ -> failwith "Invalid call argument"); Empty
  (* call_indirect *)
  | 0x11 -> Empty (* TODO *)
  (* all other op codes *)
  | _ -> failwith "Invalid control op"
    
let reduce_op (w: wasm_module) (op: op_type) (s: program_state): expr_tree =
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
      ); Empty

let rec reduce_expr (w: wasm_module) (e: expr) (s: program_state): expr_tree =
  match e with
  | []      ->  List.hd_exn s.value_stack
  | hd::tl  ->  let (_: expr_tree) = reduce_op w hd s in
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
let rec reduce_bblock' (w: wasm_module) (s: program_state) (e: expr) (succ_cond: expr_tree) :
      expr_tree =
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
      program_state*expr_tree =
  let f = {instr_count = 0; value_stack=(List.map ~f:(fun x -> x) i.value_stack); local_values = copy_values i.local_values;
              global_values = copy_values i.global_values} in
  let s = reduce_bblock' w f e Empty in
  f,s

let execute_bblock (w: wasm_module) (bb: bblock) (index: int) (e: expr) (ex_acc: execution list) (initial: program_state): execution list =
  let final, succ_cond = (reduce_bblock w (expr_of_bblock e bb) initial) in
    (* TODO call execute_bblocks'' recursively *)
    List.append ex_acc [{index; pred_index= -1; succ_index= -1; initial; final; succ_cond}]

let execute_bblocks' (w: wasm_module) (bblocks: bblock list) (indices: int list) (e: expr) (ex_acc: execution list)
      (initial: program_state): execution list =
  match indices with
  | [] -> ex_acc
  (* TODO call execute_bblocks' recursively *)
  | hd::_ ->
      execute_bblock w (List.nth_exn bblocks hd) hd e ex_acc initial

let set_pred' (bblocks: bblock list) (src: bblock) (dest: bblock) =
  match dest.index < List.length bblocks with 
  | true -> dest.pred <- List.cons src dest.pred
  | _ -> ()
let set_pred (bblocks: bblock list) (bb: bblock) =
  List.iter ~f:(set_pred' bblocks bb) bb.succ

let bblocks_of_expr (e: expr) : bblock list =
  let bblocks = bblocks_of_expr' e [] {index=0; start_op=0; end_op=1; succ=[]; pred=[]; bbtype=BB_unknown; nesting = -2;
                                     labels=[]; br_dest= None} in
  (Logging.get_logger "wanalyze")#info "# bblocks: %d" (List.length bblocks);
  set_br_dest bblocks 0;
  set_successors bblocks 0;
  List.iter ~f:(set_pred bblocks) bblocks;
  bblocks

(* Implementation *)
(* Part 4 - code paths *)

(*
  succ_of_cp
    Takes the index of the last block in the code fragment we're working with and a code path and
    returns the list of bblocks in the fragment that are immediate successors to the code path

  Parameters:
    last_idx  last block index
    cp        a code path

  Returns:
    the list of successor basic blocks
*)
let succ_of_cp (last_idx: int) (cp: code_path): bblock list = 
  List.filter ~f:(fun x -> x.index <= last_idx) (List.hd_exn cp).succ

(*
    term_of_cp_bb

    Takes a code path and a successor bblock and returns the code path if the successor bblock
    has index greater than the index of the last bblock in the given code path.
    None otherwise

    Parameters:
      last_idx  last block index
      cp        a code path
      succ      possible succesor block

    Returns:
      a code path option that is None if the successor is outside the code fragment, the successor
      otherwise
*)
let term_of_cp_bb (last_idx: int) (cp: code_path) (succ: bblock): code_path option =
    match       (succ.index > last_idx)
            ||  (List.hd_exn cp).index >= succ.index with
    | true  -> Some cp
    |  _    -> None
    
(*
    terms_of_cp
        Takes a code path and returns a list containing the terminal code paths that are terminated
        by the next bblock one bblock longer than the given code path
*)
let terms_of_cp (last_idx: int) (cp: code_path): code_path list =
    List.filter_map ~f:(term_of_cp_bb last_idx cp) (succ_of_cp last_idx cp)

(*
    nterm_of_cp_bb
    Takes a code path and a successor bblock
    Returns an updated code path if the successor bblock has index greater than the
    index of the last bblock in the given code path.
    None otherwise
*)
let nterm_of_cp_bb (last_idx: int) (cp: code_path) (succ: bblock): code_path option =
    match       (succ.index <= last_idx) 
            &&  (List.hd_exn cp).index < succ.index with
    | true    -> Some (List.cons succ cp)
    | _       -> None

(*
    nterms_of_cp
        Takes a code path and returns a list containing the non-terminal code paths that are one bblock longer
        than the given code path
*)
let nterms_of_cp (last_idx: int) (cp: code_path): code_path list =
    List.filter_map ~f:(nterm_of_cp_bb last_idx cp) (succ_of_cp last_idx cp)

(*
    is_term
        Takes a code path and returns true if it has reached a terminal state, false otherwise
*)
let is_term (last_idx: int) (cp: code_path): bool =
    match (List.hd_exn cp).bbtype with
    | BB_return
    | BB_unreachable -> true
    | _ ->
        (match succ_of_cp last_idx cp with
        | []    -> true
        | _     -> false)

(*
    step_code_path
        Takes list of bblocks and a code path
        Returns a pair of lists of code-paths that's the resulting non-terminal and terminal paths respectively
*)
let step_code_path (last_idx: int) (cp: code_path): (code_path list)*(code_path list) =
    match is_term last_idx cp with
    | true  -> [], [cp]
    | _     -> (nterms_of_cp last_idx cp), (terms_of_cp last_idx cp)

(* 
    code_paths_of_bblocks'
        Takes a list of bblocks, a list of non-terminal code paths and a list of terminal code paths
        Returns the terminal code paths *unless* we think there are too many code paths. In that case
        we return []
*)
let rec code_paths_of_bblocks' (last_idx: int) (nterm: code_path list) (term: code_path list): code_path list =
  match nterm with
    | []        -> term
    | hd::tl    ->
        let n,t = step_code_path last_idx hd in
            code_paths_of_bblocks' last_idx (List.append n tl) (List.append t term)
  
(*
    For convenience we build each code path in reverse order. Here we reverse that since
    we actually need them in flow graph order for execution purposes
*)
let code_paths_of_bblocks (bblocks: bblock list) (nterm: code_path list) (term: code_path list): code_path list =
  let last_idx = (List.nth_exn bblocks ((List.length bblocks)-1)).index in
  match (mult_succ_count bblocks) < 24 with   (* hack to prevent this code from running for a very long time *)
    | true  -> List.map ~f:List.rev (code_paths_of_bblocks' last_idx nterm term)
    | false -> []

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

let expr_tree_of_mglobal (w: wasm_module) (e: expr) (s: program_state): expr_tree = 
      reduce_expr w e s

let expr_tree_of_iglobal (import_name: string) (index: int) (t: valtype):  expr_tree =
  Variable (String.concat ["g"; string_of_resulttype t; string_of_int index; " ("; import_name; ")"])

let rec create_globals (w:wasm_module) (s: program_state) (imports: import list) (globals: global list) (n_imports: int)
          (global_vals: expr_tree array) (next: int): expr_tree array =
  match imports with
    | [] ->
      (match globals with
      | []      -> global_vals
      | hd::tl  ->
          let g_val = expr_tree_of_mglobal w hd.e s in
          set_value global_vals next g_val;
          set_global s next g_val;
          create_globals w s [] tl n_imports global_vals (next+1))
    | hd::tl ->
      (match hd.description with
        | Globaltype gt ->  let g_val = (expr_tree_of_iglobal hd.import_name hd.index gt.t) in
                            set_value global_vals next g_val;
                            set_global s next g_val;
                            create_globals w s tl globals n_imports global_vals (next+1)
        | _             ->  create_globals w s tl globals n_imports global_vals next)

let sum_nlocals acc (l: local_type): int = acc + l.n
let count_locals (ll: local_type list): int = List.fold_left ~f:sum_nlocals ~init:0 ll

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
                        local_values = create_values 0;
                        global_values = create_values (n_i + n_m)
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
                    (expr_tree_of_local_value param_types local_types); 
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
(* Part 8 - loop analysis *)

let has_loop' (bb: bblock): bool = 
  match bb.bbtype with
  | BB_loop -> true
  | _       -> false

let rec has_loop (bblocks: bblock list): bool =
  match bblocks with
  | hd::tl ->
    (match has_loop' hd with
    | true  -> true
    | _     -> has_loop tl)
  | _ ->  false

let idx_of_bbs_of_loops (bblocks: bblock list): int list =
  List.fold_left
    ~init:[] 
    ~f:(fun acc bb -> match bb.bbtype with | BB_loop -> (List.append acc [bb.index]) | _ -> acc)
    bblocks

let ids_with_loops (bblocks: bblock list): int list =
  List.filter_map ~f:(fun s -> match has_loop' s with | true -> Some (s.index+1) | _ -> None) bblocks

let simple_br_loop (bblocks: bblock list) (s: bblock): int option =
  match List.length bblocks - s.index >= 5 with
    | true -> (match s.bbtype,
                  (List.nth_exn bblocks (s.index+1)).bbtype,
                  (List.nth_exn bblocks (s.index+2)).bbtype,
                  (List.nth_exn bblocks (s.index+3)).bbtype,
                  (List.nth_exn bblocks (s.index+4)).bbtype with
              | BB_loop, BB_if, BB_br, BB_end,BB_end -> Some (s.index+2)
              | _ -> None)
    | false -> None

let simple_brif_loop (bblocks: bblock list) (b: bblock): int option =
  match List.length bblocks - b.index >= 3 with
    | true -> (match b.bbtype,
                  (List.nth_exn bblocks (b.index+1)).bbtype,
                  (List.nth_exn bblocks (b.index+2)).bbtype with
                | BB_loop, BB_br_if, BB_end -> Some (b.index+1)
                | _ -> None)
    | false -> None

let ids_with_simple_br_loops (bblocks: bblock list): int list =
  List.filter_map ~f:(simple_br_loop bblocks) bblocks
  
let ids_with_simple_brif_loops (bblocks: bblock list): int list =
    List.filter_map ~f:(simple_brif_loop bblocks) bblocks
 
let bblocks_with_simple_brif_loops (bblocks: bblock list): bblock list =
    List.map ~f:(fun i -> List.nth_exn bblocks i) (ids_with_simple_brif_loops bblocks)

(** analyze_simple_loop given a bblocks that is a simple brif loops, analyzes the loop to
  determine the branch condition
  Parameters:
  bb        brif loop bblock
  e         code of the function that the bblock is from
  locals    type of locals in the function
  Returns:
  the loop condition in the form of an expr_tree
*)
let analyze_simple_loop (w: wasm_module) (e: expr) (param_types: resulttype list) (local_types: local_type list) 
      (bb: bblock): expr_tree =
  let _,loop_cond = reduce_bblock w (expr_of_bblock e bb) (empty_program_state w param_types local_types) in
    loop_cond

let execution_paths (bblocks: bblock list): int list list =
  [List.map ~f:(fun s -> s.index) bblocks]

let block_is_loop (bb: bblock): bool =
  match bb.bbtype with
    | BB_loop -> true
    | _       -> false

let rec code_path_has_loop (bblocks: bblock list) (cp: code_path)=
  match cp with
  | hd::tl -> (match block_is_loop hd with | false -> code_path_has_loop bblocks tl | _ -> true)
  | _ -> false

let code_path_with_loop (bblocks: bblock list) (cp: code_path): code_path option =
  match code_path_has_loop bblocks cp with |true -> Some cp | _ -> None

let rec loop_prefix_of_code_path (bblocks: bblock list) (acc: code_path) (cp: code_path) : code_path =
  match cp with
  | []      -> acc
  | hd::tl  ->
      (match block_is_loop hd with
        | true  -> List.rev (hd::acc)
        | _     -> loop_prefix_of_code_path bblocks (hd::acc) tl)

let loop_code_paths (bblocks: bblock list) (cps: code_path list): code_path list =
  List.map ~f:(loop_prefix_of_code_path bblocks []) (List.filter_map ~f:(code_path_with_loop bblocks) cps)

let rec compare_cps (cp1: code_path) (cp2: code_path): int =
  match cp1, cp2 with
  | [], []              ->  0
  | _::_, []            -> -1
  | [], _::_            -> +1
  | hd1::tl1, hd2::tl2  ->
      (match hd1.index = hd2.index with
        | true                              -> compare_cps tl1 tl2
        | false when hd1.index < hd2.index  -> -1
        | _                                 -> +1)