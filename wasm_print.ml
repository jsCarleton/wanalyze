open Core
open Easy_logging
open Wasm_module
open Bblock
open Ssa
open Symbolic_expr
open Code_path
open Execution
open Cost

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
  | Var -> "mut"

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
                    | Var   -> String.concat["(mut "; string_of_valtype gt.t; ")"]);
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
let get_type_sig (w: wasm_module) idx =
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
  String.concat [
    String.concat ~sep:" " (List.map ~f:(string_of_br_index nesting) b.table);
    " " ;
    string_of_int b.brtindex;
    string_of_br_target nesting b.brtindex]

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

let bblock_sep annotate index = 
  match annotate with
  | true -> String.concat ["\n"; string_of_int index; " ------------------------------------------------------------"]
  | _ -> ""

let rec string_of_expr' e annotate (bblocks: bblock list) idx acc =
  match idx < (List.length e) with
  | true -> 
    (match bblocks with
    | hd::tl ->
      (match hd.start_op = idx with
        | true  -> string_of_expr' e annotate tl (idx+1) (String.concat [acc ; (bblock_sep annotate hd.bbindex); (string_of_opcode e idx annotate)])
        | false -> string_of_expr' e annotate bblocks (idx+1) (String.concat [acc ; (string_of_opcode e idx annotate)])
      )
    | _ -> string_of_expr' e annotate bblocks (idx+1) (String.concat [acc ; (string_of_opcode e idx annotate)])
    )
  | false -> acc

let string_of_expr e bblocks annotate = 
  string_of_expr' e annotate (match annotate with | true -> bblocks | _ -> []) 0 ""

