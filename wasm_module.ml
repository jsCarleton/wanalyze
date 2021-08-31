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
type blocktype = int
type funcidx = int
type typeidx = int
type tableidx = int
type localidx = int
type globalidx = int
type elemidx = int
type dataidx = int

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

type globaltype = 
{
  t:  valtype;
  m:  mut;
}

type importdesc = 
| Typeidx     of typeidx
| Tabletype   of tabletype
| Memtype     of memtype
| Globaltype  of globaltype

type import =
{
  module_name: string;
  import_name: string;
  description: importdesc;
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

(* Globals *)
type globalsec =
{
  x: string;
}

(* Exports *)
type exportsec =
{
  x: string;
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

let string_of_br_table _ = ""
let string_of_arg a  =
  match a with 
  | Blocktype b -> string_of_int b
  | Labelidx l -> string_of_int l
  | BrTable b -> string_of_br_table b
  | Funcidx f -> string_of_int f
  | CallIndirect ci -> (string_of_int ci.y) ^ "," ^ (string_of_int ci.x) 
  | Reftype r -> string_of_reftype r
  | ValtypeList vl -> String.concat ~sep:"," (List.map vl ~f:string_of_valtype)
  | Globalidx g -> string_of_int g
  | Localidx l -> string_of_int l
  | Tableidx t-> string_of_int t
  | Elemidx e -> string_of_int e
  | TableCopy tc -> (string_of_int tc.x) ^ "," ^ (string_of_int tc.y)
  | Memarg m-> "align:" ^ (string_of_int m.a) ^ ",offset:" ^ (string_of_int m.o)
  | Dataidx d -> string_of_int d
  | I32value i -> string_of_int i
  | I64value i -> sprintf "%Ld" i
  | F32value f -> string_of_float f
  | F64value f -> string_of_float f
  | TruncSat i -> string_of_int i
  | EmptyArg -> ""

let string_of_args a =
  String.concat ~sep:"," (List.map a ~f:string_of_arg)

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
type func =
{
  locals: local_type list;
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
  mutable max_func_idx:     int;
  mutable type_section:     functype list;
  mutable import_section:   import list;
  mutable function_section: typeidx list;
  mutable code_section:     func list;
}
let create name =
  { module_name = name; max_func_idx = 0; type_section = []; import_section = []; function_section = []; code_section = []}

(* Type section printing *)
let string_of_param  p = "(param " ^ (string_of_resulttype p) ^ ")"
let string_of_result r = "(result " ^ (string_of_resulttype r) ^ ")"
let string_of_params pl = String.concat ~sep:"" (List.map ~f:string_of_param pl)
let string_of_results rl = String.concat ~sep:"" (List.map ~f:string_of_result rl)
let string_of_functype i ft = "  (type (;" ^ (string_of_int i) ^ ";) (func " ^ (string_of_params ft.rt1) ^ (string_of_results ft.rt2) ^ "))\n"
let string_of_type_section section = String.concat ~sep:"" (List.mapi ~f:string_of_functype section)

(* Import section printing *)
let string_of_typeidx ti =
  "(func (;TBD;) (type " ^ string_of_int ti ^ ")"
let string_of_limits (limit: limits) = 
  match limit with
  | Noupper l -> string_of_int l
  | Lowerupper (l,u) -> string_of_int l ^ " " ^ string_of_int u
let string_of_tabletype tt =
"(table (;TBD;) " ^ string_of_limits tt.lim ^ " " ^ string_of_reftype tt.et ^ ")" 
let string_of_memtype mt =
  "(memory (;TBD;) " ^ string_of_limits mt ^ ")"
let string_of_globaltype gt =
  "(global (;TBD;) " ^ string_of_valtype gt.t ^ ")"

let string_of_description d =
  match d with
  | Typeidx ti -> string_of_typeidx ti
  | Tabletype tt -> string_of_tabletype tt
  | Memtype mt -> string_of_memtype mt
  | Globaltype gt -> string_of_globaltype gt
let string_of_import (i: import) = "  (import \"" ^ i.module_name ^ "\" \"" ^ i.import_name ^ "\" "
      ^ string_of_description i.description ^ ")\n"
let string_of_import_section section = String.concat ~sep:"" (List.map ~f:string_of_import section)
  
(* Function section printing *)
let list_item l i =
  match List.nth l i with
  | Some x -> x
  | None -> -1

let get_params w idx =
  match List.nth w.type_section idx with
  | Some x -> x
  | _ -> {rt1 = []; rt2 = []} (* TODO this shouldn't happen*)

let string_of_local i local = 
  "  (local " ^ (string_of_int i) ^ " count: " ^ (string_of_int local.n) ^ " " ^ (string_of_valtype local.v) ^ ")\n"

let string_of_locals locals =
  String.concat ~sep:"" (List.mapi ~f:string_of_local locals)

let string_of_memarg a o =
  "align: " ^ (string_of_int a) ^ " offset: " ^ (string_of_int o)

let string_of_opcode e idx =
    let op = List.nth e idx in
    match op with
    | Some op -> (String.make (op.nesting*2 + 4) ' ') ^ op.opname ^ " " ^ (string_of_arg op.arg)
    | _ -> "** unknown **"

let rec string_of_expr' e idx acc =
  match idx < (List.length e) with
  | false -> acc
  | true -> string_of_expr' e (idx+1) (acc ^ (string_of_opcode e idx) ^ "\n")

let string_of_expr e =
  string_of_expr' e 0 ""

let string_of_code w idx =
  let code = List.nth w.code_section idx in
  match code with
  | Some code' ->
    (string_of_locals code'.locals) ^ (string_of_expr code'.e)
  | _ -> "Error"

let string_of_function w i idx = 
  "  (func (;" ^ (string_of_int i) ^ ";) (type " ^ (string_of_int idx) ^ ") " 
    ^ (string_of_params (get_params w idx).rt1) ^ (string_of_results (get_params w idx).rt2)
    ^ "\n" ^ (string_of_code w i) ^ "  )\n"
let string_of_function_section w = 
  String.concat ~sep:"" (List.mapi ~f:(string_of_function w) w.function_section)

(* Section updating *)
let update_type_section w ((b1, rt1),(b2, rt2)) =
  eprintf "updating, before:%d\n" (List.length w.type_section);
  eprintf "rt1 len:%d rt2 len:%d\n" (List.length rt1)(List.length rt2);
  match (b1,b2) with
  | (true, true) -> 
          w.type_section 
            <- List.append w.type_section [create_functype (List.map ~f:valtype_of_int rt1) (List.map ~f:valtype_of_int rt2) ]; true
  | _ -> false

let update_import_section w module_name import_name description =
  match description with
  | None -> false
  | Some x ->
      w.import_section 
          <- List.append w.import_section [{module_name; import_name; description=x}]; true

let update_function_section w (b, i) =
  match b, i with
  | true, _ ->
          w.function_section
            <- List.append w.function_section [i]; true
  | _ -> false

let update_code_section w ((b1, locals), (b2, e)) =
  match b1, b2 with
  | true, true ->
        w.code_section
          <- List.append w.code_section [{locals; e}]; true
  | _ -> false

let print w =
  printf "Module: %s\n" w.module_name;
  printf "(module\n";
  printf "%s" (string_of_type_section w.type_section);
  printf "%s" (string_of_import_section w.import_section);
  printf "%s" (string_of_function_section w);
  printf ")";