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

(* Code *)
type local_type =
{
  n:  int;
  v:  valtype;
}
type func =
{
  locals:   local_type list;
  e:        expr;
}
type segment =
{
          start_op:    int;         (* index into e of the first op in the expr *)
  mutable end_op:      int;         (* index+1 of the last op in the expr *)
  mutable succ1:       int option;  (* segment index for true side of a conditional or next segment for an unconditional *)
  mutable succ2:       int option;  (* false side of a conditional *)
}

let rec get_segments'' (e: expr) (seg_acc: segment list) (current: segment)
    (get_segments': expr -> segment list -> int -> segment list): segment list =
current.end_op <- current.end_op + 1;
match (List.hd_exn e).opcode with
| (* end *)         0x0b
| (* unreachable *) 0x00
| (* return *)      0x0f ->
( match current.start_op = current.end_op-1 with
  | true  -> get_segments' (List.tl_exn e) (List.append seg_acc [current]) current.end_op
  | false -> get_segments' (List.tl_exn e) (List.append seg_acc [current; {start_op=current.end_op; end_op=current.end_op+1; succ1=None; succ2=None}]) current.end_op
)
| (* loop *)        0x03
| (* if *)          0x04
| (* br *)          0x0c
| (* br_if *)       0x0d
| (* br_table *)    0x0e ->
    get_segments' (List.tl_exn e) (List.append seg_acc [current]) current.end_op
| _ ->
    get_segments'' (List.tl_exn e) seg_acc current get_segments'

let rec get_segments' (e: expr) (seg_acc: segment list) (start: int)=
match e with
| [] -> seg_acc
| _  -> get_segments'' e seg_acc {start_op=start; end_op=start+1; succ1=None; succ2=None} get_segments'

let get_segments (e: expr) : segment list = get_segments' e [] 0

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
  b:  int list;
}
type mem_expr_bytes =
{
  x:  memidx;
  e:  expr;
  b:  int list;
}
type data_details =
| ExprBytes of expr_bytes
| Bytes of int list
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

(* Printable strings *)
(* Type section *)
let string_of_types n l =
  match List.length l with
  | 0 -> ""
  | _ ->  String.concat [" (" ; n ; " " ;  String.concat ~sep:" " (List.map ~f:string_of_resulttype l) ; ")"]
let string_of_functype i ft = 
  String.concat ["  (type (;" ; (string_of_int i) ; ";) (func" 
  ; (string_of_types "param" ft.rt1) ; (string_of_types "result" ft.rt2) ; "))\n"]
let string_of_type_section section = String.concat ~sep:"" (List.mapi ~f:string_of_functype section)

(* Import section *)
let string_of_functype ti i =
  String.concat ["(func (;" ; string_of_int i ; ";) (type " ; string_of_int ti ; "))"]
let string_of_limits (limit: limits) = 
  match limit with
  | Noupper l -> string_of_int l
  | Lowerupper (l,u) -> String.concat [string_of_int l ; " " ; string_of_int u]
let string_of_tabletype tt i =
  String.concat ["(table (;" ; string_of_int i ; ";) " ; string_of_limits tt.lim ; " " ; string_of_reftype tt.et ; ")"]
let string_of_memtype mt i =
  String.concat ["(memory (;" ; string_of_int i ; ";) " ; string_of_limits mt ; ")"]
let string_of_globaltype gt i =
  String.concat ["(global (;" ; string_of_int i ; ";) " ; string_of_valtype gt.t ; ")"]

let string_of_description d i =
  match d with
  | Functype ti -> string_of_functype ti i
  | Tabletype tt -> string_of_tabletype tt i
  | Memtype mt -> string_of_memtype mt i
  | Globaltype gt -> string_of_globaltype gt i
let string_of_import (i: import) = String.concat ["  (import \"" ; i.module_name ; "\" \"" ; i.import_name ; "\" "
      ; string_of_description i.description i.index ; ")\n"]
let string_of_import_section section = String.concat ~sep:"" (List.map ~f:string_of_import section)

