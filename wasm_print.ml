open Core
open Easy_logging
open Wasm_module
open Ssa
open Symbolic_expr

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
let get_type_sig (w: wasm_module) idx =
  match List.nth w.type_section idx with
  | Some x -> x
  | _ -> (Logging.get_logger "wanalyze")#info  "Invalid index: %d" idx; {rt1 = []; rt2 = []}

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

let string_of_line_number (idx: int) (annotate: bool) =
  match annotate with | true -> sprintf "%4.4d" idx | _ -> ""
let string_of_opcode' (op: op_type) idx comment (annotate:bool) =
  String.concat ["\n" ; string_of_line_number idx annotate; (String.make (op.nesting*2 + 4) ' ') ; op.opname ; (string_of_arg op.arg) ; comment]
let string_of_opcode (e: expr) (idx: int) (annotate:bool) =
  let op = List.nth e idx in
  match op with
  | Some op -> 
    (* some special cases need to be handled here *)
    ( match op.opcode with
    | 0x02 (* block *)
    | 0x03 (* loop *)
    | 0x04 (* if *)
        -> string_of_opcode' op idx (String.concat ["  ;; label = @" ; string_of_int (op.nesting + 1)]) annotate
    | 0x0c (* br *)
    | 0x0d (* br_if *)
        -> string_of_opcode' op idx (String.concat [" (;@" ; string_of_int (op.nesting - int_of_string (String.lstrip (string_of_arg op.arg))) ; ";)"]) annotate
    | 0x0b (* end *) ->
      (match op.nesting with
      | -1 -> ""
      | _ -> string_of_opcode' op idx "" annotate
      )
    | _ -> string_of_opcode' op idx "" annotate
    )
  | _ -> failwith "Missing opcode"

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
        | true  -> string_of_expr' e annotate tl (idx+1) (String.concat [acc ; (bblock_sep annotate hd.index); (string_of_opcode e idx annotate)])
        | false -> string_of_expr' e annotate bblocks (idx+1) (String.concat [acc ; (string_of_opcode e idx annotate)])
      )
    | _ -> string_of_expr' e annotate bblocks (idx+1) (String.concat [acc ; (string_of_opcode e idx annotate)])
    )
  | false -> acc
let string_of_expr e bblocks annotate = 
  string_of_expr' e annotate (match annotate with | true -> bblocks | _ -> []) 0 ""

let string_of_code (w: wasm_module) idx annotate =
  let f = List.nth_exn w.code_section idx in
  String.concat [(string_of_locals (List.nth_exn w.code_section idx).locals) ; (string_of_expr f.e f.bblocks annotate)]

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

let string_of_bbindex (i: int) : string = match i with | -1 -> "" | _ -> string_of_int i
let string_of_ints (ints: int list): string =
    String.concat ~sep:" " (List.map ~f:string_of_int ints)
let string_of_bblock (s: bblock) : string = 
  sprintf "%5d %5d %5d %5d   %-5s %6s %-11s s=[%s] p=[%s]\n" 
    s.index s.start_op s.end_op s.nesting (string_of_bbindex s.br_dest) (string_of_ints s.labels) (string_of_bbtype s.bbtype) (string_of_ints s.succ) (string_of_ints s.pred)
let string_of_bblocks (s: bblock list) : string =
  String.concat["                          br    target\nindex start   end nesting dest  labels type        succ/pred\n";
                 String.concat (List.map ~f:string_of_bblock s)]

let string_of_function (w: wasm_module) annotate i idx = 
  String.concat [
    "  (func (;" ; string_of_int (i + w.last_import_func) ; ";) (type " ; string_of_int idx ; ")" 
    ; string_of_types "param" (get_type_sig w idx).rt1
    ; string_of_types "result" (get_type_sig w idx).rt2
    ; string_of_code w i annotate ; ")\n"]
let string_of_function_section (w: wasm_module) = 
  String.concat ~sep:"" (List.mapi ~f:(string_of_function w false) (List.drop w.function_section w.last_import_func))

(* Table section *) 
let string_of_table i (t: tabletype) = String.concat [(string_of_tabletype t i) ; "\n"]
let string_of_table_section section = String.concat ~sep:"" (List.mapi ~f:string_of_table section)

  (* Memory section *) 
let string_of_memory i (m: memtype) = String.concat [(string_of_memtype m i) ; "\n"]
let string_of_memory_section section = String.concat ~sep:"" (List.mapi ~f:string_of_memory section)

(* Global section *)
let string_of_inline_expr e = String.strip (string_of_expr e [] false)
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

