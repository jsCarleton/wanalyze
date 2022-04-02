open Core
open Easy_logging
open Wasm_module
open Opcode

let read_byte ic : int =
  let b = In_channel.input_byte ic in
    match b with
    | None -> -1
    | Some x -> x

let read_4bytes ic =
  (read_byte ic) lor ((read_byte ic) lsl 8) lor ((read_byte ic) lsl 16) lor ((read_byte ic) lsl 24)

let read_magic ic = 
  let magic =  read_4bytes ic in
  match magic with
  | 0x0061736d  -> ()
  | _           -> failwith (sprintf "Invalid magic value %d" magic)

let read_version ic = 
  let version = (read_byte ic) lor ((read_byte ic) lsl 8) lor ((read_byte ic) lsl 16) lor ((read_byte ic) lsl 24) in
  match version with
  | 0x01000000  -> ()
  | _           -> failwith (sprintf "Invalid version %x" version)

let rec skip_bytes ic n =
  match n with
  | 0 -> ()
  | _ -> ignore (read_byte ic: int); skip_bytes ic (n-1)
  
(* i64 helper functions *)
let i64lsl i n : int64 = Stdlib.Int64.shift_left i n
let i64lor i1 i2 : int64 = Stdlib.Int64.logor i1 i2
let i64land i1 i2 : int64 = Stdlib.Int64.logand i1 i2
let of_int i : int64 = Stdlib.Int64.of_int i

let unsigned64_of_32 n =
  i64land 0xffffffffL (Int64.of_int n)

let read_8bits ic = read_byte ic

let read_16bits ic =
  let low = read_8bits ic in
  let high = read_8bits ic in
  low lor (high lsl 8)

let read_32bits ic =
  let low = read_16bits ic in
  let high = read_16bits ic in
  low lor (high lsl 16)

let read_64bits ic =
  let low = read_32bits ic in
  let high = read_32bits ic in
  i64lor (unsigned64_of_32 low) (i64lsl (Int64.of_int high) 32)

let rec uLEB ic size =
  let n = read_byte ic in
  match (n < (1 lsl 7)) && (n < (1 lsl size)) with
  | true -> n
  | _ -> (1 lsl 7) * (uLEB ic (size-7)) + (n - (1 lsl 7))

let rec sLEB' ic size acc shift b: int64 =
  match i64land 0xC0L b with
  | 0x80L | 0xC0L-> sLEB' ic size 
                    (i64lor (i64lsl (i64land b 0x7FL) shift) acc) (shift+7) (of_int (read_byte ic))
  | 0x00L ->         i64lor (i64lsl (i64land b 0x7FL) shift) acc
  | 0x40L -> i64lor (i64lor (i64lsl (i64land b 0x7FL) shift) acc) (i64lsl 0xffffffffffffff80L shift)
  | _ -> failwith (sprintf "invalid byte in LEB: %Lx\n" b)

let sLEB ic size : int64 = sLEB' ic size 0L 0 (of_int (read_byte ic))

let read_vec_len ic = uLEB ic 32
      
let read_bytes ic : bytes =
  let len = read_vec_len ic in
  Bytes.init len ~f:(fun _ -> Char.of_int_exn (read_byte ic))

let read_i32 ic = 
match Int64.to_int (sLEB ic 32) with
| None -> -1
| Some x -> x

