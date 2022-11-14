open Core
open Easy_logging
open Wm
open Bb
open Ssa
open Et
open Cp
open Ex
open Cost
open Cfg
open Ebb

(* Part 1 *)
(* Printable strings for basic types *)
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

let string_of_mut m =
  match m with
  | Const -> ""
  | NotConst -> "mut"

(* Part 2 *)
(* printing sections *)

(* Type section *)
let string_of_types n l =
  match List.length l with
  | 0 -> ""
  | _ ->  String.concat [" (" ; n ; " " ;  String.concat ~sep:" " (List.map ~f:string_of_resulttype l) ; ")"]
let string_of_functype i ft = 
  String.concat ["  (type (;" ; (string_of_int i) ; ";) (func" 
  ; (string_of_types "param" ft.rt1) ; (string_of_types "result" ft.rt2) ; "))"]
let string_of_type_section section = String.concat ~sep:"\n" (List.mapi ~f:string_of_functype section)

(* Import section *)
let string_of_functype ti i =
  String.concat ["(func (;" ; string_of_int i ; ";) (type " ; string_of_int ti ; "))"]
let string_of_limits (limit: limits) = 
  match limit with
  | Noupper l -> string_of_int l
  | Lowerupper (l,u) -> String.concat [string_of_int u ; " " ; string_of_int l]
let string_of_tabletype tt i =
  String.concat ["(table (;" ; string_of_int i ; ";) " ; string_of_limits tt.lim ; " " ; string_of_reftype tt.et ; ")"]
let string_of_memtype mt i =
  String.concat ["(memory (;" ; string_of_int i ; ";) " ; string_of_limits mt ; ")"]
let string_of_globaltype gt i =
  String.concat [ "(global (;";
                  string_of_int i;
                  ";) ";
                  (match gt.m with 
                    | Const -> string_of_valtype gt.t
                    | NotConst   -> String.concat["(mut "; string_of_valtype gt.t; ")"]);
                   ")"]

let string_of_description d i =
  match d with
  | Functype ti -> string_of_functype ti i
  | Tabletype tt -> string_of_tabletype tt i
  | Memtype mt -> string_of_memtype mt i
  | Globaltype gt -> string_of_globaltype gt i
let string_of_import (i: import) = String.concat ["  (import \"" ; i.module_name ; "\" \"" ; i.import_name ; "\" "
      ; string_of_description i.description i.iindex ; ")"]
let string_of_import_section section = String.concat ~sep:"\n" (List.map ~f:string_of_import section)

(* Export section *)
let string_of_exportdesc d =
  match d with
  | Func f -> String.concat ["func " ; string_of_int f]
  | Table t -> String.concat ["table " ; string_of_int t]
  | Mem m -> String.concat ["memory " ; string_of_int m]
  | Global g -> String.concat ["global " ; string_of_int g]
let string_of_export (e: export) =
  String.concat ["  (export \"" ; e.name ; "\" (" ; string_of_exportdesc e.desc ; "))"]
let string_of_export_section section = String.concat ~sep:"\n" (List.map ~f:string_of_export section)

(* Start section *)
let string_of_start idx =
  match idx with
  | Some idx' -> String.concat ["  (start " ; string_of_int idx' ; ")\n"]
  | _ -> ""
  
(* Function section *)
let get_type_sig (w: wm) idx =
  List.nth_exn w.type_section idx

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
  let offset_part = 
    match m.o with | 0 -> "" | _ -> (sprintf "offset=%d" m.o) in
  let align_part = 
    match m.bits with | 64 -> (match m.a with | 0 -> "align=1" | 1 -> "align=2" | 2 -> "align=4" | _ -> "") 
                      | 32 -> (match m.a with | 0 -> "align=1" | 1 -> "align=2" | _ -> "")
                      | 16 -> (match m.a with | 0 -> "align=1" | _ -> "")
                      | _  -> "" in
   match offset_part, align_part with
  | "", ""  -> ""
  | "", _   -> align_part
  | _, ""   -> offset_part
  | _, _    -> String.concat [offset_part; " "; align_part]