(* Export section *)
let string_of_exportdesc d =
  match d with
  | Func f -> String.concat ["func " ; string_of_int f]
  | Table t -> String.concat ["table " ; string_of_int t]
  | Mem m -> String.concat ["table " ; string_of_int m]
  | Global g -> String.concat ["table " ; string_of_int g]
let string_of_export (e: export) =
  String.concat ["  (export \"" ; e.name ; "\" (" ; string_of_exportdesc e.desc ; "))\n"]
let string_of_export_section section = String.concat ~sep:"" (List.map ~f:string_of_export section)

(* Start section *)
let string_of_start idx =
  match idx with
  | Some idx' -> String.concat ["(start " ; string_of_int idx' ; ")\n"]
  | _ -> ""
  
(* Function section *)
let get_type_sig w idx =
  match List.nth w.type_section idx with
  | Some x -> x
  | _ -> eprintf "Invalid index: %d" idx; {rt1 = []; rt2 = []}

let rec string_repeat' s sep n acc =
  match n with
  | 0 -> acc
  | _ -> string_repeat' s sep (n-1) (String.concat [acc ; sep ; s])
let string_repeat s sep n = string_repeat' s sep n ""

let string_of_local local = 
  string_repeat (string_of_valtype local.v) " " local.n

let string_of_locals locals =
  match List.length locals with
  | 0 -> ""
  | _ -> String.concat ["\n    (local" ; (String.concat ~sep:"" (List.map ~f:string_of_local locals)) ; ")"]

let string_of_memarg m = 
  match m.bits with
  | 64 ->
    (match m.a with
    | 0 -> "align=1"
    | 2 -> "align=4"
    | _ -> ""
    )
  | _ -> ""

let string_of_typeidx ti =
  String.concat ["(type " ; string_of_int ti ; " )"]

let string_of_blocktype b =
  match b with
  | Emptytype -> ""
  | Valuetype vt -> String.concat ["(result " ; string_of_valtype vt ; ")"]
  | Typeindex ti -> string_of_typeidx ti

let string_of_br_table b = String.concat [(String.concat ~sep:" " (List.map ~f:string_of_int b.table)) ; " " ; string_of_int b.index]
let string_of_arg' a  =
match a with 
| Blocktype b -> string_of_blocktype b
| Labelidx l -> string_of_int l
| BrTable b -> string_of_br_table b
| Funcidx f -> string_of_int f
| CallIndirect ci -> String.concat ["(type " ; (string_of_int ci.y) ; ")"]
| Reftype r -> string_of_reftype r
| ValtypeList vl -> String.concat ~sep:"," (List.map vl ~f:string_of_valtype)
| Globalidx g -> string_of_int g
| Localidx l -> string_of_int l
| Tableidx t-> string_of_int t
| Elemidx e -> string_of_int e
| TableCopy tc -> String.concat [(string_of_int tc.x) ; "," ; (string_of_int tc.y)]
| Memarg m-> string_of_memarg m
| Dataidx d -> string_of_int d
| I32value i -> string_of_int i
| I64value i -> sprintf "%Ld" i
| F32value f -> string_of_float f
| F64value f -> string_of_float f
| TruncSat i -> 
    (match i with
    | 0 -> "i32.trunc_sat_f32_s"
    | 1 -> "i32.trunc_sat_f32_u"
    | 2 -> "i32.trunc_sat_f64_s"
    | 3 -> "i32.trunc_sat_f64_u"
    | 4 -> "i64.trunc_sat_f32_s"
    | 5 -> "i64.trunc_sat_f32_u"
    | 6 -> "i64.trunc_sat_f64_s"
    | 7 -> "i64.trunc_sat_f64_u"
    | _ -> failwith (String.concat ["invalid trunc_sat: " ; (string_of_int i)])
    )
| EmptyArg -> ""

let string_of_arg a  =
  let argstring = string_of_arg' a in
  match String.length argstring with
  | 0 -> ""
  | _ -> String.concat [" " ; argstring]

