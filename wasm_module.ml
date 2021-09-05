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

(* TODO in the spec resulttype is a vec of valtype *)
let valtype_of_int i =
  match i with
  | 0x7f -> Numtype I32
  | 0x7e -> Numtype I64
  | 0x7d -> Numtype F32
  | 0x7c -> Numtype F64
  | 0x70 -> Reftype Funcref
  | 0x6f -> Reftype Externref
  | _ -> Numtype I32 (*TODO*)

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
let create_functype rt1 rt2 =
  { rt1; rt2}

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
type tablesec =
{
  x: string;
}

(* Memories *)
type memsec =
{
  x: string;
}

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
type startsec =
{
  x: string;
}

(* Elements *)
type elemsec =
{
  x: string;
}

(* Code *)
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

type op_type =
{
  opcode:   int;
  opname:   string;
  arg:      op_arg;
  nesting:  int;
}
type expr = op_type list
type local_type =
{
  n:  int;
  v:  valtype;
}
type label_type = 
{
  index:  labelidx;
  name:   string;
}
type func =
{
  locals:   local_type list;
  e:        expr;
  labels:   label_type list;
}

(* Globals *)
type global =
{
  index:  int;
  gt:     globaltype;
  e:      expr;
}

(* Data *)
type datasec =
{
  x: string;
}

(* Data Count *)
type datacountsec =
{
  x: string;
}

(* wasm Module *)
type wasm_module =
{
  module_name:              string;
  mutable type_section:     functype list;
  mutable import_section:   import list;
  mutable function_section: typeidx list;
  mutable global_section:   global list;
  mutable export_section:   export list;
  mutable code_section:     func list;
  mutable next_func:        int;
  mutable next_global:      int;
  mutable next_memory:      int;
  mutable next_table:       int;
}
let create name =
  { module_name = name; type_section = []; import_section = []; function_section = []; 
    global_section = []; export_section = []; code_section = [];
    next_func = 0; next_global = 0; next_memory = 0; next_table = 0}

(* Printable strings *)
(* Type section *)
let string_of_types n l =
  match List.length l with
  | 0 -> ""
  | _ ->  " (" ^ n ^ " " ^  String.concat ~sep:" " (List.map ~f:string_of_resulttype l) ^ ")"
let string_of_functype i ft = 
  "  (type (;" ^ (string_of_int i) ^ ";) (func" 
  ^ (string_of_types "param" ft.rt1) ^ (string_of_types "result" ft.rt2) ^ "))\n"
let string_of_type_section section = String.concat ~sep:"" (List.mapi ~f:string_of_functype section)

(* Import section *)
let string_of_functype ti i =
  "(func (;" ^ string_of_int i ^ ";) (type " ^ string_of_int ti ^ "))"
let string_of_limits (limit: limits) = 
  match limit with
  | Noupper l -> string_of_int l
  | Lowerupper (l,u) -> string_of_int l ^ " " ^ string_of_int u
let string_of_tabletype tt i =
"(table (;" ^ string_of_int i ^ ";) " ^ string_of_limits tt.lim ^ " " ^ string_of_reftype tt.et ^ ")" 
let string_of_memtype mt i =
  "(memory (;" ^ string_of_int i ^ ";) " ^ string_of_limits mt ^ ")"
let string_of_globaltype gt i =
  "(global (;" ^ string_of_int i ^ ";) " ^ string_of_valtype gt.t ^ ")"

let string_of_description d i =
  match d with
  | Functype ti -> string_of_functype ti i
  | Tabletype tt -> string_of_tabletype tt i
  | Memtype mt -> string_of_memtype mt i
  | Globaltype gt -> string_of_globaltype gt i
let string_of_import (i: import) = "  (import \"" ^ i.module_name ^ "\" \"" ^ i.import_name ^ "\" "
      ^ string_of_description i.description i.index ^ ")\n"
let string_of_import_section section = String.concat ~sep:"" (List.map ~f:string_of_import section)

(* (export "___errno_location" (func 51))
 *)
(* Export section *)
let string_of_exportdesc d =
  match d with
  | Func f -> "func " ^ string_of_int f
  | Table t -> "table " ^ string_of_int t
  | Mem m -> "table " ^ string_of_int m
  | Global g -> "table " ^ string_of_int g
let string_of_export (e: export) =
  "(export \"" ^ e.name ^ "\" (" ^ string_of_exportdesc e.desc ^ "))\n"
let string_of_export_section section = String.concat ~sep:"" (List.map ~f:string_of_export section)
  
(* Function section *)
let list_item l i =
  match List.nth l i with
  | Some x -> x
  | None -> -1

