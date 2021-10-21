open Core
open Wasm_module

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

let string_of_opcode' op idx comment =
String.concat ["\n" ; sprintf "%4.4d" idx; (String.make (op.nesting*2 + 4) ' ') ; op.opname ; (string_of_arg op.arg) ; comment]
let string_of_opcode e idx =
  let op = List.nth e idx in
  match op with
  | Some op -> 
    (* some special cases need to be handled here *)
    ( match op.opcode with
    | 0x02 (* block *)
    | 0x03 (* loop *)
    | 0x04 (* if *)
        -> string_of_opcode' op idx (String.concat ["  ;; label = @" ; string_of_int (op.nesting + 1)])
    | 0x0c (* br *)
    | 0x0d (* br_if *)
        -> string_of_opcode' op idx (String.concat [" (;@" ; string_of_int (op.nesting - int_of_string (String.lstrip (string_of_arg op.arg))) ; ";)"])
    | 0x0b (* end *) ->
      (match op.nesting with
      | -1 -> ""
      | _ -> string_of_opcode' op idx ""
      )
    | _ -> string_of_opcode' op idx ""
    )
  | _ -> failwith "Missing opcode"

let segment_sep show_segments index = 
  match show_segments with
  | true -> String.concat ["\n"; string_of_int index; " ------------------------------------------------------------"]
  | _ -> ""

let rec string_of_expr' e show_segments (segments: Segments.segment list) idx acc =
  match idx < (List.length e) with
  | true -> 
    (match segments with
    | hd::tl ->
      (match hd.start_op = idx with
        | true  -> string_of_expr' e show_segments tl (idx+1) (String.concat [acc ; (segment_sep show_segments hd.index); (string_of_opcode e idx)])
        | false -> string_of_expr' e show_segments segments (idx+1) (String.concat [acc ; (string_of_opcode e idx)])
      )
    | _ -> string_of_expr' e show_segments segments (idx+1) (String.concat [acc ; (string_of_opcode e idx)])
    )
  | false -> acc
let string_of_expr e show_segments = 
  string_of_expr' e show_segments (match show_segments with | true -> (Segments.get_segments e) | _ -> []) 0 ""

let string_of_code w idx show_segments =
  String.concat [(string_of_locals (List.nth_exn w.code_section idx).locals) ; (string_of_expr (List.nth_exn w.code_section idx).e show_segments)]

let string_of_param  p = String.concat ["(param " ; (string_of_resulttype p) ; ")"]
let string_of_result r = String.concat ["(result " ; (string_of_resulttype r) ; ")"]
let string_of_params pl = String.concat ~sep:"" (List.map ~f:string_of_param pl)
let string_of_results rl = String.concat ~sep:"" (List.map ~f:string_of_result rl)

type segment =
{
          start_op:    int;         (* index into e of the first op in the expr *)
  mutable end_op:      int;         (* index+1 of the last op in the expr *)
  mutable succ:        int list;    (* segment index for segments that can be directly reached from this segment *)
  mutable segtype:	   int;         (* the control opcode that created this segment *)
 }

let string_of_segtype (segtype: int) : string =
  match segtype with
  | 0x00 -> "unreachable"
  | 0x02 -> "block"
  | 0x03 -> "loop"
  | 0x04 -> "if"
  | 0x05 -> "else"
  | 0x0b -> "end"
  | 0x0c -> "br"
  | 0x0d -> "br_if"
  | 0x0e -> "br_table"
  | 0x0f -> "return"
  | _ -> failwith (String.concat ["Invalid segtype: "; string_of_int segtype])

let string_of_segindex (i: int) : string = match i with | -1 -> "" | _ -> string_of_int i
let string_of_ints (ints: int list): string =
    String.concat ~sep:" " (List.map ~f:string_of_int ints)
let string_of_segment (s: Segments.segment) : string = 
  sprintf "%5d %5d %5d %5d   %-5s %6s %-11s %-20s\n" 
    s.index s.start_op s.end_op s.nesting (string_of_segindex s.br_dest) (string_of_ints s.labels) (string_of_segtype s.segtype) (string_of_ints s.succ)
let string_of_segments (s: Segments.segment list) : string =
  String.concat["                          br    target\nindex start   end nesting dest  labels type        succ\n";
                 String.concat (List.map ~f:string_of_segment s)]

let string_of_function w show_segments i idx = 
  String.concat [
    "  (func (;" ; string_of_int (i + w.last_import_func) ; ";) (type " ; string_of_int idx ; ")" 
    ; string_of_types "param" (get_type_sig w idx).rt1
    ; string_of_types "result" (get_type_sig w idx).rt2
    ; string_of_code w i show_segments ; ")\n" 
    ; string_of_segments (Segments.get_segments (List.nth_exn w.code_section i).e)]
let string_of_function_section w show_segments = 
  String.concat ~sep:"" (List.mapi ~f:(string_of_function w show_segments) w.function_section)

(* Table section *) 
let string_of_table i (t: tabletype) = String.concat [(string_of_tabletype t i) ; "\n"]
let string_of_table_section section = String.concat ~sep:"" (List.mapi ~f:string_of_table section)

  (* Memory section *) 
let string_of_memory i (m: memtype) = String.concat [(string_of_memtype m i) ; "\n"]
let string_of_memory_section section = String.concat ~sep:"" (List.mapi ~f:string_of_memory section)

(* Global section *)
let string_of_inline_expr e = String.strip (string_of_expr e false)
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
let hexEscape (c: char) : string =
  let b = Char.to_int c in
  if b < 32 || b > 126 then sprintf "\\%2.2x" b
  else (
    if b = 34 then "\\22"
    else 
      if b = 39 then "'"
      else 
      if b = 92 then "\\5c"
      else Char.escaped (char_of_int b))

let string_of_bytes    (b: bytes) : string = 
  String.concat ~sep:"" (List.init (Bytes.length b) ~f:(fun i -> (hexEscape (Bytes.get b i))))
let hexstring_of_bytes (b: bytes) : string = 
  String.concat ~sep:"" (List.init (Bytes.length b) ~f:(fun i -> (sprintf "%2.2x" (Char.to_int (Bytes.get b i)))))

let string_of_data d =
  match d.details with
  | ExprBytes eb ->
      String.concat ["  (data (;" ; string_of_int d.index ; ";) (" ; string_of_inline_expr eb.e ; ") \"" ; string_of_bytes eb.b ; "\")\n"]
  | Bytes b ->
      String.concat ["  (data (;" ; string_of_int d.index ; ";) (" ; hexstring_of_bytes b ; ")\n"]
  | MemExprBytes meb ->
      String.concat ["  (data (;" ; string_of_int d.index ; ";) (memory " ; string_of_int meb.x ; ") (offset: " ; string_of_inline_expr meb.e 
          ; ") "  ; hexstring_of_bytes meb.b ; ")\n"]
let string_of_data_section section = String.concat ~sep:"" (List.map ~f:string_of_data section)

(* Print the whole wasm module *)
let print w show_segments =
  printf "Module: %s\n" w.module_name;
  printf "(module\n";
  printf "%s" (string_of_type_section w.type_section);
  printf "%s" (string_of_import_section w.import_section);
  printf "%s" (string_of_function_section w show_segments);
  printf "%s" (string_of_table_section w.table_section);
  printf "%s" (string_of_memory_section w.memory_section);
  printf "%s" (string_of_global_section w.global_section);
  printf "%s" (string_of_export_section w.export_section);
  printf "%s" (string_of_start w.start_section);
  printf "%s" (string_of_element_section w.element_section);
  printf "%s" (string_of_data_section w.data_section);
  printf ")"; ()