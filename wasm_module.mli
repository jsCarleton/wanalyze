type numtype =
  | I32 | I64 | F32 | F64

type reftype =
  | Funcref | Externref

type valtype =
  | Numtype of numtype
  | Reftype of reftype

type resulttype = valtype

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

type program_state =
{
  mutable instr_count:    int;
  mutable value_stack:    Symbolic_expr.expr_tree list;
  mutable local_values:   Symbolic_expr.expr_tree array;
  mutable global_values:  Symbolic_expr.expr_tree array;
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
  eindex:             int;                      (* the index of the bblock being executed *)
  pred_index:         int;
  succ_index:         int;
  initial:            program_state;            (* the program state before the first instruction of the bblock is executed *)
  mutable final:      program_state;            (* the program state after the last instruction of the bblock is executed *)
  mutable succ_cond:  Symbolic_expr.expr_tree;  (* the expression that must be true in order for the first successor state to be entered *) 
}

val create                      : string -> wasm_module
val string_of_resulttype        : resulttype -> string
val expr_tree_of_local_value    : resulttype list -> local_type list -> int -> Symbolic_expr.expr_tree
val string_of_local_value       : resulttype list -> local_type list -> int -> string 
val string_of_global_value      : int -> string
val local_value                 : local_type list -> int -> int -> Symbolic_expr.constant_value
val local_name                  : local_type list -> int -> int -> string
val valtype_of_int              : int -> valtype
