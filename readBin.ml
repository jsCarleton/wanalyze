open Core
open Easy_logging
open Wasm_module
open Opcodes

(* TODO: 
    - make logger#info s look at verbose flag 
    - add validation of indices (e.g. functions, types)*)

let logger = Logging.get_logger "wanalyze"

let read_byte ic : int =
  let b = In_channel.input_byte ic in
    match b with
    | None -> -1
    | Some x -> x

let read_4bytes ic =
  (read_byte ic) lor ((read_byte ic) lsl 8) lor ((read_byte ic) lsl 16) lor ((read_byte ic) lsl 24)
let read_magic ic = 
  let magic =  read_4bytes ic in
  logger#info "Magic:   %8.8x" magic;
  magic = 0x0061736d
let read_version ic = 
  let version = (read_byte ic) lor ((read_byte ic) lsl 8) lor ((read_byte ic) lsl 16) lor ((read_byte ic) lsl 24) in
  logger#info "Version: %8.8x" version;
  version =0x01000000

let rec skip_bytes ic n =
  match n with
  | 0 -> ()
  | _ -> ignore (read_byte ic: int); skip_bytes ic (n-1)
  
(* i64 helper functions *)
let i64lt i1 i2 = (Int64.compare i1 i2) < 0
let i64le i1 i2 = (Int64.compare i1 i2) <=0
let i64mul i1 i2 : int64 = Stdlib.Int64.mul i1 i2
let i64add i1 i2 : int64 = Stdlib.Int64.add i1 i2
let i64sub i1 i2 : int64 = Stdlib.Int64.sub i1 i2
let i64lsl i n : int64 = Stdlib.Int64.shift_left i n
let i64lor i1 i2 : int64 = Stdlib.Int64.logor i1 i2
let i64land i1 i2 : int64 = Stdlib.Int64.logand i1 i2
let of_int i : int64 = Stdlib.Int64.of_int i

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
  | _ -> logger#info "invalid byte in LEB: %Lx\n" b; 0L

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

let rec bytes_to_i64' ic n acc : int64 =
  match n with
  | 0 -> acc
  | _ -> bytes_to_i64' ic (n-1) (i64add (i64lsl acc 8) (Int64.of_int (read_byte ic)))
let bytes_to_i64 ic n : int64 = bytes_to_i64' ic n 0L

let read_f32 ic = Int64.float_of_bits (Int64.shift_left (bytes_to_i64 ic 4) 32)
let read_f64 ic = Int64.float_of_bits (bytes_to_i64 ic 8)
                      
let read_memarg ic bits = 
  let a = uLEB ic 32 in
  {a; o=uLEB ic 32; bits}

let rec read_vec' ic n reader acc =
  match n with
  | 0 -> acc
  | _ -> read_vec' ic (n-1) reader (acc@[reader ic])
let read_vec ic reader = read_vec' ic (read_vec_len ic) reader []

(* Sections consisting of vectors of entries *)
let rec read_entries ic n w entry_handler =
   logger#info  "%s - section has %d entries left" (Time.to_sec_string ~zone:Time.Zone.utc (Time.now ())) n;
  match n with
  | 0 -> true
  | _ ->
    entry_handler ic w &&
    read_entries ic (n-1) w entry_handler

let read_section_length ic = uLEB ic 32
let read_section ic section entry_handler =
  logger#info  "reading section: ";  
  read_section_length ic >= 0 (* discard the section size *)
  && read_entries ic (read_vec_len ic) section entry_handler

(* Type section *)
let read_valtype ic =
  match read_byte ic with
  | 0 -> logger#info  "None "; 0
  | 0x7f -> logger#info  "i32 "; 0x7f
  | 0x7e -> logger#info  "i64 "; 0x7e
  | 0x7d -> logger#info  "f32 "; 0x7d
  | 0x7c -> logger#info  "f64 "; 0x7c
  | 0x70 -> logger#info  "funcref "; 0x70
  | 0x6f -> logger#info  "externref "; 0x6f
  | x -> logger#info "invalid valtype %x" x; -1
  
