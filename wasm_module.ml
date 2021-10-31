open Core

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

let string_of_numtype nt =
  match nt with
  | I32 -> "i32" | I64 -> "i64"  | F32 -> "f32"  | F64 -> "f64"

let string_of_reftype rt =
  match rt with  
  | Funcref -> "funcref" | Externref -> "externref"

let string_of_resulttype rt =
  match rt with
  | Numtype x -> string_of_numtype x
  | Reftype x -> string_of_reftype x

let string_of_valtype vt = string_of_resulttype vt
  
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

let string_of_mut m =
match m with
| Const -> ""
| Var -> "mut"

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

(* Design notes on connecting segments
----------------------------

TODO: 
- for every END, BLOCK and LOOP segment assign a label

label of IF, BLOCK assigned to matching END			
label of LOOP assigned to following segment			

type segment =
{
          start_op:    int;        (* index into e of the first op in the expr *)
  mutable end_op:      int;        (* index+1 of the last op in the expr *)
  mutable succ:        list int;   (* segment index for segments that can be directly reached from this segment *)
  
		  segtype:	   segment_type; -- could just be an opcode
		  nesting:	   int;			(* the nesting level of the last opcode in the segment *)
		  label:	   int;			(* the label of the LOOP or END instruction *)
}
 *)

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

type initial_state =
{
  pred:       int;           (* the index of the predecessor segment *)
  pred_state: program_state; (* the state after the predecessor segment was executed *)
}
  
type final_state =
{
          succ:       int;           (* the index of the predecessor segment *)
   (* mutable succ_state: Reduce.program_state; *) (* the state after the predecessor segment was executed *)
   mutable succ_cond:  string;        (* the expression that must be true in order for this successor state to be entered *)
}
  
type segment =
{
          index:      int;      (* the index of this segment in the list of segments, makes things easier to have this *)
          start_op:   int;      (* index into e of the first op in the expr *)
  mutable end_op:     int;      (* index+1 of the last op in the expr *)
  mutable succ:       int list; (* segment index for segments that can be directly reached from this segment *)
  mutable segtype:	  int;      (* the control opcode that created this segment *)
  mutable nesting:    int;      (* the nesting level of the last opcode in the segment *)
  mutable labels:     int list; (* the destination labels used in BR, BR_IF, BR_TABLE instructions *)
  mutable br_dest:	  int;			(* for LOOP, BLOCK and IF instructions the segment that's the target of a branch for this instruction  *)
  mutable initial_states: initial_state list;  (* the possible initial states for this segment *)
  mutable final_states:   final_state list;    (* the possible final states for this segment *)
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
                    {index=current.index+1; start_op=current.end_op; end_op=current.end_op+1; succ=[]; segtype= -1;
                     nesting = -2; labels=[]; br_dest= -1; initial_states = []; final_states = []}
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
      | 0x03        -> s.br_dest <- index + 1 (* loop *)
      | 0x04 | 0x02 -> s.br_dest <- get_end_segment segments index s.nesting (* if, block *)
      | _ -> ()
    );
  set_br_dest segments (index+1)

let segments_of_expr (e: expr) : segment list =
  let segments = segments_of_expr' e [] {index=0; start_op=0; end_op=1; succ=[]; segtype= -1; nesting = -2;
                                     labels=[]; br_dest= -1; initial_states = []; final_states = []} in
  set_br_dest segments 0;
  set_successors segments 0;
  segments

let graph_node (src: int) (dest: int) (label: string): string =
  match src > dest with
  | true  -> 
      String.concat ["    "; string_of_int src; " -> "; string_of_int dest; "[color=\"red\" label = \""; label; "\"];\n"]
  | false -> 
      String.concat ["    "; string_of_int src; " -> "; string_of_int dest; "[label = \""; label; "\"];\n"]

let graph_segment (index: int) (segtype: int) (succ: int list) (last: int): string =
  match segtype with
  | (* unreachable *) 0x00 -> ""
  | (* end *)         0x0b -> graph_node index (List.nth_exn succ 0) "end"
  | (* block *)       0x02 -> graph_node index (List.nth_exn succ 0) "block"
  | (* loop *)        0x03 -> graph_node index (List.nth_exn succ 0) "loop"
  | (* if *)          0x04 ->
      String.concat [
        graph_node index (List.nth_exn succ 0) "if";
        graph_node index (List.nth_exn succ 1) "~if";
      ]
  | (* else *)        0x05 -> graph_node index (List.nth_exn succ 0) "else"
  | (* br_if *)       0x0d ->
      String.concat [
        graph_node index (List.nth_exn succ 0) "~br_if";
        graph_node index (List.nth_exn succ 1) "br_if";
      ]
  | (* br *)          0x0c -> graph_node index (List.nth_exn succ 0) "br"
  | (* br_table *)    0x0e -> "TODO\n"
  | (* return *)      0x0f -> graph_node index last "return"
  | _ -> failwith (String.concat ["Unknown segtype to graph: "; string_of_int segtype])

let graph_prefix (last: int) =
  String.concat["digraph finite_state_machine {\n    node [shape = doublecircle]; 0 ";
    string_of_int last; ";\n    node [shape = circle];\n"]
let graph_suffix = "}\n"
let rec graph_segments' (segments: segment list) (last: int) (acc: string): string =
  match segments with
  | [] -> acc
  | hd::tl -> graph_segments' tl last (String.concat [acc; graph_segment hd.index hd.segtype hd.succ last])
let graph_segments (segments: segment list): string =
  let last = (List.length segments) in
  String.concat [graph_prefix last; graph_segments' segments (List.length segments) ""; graph_suffix]

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
let create name =
  { module_name = name; data_count = 0;
    type_section = []; import_section = []; function_section = []; table_section = []; 
    memory_section = []; global_section = []; export_section = []; start_section = None; 
    element_section = []; code_section = []; data_section = [];
    last_import_func = 0; next_global = 0; next_memory = 0; next_table = 0; next_data = 0}


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