let has_successors (bblocks: bblock list) (bb_index: int ): bool =
  let succ = (List.nth_exn bblocks bb_index).succ in
    (List.length succ > 0) && (List.hd_exn succ < List.length bblocks)

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
      ex.index ex.pred_index (string_of_state true nparams ex.initial) (string_of_state (has_successors bblocks ex.index) nparams ex.final)
let string_of_executions (nparams: int) (executions: execution list) (bblocks: bblock list): string = 
  (Logging.get_logger "wanalyze")#info "executions: %d" (List.length executions);
  String.concat (List.map ~f:(string_of_execution nparams bblocks) executions)

(* Part 4 *)
(* creating the .dot file that contains the flow graph definition *)

let graph_node (src: int) (label: string) (dest: int): string =
  match src >= dest with
  | true  -> 
      String.concat ["    "; string_of_int src; " -> "; string_of_int dest; "[color=\"red\" fontcolor=\"red\" label=\""; label; "\"];\n"]
  | false -> 
      String.concat ["    "; string_of_int src; " -> "; string_of_int dest; "[label=\""; label; "\"];\n"]

let graph_bblock (index: int) (bbtype: bb_type) (succ: int list) (pred: int list) (last: int): string =
  match List.length pred > 0 || index = 0 with
  | true ->
    (match bbtype with
    | BB_unreachable  -> graph_node index "unreachable" last
    | BB_end          -> graph_node index "end" (List.nth_exn succ 0)
    | BB_block        -> graph_node index "block" (List.nth_exn succ 0)
    | BB_loop         -> graph_node index "loop" (List.nth_exn succ 0)
    | BB_if           ->
        String.concat [
          graph_node index "if" (List.nth_exn succ 0);
          graph_node index "~if" (List.nth_exn succ 1);
        ]
    | BB_else         -> graph_node index "else" (List.nth_exn succ 0)
    | BB_br_if        ->
        String.concat [
          graph_node index "~br_if" (List.nth_exn succ 0);
          graph_node index "br_if" (List.nth_exn succ 1);
        ]
    | BB_br           -> graph_node index "br" (List.nth_exn succ 0)
    | BB_br_table     -> String.concat (List.map ~f:(graph_node index  "br_table") succ)
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
  | hd::tl -> graph_bblocks' tl last (String.concat [acc; graph_bblock hd.index hd.bbtype hd.succ hd.pred last])
let graph_bblocks (module_name: string) (func_idx: int) (bblocks: bblock list): string =
  let last = (List.length bblocks) in
  String.concat [ graph_prefix module_name func_idx last; 
                  graph_bblocks' bblocks (List.length bblocks) "";
                  graph_suffix]

(* Part 5 *)
(* printing analysis results *)

let string_of_list_of_list_of_ints (ll: int list list) =
  String.concat ~sep:"\n" (List.map ~f:string_of_ints ll)

let execute_bblock (w: wasm_module) (e: expr) (bblocks: bblock list) (state: program_state)
      (bb_id: int) =
    (Logging.get_logger "wanalyze")#info  "execute_bblock: bb_id: %s" (string_of_int bb_id);
    let bb = List.nth_exn bblocks bb_id in
    let (_: expr_tree) = reduce_bblock' w state (expr_of_bblock e bb) Empty in
      ()

let execute_code_path (w: wasm_module) (e: expr) (bblocks: bblock list) (param_types: resulttype list) (local_types: local_type list) 
      (cp: code_path): string = 
  let state = empty_program_state w param_types local_types in
    List.iter ~f:(execute_bblock w e bblocks state) cp;
    string_of_state true (List.length param_types) state

let string_of_code_path (cp: code_path): string =
  String.concat ["["; string_of_ints cp; "]"]

let loop_entry_state (w: wasm_module) (e: expr) (bblocks: bblock list) (param_types: resulttype list) (local_types: local_type list) 
      (cp: code_path): string = 
    (Logging.get_logger "wanalyze")#info  "loop_entry_state: cp: %s" (string_of_code_path cp);
    String.concat [string_of_code_path cp; execute_code_path w e bblocks param_types local_types cp]

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

let print_function (w: wasm_module) dir prefix fidx type_idx =
  let fname         = String.concat[dir; prefix; string_of_int (fidx + w.last_import_func)] in
  let fn            = (List.nth_exn w.code_section fidx) in
  let bblocks       = fn.bblocks in
  let cps           = fn.code_paths in
  let fnum          = (fidx + w.last_import_func) in
  let param_types   = (List.nth_exn w.type_section (List.nth_exn w.function_section fnum)).rt1 in
  let local_types   = (List.nth_exn w.code_section fidx).locals in
  (Logging.get_logger "wanalyze")#info "print_function: fidx %d bblocks length %d term length %d"
  fidx (List.length bblocks) (List.length cps);
  (* function source code *)
  let oc = Out_channel.create (String.concat[fname; ".wat"]) in
    Out_channel.output_string oc (string_of_function w true fidx type_idx);
    Out_channel.close oc;
  (* bblocks in function *)
  let oc = Out_channel.create (String.concat[fname; ".bblocks"]) in
    Out_channel.output_string oc (string_of_bblocks bblocks);
    Out_channel.close oc;
  (* graphviz command file for function flow graph *)
  let oc = Out_channel.create (String.concat[fname; ".dot"]) in
    Out_channel.output_string oc (graph_bblocks w.module_name fnum bblocks);
    Out_channel.close oc;
  (* code paths *)
  let oc = Out_channel.create (String.concat[fname; ".paths"]) in
    Out_channel.output_string oc (string_of_list_of_list_of_ints cps);
    Out_channel.output_string oc "\n";
    Out_channel.close oc;
  (* loop analysis *)
  (match has_loop bblocks with
  | true ->
      let oc = Out_channel.create (String.concat[fname; ".loops"]) in
        (* print some information about which basic blocks have loops *)
        Out_channel.output_string oc
          (sprintf 
            "Loops found in function %d in these bblocks: %s.\nSimple br_if conditions in: %s.\nSimple br conditions in: %s.\n"
            fnum
            (string_of_ints (ids_with_loops bblocks))
            (string_of_ints (ids_with_simple_brif_loops bblocks))
            (string_of_ints (ids_with_simple_br_loops bblocks)));
        (* print the code paths from the root to a loop bblock and the VM state at loop entry *)
        Out_channel.output_string oc (sprintf "Code paths from the root bblock to a loop bblock and the VM state at the conclusion of the loop bblock:\n");
        Out_channel.output_string oc
          (String.concat ~sep:"\n"
            (List.map 
                ~f:(loop_entry_state w fn.e bblocks param_types local_types) 
                (List.dedup_and_sort ~compare:compare_cps (loop_code_paths bblocks cps))));
        Out_channel.output_string oc "\n";
        (* print the loop conditions and ssa for simple br_if loops *)
        let bbs = (bblocks_with_simple_brif_loops bblocks) in
        Out_channel.output_string oc
          (String.concat
            (List.map ~f:(fun bb ->
                              let loop_cond = analyze_simple_brif_loop w fn.e param_types local_types bb in
                              let loop_vars = variables_of_expr_tree loop_cond in
                              let loop_ssa = ssa_of_expr w param_types local_types (expr_of_bblock fn.e bb) in
                              String.concat [ "Simple brif loop condition in bblock ";
                                              string_of_int bb.index;
                                              ":\t";
                                              string_of_expr_tree loop_cond;
                                              "\n";
                                              "Loop condition variables: ";
                                              (String.concat ~sep:", " loop_vars);
                                              "\n";
                                              "SSA of loop:\n";
                                              (string_of_ssa_list loop_ssa);
                                              "Loop variable calculations:\n";
                                              (string_of_ssa_list (List.map ~f:(explode_var loop_ssa) loop_vars))])
              bbs));
        Out_channel.close oc
  | false -> ())
  (* execution trace of the function *)
(*   let oc = Out_channel.create (String.concat[fname; ".trace"]) in
    Out_channel.output_string oc (string_of_executions (execute_bblocks w bblocks (fidx + w.last_import_func) code.e) bblocks);
    Out_channel.close oc; *)

let print_functions w =
  List.iteri 
    ~f:(print_function w "funcs/" (String.concat[Filename.chop_extension w.module_name; "-func"]))
    (List.drop w.function_section w.last_import_func)

(* Part 7 *)
(* Print the whole wasm module *)

let print w =
  let oc = Out_channel.create (String.concat[Filename.chop_extension w.module_name; "-wanalyze.wat"]) in
    (Logging.get_logger "wanalyze")#info "Module: %s" w.module_name;
    Out_channel.output_string oc "(module\n";
    Out_channel.output_string oc (string_of_type_section w.type_section);
    Out_channel.output_string oc (string_of_import_section w.import_section);
    Out_channel.output_string oc (string_of_function_section w);
    Out_channel.output_string oc (string_of_table_section w.table_section);
    Out_channel.output_string oc (string_of_memory_section w.memory_section);
    Out_channel.output_string oc (string_of_global_section w.global_section);
    Out_channel.output_string oc (string_of_export_section w.export_section);
    Out_channel.output_string oc (string_of_start w.start_section);
    Out_channel.output_string oc (string_of_element_section w.element_section);
    Out_channel.output_string oc (string_of_data_section w.data_section);
    Out_channel.output_string oc ")";
    Out_channel.close oc;
    print_functions w