let read_functype ic =
  (* it seems we need to write it like this to ensure that the order of
     evaluation is correct *)
  let rt1 = read_vec ic read_valtype in
  let rt2 = read_vec ic read_valtype in
  rt1, rt2

let read_type ic w = (read_byte ic = 0x60) && update_type_section w (read_functype ic)

(* Import section *)
let read_limits ic = 
  let limit_type = read_byte ic in
  match limit_type with
  | 0x00 -> logger#info  "lower limit"; Noupper (uLEB ic 32)
  | 0x01 -> logger#info  "lower, upper"; Lowerupper ((uLEB ic 32), (uLEB ic 32))
  | _ -> failwith (String.concat ["Invalid limit type: " ; string_of_int limit_type])

let read_mem_type ic = read_limits ic

let read_reftype ic =
  let x = read_byte ic in
  match x with
  | 0x70 -> logger#info  "funcref"; Funcref
  | 0x6F -> logger#info  "externref"; Externref
  | x -> logger#info "Invalid reftype %x!" x; Funcref

let read_tabletype ic = 
  let et = read_reftype ic in
  let lim = read_limits ic in
  {et; lim}

let read_mut ic =
  let mut_type = read_byte ic in
  match mut_type with
  | 0x00 -> logger#info  "const "; Const
  | 0x01 -> logger#info  "var "; Var
  | _ -> logger#info  "Invalid mut %x!" mut_type; Const

let read_valtype ic =
  let valtype = read_byte ic in
  match valtype with
  | 0x7f -> Numtype I32
  | 0x7e -> Numtype I64
  | 0x7d -> Numtype F32
  | 0x7c -> Numtype F64
  | 0x70 -> Reftype Funcref
  | 0x6f -> Reftype Externref
  | _ -> logger#info "Invalid valtype %x" valtype; Numtype I32

let read_globaltype ic = 
  let t = read_valtype ic in
  let m = read_mut ic in
  {t; m}

let read_idx ic = uLEB ic 32

let read_importdesc ic =
  let importdesc_type = read_byte ic in
  match importdesc_type with
  | 0x00 -> logger#info  "func ";    Some (Functype (read_idx ic))
  | 0x01 -> logger#info  "table ";   Some (Tabletype (read_tabletype ic))
  | 0x02 -> logger#info  "mem ";     Some (Memtype (read_mem_type ic))
  | 0x03 -> logger#info  "global ";  Some (Globaltype (read_globaltype ic))
  | _ -> logger#info ("Invalid importdesc %x!") importdesc_type; None

let rec read_string' ic len acc =
  match len with
  | 0 -> acc
  | _ ->
    let c = [Char.escaped (char_of_int (read_byte ic))] in
    read_string' ic (len-1) (acc@c)