let print_expr'' oc annotate base idx op =
  Out_channel.output_string oc (string_of_opcode' op (base+idx) annotate)

let print_bblock oc e annotate (bb: bblock) =
  Out_channel.output_string oc (bblock_sep annotate bb.bbindex);
  List.iteri ~f:(print_expr'' oc annotate bb.start_op) (expr_of_bblock e bb)

let print_expr oc e bblocks annotate =
  match annotate with
  | true  -> List.iter ~f:(print_bblock oc e annotate) bblocks 
  | false -> List.iter ~f:(print_expr'' oc annotate 0 0) e 

let print_code oc (w: wasm_module) idx annotate bbs =
  let f = List.nth_exn w.code_section idx in
  Out_channel.output_string oc (string_of_locals (List.nth_exn w.code_section idx).locals);
  print_expr oc f.e bbs annotate

let string_of_param  p = String.concat ["(param " ; (string_of_resulttype p) ; ")"]
let string_of_result r = String.concat ["(result " ; (string_of_resulttype r) ; ")"]
let string_of_params pl = String.concat ~sep:"" (List.map ~f:string_of_param pl)
let string_of_results rl = String.concat ~sep:"" (List.map ~f:string_of_result rl)

let string_of_bbtype (bbtype: bb_type) : string =
  match bbtype with
  | BB_unknown      -> "unknown"
  | BB_unreachable  -> "unreachable"
  | BB_block        -> "block"
  | BB_loop         -> "loop"
  | BB_if           -> "if"
  | BB_else         -> "else"
  | BB_end          -> "end"
  | BB_br           -> "br"
  | BB_br_if        -> "br_if"
  | BB_br_table     -> "br_table"
  | BB_return       -> "return"

let string_of_br_dest (bb: bblock option) : string =
  match bb with 
    | Some x -> string_of_int x.bbindex
    | _ -> ""
let string_of_ints (ints: int list): string =
    String.concat ~sep:" " (List.map ~f:string_of_int ints)
let indexes_of_bblocks (bbs: bblock list): int list =
  List.map ~f:(fun x -> x.bbindex) bbs
let string_of_bblocks (bbs: bblock list): string =
  String.concat ["["; string_of_ints (indexes_of_bblocks bbs); "]"]
let string_of_bblock_detail (s: bblock) : string = 
  sprintf "%5d %5d %5d %5d   %-5s %6s %-11s s=%s p=%s\n" 
    s.bbindex
    s.start_op
    s.end_op
    s.nesting
    (string_of_br_dest s.br_dest)
    (string_of_ints s.labels)
    (string_of_bbtype s.bbtype)
    (string_of_bblocks s.succ)
    (string_of_bblocks s.pred)
let string_of_bblocks_detail (s: bblock list) : string =
  String.concat["                          br    target\nindex start   end nesting dest  labels type        succ/pred\n";
                 String.concat (List.map ~f:string_of_bblock_detail s)]

let print_function oc (w: wasm_module) annotate bbs i idx =
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

let print_function_section oc (w: wasm_module) =
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
                    | Var   -> String.concat["("; string_of_mut g.gt.m; " "; string_of_valtype g.gt.t; ")"]
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

let has_successors (bblocks: bblock list) (bb_index: int ): bool =
  let succ = (List.nth_exn bblocks bb_index).succ in
    (List.length succ > 0)

(* Part 3 *)
(* printing the state *)
let string_of_instr_count (count: int) = String.concat ["\ncost:    " ; string_of_int count ; "; "]
let string_of_value_stack (stack: expr_tree list): string = 
  String.concat ["stack:   [" ; (String.concat ~sep:", " (List.map ~f:string_of_expr_tree stack)); "]; "]
let string_of_param_values (locals: expr_tree array): string = 
  String.concat ["params:  [" ; (String.concat ~sep:", " (List.map ~f:string_of_expr_tree (Array.to_list locals))) ; "]; "]
let string_of_local_values (params: expr_tree array): string = 
  String.concat ["locals:  [" ; (String.concat ~sep:", " (List.map ~f:string_of_expr_tree (Array.to_list params))) ; "]; "]
let string_of_global_values (globals: expr_tree array):string = 
  String.concat ["globals: [" ; (String.concat ~sep:", " (List.map ~f:string_of_expr_tree (Array.to_list globals))) ; "]"]
let string_of_state (print_locals: bool) (nparams: int) (state: program_state): string =
  String.concat [ string_of_instr_count state.instr_count; "\n";
                  string_of_value_stack state.value_stack; "\n";
                  string_of_param_values (Array.sub state.local_values ~pos:0 ~len:nparams); "\n";
                  (match print_locals with 
                    | true -> string_of_local_values (Array.sub state.local_values ~pos:nparams ~len:((Array.length state.local_values) - nparams)) 
                    | false -> ""); "\n";
                  string_of_global_values state.global_values; "\n"]
let string_of_ps (nparams: int) (ps: program_states): string = String.concat ~sep:"\n" (List.map ~f:(string_of_state true nparams) ps)

let string_of_execution (nparams: int) (bblocks: bblock list) (ex: execution): string =
  sprintf "bblock %d from %d\ninitial state: %s\nfinal   state: %s\n" 
      ex.eindex ex.pred_index (string_of_state true nparams ex.initial) (string_of_state (has_successors bblocks ex.eindex) nparams ex.final)
let string_of_executions (nparams: int) (executions: execution list) (bblocks: bblock list): string = 
  String.concat (List.map ~f:(string_of_execution nparams bblocks) executions)

(* Part 4 *)
(* creating the .dot file that contains the flow graph definition *)

let graph_node (src: int) (label: string) (dest: int): string =
  match src >= dest with
  | true  -> 
      String.concat ["    "; string_of_int src; " -> "; string_of_int dest; "[color=\"red\" fontcolor=\"red\" label=\""; label; "\"];\n"]
  | false -> 
      String.concat ["    "; string_of_int src; " -> "; string_of_int dest; "[label=\""; label; "\"];\n"]

let graph_bblock (index: int) (bbtype: bb_type) (succ: bblock list) (pred: bblock list) (last: int): string =
  match List.length pred > 0 || index = 0 with
  | true ->
    (match bbtype with
    | BB_unreachable  -> graph_node index "unreachable" last
    | BB_end          -> 
        (match succ with 
          | []  -> graph_node index "end" last 
          | _   -> graph_node index "end" (List.nth_exn succ 0).bbindex)
    | BB_block        -> graph_node index "block" (List.nth_exn succ 0).bbindex
    | BB_loop         -> graph_node index "loop" (List.nth_exn succ 0).bbindex
    | BB_if           ->
        String.concat [
          graph_node index "if" (List.nth_exn succ 0).bbindex;
          graph_node index "~if" (List.nth_exn succ 1).bbindex;
        ]
    | BB_else         -> graph_node index "else" (List.nth_exn succ 0).bbindex
    | BB_br_if        ->
        String.concat [
          graph_node index "~br_if" (List.nth_exn succ 0).bbindex;
          graph_node index "br_if" (List.nth_exn succ 1).bbindex;
        ]
    | BB_br           -> graph_node index "br" (List.nth_exn succ 0).bbindex
    | BB_br_table     -> String.concat (List.map ~f:(graph_node index "br_table") (indexes_of_bblocks succ))
    | BB_return       -> graph_node index "return" last
    | BB_unknown      -> failwith "Unknown bb type in graph_bblock")
  | _ -> ""

let graph_prefix (module_name: string) (func_idx: int) (last: int): string =
  String.concat[
          "digraph finite_state_machine {\n";
          "    label = \""; module_name; " - function "; string_of_int func_idx; "\"\n";
          "    labelloc =  t\n";
          "    labelfontsize = 16\n";
          "    labelfontcolor = black\n";
          "    labelfontname = \"Helvetica\"\n";
          "    node [shape = doublecircle]; 0 "; string_of_int last; ";\n";
          "    node [shape = circle];\n"]
let graph_suffix = "}\n"
let rec graph_bblocks' (bblocks: bblock list) (last: int) (acc: string): string =
  match bblocks with
  | [] -> acc
  | hd::tl -> graph_bblocks' tl last (String.concat [acc; graph_bblock hd.bbindex hd.bbtype hd.succ hd.pred last])
let graph_bblocks (module_name: string) (func_idx: int) (bblocks: bblock list): string =
  let last = (List.length bblocks) in
  String.concat [ graph_prefix module_name func_idx last; 
                  graph_bblocks' bblocks (List.length bblocks) "";
                  graph_suffix]

(* Part 5 *)
(* printing analysis results *)

let string_of_code_path (cp: code_path): string = String.concat[string_of_bblocks cp; " "; (string_of_int (cost_of_code_path cp))]
let string_of_code_paths (cps: code_path list) =
  String.concat ~sep:"\n" (List.map ~f:string_of_code_path cps)

let execute_bblock (w: wasm_module) (e: expr) (state: program_state)
      (bb: bblock) =
    let (_: expr_tree) = reduce_bblock' w state (expr_of_bblock e bb) Empty in
      ()

let execute_code_path (w: wasm_module) (e: expr) (param_types: resulttype list) (local_types: local_type list) 
      (cp: code_path): string = 
  let state = empty_program_state w param_types local_types in
    List.iter ~f:(execute_bblock w e state) cp;
    string_of_state true (List.length param_types) state

let loop_entry_state (w: wasm_module) (e: expr) (param_types: resulttype list) (local_types: local_type list) 
      (cp: code_path): string = 
    String.concat [string_of_code_path cp; execute_code_path w e param_types local_types cp]

(* Part 6 *)
(* print the functions one by one along with our analysis *)

let rec expand_expr_tree (e: expr_tree) (s_src: ssa): expr_tree =
  match e with 
  | Variable v
      -> (match (String.compare v s_src.result) with 
            | 0 -> s_src.etree
            | _ -> e)
  | Node n -> Node {op = n.op;
                    arg1 = expand_expr_tree (n.arg1) s_src;
                    arg2 = expand_expr_tree (n.arg2) s_src;
                    arg3 = expand_expr_tree (n.arg3) s_src;}
  | _ -> e

let explode_var (s: ssa list) (result: string): ssa =
  let i = Variable result in
  {result; etree = List.fold_left ~f:expand_expr_tree ~init:i s; alive = true}

let loop_info w e param_types local_types cp_ssa bbs (bb_idx: int) loop_type =
  let bb_next = List.nth_exn bbs (bb_idx+1) in
  let loop_cond = analyze_simple_loop w e param_types local_types bb_next in
  let loop_vars = variables_of_expr_tree loop_cond in
  let loop_ssa = ssa_of_expr w param_types local_types (expr_of_bblock e bb_next) in
  String.concat[  loop_type;
                  ",";
                  (string_of_ssa_list (List.map ~f:(explode_var cp_ssa) loop_vars) "; " false);
                  ",";
                  (string_of_expr_tree loop_cond);
                  ",";
                  (String.concat ~sep:"; " loop_vars);
                  ",";
                  (string_of_ssa_list (List.map ~f:(explode_var loop_ssa) loop_vars) "; " false)]

let loop_type w e param_types local_types cp_ssa bbs (bb_idx: int) =
  let bb = List.nth_exn bbs bb_idx in
  let bb_next = List.nth_exn bbs (bb_idx+1) in
  match simple_brif_loop bbs bb with
  | Some _ -> loop_info w e param_types local_types cp_ssa bbs bb_idx "simple br_if"
  | _ -> (match simple_br_loop bbs bb with
            | Some _ ->  loop_info w e param_types local_types cp_ssa bbs bb_idx "simple br"
            | _ -> (string_of_bb_type bb_next.bbtype))

(**
  print_loop_bblocks

  Print a loop bblocks

  Parameters:
    oc  output channel to print on
    lb  loop body

  Returns:
    ()
**)
let print_loop_bblocks oc (lb: bblock list) =
  let ll = List.length lb in
  List.iteri 
    ~f:(fun i x -> 
          match (i+1) = ll with
            | false -> Out_channel.output_string oc (String.concat [string_of_int x.bbindex; " "])
            | true  -> Out_channel.output_string oc (string_of_int x.bbindex))
    lb

(**
  print_loops_bblocks

  Print a list of blocks for multiple loops, one per line

  Parameters:
    oc    output channel to print on
    lbs   loop body list

  Returns:
    ()
**)

let print_loops_bblocks oc (lbs: bblock list list) =
  List.iter 
    ~f:(fun x -> 
          Out_channel.output_string oc "Loop block: [";
          print_loop_bblocks oc x;
          Out_channel.output_string oc "]\n")
    lbs

(**
  print_paths

  Prints a list of paths, one per line

  Parameters:
    oc  output channel to print on
    bbs list of paths

  Returns:
    ()
**)

let print_loop_paths oc label (bbs: bblock list list) =
  List.iter ~f:(fun x -> 
      Out_channel.output_string oc label;
      Out_channel.output_string oc ": [";
      print_loop_bblocks oc x;
      Out_channel.output_string oc "]\n")
  bbs

(**
  print_paths_to_loop_path

  Print the possible paths to a given loop path, one per line

  Parameters:
    oc            output channel to print on
    cps           all paths
    loop_bblocks  list of bblocks that make up the loop

  Returns:
    ()
**)

let print_paths_to_loop oc (cps: code_path list) (loop_bblocks: bblock list) =
  print_loop_paths oc "  Path to loop" (unique_paths_to_bblock cps (List.hd_exn loop_bblocks))

(**
  print_looping_paths

  Print the possible paths within a loop, one per line

  Parameters:
    oc  output channel to print on
    lp  list of loop paths

  Returns:
    ()
**)

let print_looping_paths oc (cps: code_path list) (l: loop) =
  print_loop_paths oc "  Looping path" (unique_looping_paths (exit_paths_of_loop l));
  print_paths_to_loop oc cps (l.loop_bblocks)

(**
  print_loops

  Print everything we know about the loops that we've found

  Parameters:
    oc  output channel to print on
    ls  list of loops we've found

  Returns:
    ()
**)

let print_loop oc (cps: code_path list) (l: loop) =
  Out_channel.output_string oc "Loop block: [";
  print_loop_bblocks oc l.loop_bblocks;
  Out_channel.output_string oc "]\n";
  print_loop_paths oc "  Loop path" (exit_paths_of_loop l);
  print_looping_paths oc cps l

let print_loops oc (cps: code_path list) (ls: loop list) =
  List.iter ~f:(print_loop oc cps) ls

(* TODO more convenient to store code paths in reverse order? *)
let print_summary oc_summary w e param_types local_types m fnum bbs (cp: code_path) =
  let cp_ssa = ssa_of_code_path w e param_types local_types cp in
  let bb = List.hd_exn (List.rev cp) in
  Out_channel.output_string oc_summary
    (sprintf "%s,%d,%d,%s,%s\n"
        m fnum bb.bbindex (string_of_code_path cp) (loop_type w e param_types local_types cp_ssa bbs bb.bbindex));
  ()

let print_function_details (w: wasm_module) oc_summary dir prefix fidx type_idx =
  let fnum          = (fidx + w.last_import_func) in
  let fname         = String.concat[dir; prefix; string_of_int fnum] in
  let fn            = (List.nth_exn w.code_section fidx) in
  let bblocks       = bblocks_of_expr fn.e in
  let cps           = code_paths_of_bblocks bblocks [[List.hd_exn bblocks]] [] in
  let param_types   = (List.nth_exn w.type_section (List.nth_exn w.function_section fnum)).rt1 in
  let local_types   = (List.nth_exn w.code_section fidx).locals in
  (* function source code *)
  let oc = Out_channel.create (String.concat[fname; ".wat"]) in
    print_function oc w true bblocks fidx type_idx;
    Out_channel.output_string oc "\n";
    Out_channel.close oc;
  (* bblocks in function *)
  let oc = Out_channel.create (String.concat[fname; ".bblocks"]) in
    Out_channel.output_string oc (string_of_bblocks_detail bblocks);
    Out_channel.close oc;
  (* graphviz command file for function flow graph *)
  let oc = Out_channel.create (String.concat[fname; ".dot"]) in
    Out_channel.output_string oc (graph_bblocks w.module_name fnum bblocks);
    Out_channel.close oc;
  (* code paths *)
  let oc = Out_channel.create (String.concat[fname; ".paths"]) in
    Out_channel.output_string oc (string_of_code_paths cps);
    Out_channel.output_string oc (sprintf "\n%d\n" (cost_of_code_paths cps));
    Out_channel.close oc;
  (* loop analysis *)
  (match has_loop bblocks with
  | true ->
      (* print loop summary info *)
      let loop_cps = List.dedup_and_sort ~compare:compare_cps (loop_code_paths bblocks cps) in
      let loops = loops_of_bblocks bblocks in
      List.iter 
        ~f:(print_summary oc_summary w fn.e param_types local_types (Filename.chop_extension w.module_name) fnum bblocks) 
        loop_cps;

      (* print loop detail info *)
      let oc = Out_channel.create (String.concat[fname; ".loops"]) in
        (* print some information about which basic blocks have loops *)
        Out_channel.output_string oc
          (sprintf 
            "Loops found in function %d in these bblocks: %s.\nSimple br_if conditions in: %s.\nSimple br conditions in: %s.\n"
            fnum
            (string_of_ints (ids_with_loops bblocks))
            (string_of_ints (ids_with_simple_brif_loops bblocks))
            (string_of_ints (ids_with_simple_br_loops bblocks)));
            print_loops oc cps loops;
        (* print the code paths from the root to a loop bblock and the VM state at loop entry *)
        Out_channel.output_string oc (sprintf "Code paths from the root bblock to a loop bblock and the VM state at the conclusion of the loop bblock:\n");
        Out_channel.output_string oc
          (String.concat ~sep:"\n"  (List.map ~f:(loop_entry_state w fn.e param_types local_types) loop_cps));
        Out_channel.output_string oc "\n";
        (* print the loop conditions and ssa for simple br_if loops *)
        let bbs = (bblocks_with_simple_brif_loops bblocks) in
        Out_channel.output_string oc
          (String.concat
            (List.map ~f:(fun bb ->
                              let loop_cond = analyze_simple_loop w fn.e param_types local_types bb in
                              let loop_vars = variables_of_expr_tree loop_cond in
                              let loop_ssa = ssa_of_expr w param_types local_types (expr_of_bblock fn.e bb) in
                              String.concat [ "Simple brif loop condition in bblock ";
                                              string_of_int bb.bbindex;
                                              ":\t";
                                              string_of_expr_tree loop_cond;
                                              "\n";
                                              "Loop condition variables: ";
                                              (String.concat ~sep:", " loop_vars);
                                              "\n";
                                              "SSA of loop:\n";
                                              (string_of_ssa_list loop_ssa "\n" true);
                                              "\nLoop variable calculations:\n";
                                              (string_of_ssa_list (List.map ~f:(explode_var loop_ssa) loop_vars) "\n" true);
                                              "\n"])
              bbs));
        Out_channel.close oc
  | false -> ())
  (* execution trace of the function *)
(*   let oc = Out_channel.create (String.concat[fname; ".trace"]) in
    Out_channel.output_string oc (string_of_executions (execute_bblocks w bblocks (fidx + w.last_import_func) code.e) bblocks);
    Out_channel.close oc; *)

let print_functions w fnum =
  let oc_summary = Out_channel.create (String.concat[Filename.chop_extension w.module_name; ".csv"]) in
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
  Out_channel.close oc_summary
          

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
