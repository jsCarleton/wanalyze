open Core
open Easy_logging
open Et

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
  module_name:  string;
  import_name:  string;
  description:  importdesc;
  iindex:       int;
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
  table:    labelidx list;
  brtindex: labelidx;
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
  opnesting:  int;            (* the lexical nesting level of the instruction *)
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

(* type that describes a function that's implement in a wasm module *)
type func =
{
  locals:     local_type list;    (* local variable types of the function *)
  e:          expr;               (* code of the function *)
}

(* Globals *)
type global =
{
  gindex: int;
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
  dindex:   int;
  details:  data_details;
}

(* Data Count *)

(* wasm Module *)
type wm =
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

(* Program state types *)
type program_state =
{
  mutable instr_count:    int;
  mutable value_stack:    Et.et list;
  mutable local_values:   Et.et array;
  mutable global_values:  Et.et array;
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
  eindex:             int;                      (* the index of the bb being executed *)
  pred_index:         int;
  succ_index:         int;
  initial:            program_state;            (* the program state before the first instruction of the bb is executed *)
  mutable final:      program_state;            (* the program state after the last instruction of the bb is executed *)
  mutable succ_cond:  Et.et;  (* the expression that must be true in order for the first successor state to be entered *) 
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

let local_value (local_types: local_type list) (nparams: int) (i: int): constant_value =
  match local_type_of_index local_types (i - nparams) 0 0 with
    | Numtype nt ->
      (match nt with
        | I32 -> Int_value 0
        | I64 -> Int64_value 0L
        | F32
        | F64 -> Float_value 0.0)
    | _ -> failwith "Invalid numtype"

let local_name (local_types: local_type list) (nparams: int) (i: int): string =
  String.concat ["l"; string_of_resulttype (local_type_of_index local_types (i - nparams) 0 0); string_of_int i]

let et_of_local_value (param_types: resulttype list) (local_types: local_type list) (i: int): Et.et =
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

let create name =
  { module_name = name; data_count = 0;
    type_section = []; import_section = []; function_section = []; table_section = []; 
    memory_section = []; global_section = []; export_section = []; start_section = None; 
    element_section = []; code_section = []; data_section = [];
    last_import_func = 0; next_global = 0; next_memory = 0; next_table = 0; next_data = 0}