let string_of_opcode' op comment =
String.concat ["\n" ; (String.make (op.nesting*2 + 4) ' ') ; op.opname ; (string_of_arg op.arg) ; comment]
let string_of_opcode e idx =
  let op = List.nth e idx in
  match op with
  | Some op -> 
    (* some special cases need to be handled here *)
    ( match op.opcode with
    | 0x02 (* block *)
    | 0x03 (* loop *)
    | 0x04 (* if *)
        -> string_of_opcode' op (String.concat ["  ;; label = @" ; string_of_int (op.nesting + 1)])
    | 0x0c (* br *)
    | 0x0d (* br_if *)
        -> string_of_opcode' op (String.concat [" (;@" ; string_of_int (op.nesting - int_of_string (String.lstrip (string_of_arg op.arg))) ; ";)"])
    | 0x0b (* end *) ->
      (match op.nesting with
      | -1 -> ""
      | _ -> string_of_opcode' op ""
      )
    | _ -> string_of_opcode' op ""
    )
  | _ -> "** unknown **"

let rec string_of_expr' e idx acc =
  match idx < (List.length e) with
  | false -> acc
  | true -> string_of_expr' e (idx+1) (String.concat [acc ; (string_of_opcode e idx)])

let string_of_expr e = string_of_expr' e 0 ""

let string_of_code w idx =
  let code = List.nth w.code_section idx in
  match code with
  | Some code' ->
    String.concat [(string_of_locals code'.locals) ; (string_of_expr code'.e)]
  | _ -> "Error"

let string_of_param  p = String.concat ["(param " ; (string_of_resulttype p) ; ")"]
let string_of_result r = String.concat ["(result " ; (string_of_resulttype r) ; ")"]
let string_of_params pl = String.concat ~sep:"" (List.map ~f:string_of_param pl)
let string_of_results rl = String.concat ~sep:"" (List.map ~f:string_of_result rl)
  
let string_of_function w i idx = 
  String.concat ["  (func (;" ; string_of_int (i + w.last_import_func) ; ";) (type " ; (string_of_int idx) ; ")" 
    ; (string_of_types "param" (get_type_sig w idx).rt1) ; (string_of_types "result" (get_type_sig w idx).rt2)
    ; (string_of_code w i) ; ")\n"]
let string_of_function_section w = 
  String.concat ~sep:"" (List.mapi ~f:(string_of_function w) w.function_section)

(* Table section *) 
let string_of_table i (t: tabletype) = String.concat [(string_of_tabletype t i) ; "\n"]
let string_of_table_section section = String.concat ~sep:"" (List.mapi ~f:string_of_table section)

  (* Memory section *) 
let string_of_memory i (m: memtype) = String.concat [(string_of_memtype m i) ; "\n"]
let string_of_memory_section section = String.concat ~sep:"" (List.mapi ~f:string_of_memory section)

(* Global section *)
let string_of_inline_expr e = String.strip (string_of_expr e)
let string_of_global (g: global) =
  String.concat ["  (global (;" ; string_of_int g.index ; ";) " ; "(" ; (string_of_mut g.gt.m) ; " " ; (string_of_valtype g.gt.t) 
  ; ") (" ; (string_of_inline_expr g.e) ; "))\n"]
let string_of_global_section section =
  String.concat ~sep:"" (List.map ~f:string_of_global section)

(* Element section *)
let string_of_list_idx li =
  String.concat ~sep:" " (List.map ~f:string_of_int li)

let string_of_expr_item e = String.concat ["(item " ; string_of_inline_expr e ; ")"]
let string_of_expr_list el = String.concat ~sep:"" (List.map ~f:string_of_expr_item el)

let string_of_element i e =
match e with
| ExprFunc exf ->
    String.concat ["  (elem (;" ; string_of_int i ; ";) (" ; string_of_inline_expr exf.e ; ") func " ; string_of_list_idx exf.y ; ")\n"]