let get_params w idx =
  match List.nth w.type_section idx with
  | Some x -> x
  | _ -> {rt1 = []; rt2 = []} (* TODO this shouldn't happen*)

let rec string_repeat' s sep n acc =
  match n with
  | 0 -> acc
  | _ -> string_repeat' s sep (n-1) (acc ^ sep ^ s)
let string_repeat s sep n = string_repeat' s sep n ""

let string_of_local local = 
  string_repeat (string_of_valtype local.v) " " local.n

let string_of_locals locals =
  match List.length locals with
  | 0 -> ""
  | _ -> "\n    (local" ^ (String.concat ~sep:"" (List.map ~f:string_of_local locals)) ^ ")"

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
  "(type " ^ string_of_int ti ^ " )"

let string_of_blocktype b =
  match b with
  | Emptytype -> ""
  | Valuetype vt -> "(result " ^ string_of_valtype vt ^ ")"
  | Typeindex ti -> string_of_typeidx ti

let string_of_br_table _ = "" (* TODO *)
let string_of_arg' a  =
match a with 
| Blocktype b -> string_of_blocktype b
| Labelidx l -> string_of_int l
| BrTable b -> string_of_br_table b
| Funcidx f -> string_of_int f
| CallIndirect ci -> "(type " ^ (string_of_int ci.y) ^ ")"
| Reftype r -> string_of_reftype r
| ValtypeList vl -> String.concat ~sep:"," (List.map vl ~f:string_of_valtype)
| Globalidx g -> string_of_int g
| Localidx l -> string_of_int l
| Tableidx t-> string_of_int t
| Elemidx e -> string_of_int e
| TableCopy tc -> (string_of_int tc.x) ^ "," ^ (string_of_int tc.y)
| Memarg m-> string_of_memarg m
| Dataidx d -> string_of_int d
| I32value i -> string_of_int i
| I64value i -> sprintf "%Ld" i
| F32value f -> string_of_float f
| F64value f -> string_of_float f
| TruncSat i -> string_of_int i
| EmptyArg -> ""
let string_of_arg a  =
  let argstring = string_of_arg' a in
  match String.length argstring with
  | 0 -> ""
  | _ -> " " ^ argstring

let string_of_opcode' op comment =
  "\n" ^ (String.make (op.nesting*2 + 4) ' ') ^ op.opname ^ (string_of_arg op.arg) ^ comment 
let string_of_opcode e idx =
  let op = List.nth e idx in
  match op with
  | Some op -> 
    (* some special cases need to be handled here *)
    ( match op.opcode with
    | 0x02 (* block *)
    | 0x03 (* loop *)
    | 0x04 (* if *)
        -> string_of_opcode' op "  ;; label = @" ^ string_of_int (op.nesting + 1)
    | 0x0c (* br *)
    | 0x0d (* br_if *)
        -> string_of_opcode' op " (;@" ^ string_of_int (op.nesting - int_of_string (String.lstrip (string_of_arg op.arg))) ^ ";)" 
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
  | true -> string_of_expr' e (idx+1) (acc ^ (string_of_opcode e idx))

let string_of_expr e = string_of_expr' e 0 ""

let string_of_code w idx =
  let code = List.nth w.code_section idx in
  match code with
  | Some code' ->
    (string_of_locals code'.locals) ^ (string_of_expr code'.e)
  | _ -> "Error"

let string_of_param  p = "(param " ^ (string_of_resulttype p) ^ ")"
let string_of_result r = "(result " ^ (string_of_resulttype r) ^ ")"
let string_of_params pl = String.concat ~sep:"" (List.map ~f:string_of_param pl)
let string_of_results rl = String.concat ~sep:"" (List.map ~f:string_of_result rl)
  
let string_of_function w i idx = 
  "  (func (;" ^ string_of_int (i + w.next_func) ^ ";) (type " ^ (string_of_int idx) ^ ")" 
    ^ (string_of_types "param" (get_params w idx).rt1) ^ (string_of_types "result" (get_params w idx).rt2)
    ^ (string_of_code w i) ^ ")\n"
let string_of_function_section w = 
  String.concat ~sep:"" (List.mapi ~f:(string_of_function w) w.function_section)

let string_of_global g =
  "  (global (;" ^ string_of_int g.index ^ ";) " ^ "(" ^ (string_of_mut g.gt.m) ^ " " ^ (string_of_valtype g.gt.t) 
  ^ ") (" ^ (String.drop_prefix (string_of_expr g.e) 5) ^ "))\n" 
let string_of_global_section section =
  String.concat ~sep:"" (List.map ~f:string_of_global section)

let print w =
  printf "Module: %s\n" w.module_name;
  printf "(module\n";
  printf "%s" (string_of_type_section w.type_section);
  printf "%s" (string_of_import_section w.import_section);
  printf "%s" (string_of_function_section w);
  printf "%s" (string_of_global_section w.global_section);
  printf "%s" (string_of_export_section w.export_section);
  printf ")"; true

(* Section updating *)
(* type section *)
let update_type_section w ((b1, rt1),(b2, rt2)) =
  eprintf "updating, before:%d\n" (List.length w.type_section);
  eprintf "rt1 len:%d rt2 len:%d\n" (List.length rt1)(List.length rt2);
  match (b1,b2) with
  | (true, true) -> 
          w.type_section 
            <- List.append w.type_section [create_functype (List.map ~f:valtype_of_int rt1) (List.map ~f:valtype_of_int rt2) ]; true
  | _ -> false

(* import section *)
let index_of w desc =
  (match desc with
  | Functype _ -> w.next_func <- w.next_func + 1; w.next_func-1
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
let update_function_section w (b, i) =
  match b, i with
  | true, _ ->
          w.function_section
            <- List.append w.function_section [i]; true
  | _ -> false

(* global section *)
let index_of_global w =
  w.next_global <- w.next_global + 1; w.next_global-1
let update_global_section w gt e =
  w.global_section <- List.append w.global_section [{gt; e; index = index_of_global w}]; true

(* export section *)
let update_export_section w name desc =
  w.export_section <- List.append w.export_section [{name; desc}]; true

(* code section *)
let update_code_section w locals e labels =
  w.code_section <- List.append w.code_section [{locals; e; labels}]