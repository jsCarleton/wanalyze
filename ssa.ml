open Core
open Wm
open Opcode
open Ex
open Bb
open Et

type ssa = {
  result:         var;
  mutable etree:  et;
  mutable alive:  bool;
}

let find_alive' (sl: ssa list): ssa =
  List.find_exn ~f:(fun x -> x.alive) sl

let find_alive (sl: ssa list): et =
  Variable (find_alive' sl).result

let find_and_kill (sl: ssa list): et =
  let s = find_alive' sl in
    s.alive <- false;
    Variable s.result

let rec mark_dead (s: ssa list) (count: int) =
  match count with
  | 0 -> ()
  | _ ->
    (match s with
    | [] -> failwith (sprintf "Not enough live SSAs %d" count)
    | hd::tl ->
        (match hd.alive with
        | true ->
            hd.alive <- false;
            mark_dead tl (count - 1)
        | false ->
            mark_dead tl count))

let ssa_of_rt (index: int) (fidx: int) (params: et list) ( start: int) (r: resulttype) : ssa =
  { result = {vtype = Var_temp; nt = Numtype I32; idx = start+index; vname = ""}; (* TODO nt is wrong here *)
    etree = et_of_retval index r fidx params;
    alive = true}

let string_of_ssa (s: ssa): string = 
  String.concat[string_of_var s.result; " = "; string_of_et s.etree]
    
let string_of_ssa_list (sl: ssa list) (sep: string) (alive: bool): string =
  
  let string_of_ssa' (alive: bool) (s: ssa): string =
    String.concat[
      (match s.alive,alive with | _, false -> "" | true,_ -> "+" | false,_ -> "-");
      string_of_ssa s;
    ]
  in

  (String.concat ~sep:sep (List.map ~f:(string_of_ssa' alive) (List.rev sl)))

(************************* *)
let globals_of_imports (imports: import list): globaltype list =
  List.rev (List.fold ~init:[] ~f:(fun acc i -> match i.description with | Globaltype g -> g::acc| _ -> acc) imports)

let nt_of_global (iglobals: globaltype list) (eglobals: global list) (idx: int): valtype =
  let n_iglobals = List.length iglobals in
  if idx >= n_iglobals then
    (List.nth_exn eglobals (idx - n_iglobals)).gt.t
  else
    (List.nth_exn iglobals idx).t

let vtype_of_idx (idx: int) ctx: var_type =
  if idx < List.length ctx.param_types then 
    Var_parameter 
  else 
    Var_local
(************************* *)

let ssa_of_op (ctx: execution_context) (acc: ssa list) (op: op_type): ssa list =
  match op.instrtype with
  | Control  ->
      (match opcode_of_int op.opcode with
      | OP_unreachable | OP_nop | OP_block | OP_loop | OP_else | OP_end | OP_br | OP_return -> acc
      | OP_if | OP_br_if | OP_br_table -> 
          mark_dead acc 1; acc
      | OP_call ->
        (match op.arg with
        | Funcidx fidx ->
            (* mark the arguments to the function dead *)
            let params = List.map ~f:(fun p -> p.etree) (List.take acc (nparams ctx.w fidx)) in
            mark_dead acc (nparams ctx.w fidx);
            (* create SSAs for each of the return values *)
            let retvals = List.mapi ~f:(ssa_of_rt (List.length acc) fidx params) (ret_types ctx.w fidx) in
            List.append retvals acc
        | _ -> failwith "Invalid call argument")
      | OP_call_indirect ->
        (match op.arg with
          | CallIndirect c ->
              (* mark the arguments to the function dead *)
              let nparams = List.length (List.nth_exn ctx.w.type_section c.y).rt1 in
              let params = List.map ~f:(fun p -> p.etree) (List.take acc nparams) in
              mark_dead acc nparams;
              (* create SSAs for each of the return values *)
              List.append (List.mapi ~f:(ssa_of_rt (List.length acc) c.x params) (List.nth_exn ctx.w.type_section c.y).rt2) acc (*TODO c.x might not be enough *)
          | _ -> failwith "Invalid call_indirect argument")
      | _ -> failwith (sprintf "Invalid control opcode %x" op.opcode))
  | Reference  -> failwith "Reference"
  | Parametric  ->
      (match opcode_of_int op.opcode with
        | OP_drop ->
          mark_dead acc 1;
          acc
        | OP_select ->
          let c = find_and_kill acc in
          let val2 = find_and_kill acc in
          let val1 = find_and_kill acc in
            { result = {vtype = Var_temp; nt = Numtype I32; idx = List.length acc; vname = ""}; (* TODO nt wrong *)
              etree = Node {op = "select"; op_disp = Function; args = [c; val2; val1]}; alive = true}
              :: acc
        | _ -> failwith (sprintf "Invalid parametric opcode %x" op.opcode))
  | VariableGL ->
      let idx = int_of_get_argL op.arg in
      { result = {vtype = Var_temp; nt = Numtype I32; idx = List.length acc; vname = ""}; (* TODO nt wrong *)
        etree = Variable {vtype = vtype_of_idx idx ctx;
                          nt    = valtype_of_var ctx.param_types ctx.local_types idx; 
                          idx;
                          vname = ""};
        alive = true} :: acc         
  | VariableSL  ->
      let idx = int_of_get_argL op.arg in
      { result = {vtype = vtype_of_idx idx ctx;
                  nt    = valtype_of_var ctx.param_types ctx.local_types idx; 
                  idx;
                  vname = ""};
        etree = find_and_kill acc;
        alive = false} :: acc
  | VariableTL  ->
      let idx = int_of_get_argL op.arg in
      { result = {vtype = vtype_of_idx idx ctx;
                  nt    = valtype_of_var ctx.param_types ctx.local_types idx; 
                  idx;
                  vname = ""};
        etree = find_alive acc;
        alive = false} :: acc
  | VariableGG  ->
      { result = {vtype = Var_temp; nt = Numtype I32; idx = List.length acc; vname = ""};
        etree = Variable {vtype = Var_global;
                          nt    = nt_of_global (globals_of_imports ctx.w.import_section) ctx.w.global_section (int_of_get_argL op.arg);
                          idx   = int_of_get_argL op.arg;
                          vname = ""};
        alive = true} :: acc         
  | VariableSG  ->
      { result = {vtype = Var_global; nt = Numtype I32; idx = int_of_get_argL op.arg; vname = ""};
        etree = find_and_kill acc;
        alive = false} :: acc
  | Table  ->
      failwith "Table"
  | MemoryL  ->
      (* get the memory value that's being loaded *)
      { result = {vtype = Var_temp; nt = Numtype (elem_type_of_arg op.arg); idx = List.length acc; vname = ""}; 
        etree = find_mem_elem ctx.w_state.mem_values op.arg;
        alive = true} :: acc
  | MemoryS  ->
      { result = {vtype = Var_memory; nt = Numtype (elem_type_of_arg op.arg); idx = elem_offset_of_arg op.arg; vname = "m"}; 
        etree = find_and_kill acc; 
        alive = false} :: acc
  | MemoryM  ->
        acc
  | Constop  ->
      { result = {vtype = Var_temp; nt = Numtype I32; idx = List.length acc; vname = ""};
        etree = (et_of_const_arg op.arg);
        alive = true} :: acc
  | Unop ->
      let arg1 = find_and_kill acc in
        { result = {vtype = Var_temp; nt = Numtype I32; idx = List.length acc; vname = ""}; 
          etree = Node {op = op.opname; op_disp = Prefix; args = [arg1]};
          alive = true} :: acc         
  | Binop op
  | Relop op  ->
      let arg2 = find_and_kill acc in
      let arg1 = find_and_kill acc in
        { result = {vtype = Var_temp; nt = Numtype I32; idx = List.length acc; vname = ""}; 
          etree = Node {op; op_disp = Infix; args = [arg1; arg2]};
          alive = true} :: acc         
  | Testop ->
      { result = {vtype = Var_temp; nt = Numtype I32; idx = List.length acc; vname = ""};
        etree = Node {op = op.opname; op_disp = Prefix; args = [find_and_kill acc]};
        alive = true} :: acc
  | Cvtop   ->
      { result = {vtype = Var_temp; nt = Numtype I32; idx = List.length acc; vname = ""};
        etree = Node {op = op.opname; op_disp = Prefix; args = [find_and_kill acc]};
        alive = true} :: acc         

let ssa_of_expr (ctx: execution_context): ssa list =
 List.fold_left ~f:(ssa_of_op ctx) ~init:[] ctx.w_e

let initial_local_value (nt: valtype): et =
  match nt with
  | Numtype I32 -> Constant (Int_value 0)
  | Numtype I64 -> Constant (Int64_value 0L)
  | Numtype F32
  | Numtype F64 -> Constant (Float_value 0.0)
  | Reftype _   -> failwith "Unexpected type"

let initial_ssa_of_local (nt: valtype) (idx_offset: int) (idx: int): ssa =
  { result = {vtype = Var_local; nt; idx = idx + idx_offset; vname = ""}; 
    etree = initial_local_value nt; 
    alive = true}

let local_type_offset (ll: local_type list) (idx: int): int =
  List.foldi ~init:0 ~f:(fun idx' acc lt -> if idx' >= idx then acc else acc + lt.n ) ll

let initial_ssas_of_local_type (idx_offset: int) (ll: local_type list) (idx: int) (lt: local_type): ssa list =
  List.init lt.n ~f:(initial_ssa_of_local lt.v (idx_offset + (local_type_offset ll idx)))

let initial_ssas_of_locals (idx_offset: int) (ll: local_type list): ssa list =
  List.concat (List.mapi ~f:(initial_ssas_of_local_type idx_offset ll) ll)

let ssa_of_expr' (ctx: execution_context) (e: expr) acc: ssa list =
  List.fold_left ~f:(ssa_of_op ctx) ~init:acc e

let ssa_of_bb (ctx: execution_context) acc (bblock: Bb.bb): ssa list =
  ssa_of_expr' ctx (expr_of_bb ctx.w_e bblock) acc

let ssa_of_codepath (ctx: execution_context) (codepath: Cp.cp) (init_locals: bool): ssa list =
  List.fold ~f:(ssa_of_bb ctx) 
            ~init:(if init_locals then (initial_ssas_of_locals (List.length ctx.param_types) ctx.local_types) else [])
            codepath

let rec expand_et (e: et) (s_src: ssa): et =
  match e with 
  | Variable v
      -> if compare_vars v s_src.result = 0 then
            s_src.etree
          else 
            e
  | Node n ->
    Node {n with args = List.map ~f:(fun e' -> (expand_et[@tailcall]) e' s_src) n.args}
  | _ -> e


let explode_var (s: ssa list) (result: var): ssa =
  let rec expand_et_new (e: et) (vars: var list) (s: ssa list): et =
    match s with
    | [] ->     e
    | hd::tl ->
      begin
(*        Printf.printf "ssa: %s vars:[%s]\n%!" (string_of_ssa hd) (string_of_vars vars); 
*)        if not (v_in_vlist hd.result vars) then
          expand_et_new e vars tl
        else 
        begin
          let e' = expand_et e hd in
          expand_et_new 
            e'
            (List.dedup_and_sort ~compare:compare_vars  
              ((List.filter ~f:(fun v1 -> (compare_vars v1 hd.result) <> 0) vars) 
                @ (vars_of_et hd.etree)))
            tl
        end
      end
  in

  let v = Variable result in
  {result; etree = expand_et_new v [result] s; alive = true}

(* let explode_var_old (s: ssa list) (result: var): ssa =
Printf.printf "explode_var: %s\n%!" (string_of_var result);
  let v = Variable result in
  {result; etree = List.fold_left ~f:expand_et ~init:v s; alive = true}*)