| ElemFuncP ef ->
    String.concat ["  (elem (;" ; string_of_int i ; ";) func " ; string_of_list_idx ef.y ; ")\n"]
| TableExprElemFunc teef->
    String.concat ["  (elem (;" ; string_of_int i ; ";) (table " ; string_of_int teef.x ; ") (offset " ; string_of_inline_expr teef.e
          ; ") func " ; string_of_list_idx teef.y ; ")\n"]
| ElemFuncD ef ->
    String.concat ["  (elem (;" ; string_of_int i ; ";) func " ; string_of_list_idx ef.y ; ")\n"]
| ExprExpr ee ->
    String.concat ["  (elem (;" ; string_of_int i ; ";) (offset " ; string_of_inline_expr ee.e ; ") "
          ; String.concat ~sep:"" (List.map ~f:string_of_expr_item ee.el) ; ")\n"]
| RefExprP re ->
    String.concat ["  (elem (;" ; string_of_int i ; ";) " ; string_of_reftype re.et ; " " ; string_of_expr_list re.el ; ")\n"]
| TableExprRefExpr tere ->
    String.concat ["  (elem (;" ; string_of_int i ; ";) (table " ; string_of_int tere.x ; ") (offset " ; string_of_inline_expr tere.e
          ; string_of_reftype tere.et ; ")" ; string_of_expr_list tere.el ; ")\n"]
| RefExprD re ->
    String.concat ["  (elem (;" ; string_of_int i ; ";) declare " ; string_of_reftype re.et ; " " ; string_of_expr_list re.el ; ")\n"]
  
let string_of_element_section section =
  String.concat ~sep:"" (List.mapi ~f:string_of_element section)

(* Data section *)
let hexEscape b =
  if b < 32 || b > 126 then sprintf "\\%2.2x" b
  else (
    if b = 34 then "\\22"
    else 
      if b = 39 then "'"
      else 
      if b = 92 then "\\5c"
      else Char.escaped (char_of_int b))

let string_of_bytes b = (String.concat ~sep:"" (List.map ~f:hexEscape b))
let string_of_hex bl = (String.concat ~sep:" " (List.map ~f:(fun b -> sprintf "%2.2x" b) bl))

let string_of_data d =
  match d.details with
  | ExprBytes eb ->
      String.concat ["  (data (;" ; string_of_int d.index ; ";) (" ; string_of_inline_expr eb.e ; ") \"" ; string_of_bytes eb.b ; "\")\n"]
  | Bytes b ->
      String.concat ["  (data (;" ; string_of_int d.index ; ";) (" ; string_of_hex b ; ")\n"]
  | MemExprBytes meb ->
      String.concat ["  (data (;" ; string_of_int d.index ; ";) (memory " ; string_of_int meb.x ; ") (offset: " ; string_of_inline_expr meb.e 
          ; ") "  ; string_of_hex meb.b ; ")\n"]
let string_of_data_section section = String.concat ~sep:"" (List.map ~f:string_of_data section)

(* Print the whole wasm module *)
let print w =
  printf "Module: %s\n" w.module_name;
  printf "(module\n";
  printf "%s" (string_of_type_section w.type_section);
  printf "%s" (string_of_import_section w.import_section);
  printf "%s" (string_of_function_section w);
  printf "%s" (string_of_table_section w.table_section);
  printf "%s" (string_of_memory_section w.memory_section);
  printf "%s" (string_of_global_section w.global_section);
  printf "%s" (string_of_export_section w.export_section);
  printf "%s" (string_of_start w.start_section);
  printf "%s" (string_of_element_section w.element_section);
  printf "%s" (string_of_data_section w.data_section);
  printf ")"; ()

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
  w.code_section <- List.append w.code_section [{locals; e}]

(* data section *)
let index_of_data w =
  w.next_data <- w.next_data + 1; w.next_data-1
let update_data_section w details =
  w.data_section <- w.data_section@[{index = index_of_data w; details}]; true

(* data count *)
let update_data_count_section w count = w.data_count <- count; true