let read_string ic len =
  String.concat ~sep:"" (read_string' ic len [])

let read_name ic =
  let name = read_string ic (read_byte ic) in
  logger#info ("name = %s ") name; name

let read_import ic w =
  let module_name = read_name ic in
  let import_name = read_name ic in
  let description = read_importdesc ic in
  update_import_section w module_name import_name description

(* Function section *)
let read_function ic w = update_function_section w (read_idx ic)

(* Table section *)
let read_table ic w = update_table_section w (read_tabletype ic)

(* Memory section *)
let read_mem_type ic = read_limits ic
let read_memory ic w = update_memory_section w (read_mem_type ic)

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
let rec read_vec_labelidx' ic len acc =
  match len with
  | 0 -> acc
  | _ ->
      let label = read_labelidx ic in
      read_vec_labelidx' ic (len-1) acc@[label]
let read_vec_labelidx ic =
  read_vec_labelidx' ic (read_vec_len ic) []

let read_instr ic opcode _ =
   match opcode_of_int opcode with
  (* control instructions *)
  | OP_unreachable  -> ("unreachable", EmptyArg, Control)
  | OP_nop          -> ("nop", EmptyArg, Control)
  | OP_block        -> ("block", Blocktype (read_blocktype ic), Control)
  | OP_loop         -> ("loop", Blocktype (read_blocktype ic), Control)
  | OP_if           -> ("if", Blocktype (read_blocktype ic), Control)
  | OP_else         -> ("else", EmptyArg, Control)
  | OP_end          -> ("end", EmptyArg, Control)
  | OP_br           -> ("br", Labelidx (read_idx ic), Control)
  | OP_br_if        -> ("br_if",  Labelidx (read_idx ic), Control)
  | OP_br_table     -> ("br_table", 
      (let table = (read_vec_labelidx ic) in let index = (read_labelidx ic) in
       BrTable {table; index}), Control)
  | OP_return         -> ("return", EmptyArg, Control)
  | OP_call           -> ("call", Funcidx (read_idx ic), Control)
  | OP_call_indirect  -> ("call_indirect", 
      (let y = read_idx ic in
       let x = read_idx ic in
       CallIndirect {y; x}), Control)
   (* reference instructions*)
  | OP_ref_null -> ("ref.null", EmptyArg, Reference) (* TODO not what the spec says *)
  (* parametric instructions *)
  | OP_drop -> ("drop", EmptyArg, Parametric)
  | OP_select -> 
      (match opcode with
        | 0x1b -> ("select", EmptyArg, Parametric)
        | _ (* 0x1c *) -> ("select", ValtypeList (read_vec_valtype ic), Parametric))
  (* variable instructions*)
  | OP_local_get  -> ("local.get", Localidx (uLEB ic 32), VariableGL)
  | OP_local_set  -> ("local.set", Localidx (uLEB ic 32), VariableSL)
  | OP_local_tee  -> ("local.tee", Localidx (uLEB ic 32), VariableTL)
  | OP_global_get -> ("global.get", Globalidx (uLEB ic 32), VariableGG)
  | OP_global_set -> ("global.set", Globalidx (uLEB ic 32), VariableSG)
  (* table instructions *)
  | OP_table_get -> ("table.get", Tableidx (uLEB ic 32), Table)
  | OP_table_set -> ("table.set", Tableidx (uLEB ic 32), Table)
  (* memory instructions *)
  | OP_i32_load     -> ("i32.load", Memarg (read_memarg ic 32), MemoryL)
  | OP_i64_load     -> ("i64.load", Memarg (read_memarg ic 64), MemoryL)
  | OP_f32_load     -> ("f32.load", Memarg (read_memarg ic 32), MemoryL)
  | OP_f64_load     -> ("f64.load", Memarg (read_memarg ic 64), MemoryL)
  | OP_i32_load8_s  -> ("i32.load8_s", Memarg (read_memarg ic 8), MemoryL)
  | OP_i32_load8_u  -> ("i32.load8_u", Memarg (read_memarg ic 8), MemoryL)
  | OP_i32_load16_s -> ("i32.load16_s", Memarg (read_memarg ic 16), MemoryL)
  | OP_i32_load16_u -> ("i32.load16_u", Memarg (read_memarg ic 16), MemoryL)
  | OP_i64_load8_s  -> ("i64.load8_s", Memarg (read_memarg ic 8), MemoryL)
  | OP_i64_load8_u  -> ("i64.load8_u", Memarg (read_memarg ic 8), MemoryL)
  | OP_i64_load16_s -> ("i64.load16_s", Memarg (read_memarg ic 16), MemoryL)
  | OP_i64_load16_u -> ("i64.load16_u", Memarg (read_memarg ic 16), MemoryL)
  | OP_i64_load32_s -> ("i64.load32_s", Memarg (read_memarg ic 32), MemoryL)
  | OP_i64_load32_u -> ("i64.load32_u", Memarg (read_memarg ic 32), MemoryL)
  | OP_i32_store    -> ("i32.store", Memarg (read_memarg ic 32), MemoryS)
  | OP_i64_store    -> ("i64.store", Memarg (read_memarg ic 64), MemoryS)
  | OP_f32_store    -> ("f32.store", Memarg (read_memarg ic 32), MemoryS)
  | OP_f64_store    -> ("f64.store", Memarg (read_memarg ic 64), MemoryS)
  | OP_i32_store8   -> ("i32.store8", Memarg (read_memarg ic 8), MemoryS)
  | OP_i32_store16  -> ("i32.store16", Memarg (read_memarg ic 16), MemoryS)
  | OP_i64_store8   -> ("i64.store8", Memarg (read_memarg ic 8), MemoryS)
  | OP_i64_store16  -> ("i64.store16", Memarg (read_memarg ic 16), MemoryS)
  | OP_i64_store32  -> ("i64.store32", Memarg (read_memarg ic 32), MemoryS)
  | OP_memory_size  -> ("memory.size", EmptyArg, MemoryM) (* TODO not what the spec says *)
  | OP_memory_grow  -> ("memory grow", EmptyArg, MemoryM) (* TODO not what the spec says *)
  (* numeric instructions *)
  | OP_i32_const -> ("i32.const", I32value (read_i32 ic), Constop)
  |	OP_i64_const -> ("i64.const", I64value (sLEB ic 64), Constop)
  | OP_f32_const -> ("f32.const", F32value (read_f32 ic), Constop)
  | OP_f64_const -> ("f64.const", F64value (read_f64 ic), Constop)

  | OP_i32_eqz  -> ("i32.eqz", EmptyArg, Testop)
  | OP_i32_eq   -> ("i32.eq", EmptyArg, Relop "==")
  | OP_i32_ne   -> ("i32.ne", EmptyArg, Relop "!=")
  | OP_i32_lt_s -> ("i32.lt_s", EmptyArg, Relop "<")
  | OP_i32_lt_u -> ("i32.lt_u", EmptyArg, Relop "<")
  | OP_i32_gt_s -> ("i32.gt_s", EmptyArg, Relop ">")
  | OP_i32_gt_u -> ("i32.gt_u", EmptyArg, Relop ">")
  | OP_i32_le_s -> ("i32.le_s", EmptyArg, Relop "<=")
  | OP_i32_le_u -> ("i32.le_u", EmptyArg, Relop "<=")
  | OP_i32_ge_s -> ("i32.ge_s", EmptyArg, Relop ">=")
  | OP_i32_ge_u -> ("i32.ge_u", EmptyArg, Relop ">=")

  | OP_i64_eqz  -> ("i64.eqz", EmptyArg, Testop)
  | OP_i64_eq   -> ("i64.eq", EmptyArg, Relop "==")
  | OP_i64_ne   -> ("i64.ne", EmptyArg, Relop "!=")
  | OP_i64_lt_s -> ("i64.lt_s", EmptyArg, Relop "<")
  | OP_i64_lt_u -> ("i64.lt_u", EmptyArg, Relop "<")
  | OP_i64_gt_s -> ("i64.gt_s", EmptyArg, Relop ">")
  | OP_i64_gt_u -> ("i64.gt_u", EmptyArg, Relop ">")
  | OP_i64_le_s -> ("i64.le_s", EmptyArg, Relop "<=")
  | OP_i64_le_u -> ("i64.le_u", EmptyArg, Relop "<=")
  | OP_i64_ge_s -> ("i64.ge_s", EmptyArg, Relop ">=")
  | OP_i64_ge_u -> ("i64.ge_u", EmptyArg, Relop ">=")

  | OP_f32_eq -> ("f32.eq", EmptyArg, Relop "==")
  | OP_f32_ne -> ("f32.ne", EmptyArg, Relop "!=")
  | OP_f32_lt -> ("f32.lt", EmptyArg, Relop "<")
  | OP_f32_gt -> ("f32.gt", EmptyArg, Relop ">")
  | OP_f32_le -> ("f32.le", EmptyArg, Relop "<=")
  | OP_f32_ge -> ("f32.ge", EmptyArg, Relop ">")

  | OP_f64_eq -> ("f64.eq", EmptyArg, Relop "==")
  | OP_f64_ne -> ("f64.ne", EmptyArg, Relop "!=")
  | OP_f64_lt -> ("f64.lt", EmptyArg, Relop "<")
  | OP_f64_gt -> ("f64.gt", EmptyArg, Relop ">")
  | OP_f64_le -> ("f64.le", EmptyArg, Relop "<=")
  | OP_f64_ge -> ("f64.ge", EmptyArg, Relop ">=")

  | OP_i32_clz    -> ("i32.clz", EmptyArg, Unop)
  | OP_i32_ctz    -> ("i32.ctz", EmptyArg, Unop)
  | OP_i32_popcnt -> ("i32.popcnt", EmptyArg, Unop)
  | OP_i32_add    -> ("i32.add", EmptyArg, Binop "+")
  | OP_i32_sub    -> ("i32.sub", EmptyArg, Binop "-")
  | OP_i32_mul    -> ("i32.mul", EmptyArg, Binop "*")
  | OP_i32_div_s  -> ("i32.div_s", EmptyArg, Binop "/s")
  | OP_i32_div_u  -> ("i32.div_u", EmptyArg, Binop "/u")
  | OP_i32_rem_s  -> ("i32.rem_s", EmptyArg, Binop "rem_s")
  | OP_i32_rem_u  -> ("i32.rem_u", EmptyArg, Binop "rem_u")
  | OP_i32_and    -> ("i32.and", EmptyArg, Binop "&&")
  | OP_i32_or     -> ("i32.or", EmptyArg, Binop "||")
  | OP_i32_xor    -> ("i32.xor", EmptyArg, Binop "xor")
  | OP_i32_shl    -> ("i32.shl", EmptyArg, Binop "shl")
  | OP_i32_shr_s  -> ("i32.shr_s", EmptyArg, Binop "shr_s")
  | OP_i32_shr_u  -> ("i32.shr_u", EmptyArg, Binop "shr_u")
  | OP_i32_rotl   -> ("i32.rotl", EmptyArg, Binop "rotl")
  | OP_i32_rotr   -> ("i32.rotr", EmptyArg, Binop "rotr")

  | OP_i64_clz    -> ("i64.clz", EmptyArg, Unop)
  | OP_i64_ctz    -> ("i64.ctz", EmptyArg, Unop)
  | OP_i64_popcnt -> ("i64.popcnt", EmptyArg, Unop)
  | OP_i64_add    -> ("i64.add", EmptyArg, Binop "+")
  | OP_i64_sub    -> ("i64.sub", EmptyArg, Binop "-")
  | OP_i64_mul    -> ("i64.mul", EmptyArg, Binop "*")
  | OP_i64_div_s  -> ("i64.div_s", EmptyArg, Binop "/s")
  | OP_i64_div_u  -> ("i64.div_u", EmptyArg, Binop "/u")
  | OP_i64_rem_s  -> ("i64.rem_s", EmptyArg, Binop "rem_s")
  | OP_i64_rem_u  -> ("i64.rem_u", EmptyArg, Binop "rem_u")
  | OP_i64_and    -> ("i64.and", EmptyArg, Binop "&&")
  | OP_i64_or     -> ("i64.or", EmptyArg, Binop "||")
  | OP_i64_xor    -> ("i64.xor", EmptyArg, Binop "xor")
  | OP_i64_shl    -> ("i64.shl", EmptyArg, Binop "shl")
  | OP_i64_shr_s  -> ("i64.shr_s", EmptyArg, Binop "shr_s")
  | OP_i64_shr_u  -> ("i64.shr_u", EmptyArg, Binop "shr_u")
  | OP_i64_rotl   -> ("i64.rotl", EmptyArg, Binop "rotl")
  | OP_i64_rotr   -> ("i64.rotr", EmptyArg, Binop "rotr")

  | OP_f32_abs      -> ("f32.abs", EmptyArg, Unop)
  | OP_f32_neg      -> ("f32.neg", EmptyArg, Unop)
  | OP_f32_ceil     -> ("f32.ceil", EmptyArg, Unop)
  | OP_f32_floor    -> ("f32.floor", EmptyArg, Unop)
  | OP_f32_trunc    -> ("f32.trunc", EmptyArg, Unop)
  | OP_f32_nearest  -> ("f32.nearest", EmptyArg, Unop)
  | OP_f32_sqrt     -> ("f32.sqrt", EmptyArg, Unop)
  | OP_f32_add      -> ("f32.add", EmptyArg, Binop "+")
  | OP_f32_sub      -> ("f32.sub", EmptyArg, Binop "-")
  | OP_f32_mul      -> ("f32.mul", EmptyArg, Binop "*")
  | OP_f32_div      -> ("f32.div", EmptyArg, Binop "div")
  | OP_f32_min      -> ("f32.min", EmptyArg, Binop "min")
  | OP_f32_max      -> ("f32.max", EmptyArg, Binop "max")
  | OP_f32_copysign -> ("f32.copysign", EmptyArg, Binop "copysign")

  | OP_f64_abs      -> ("f64.abs", EmptyArg, Unop)
  | OP_f64_neg      -> ("f64.neg", EmptyArg, Unop)
  | OP_f64_ceil     -> ("f64.ceil", EmptyArg, Unop)
  | OP_f64_floor    -> ("f64.floor", EmptyArg, Unop)
  | OP_f64_trunc    -> ("f64.trunc", EmptyArg, Unop)
  | OP_f64_nearest  -> ("f64.nearest", EmptyArg, Unop)
  | OP_f64_sqrt     -> ("f64.sqrt", EmptyArg, Unop)
  | OP_f64_add      -> ("f64.add", EmptyArg, Binop "+")
  | OP_f64_sub      -> ("f64.sub", EmptyArg, Binop "-")
  | OP_f64_mul      -> ("f64.mul", EmptyArg, Binop "*")
  | OP_f64_div      -> ("f64.div", EmptyArg, Binop "/")
  | OP_f64_min      -> ("f64.min", EmptyArg, Binop "min")
  | OP_f64_max      -> ("f64.max", EmptyArg, Binop "max")
  | OP_f64_copysign -> ("f64.copysign", EmptyArg, Binop "copysign")

  | OP_i32_wrap_i64         -> ("i32.wrap_i64", EmptyArg, Cvtop)
  | OP_i32_trunc_f32_s      -> ("i32.trunc_f32_s", EmptyArg, Unop)
  | OP_i32_trunc_f32_u      -> ("i32.trunc_f32_u", EmptyArg, Unop)
  | OP_i32_trunc_f64_s      -> ("i32.trunc_f64_s", EmptyArg, Unop)
  | OP_i32_trunc_f64_u      -> ("i32.trunc_f64_u", EmptyArg, Unop)
  | OP_i64_extend_i32_s     -> ("i64.extend_i32_s", EmptyArg, Cvtop)
  | OP_i64_extend_i32_u     -> ("i64.extend_i32_u", EmptyArg, Cvtop)
  | OP_i64_trunc_f32_s      -> ("i64.trunc_f32_s", EmptyArg, Unop)
  | OP_i64_trunc_f32_u      -> ("i64.trunc_f32_u", EmptyArg, Unop)
  | OP_i64_trunc_f64_s      -> ("i64.trunc_f64_s", EmptyArg, Unop)
  | OP_i64_trunc_f64_u      -> ("i64.trunc_f64_u", EmptyArg, Unop)
  | OP_f32_convert_i32_s    -> ("f32.convert_i32_s", EmptyArg, Cvtop)
  | OP_f32_convert_i32_u    -> ("f32.convert_i32_u", EmptyArg, Cvtop)
  | OP_f32_convert_i64_s    -> ("f32.convert_i64_s", EmptyArg, Cvtop)
  | OP_f32_convert_i64_u    -> ("f32.convert_i64_u", EmptyArg, Cvtop)
  | OP_f32_demote_f64       -> ("f32.demote_f64", EmptyArg, Cvtop)
  | OP_f64_convert_i32_s    -> ("f64.convert_i32_s", EmptyArg, Cvtop)
  | OP_f64_convert_i32_u    -> ("f64.convert_i32_u", EmptyArg, Cvtop)
  | OP_f64_convert_i64_s    -> ("f64.convert_i64_s", EmptyArg, Cvtop)
  | OP_f64_convert_i64_u    -> ("f64.convert_i64_u", EmptyArg, Cvtop)
  | OP_f64_promote_f32      -> ("f64.promote_f32", EmptyArg, Cvtop)
  | OP_i32_reinterpret_f32  -> ("i32.reinterpret_f32", EmptyArg, Cvtop)
  | OP_i64_reinterpret_f64  -> ("i64.reinterpret_f64", EmptyArg, Cvtop)
  | OP_f32_reinterpret_i32  -> ("f32.reinterpret_i32", EmptyArg, Cvtop)
  | OP_f64_reinterpret_i64  -> ("f64.reinterpret_i64", EmptyArg, Cvtop)

  | OP_i32_extend8_s  -> ("i32.extend8_s", EmptyArg, Cvtop)
  | OP_i32_extend16_s -> ("i32.extend16_s", EmptyArg, Cvtop)
  | OP_i64_extend8_s  -> ("i64.extend8_s", EmptyArg, Cvtop)
  | OP_i64_extend16_s -> ("i64.extend16_s", EmptyArg, Cvtop)
  | OP_i64_extend32_s -> ("i64.extend32_s", EmptyArg, Cvtop)

  | OP_trunc_sat -> ("", TruncSat (read_i32 ic), Cvtop) (* ixx.trunc_sat_fyy_z *)

let read_valtype ic = valtype_of_int (read_byte ic)

let read_local ic = (fun _ ->
  let n = uLEB ic 32 in
  let v = read_valtype ic in
  logger#info  "local count: %d type: %s" n (Wasm_print.string_of_valtype v); 
  {n; v})

let rec read_expr' ic (nesting: int) (acc_instr: op_type list) : op_type list =
  let opcode = read_byte ic in
  let (opname, arg, instrtype) = (read_instr ic opcode read_expr') in
  match opcode with
  (* end *)
  | 0x0b ->
      (* does this end mark the end of the program? *)
      ( match nesting with
        (* yes *)
        | 0 -> acc_instr@[{opcode; opname; arg; nesting=nesting-1; instrtype}]
        (* no, it's the end of a block, loop, if [else] - decrease the nesting *)
        | _ -> read_expr' ic  (nesting-1)  (acc_instr@[{opcode; opname; arg; nesting=nesting-1; instrtype}])
      )
  (* block, loop, if - increase the nesting *)
  | 0x02 | 0x03 | 0x04 ->
      read_expr' ic (nesting+1) (acc_instr@[{opcode; opname; arg; nesting; instrtype}])
  (* else - descrease the nesting *)
  | 0x05 ->  
      read_expr' ic  nesting (acc_instr@[{opcode; opname; arg; nesting=nesting-1; instrtype}])
  (* all others - same nesting *)
  | _ ->  
      read_expr' ic nesting (acc_instr@[{opcode; opname; arg; nesting; instrtype}])
  
let read_expr ic = read_expr' ic 0 []
let read_global ic w = 
  let gt = read_globaltype ic in
  let e = read_expr ic in
  update_global_section w gt e

(* Export section *)
let read_exportdesc ic =
  let exportdesc_type = read_byte ic in
  match exportdesc_type with
  | 0x00 -> logger#info  "func"; Func (read_idx ic)
  | 0x01 -> logger#info  "table"; Table (read_idx ic)
  | 0x02 -> logger#info  "mem "; Mem (read_idx ic)
  | 0x03 -> logger#info  "global "; Global (read_idx ic)
  | _ -> logger#info ("Invalid exportdesc %x!") exportdesc_type; Func (read_idx ic)

let read_export ic w = 
  let name = read_name ic in
  update_export_section w name (read_exportdesc ic)

(* Start section *)
let read_start ic w =
  read_section_length ic >= 0 (* discard the section length *)
  && update_start_section w (read_idx ic)

(* Element section *)
let read_elemkind ic: int =
  let k = read_byte ic in
  match k with
  | 0x00 -> k
  | _ -> logger#info "Invalid elemkind %x" k; k

let read_idx ic =
  match uLEB ic 32 with
  | -1 -> logger#info  "idx error!"; 0
  | i -> logger#info  "Index: %d " i; i

let read_element ic w =
  let element_type = read_byte ic in
  match element_type with
  | 0x00 ->
      let e = read_expr ic in
      let y = read_vec ic read_idx in
      update_element_section w (ExprFunc {e; y})
  | 0x01 ->
      let (_: int) = read_elemkind ic in
      let y = read_vec ic read_idx in
      update_element_section w (ElemFuncP {y})
  | 0x02 ->
      let x = read_idx ic in
      let e = read_expr ic in
      let (_: int) = read_elemkind ic in
      let y = read_vec ic read_idx in
      update_element_section w (TableExprElemFunc {x; e; y})
  | 0x03 -> 
      let (_: int) = read_elemkind ic in
      let y = read_vec ic read_idx in
      update_element_section w (ElemFuncD {y})
  | 0x04 -> 
      let e = read_expr ic in
      let el = read_vec ic read_expr in
      update_element_section w (ExprExpr {e; el})
  | 0x05 ->
      let et = read_reftype ic in
      let el = read_vec ic read_expr in
      update_element_section w (RefExprP {et; el})
  | 0x06 -> 
      let x = read_idx ic in
      let e = read_expr ic in
      let et = read_reftype ic in
      let el = read_vec ic read_expr in
      update_element_section w (TableExprRefExpr {x; e; et; el})
  | 0x07 -> 
      let et = read_reftype ic in
      let el = read_vec ic read_expr in
      update_element_section w (RefExprD {et; el})
  | _ -> failwith (String.concat ["Invalid element item: " ; (string_of_int element_type)])

(* Code section *)
let read_code ic w =
  (uLEB ic 32) >= 0 (* we discard the size *)
  &&
  (* func *)
  let locals = read_vec ic (read_local ic) in
  let e = read_expr ic in
  logger#info  "locals %s" (String.strip (Wasm_print.string_of_locals locals));
  update_code_section w locals e;
  true

(* Data section *)
let read_data ic w =
  let data_item_type = read_byte ic in
  match data_item_type with
  | 0x00 -> 
      let e = read_expr ic in
      let b = read_bytes ic in
      update_data_section w (ExprBytes {e; b})
  | 0x01 -> 
      let b = read_bytes ic in
      update_data_section w (Bytes b)
  | 0x02 -> 
      let x = read_idx ic in
      let e = read_expr ic in
      let b = read_bytes ic in
      update_data_section w (MemExprBytes {x; e; b})
  | _ -> failwith (String.concat ["Invalid data item: " ; string_of_int data_item_type])

(* Data count section *)
let read_data_count ic w =
  read_section_length ic >= 0 (* discard the section length *)
  && update_data_count_section w (uLEB ic 32)

(* Section reader *)
let read_section_body ic w id =
  match id with
  | 0 -> logger#info  "Custom section - unimplemented, skipping"; skip_bytes ic (read_section_length ic); true
  | 1 -> logger#info  "Type section";      read_section ic w read_type
  | 2 -> logger#info  "Import section";    read_section ic w read_import
  | 3 -> logger#info  "Function section";  read_section ic w read_function
  | 4 -> logger#info  "Table section";     read_section ic w read_table
  | 5 -> logger#info  "Memory section";    read_section ic w read_memory
  | 6 -> logger#info  "Global section";    read_section ic w read_global
  | 7 -> logger#info  "Export section";    read_section ic w read_export
  | 8 -> logger#info  "Start section";     read_start ic w
  | 9 -> logger#info  "Element section";   read_section ic w read_element
  | 10 -> logger#info  "Code section";     read_section ic w read_code
  | 11 -> logger#info  "Data section";     read_section ic w read_data
  | 12 -> logger#info  "Data count";       read_data_count ic w
  | _ -> logger#info  "Unknown section, skipping"; skip_bytes ic (read_section_length ic); true

let read_section_id ic =
  match read_byte ic with
  | id -> logger#info  "Section type: %d" id; id

(* wasm Module reader *)
let rec read_sections ic w =
  match read_section_id ic with
  | -1 -> true
  | id -> read_section_body ic w id && read_sections ic w

let parse_wasm ic w =
  read_magic ic && read_version ic && read_sections ic w