let string_of_typeidx ti =
  String.concat ["(type " ; string_of_int ti ; " )"]

let string_of_blocktype b =
  match b with
  | Emptytype -> ""
  | Valuetype vt -> String.concat ["(result " ; string_of_valtype vt ; ")"]
  | Typeindex ti -> string_of_typeidx ti

let string_of_br_target nesting index =
  (String.concat [" (;@" ; string_of_int (nesting - index) ; ";)"])

let string_of_br_index nesting index =
  (String.concat [string_of_int index; string_of_br_target nesting index])

let string_of_br_table nesting b = 
  String.concat ~sep:" " (List.map ~f:(string_of_br_index nesting) b)

let string_of_arg' nesting a  =
match a with 
| Blocktype b -> string_of_blocktype b
| Labelidx l -> string_of_int l
| BrTable b -> string_of_br_table nesting b
| Funcidx f -> string_of_int f
| CallIndirect ci -> String.concat ["(type " ; (string_of_int ci.y) ; ")"]
| Reftype r -> string_of_reftype r
| ValtypeList vl -> String.concat ~sep:"," (List.map vl ~f:string_of_valtype)
| Globalidx g -> string_of_int g
| Localidx l -> string_of_int l
| Tableidx t-> string_of_int t
| Elemidx e -> string_of_int e
| TableCopy tc -> String.concat [(string_of_int tc.x) ; "," ; (string_of_int tc.y)]
| Memarg m -> string_of_memarg m
| IgnoreArg _ -> ""
| Dataidx d -> string_of_int d
| I32value i -> string_of_int i
| I64value i -> sprintf "%Ld" i
| F32value f -> sprintf "0x%x" f
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

let label_index_of_arg a =
  match a with 
  | Labelidx l -> l
  | _ -> failwith "No label index"

let string_of_arg nesting a  =
  let argstring = string_of_arg' nesting a in
  match String.length argstring with
  | 0 -> ""
  | _ -> String.concat [" " ; argstring]

let string_of_line_number (idx: int) (annotate: bool) =
  match annotate with | true -> sprintf "%4.4d" idx | _ -> ""

let string_of_opcode'' nesting (op: op_type) idx comment (annotate:bool) =
  String.concat ["\n" ; string_of_line_number idx annotate; (String.make (op.opnesting*2 + 4) ' ') ; op.opname ; (string_of_arg nesting op.arg) ; comment]

let string_of_br_arg nesting arg =
  string_of_br_target nesting (label_index_of_arg arg)

let string_of_opcode' (op: op_type) (idx: int) (annotate:bool) =
  match op.opcode with (* some special cases need to be handled here *)
  | 0x02 (* block *)
  | 0x03 (* loop *)
  | 0x04 (* if *)
      -> string_of_opcode'' op.opnesting op idx (String.concat ["  ;; label = @" ; string_of_int (op.opnesting + 1)]) annotate
  | 0x0c (* br *)
  | 0x0d (* br_if *)
      -> string_of_opcode'' op.opnesting op idx (string_of_br_arg op.opnesting op.arg) annotate
  | 0x0b (* end *) ->
    (match op.opnesting with
    | -1 -> ""
    | _ -> string_of_opcode'' op.opnesting op idx "" annotate
    )
  | _ -> string_of_opcode'' op.opnesting op idx "" annotate

let string_of_opcode (e: expr) (idx: int) (annotate:bool) =
  let op = List.nth_exn e idx in
  string_of_opcode' op idx annotate

let bblock_sep annotate bb =
  if annotate && (not (bb_is_exit bb)) then
    String.concat ["\n"; string_of_int bb.bbindex; " ------------------------------------------------------------"]
  else
    ""