let read_i32' ic b = 
    match Int64.to_int (sLEB' ic 32 0L 0 (of_int b)) with
    | None -> -1
    | Some x -> x

let read_f32 ic = read_32bits ic

let read_f64 ic =
  let f = read_64bits ic in
  Int64.float_of_bits f

let read_memarg ic bits : memarg = 
  let a = uLEB ic 32 in
  {a; o=uLEB ic 32; bits}

let rec read_vec' ic n reader acc =
  match n with
  | 0 -> acc
  | _ -> read_vec' ic (n-1) reader ((reader ic) :: acc)

let read_vec ic reader = List.rev (read_vec' ic (read_vec_len ic) reader [])

(* Sections consisting of vectors of entries *)
let read_section_length ic = 
  let n = uLEB ic 32 in
  n

let rec read_section_new' ic entry_handler acc n =
  match n with
  | 0 -> List.rev acc
  | _ -> read_section_new' ic entry_handler ((entry_handler ic) :: acc) (n-1)

let read_section_new ic acc entry_handler =
  let _: int = read_section_length ic in (* discard the length *)
  read_section_new' ic entry_handler (List.rev acc) (read_vec_len ic)

let rec read_section_new2' ic entry_handler acc1 acc2 n =
  match n with
  | 0 -> List.rev acc1, List.rev acc2
  | _ ->  let a1,a2 = entry_handler ic in
          match a1, a2 with
          | None,     None      -> read_section_new2' ic entry_handler acc1 acc2 (n-1)
          | Some a1', None      -> read_section_new2' ic entry_handler (a1'::acc1) acc2 (n-1)
          | None,     Some a2'  -> read_section_new2' ic entry_handler acc1 (a2'::acc2) (n-1)
          | Some a1', Some a2'  -> read_section_new2' ic entry_handler (a1'::acc1) (a2'::acc2) (n-1)

let read_section_new2 ic entry_handler =
  let _: int = read_section_length ic in (* discard the length *)
  read_section_new2' ic entry_handler [] [] (read_vec_len ic)

(* Type section *)
let read_valtype ic = read_byte ic

let read_type_section' ic =
  let encoder = read_byte ic in
  match encoder with
  | 0x60  ->  let rt1 = read_vec ic read_valtype in
              let rt2 = read_vec ic read_valtype in
              {rt1 = List.map ~f:valtype_of_int rt1; rt2 = List.map ~f:valtype_of_int rt2}
  | _     -> failwith (sprintf "Invalid function type encoder %x" encoder)

let read_type_section ic =
  read_section_new ic [] read_type_section'

(* Import section *)
let read_limits ic = 
  let limit_type = read_byte ic in
  match limit_type with
  | 0x00 -> Noupper (uLEB ic 32)
  | 0x01 -> Lowerupper ((uLEB ic 32), (uLEB ic 32))
  | _ -> failwith (String.concat ["Invalid limit type: " ; string_of_int limit_type])

let read_mem_type ic = read_limits ic

let read_reftype ic =
  let x = read_byte ic in
  match x with
  | 0x70 -> Funcref
  | 0x6F -> Externref
  | x -> failwith (sprintf "Invalid reftype %x!" x)

let read_tabletype ic = 
  let et = read_reftype ic in
  let lim = read_limits ic in
  {et; lim}

let read_mut ic =
  let mut_type = read_byte ic in
  match mut_type with
  | 0x00 -> Const
  | 0x01 -> Var
  | _ -> failwith (sprintf "Invalid mut %x!" mut_type;)

let read_valtype ic =
  let valtype = read_byte ic in
  match valtype with
  | 0x7f -> Numtype I32
  | 0x7e -> Numtype I64
  | 0x7d -> Numtype F32
  | 0x7c -> Numtype F64
  | 0x70 -> Reftype Funcref
  | 0x6f -> Reftype Externref
  | _ -> failwith (sprintf "Invalid valtype %x" valtype)

let read_globaltype ic = 
  let t = read_valtype ic in
  let m = read_mut ic in
  {t; m}

let read_idx ic = uLEB ic 32
let read_u32 ic = uLEB ic 32

let read_importdesc ic =
  let importdesc_type = read_byte ic in
  match importdesc_type with
  | 0x00 -> Some (Functype (read_idx ic))
  | 0x01 -> Some (Tabletype (read_tabletype ic))
  | 0x02 -> Some (Memtype (read_mem_type ic))
  | 0x03 -> Some (Globaltype (read_globaltype ic))
  | _ -> failwith (sprintf "Invalid importdesc %x!" importdesc_type)

let rec read_string' ic len acc =
  match len with
  | 0 -> acc
  | _ ->
    let c = Char.escaped (char_of_int (read_byte ic)) in
    read_string' ic (len-1) (c::acc)

let read_string ic len =
  String.concat ~sep:"" (List.rev (read_string' ic len []))

let read_name ic = read_string ic (read_u32 ic)

let index_of (w: wasm_module) desc =
  (match desc with
  | Functype _ -> w.last_import_func <- w.last_import_func + 1; w.last_import_func-1
  | Tabletype _ -> w.next_table <- w.next_table + 1; w.next_table-1
  | Memtype _ -> w.next_memory <- w.next_memory + 1; w.next_memory-1
  | Globaltype _ -> w.next_global <- w.next_global + 1; w.next_global-1
  )

let read_import_section' w ic =
  let module_name = read_name ic in
  let import_name = read_name ic in
  let description = read_importdesc ic in
  match description with
  | None -> failwith "No description"
  | Some desc ->
      Some {module_name; import_name; description = desc; iindex = index_of w desc},
      (match desc with
      | Functype i  -> Some i
      | _           -> None)

let read_import_section w ic =
  read_section_new2 ic (read_import_section' w)
      
(* Function section *)
let read_function_section' ic = read_idx ic

let read_function_section ic acc =
  read_section_new ic acc read_function_section'

(* Table section *)
let read_table_section' ic = read_tabletype ic

let read_table_section ic =
  read_section_new ic [] read_table_section'

(* Memory section *)
let read_memory_section' ic = read_mem_type ic

let read_memory_section ic =
  read_section_new ic [] read_memory_section'

(* Global section *)
let read_blocktype ic =
  let t = read_byte ic in
  match t with
  | 0x40 -> Emptytype
  | 0x7F | 0x7E | 0x7D | 0x7C | 0x70 | 0x6F -> Valuetype (valtype_of_int t)
  | _ -> Typeindex (read_i32' ic t)

let read_vec_valtype ic =
  List.init (read_vec_len ic) ~f:(fun _ -> (valtype_of_int (read_byte ic)))

let read_labelidx ic = uLEB ic 32

let read_instr' ic opcode =
match opcode_of_int opcode with
  (* control instructions *)
  | OP_unreachable
  | OP_nop          -> EmptyArg, Control
  | OP_block
  | OP_loop
  | OP_if           -> Blocktype (read_blocktype ic), Control
  | OP_else 
  | OP_end          -> EmptyArg, Control
  | OP_br
  | OP_br_if        -> Labelidx (read_idx ic), Control
  | OP_br_table     -> 
      (let table = (read_vec ic read_labelidx) in let brtindex = (read_labelidx ic) in
       BrTable {table; brtindex}), Control
  | OP_return         -> EmptyArg, Control
  | OP_call           -> Funcidx (read_idx ic), Control
  | OP_call_indirect  -> 
      (let y = read_idx ic in
       let x = read_idx ic in
       CallIndirect {y; x}), Control
   (* reference instructions*)
  | OP_ref_null -> EmptyArg, Reference (* TODO not what the spec says *)
  (* parametric instructions *)
  | OP_drop -> EmptyArg, Parametric
  | OP_select -> 
      (match opcode with
        | 0x1b -> EmptyArg, Parametric
        | _ (* 0x1c *) -> ValtypeList (read_vec_valtype ic), Parametric)
  (* variable instructions*)
  | OP_local_get  -> Localidx (uLEB ic 32), VariableGL
  | OP_local_set  -> Localidx (uLEB ic 32), VariableSL
  | OP_local_tee  -> Localidx (uLEB ic 32), VariableTL
  | OP_global_get -> Globalidx (uLEB ic 32), VariableGG
  | OP_global_set -> Globalidx (uLEB ic 32), VariableSG
  (* table instructions *)
  | OP_table_get -> Tableidx (uLEB ic 32), Table
  | OP_table_set -> Tableidx (uLEB ic 32), Table
  (* memory instructions *)
  | OP_i32_load     -> Memarg (read_memarg ic 32), MemoryL
  | OP_i64_load     -> Memarg (read_memarg ic 64), MemoryL
  | OP_f32_load     -> Memarg (read_memarg ic 32), MemoryL
  | OP_f64_load     -> Memarg (read_memarg ic 64), MemoryL
  | OP_i32_load8_s
  | OP_i32_load8_u  -> Memarg (read_memarg ic 8), MemoryL
  | OP_i32_load16_s
  | OP_i32_load16_u -> Memarg (read_memarg ic 16), MemoryL
  | OP_i64_load8_s
  | OP_i64_load8_u  -> Memarg (read_memarg ic 8), MemoryL
  | OP_i64_load16_s
  | OP_i64_load16_u -> Memarg (read_memarg ic 16), MemoryL
  | OP_i64_load32_s
  | OP_i64_load32_u -> Memarg (read_memarg ic 32), MemoryL
  | OP_i32_store    -> Memarg (read_memarg ic 32), MemoryS
  | OP_i64_store    -> Memarg (read_memarg ic 64), MemoryS
  | OP_f32_store    -> Memarg (read_memarg ic 32), MemoryS
  | OP_f64_store    -> Memarg (read_memarg ic 64), MemoryS
  | OP_i32_store8   -> Memarg (read_memarg ic 8), MemoryS
  | OP_i32_store16  -> Memarg (read_memarg ic 16), MemoryS
  | OP_i64_store8   -> Memarg (read_memarg ic 8), MemoryS
  | OP_i64_store16  -> Memarg (read_memarg ic 16), MemoryS
  | OP_i64_store32  -> Memarg (read_memarg ic 32), MemoryS
  | OP_memory_size
  | OP_memory_grow  -> IgnoreArg (read_byte ic), MemoryM
  (* numeric instructions *)
  | OP_i32_const -> I32value (read_i32 ic), Constop
  |	OP_i64_const -> I64value (sLEB ic 64), Constop
  | OP_f32_const -> F32value (read_f32 ic), Constop
  | OP_f64_const -> F64value (read_f64 ic), Constop

  | OP_i32_eqz  -> EmptyArg, Testop
  | OP_i32_eq   -> EmptyArg, Relop "=="
  | OP_i32_ne   -> EmptyArg, Relop "!="
  | OP_i32_lt_s -> EmptyArg, Relop "<"
  | OP_i32_lt_u -> EmptyArg, Relop "<"
  | OP_i32_gt_s -> EmptyArg, Relop ">"
  | OP_i32_gt_u -> EmptyArg, Relop ">"
  | OP_i32_le_s -> EmptyArg, Relop "<="
  | OP_i32_le_u -> EmptyArg, Relop "<="
  | OP_i32_ge_s -> EmptyArg, Relop ">="
  | OP_i32_ge_u -> EmptyArg, Relop ">="

  | OP_i64_eqz  -> EmptyArg, Testop
  | OP_i64_eq   -> EmptyArg, Relop "=="
  | OP_i64_ne   -> EmptyArg, Relop "!="
  | OP_i64_lt_s -> EmptyArg, Relop "<"
  | OP_i64_lt_u -> EmptyArg, Relop "<"
  | OP_i64_gt_s -> EmptyArg, Relop ">"
  | OP_i64_gt_u -> EmptyArg, Relop ">"
  | OP_i64_le_s -> EmptyArg, Relop "<="
  | OP_i64_le_u -> EmptyArg, Relop "<="
  | OP_i64_ge_s -> EmptyArg, Relop ">="
  | OP_i64_ge_u -> EmptyArg, Relop ">="

  | OP_f32_eq -> EmptyArg, Relop "=="
  | OP_f32_ne -> EmptyArg, Relop "!="
  | OP_f32_lt -> EmptyArg, Relop "<"
  | OP_f32_gt -> EmptyArg, Relop ">"
  | OP_f32_le -> EmptyArg, Relop "<="
  | OP_f32_ge -> EmptyArg, Relop ">"

  | OP_f64_eq -> EmptyArg, Relop "=="
  | OP_f64_ne -> EmptyArg, Relop "!="
  | OP_f64_lt -> EmptyArg, Relop "<"
  | OP_f64_gt -> EmptyArg, Relop ">"
  | OP_f64_le -> EmptyArg, Relop "<="
  | OP_f64_ge -> EmptyArg, Relop ">="

  | OP_i32_clz
  | OP_i32_ctz
  | OP_i32_popcnt -> EmptyArg, Unop
  | OP_i32_add    -> EmptyArg, Binop "+"
  | OP_i32_sub    -> EmptyArg, Binop "-"
  | OP_i32_mul    -> EmptyArg, Binop "*"
  | OP_i32_div_s  -> EmptyArg, Binop "/s"
  | OP_i32_div_u  -> EmptyArg, Binop "/u"
  | OP_i32_rem_s  -> EmptyArg, Binop "rem_s"
  | OP_i32_rem_u  -> EmptyArg, Binop "rem_u"
  | OP_i32_and    -> EmptyArg, Binop "&&"
  | OP_i32_or     -> EmptyArg, Binop "||"
  | OP_i32_xor    -> EmptyArg, Binop "xor"
  | OP_i32_shl    -> EmptyArg, Binop "shl"
  | OP_i32_shr_s  -> EmptyArg, Binop "shr_s"
  | OP_i32_shr_u  -> EmptyArg, Binop "shr_u"
  | OP_i32_rotl   -> EmptyArg, Binop "rotl"
  | OP_i32_rotr   -> EmptyArg, Binop "rotr"

  | OP_i64_clz
  | OP_i64_ctz
  | OP_i64_popcnt -> EmptyArg, Unop
  | OP_i64_add    -> EmptyArg, Binop "+"
  | OP_i64_sub    -> EmptyArg, Binop "-"
  | OP_i64_mul    -> EmptyArg, Binop "*"
  | OP_i64_div_s  -> EmptyArg, Binop "/s"
  | OP_i64_div_u  -> EmptyArg, Binop "/u"
  | OP_i64_rem_s  -> EmptyArg, Binop "rem_s"
  | OP_i64_rem_u  -> EmptyArg, Binop "rem_u"
  | OP_i64_and    -> EmptyArg, Binop "&&"
  | OP_i64_or     -> EmptyArg, Binop "||"
  | OP_i64_xor    -> EmptyArg, Binop "xor"
  | OP_i64_shl    -> EmptyArg, Binop "shl"
  | OP_i64_shr_s  -> EmptyArg, Binop "shr_s"
  | OP_i64_shr_u  -> EmptyArg, Binop "shr_u"
  | OP_i64_rotl   -> EmptyArg, Binop "rotl"
  | OP_i64_rotr   -> EmptyArg, Binop "rotr"

  | OP_f32_abs
  | OP_f32_neg
  | OP_f32_ceil
  | OP_f32_floor
  | OP_f32_trunc
  | OP_f32_nearest
  | OP_f32_sqrt     -> EmptyArg, Unop
  | OP_f32_add      -> EmptyArg, Binop "+"
  | OP_f32_sub      -> EmptyArg, Binop "-"
  | OP_f32_mul      -> EmptyArg, Binop "*"
  | OP_f32_div      -> EmptyArg, Binop "div"
  | OP_f32_min      -> EmptyArg, Binop "min"
  | OP_f32_max      -> EmptyArg, Binop "max"
  | OP_f32_copysign -> EmptyArg, Binop "copysign"

  | OP_f64_abs
  | OP_f64_neg
  | OP_f64_ceil
  | OP_f64_floor
  | OP_f64_trunc
  | OP_f64_nearest
  | OP_f64_sqrt     -> EmptyArg, Unop
  | OP_f64_add      -> EmptyArg, Binop "+"
  | OP_f64_sub      -> EmptyArg, Binop "-"
  | OP_f64_mul      -> EmptyArg, Binop "*"
  | OP_f64_div      -> EmptyArg, Binop "/"
  | OP_f64_min      -> EmptyArg, Binop "min"
  | OP_f64_max      -> EmptyArg, Binop "max"
  | OP_f64_copysign -> EmptyArg, Binop "copysign"

  | OP_i32_wrap_i64         -> EmptyArg, Cvtop
  | OP_i32_trunc_f32_s
  | OP_i32_trunc_f32_u
  | OP_i32_trunc_f64_s
  | OP_i32_trunc_f64_u      -> EmptyArg, Unop
  | OP_i64_extend_i32_s
  | OP_i64_extend_i32_u     -> EmptyArg, Cvtop
  | OP_i64_trunc_f32_s
  | OP_i64_trunc_f32_u
  | OP_i64_trunc_f64_s
  | OP_i64_trunc_f64_u      -> EmptyArg, Unop
  | OP_f32_convert_i32_s
  | OP_f32_convert_i32_u
  | OP_f32_convert_i64_s
  | OP_f32_convert_i64_u
  | OP_f32_demote_f64
  | OP_f64_convert_i32_s
  | OP_f64_convert_i32_u
  | OP_f64_convert_i64_s
  | OP_f64_convert_i64_u
  | OP_f64_promote_f32
  | OP_i32_reinterpret_f32
  | OP_i64_reinterpret_f64
  | OP_f32_reinterpret_i32
  | OP_f64_reinterpret_i64
  | OP_i32_extend8_s
  | OP_i32_extend16_s
  | OP_i64_extend8_s
  | OP_i64_extend16_s
  | OP_i64_extend32_s -> EmptyArg, Cvtop

  | OP_trunc_sat -> TruncSat (read_i32 ic), Cvtop (* ixx.trunc_sat_fyy_z *)


let read_instr ic opcode _ =
  let opname = string_of_opcode (opcode_of_int opcode) in
  let arg, instrtype = read_instr' ic opcode in
  opname, arg, instrtype

let read_valtype ic = valtype_of_int (read_byte ic)

let read_local ic = (fun _ ->
  let n = uLEB ic 32 in
  let v = read_valtype ic in
  {n; v})

let rec read_expr' ic (opnesting: int) (acc_instr: op_type list) : op_type list =
  let opcode = read_byte ic in
  let opname, arg, instrtype = (read_instr ic opcode read_expr') in
  match opcode with
  (* end *)
  | 0x0b ->
      (* does this end mark the end of the program? *)
      ( match opnesting with
        (* yes *)
        | 0 -> {opcode; opname; arg; opnesting=opnesting-1; instrtype} :: acc_instr
        (* no, it's the end of a block, loop, if [else] - decrease the opnesting *)
        | _ -> read_expr' ic  (opnesting-1)  ({opcode; opname; arg; opnesting=opnesting-1; instrtype} :: acc_instr)
      )
  (* block, loop, if - increase the opnesting *)
  | 0x02 | 0x03 | 0x04 ->
      read_expr' ic (opnesting+1) ({opcode; opname; arg; opnesting; instrtype} :: acc_instr)
  (* else - descrease the opnesting *)
  | 0x05 ->  
      read_expr' ic  opnesting ({opcode; opname; arg; opnesting=opnesting-1; instrtype} :: acc_instr)
  (* all others - same opnesting *)
  | _ ->  
      read_expr' ic opnesting ({opcode; opname; arg; opnesting; instrtype} :: acc_instr)
  
let read_expr ic = List.rev (read_expr' ic 0 [])

let index_of_global (w: wasm_module) =
  w.next_global <- w.next_global + 1; w.next_global-1

let read_global_section' w ic = 
  let gt = read_globaltype ic in
  let e = read_expr ic in
  {gt; e; gindex = index_of_global w}

let read_global_section w ic =
  read_section_new ic [] (read_global_section' w)
  
(* Export section *)
let read_exportdesc ic =
  let exportdesc_type = read_byte ic in
  match exportdesc_type with
  | 0x00 -> Func (read_idx ic)
  | 0x01 -> Table (read_idx ic)
  | 0x02 -> Mem (read_idx ic)
  | 0x03 -> Global (read_idx ic)
  | _ -> failwith (sprintf "Invalid exportdesc %x!" exportdesc_type)

let read_export_section' ic =
  let name = read_name ic in
  let desc = read_exportdesc ic in
  {name; desc}

let read_export_section ic =
  read_section_new ic [] read_export_section'

(* Start section *)
let read_start_section ic =
  let _: int = read_section_length ic in (* discard the section length *)
  Some (read_idx ic)

(* Element section *)
let read_elemkind ic: int =
  let k = read_byte ic in
  match k with
  | 0x00 -> k
  | _ -> failwith (sprintf "Invalid elemkind %x" k)

let read_idx ic = uLEB ic 32

let read_element_section' ic =
  let element_type = read_byte ic in
  match element_type with
  | 0x00 ->
      let e = read_expr ic in
      let y = read_vec ic read_idx in
      ExprFunc {e; y}
  | 0x01 ->
      let (_: int) = read_elemkind ic in
      let y = read_vec ic read_idx in
      ElemFuncP {y}
  | 0x02 ->
      let x = read_idx ic in
      let e = read_expr ic in
      let (_: int) = read_elemkind ic in
      let y = read_vec ic read_idx in
      TableExprElemFunc {x; e; y}
  | 0x03 -> 
      let (_: int) = read_elemkind ic in
      let y = read_vec ic read_idx in
      ElemFuncD {y}
  | 0x04 -> 
      let e = read_expr ic in
      let el = read_vec ic read_expr in
      ExprExpr {e; el}
  | 0x05 ->
      let et = read_reftype ic in
      let el = read_vec ic read_expr in
      RefExprP {et; el}
  | 0x06 -> 
      let x = read_idx ic in
      let e = read_expr ic in
      let et = read_reftype ic in
      let el = read_vec ic read_expr in
      TableExprRefExpr {x; e; et; el}
  | 0x07 -> 
      let et = read_reftype ic in
      let el = read_vec ic read_expr in
      RefExprD {et; el}
  | _ -> failwith (String.concat ["Invalid element item: " ; (string_of_int element_type)])

let read_element_section ic =
  read_section_new ic [] read_element_section'
  
(* Code section *)
let read_code_section' ic =
  let _: int = read_section_length ic in
  let locals = read_vec ic (read_local ic) in
  let e = read_expr ic in
  {locals; e}

let read_code_section ic =
  read_section_new ic [] read_code_section'

(* Data section *)
let read_data ic =
  let data_item_type = read_byte ic in
  match data_item_type with
  | 0x00 -> 
      let e = read_expr ic in
      let b = read_bytes ic in
      ExprBytes {e; b}
  | 0x01 -> 
      let b = read_bytes ic in
      Bytes b
  | 0x02 -> 
      let x = read_idx ic in
      let e = read_expr ic in
      let b = read_bytes ic in
      MemExprBytes {x; e; b}
  | _ -> failwith (String.concat ["Invalid data item: " ; string_of_int data_item_type])

let index_of_data (w: wasm_module) =
  w.next_data <- w.next_data + 1; w.next_data-1

let read_data_section' w ic =
  let details = read_data ic in
  {dindex = index_of_data w; details}

let read_data_section w ic =
  read_section_new ic [] (read_data_section' w)

(* Data count section *)
let read_data_count ic =
  let _: int = read_section_length ic in (* discard the section length *)
  uLEB ic 32

(* Section reader *)
let read_section_body ic w id =
  match id with
  | 0 ->  skip_bytes ic (read_section_length ic)
  | 1 ->  w.type_section   <- read_type_section ic
  | 2 ->  let i, f = read_import_section w ic in
            w.import_section <- i;
            w.function_section <- f
  | 3 ->  w.function_section <- read_function_section ic w.function_section
  | 4 ->  w.table_section    <- read_table_section ic
  | 5 ->  w.memory_section   <- read_memory_section ic
  | 6 ->  w.global_section   <- read_global_section w ic
  | 7 ->  w.export_section   <- read_export_section ic
  | 8 ->  w.start_section    <- read_start_section ic
  | 9 ->  w.element_section  <- read_element_section ic
  | 10 -> w.code_section     <- read_code_section ic
  | 11 -> w.data_section     <- read_data_section w ic
  | 12 -> w.data_count       <- read_data_count ic
  | _ ->  skip_bytes ic (read_section_length ic)

let read_section_id ic = read_byte ic

(* wasm Module reader *)
let rec read_sections ic w =
  match read_section_id ic with
  | -1 -> ()
  | id -> read_section_body ic w id;
          read_sections ic w

let parse_wasm ic w =
  read_magic ic;
  read_version ic;
  read_sections ic w