let rec string_of_expr' e annotate (bblocks: bb list) idx acc =
  match idx < (List.length e) with
  | true -> 
    (match bblocks with
    | hd::tl ->
      (match hd.start_op = idx with
        | true  -> string_of_expr' e annotate tl (idx+1) (String.concat [acc ; (bblock_sep annotate hd); (string_of_opcode e idx annotate)])
        | false -> string_of_expr' e annotate bblocks (idx+1) (String.concat [acc ; (string_of_opcode e idx annotate)])
      )
    | _ -> string_of_expr' e annotate bblocks (idx+1) (String.concat [acc ; (string_of_opcode e idx annotate)])
    )
  | false -> acc

let string_of_expr e bblocks annotate = 
  string_of_expr' e annotate (match annotate with | true -> bblocks | _ -> []) 0 ""

let print_expr'' oc annotate base idx op =
  Out_channel.output_string oc (string_of_opcode' op (base+idx) annotate)

let print_bblock oc e annotate (bblock: bb) =
  Out_channel.output_string oc (bblock_sep annotate bblock);
  List.iteri ~f:(print_expr'' oc annotate bblock.start_op) (expr_of_bb e bblock)

let print_expr oc e bblocks annotate =
  match annotate with
  | true  -> List.iter ~f:(print_bblock oc e annotate) bblocks 
  | false -> List.iter ~f:(print_expr'' oc annotate 0 0) e 

let print_code oc (w: wm) idx annotate bbs =
  let f = List.nth_exn w.code_section idx in
  Out_channel.output_string oc (string_of_locals f.locals);
  print_expr oc f.e bbs annotate

let string_of_bbtype (bbtype: bb_type) : string =
  match bbtype with
  | BB_unknown          -> "unknown"
  | BB_unreachable      -> "unreachable"
  | BB_block            -> "block"
  | BB_loop             -> "loop"
  | BB_if               -> "if"
  | BB_else             -> "else"
  | BB_end              -> "end"
  | BB_br               -> "br"
  | BB_br_if            -> "br_if"
  | BB_br_table         -> "br_table"
  | BB_return           -> "return"
  | BB_exit_end         -> "exit end"
  | BB_exit_return      -> "exit return"
  | BB_exit_unreachable -> "exit unreachable"

let string_of_br_dest (bblock: bb option) : string =
  match bblock with 
    | Some x -> string_of_int x.bbindex
    | _ -> ""

let string_of_bb_detail (s: bb) : string = 
  sprintf "%5d %5d %5d %5d   %-5s %6s %-11s s=%s p=%s\n" 
    s.bbindex
    s.start_op
    s.end_op
    s.nesting
    (string_of_br_dest s.br_dest)
    (string_of_ints s.labels)
    (string_of_bbtype s.bbtype)
    (string_of_raw_bblocks s.succ)
    (string_of_raw_bblocks s.pred)
    
let string_of_bbs_detail (s: bb list) : string =
  Printf.printf "cost: %d\n" 
    (cost_of_bb_path  (List.hd_exn s) 
        (List.find_exn s ~f:(fun x -> match x.bbtype with | BB_exit_end -> true | _ -> false)));
  String.concat["                          br    target\nindex start   end nesting dest  labels type        succ/pred\n";
                 String.concat (List.map ~f:string_of_bb_detail s)]

let print_function oc (w: wm) annotate bbs i idx =
  (match annotate with | true -> () | _ -> Out_channel.output_string oc "\n");
  Out_channel.output_string oc "  (func (;"; 
  Out_channel.output_string oc (string_of_int (i + w.last_import_func));
  Out_channel.output_string oc ";) (type ";
  Out_channel.output_string oc (string_of_int idx);
  Out_channel.output_string oc ")"; 
  Out_channel.output_string oc (string_of_types "param" (get_type_sig w idx).rt1);
  Out_channel.output_string oc (string_of_types "result" (get_type_sig w idx).rt2);
  print_code oc w i annotate bbs;
  Out_channel.output_string oc ")"

let print_function_section oc (w: wm) =
  List.iteri ~f:(print_function oc w false []) (List.drop w.function_section w.last_import_func)

(* Table section *) 
let string_of_table i (t: tabletype) = String.concat ["  "; (string_of_tabletype t i)]
let string_of_table_section section = String.concat ~sep:"\n" (List.mapi ~f:string_of_table section)

  (* Memory section *) 
let string_of_memory i (m: memtype) = String.concat ["  "; (string_of_memtype m i)]
let string_of_memory_section section = String.concat ~sep:"\n" (List.mapi ~f:string_of_memory section)

(* Global section *)
let string_of_inline_expr e = String.strip (string_of_expr e [] false)
let string_of_global (g: global) =
  String.concat [ "  (global (;" ;
                  string_of_int g.gindex ;
                  ";) ";
                  (match g.gt.m with
                    | NotConst   -> String.concat["("; string_of_mut g.gt.m; " "; string_of_valtype g.gt.t; ")"]
                    | Const -> string_of_valtype g.gt.t);
                  " (";
                  (string_of_inline_expr g.e);
                  "))"]
let string_of_global_section section =
  String.concat ~sep:"\n" (List.map ~f:string_of_global section)

(* Element section *)
let string_of_list_idx li =
  String.concat ~sep:" " (List.map ~f:string_of_int li)

let string_of_expr_item e = String.concat ["(item " ; string_of_inline_expr e ; ")"]
let string_of_expr_list el = String.concat ~sep:"" (List.map ~f:string_of_expr_item el)

let string_of_element i e =
match e with
| ExprFunc exf ->
    String.concat ["  (elem (;" ; string_of_int i ; ";) (" ; string_of_inline_expr exf.e ; ") func " ; string_of_list_idx exf.y ; ")"]
| ElemFuncP ef ->
    String.concat ["  (elem (;" ; string_of_int i ; ";) func " ; string_of_list_idx ef.y ; ")"]
| TableExprElemFunc teef->
    String.concat ["  (elem (;" ; string_of_int i ; ";) (table " ; string_of_int teef.x ; ") (offset " ; string_of_inline_expr teef.e
          ; ") func " ; string_of_list_idx teef.y ; ")"]
| ElemFuncD ef ->
    String.concat ["  (elem (;" ; string_of_int i ; ";) func " ; string_of_list_idx ef.y ; ")"]
| ExprExpr ee ->
    String.concat ["  (elem (;" ; string_of_int i ; ";) (offset " ; string_of_inline_expr ee.e ; ") "
          ; String.concat ~sep:"" (List.map ~f:string_of_expr_item ee.el) ; ")"]
| RefExprP re ->
    String.concat ["  (elem (;" ; string_of_int i ; ";) " ; string_of_reftype re.et ; " " ; string_of_expr_list re.el ; ")"]
| TableExprRefExpr tere ->
    String.concat ["  (elem (;" ; string_of_int i ; ";) (table " ; string_of_int tere.x ; ") (offset " ; string_of_inline_expr tere.e
          ; string_of_reftype tere.et ; ")" ; string_of_expr_list tere.el ; ")"]
| RefExprD re ->
    String.concat ["  (elem (;" ; string_of_int i ; ";) declare " ; string_of_reftype re.et ; " " ; string_of_expr_list re.el ; ")"]
  
let string_of_element_section section =
  String.concat ~sep:"\n" (List.mapi ~f:string_of_element section)

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
      String.concat ["  (data (;" ; string_of_int d.dindex ; ";) (" ; string_of_inline_expr eb.e ; ") \"" ; string_of_bytes eb.b ; "\")"]
  | Bytes b ->
      String.concat ["  (data (;" ; string_of_int d.dindex ; ";) (" ; hexstring_of_bytes b ; ")"]
  | MemExprBytes meb ->
      String.concat ["  (data (;" ; string_of_int d.dindex ; ";) (memory " ; string_of_int meb.x ; ") (offset: " ; string_of_inline_expr meb.e 
          ; ") "  ; hexstring_of_bytes meb.b ; ")"]
let string_of_data_section section = String.concat ~sep:"\n" (List.map ~f:string_of_data section)

(* Part 3 *)
(* printing the state *)

(* Part 4 *)
(* creating the .dot file that contains the flow graph definition *)


(* Part 5 *)
(* printing analysis results *)

let string_of_codepath (ctx: execution_context) (codepath: cp): string = 
  String.concat[string_of_raw_bblocks codepath; " "; (string_of_et (cost_of_codepath ctx.w_e codepath))]

(* Part 6 *)
(* print the functions one by one along with our analysis *)

let loop_info ctx cp_ssa bbs (bb_idx: int) loop_type =
  let bb_next = List.nth_exn bbs (bb_idx+1) in
  let loop_cond = analyze_simple_loop ctx bb_next in
  let loop_vars = vars_of_et loop_cond in
  let loop_ssa = ssa_of_expr {w           = ctx.w; 
                              w_e         = (expr_of_bb ctx.w_e bb_next); 
                              w_state     = empty_program_state ctx.w ctx.param_types ctx.local_types;
                              param_types = ctx.param_types;
                              local_types = ctx.local_types} in
  String.concat[  loop_type;
                  ",";
                  (string_of_ssa_list (List.map ~f:(explode_var cp_ssa) loop_vars) "; " false);
                  ",";
                  (string_of_et loop_cond);
                  ",";
                  (String.concat ~sep:"; " (List.map ~f:(fun lv -> string_of_var lv) loop_vars));
                  ",";
                  (string_of_ssa_list (List.map ~f:(explode_var loop_ssa) loop_vars) "; " false)]

let loop_type ctx cp_ssa bbs (bb_idx: int) =
  let bb = List.nth_exn bbs bb_idx in
  let bb_next = List.nth_exn bbs (bb_idx+1) in
  match simple_brif_loop bbs bb with
  | Some _ -> loop_info ctx cp_ssa bbs bb_idx "simple br_if"
  | _ -> (match simple_br_loop bbs bb with
            | Some _ ->  loop_info ctx cp_ssa bbs bb_idx "simple br"
            | _ -> (string_of_bb_type bb_next.bbtype))

(* TODO more convenient to store code paths in reverse order? *)
let print_summary oc_summary ctx m fnum bbs (codepath: cp) =
  let cp_ssa = ssa_of_codepath ctx codepath in
  let bb = List.hd_exn (List.rev codepath) in
  Out_channel.output_string oc_summary
    (sprintf "%s,%d,%d,%s,%s\n"
        m fnum bb.bbindex (string_of_codepath ctx codepath) (loop_type ctx cp_ssa bbs bb.bbindex));
  ()

(*let string_of_vars vs =
  String.concat ~sep:"; " (List.dedup_and_sort ~compare:String.compare vs)

let string_of_loop_cost_fn c =
  sprintf "%d + %d*c('%s', '%s', '%s', '%s')" c.prefix_cost c.loop_cost (string_of_vars c.loop_vars) (string_of_ssa_list c.lv_entry_vals "; " false) (string_of_et c.loop_cond) (string_of_ssa_list c.lv_loop_vals "; " false) 

 let string_of_cost_of_loops col: string =
  if List.length col = 1 then
    string_of_loop_cost_fn (List.hd_exn col)
  else
    String.concat["max("; String.concat ~sep:", " (List.map ~f:string_of_loop_cost_fn col); ")"]
 *)
let print_function_details (w: wm) oc_summary dir prefix fidx type_idx =
  let fnum          = fidx + w.last_import_func in
  Printf.printf "function %d %!" fnum;
  let fname         = String.concat[dir; prefix; string_of_int fnum] in
  let fn            = List.nth_exn w.code_section fidx in
  let w_e           = fn.e in
  let bblocks       = bblocks_of_expr w_e in
  let cps           = codepaths_of_bbs bblocks [[List.hd_exn bblocks]] [] in
  let param_types   = (List.nth_exn w.type_section (List.nth_exn w.function_section fnum)).rt1 in
  let local_types   = (List.nth_exn w.code_section fidx).locals in
  let w_state       = empty_program_state w param_types local_types in
  let ctx           = {w; w_e; w_state; param_types; local_types} in
  let ebbs          = ebbs_of_bbs ctx bblocks in

  let ebb_paths     = paths_of_ebblocks ebbs in

  (* function source code *)
  let oc = Out_channel.create (String.concat[fname; ".wat"]) in
    print_function oc w true bblocks fidx type_idx;
    Out_channel.output_string oc "\n";
    Out_channel.close oc;
  (* bblocks in function *)
  let oc = Out_channel.create (String.concat[fname; ".bblocks"]) in
    Out_channel.output_string oc (string_of_bbs_detail bblocks);
    Out_channel.close oc;
  (* graphviz command file for bb flow graph *)
  let oc = Out_channel.create (String.concat[fname; ".dot"]) in
    Out_channel.output_string oc (cfg_dot_of_bbs w.module_name fnum bblocks);
    Out_channel.close oc;
  (* ebblocks in function *)
  let oc = Out_channel.create (String.concat[fname; ".ebblocks"]) in
    List.iter ~f:(fun ebb -> Out_channel.output_string oc (string_of_ebblock ebb)) ebbs;
    Out_channel.close oc;
  (* graphviz command file for ebb flow graph *)
  let oc = Out_channel.create (String.concat[fname; "-e.dot"]) in
    Out_channel.output_string oc (cfg_dot_of_ebblocks w.module_name fnum ebbs);
    Out_channel.close oc;

  (* costs *)
  let oc = Out_channel.create (String.concat[fname; ".costs"]) in
    Out_channel.output_string oc (sprintf "|f%d| = " fnum);
    (match List.length ebb_paths with
    | 0 -> Out_channel.output_string oc "Inf"
    | 1 -> Out_channel.output_string oc (format_et (simplify (ebb_path_cost (List.hd_exn ebb_paths))))
    | _ -> (let max_cost = ebb_paths_max_cost ebb_paths in
           let p = Out_channel.output_string oc in
           print_et (simplify max_cost) p));
    Out_channel.output_string oc "\n";
    Out_channel.close oc;

  (* TODO everything after this is diagnostics, not required *)
  (* loop analysis *)
  (match has_loop bblocks with
  | true ->
      (* print loop summary info *)
      let loop_cps = List.dedup_and_sort ~compare:compare_cps (loop_codepaths bblocks cps) in
      List.iter 
        ~f:(print_summary oc_summary ctx (Filename.chop_extension w.module_name) fnum bblocks) 
        loop_cps
  | false -> ())
  (* costs *)
(*    Out_channel.output_string oc_costs
    (String.concat 
      [ string_of_int fnum;
        " ";
        (let loops = loops_of_bbs bblocks in
        match List.length loops with
          (*  no loops
              cost is the max cost over all possible code paths (if we can compute it) *)
          | 0 -> let c = max_cost_of_codepaths cps (-1) in
                 if c >= 0 then string_of_int c else "-5 too many paths"
          (*  exactly one loop
              the function is divided into 4 disjoint sets of code paths that either:
              1. start at the function entry, end at the function exit and don't enter the loop
              2. start at the function entry, end at the loop bb
              3. start at the bb following the loop bb and end at that bb, a return or
                 unreachable bb or at the end bb of the loop
              4. start at a return or unreachable bb or the end bb of the loop, end at the
                 function exit

              resulting max cost is max(cost(1), max(2 + 3 + 4)) where max is taken over all valid
              combinations of path *)
          | 1 -> (  let l = List.hd_exn loops in
                    let exit_bbs = exit_bblocks_of_loop l in
                    match List.length exit_bbs with
                      | 0 -> "-6 infinite loop"
                      | 1 -> (
                          let bbacks = l.branchbacks in
                          match List.length bbacks with
                          | 0 -> failwith "Loop has no branchbacks"
                          | 1 ->
                            (* 1 loop, 1 loop exit, 1 loop branchback *)
                            let bback = List.hd_exn bbacks in
                            let prefixes = (unique_paths_to_bblock cps (List.hd_exn l.loop_bblocks)) in
                            if List.length prefixes = 0 then
                              "-4 too many prefixes"
                            else (
                              let col = cost_of_loops ctx prefixes l.looping_paths bback in
                              String.concat["max("; 
                                string_of_int (max_cost_of_codepaths (paths_with_no_loops cps) 0);
                                ", ";
                                string_of_cost_of_loops col; " + ";
                                string_of_int (max_cost_of_codepaths (paths_from_bblocks exit_bbs) 0);
                                ")"])
                          | _ -> "-1 multiple branchbacks")
                      | _ -> "-2 multiple exits")
          (* the function has more than 1 loop 
              we analyze the loops to determine whether there are 1) loops in series, 2) parallel loops or
              3) nested loops *)
          | _ ->  "-3 multiple loops");
                 (*  let lc = classify_loops loops in
                    String.concat [
                      "-3 multiple loops"; 
                      if lc.loops_nested    then ", nested" else "";
                      if lc.loops_series    then ", in series" else "";
                      if lc.loops_parallel  then ", in parallel" else "";
                    ]); *)
        "\n"])
 *)   (* execution trace of the function *)
(*   let oc = Out_channel.create (String.concat[fname; ".trace"]) in
    Out_channel.output_string oc (string_of_executions (execute_bblocks w bblocks (fidx + w.last_import_func) code.e) bblocks);
    Out_channel.close oc; *)
    
let print_functions w fnum =
  let oc_summary = Out_channel.create (String.concat[Filename.chop_extension w.module_name; ".csv"]) in
  let oc_costs   = Out_channel.create (String.concat[Filename.chop_extension w.module_name; ".costs"]) in
  match fnum with
  | -1 -> Out_channel.output_string oc_summary "Module,Function,BBlock,Code Path,Loop Type,Initial Values,Condition,Variables,Values\n";
          List.iteri 
            ~f:(print_function_details w oc_summary "funcs/" (String.concat[Filename.chop_extension w.module_name; "-func"]))
            (List.drop w.function_section w.last_import_func)
  | _  -> print_function_details
            w
            oc_summary
            "funcs/"
            (String.concat[Filename.chop_extension w.module_name; "-func"])
            fnum
            (List.nth_exn (List.drop w.function_section w.last_import_func) fnum);
  Out_channel.close oc_summary;
  Out_channel.close oc_costs
          
(* Part 7 *)
(* Print the whole wasm module *)

let print_section oc s =
  match s with
    | "" -> ()
    | _  -> Out_channel.output_string oc "\n";
            Out_channel.output_string oc s

let print w fnum =
  let oc = Out_channel.create (String.concat[Filename.chop_extension w.module_name; "-wanalyze.wat"]) in
    Out_channel.output_string oc "(module";
    print_section oc (string_of_type_section w.type_section);
    print_section oc (string_of_import_section w.import_section);
    print_function_section oc w;
    print_section oc (string_of_table_section w.table_section);
    print_section oc (string_of_memory_section w.memory_section);
    print_section oc (string_of_global_section w.global_section);
    print_section oc (string_of_export_section w.export_section);
    print_section oc (string_of_start w.start_section);
    print_section oc (string_of_element_section w.element_section);
    print_section oc (string_of_data_section w.data_section);
    Out_channel.output_string oc ")\n";
    Out_channel.close oc;
    print_functions w fnum
