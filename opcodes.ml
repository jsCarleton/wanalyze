open Core

type wasm_opcode =
  (* Control *)
  | OP_unreachable | OP_nop | OP_block | OP_loop | OP_if | OP_else | OP_end | OP_br | OP_br_if
  | OP_br_table | OP_return | OP_call | OP_call_indirect
  (* Reference *)
  | OP_ref_null
  (* Parametric *)
  | OP_drop | OP_select
  (* Variable *)
  | OP_local_get | OP_local_set | OP_local_tee | OP_global_get | OP_global_set
  (* Table *)
  | OP_table_get | OP_table_set
  (* Memory *)
  | OP_i32_load | OP_i64_load | OP_f32_load | OP_f64_load 
  | OP_i32_load8_s | OP_i32_load8_u | OP_i32_load16_s | OP_i32_load16_u  
  | OP_i64_load8_s | OP_i64_load8_u | OP_i64_load16_s 
  | OP_i64_load16_u | OP_i64_load32_s | OP_i64_load32_u 
  | OP_i32_store | OP_i64_store | OP_f32_store | OP_f64_store 
  | OP_i32_store8 | OP_i32_store16  | OP_i64_store8 | OP_i64_store16 | OP_i64_store32 
  | OP_memory_size | OP_memory_grow
  (* Numeric *)
  | OP_i32_const | OP_i64_const | OP_f32_const | OP_f64_const
  | OP_i32_eqz | OP_i32_eq | OP_i32_ne | OP_i32_lt_s | OP_i32_lt_u | OP_i32_gt_s | OP_i32_gt_u | OP_i32_le_s
  | OP_i32_le_u | OP_i32_ge_s | OP_i32_ge_u
  | OP_i64_eqz | OP_i64_eq | OP_i64_ne | OP_i64_lt_s | OP_i64_lt_u | OP_i64_gt_s | OP_i64_gt_u | OP_i64_le_s
  | OP_i64_le_u | OP_i64_ge_s |  OP_i64_ge_u
  | OP_f32_eq | OP_f32_ne | OP_f32_lt | OP_f32_gt | OP_f32_le | OP_f32_ge
  | OP_f64_eq | OP_f64_ne | OP_f64_lt | OP_f64_gt | OP_f64_le | OP_f64_ge
  | OP_i32_clz | OP_i32_ctz | OP_i32_popcnt | OP_i32_add | OP_i32_sub | OP_i32_mul | OP_i32_div_s | OP_i32_div_u
  | OP_i32_rem_s | OP_i32_rem_u | OP_i32_and | OP_i32_or | OP_i32_xor | OP_i32_shl | OP_i32_shr_s | OP_i32_shr_u
  | OP_i32_rotl | OP_i32_rotr
  | OP_i64_clz | OP_i64_ctz | OP_i64_popcnt | OP_i64_add | OP_i64_sub | OP_i64_mul | OP_i64_div_s | OP_i64_div_u
  | OP_i64_rem_s | OP_i64_rem_u | OP_i64_and | OP_i64_or | OP_i64_xor | OP_i64_shl | OP_i64_shr_s | OP_i64_shr_u
  | OP_i64_rotl | OP_i64_rotr
  | OP_f32_abs | OP_f32_neg | OP_f32_ceil | OP_f32_floor | OP_f32_trunc | OP_f32_nearest | OP_f32_sqrt |OP_f32_add
  | OP_f32_sub | OP_f32_mul | OP_f32_div | OP_f32_min | OP_f32_max | OP_f32_copysign
  | OP_f64_abs | OP_f64_neg | OP_f64_ceil | OP_f64_floor | OP_f64_trunc | OP_f64_nearest | OP_f64_sqrt |OP_f64_add
  | OP_f64_sub | OP_f64_mul | OP_f64_div | OP_f64_min | OP_f64_max | OP_f64_copysign
  | OP_i32_wrap_i64 
  | OP_i32_trunc_f32_s |OP_i32_trunc_f32_u | OP_i32_trunc_f64_s | OP_i32_trunc_f64_u 
  | OP_i64_extend_i32_s | OP_i64_extend_i32_u | OP_i64_trunc_f32_s | OP_i64_trunc_f32_u | OP_i64_trunc_f64_s | OP_i64_trunc_f64_u 
  | OP_f32_convert_i32_s | OP_f32_convert_i32_u | OP_f32_convert_i64_s | OP_f32_convert_i64_u | OP_f32_demote_f64
  | OP_f64_convert_i32_s | OP_f64_convert_i32_u | OP_f64_convert_i64_s | OP_f64_convert_i64_u | OP_f64_promote_f32 
  | OP_i32_reinterpret_f32 | OP_i64_reinterpret_f64 | OP_f32_reinterpret_i32 | OP_f64_reinterpret_i64
  | OP_i32_extend8_s | OP_i32_extend16_s | OP_i64_extend8_s | OP_i64_extend16_s | OP_i64_extend32_s
  | OP_trunc_sat

let opcode_of_int (code: int): wasm_opcode =
  match code with
    (* Control *)
    | 0x00 -> OP_unreachable | 0x01 -> OP_nop | 0x02 -> OP_block | 0x03 -> OP_loop
    | 0x04 -> OP_if | 0x05 -> OP_else | 0x0b -> OP_end | 0x0c -> OP_br | 0x0d -> OP_br_if
    | 0x0e -> OP_br_table | 0x0f -> OP_return | 0x10 -> OP_call | 0x11 -> OP_call_indirect
    (* Reference *)
    | 0xd0 -> OP_ref_null
    (* Parametric *)
    | 0x1a -> OP_drop | 0x1b -> OP_select | 0x1c -> OP_select
    (* Variable *)
    | 0x20 -> OP_local_get | 0x21 -> OP_local_set | 0x22 -> OP_local_tee | 0x23 -> OP_global_get
    | 0x24 -> OP_global_set
    (* Table *)
    | 0x25 -> OP_table_get | 0x26 -> OP_table_set
    (* Memory *)
    | 0x28 -> OP_i32_load | 0x29 -> OP_i64_load | 0x2a -> OP_f32_load | 0x2b -> OP_f64_load
    | 0x2c -> OP_i32_load8_s | 0x2d -> OP_i32_load8_u | 0x2e -> OP_i32_load16_s | 0x2f -> OP_i32_load16_u
    | 0x30 -> OP_i64_load8_s | 0x31 -> OP_i64_load8_u | 0x32 -> OP_i64_load16_s | 0x33 -> OP_i64_load16_u
    | 0x34 -> OP_i64_load32_s | 0x35 -> OP_i64_load32_u | 0x36 -> OP_i32_store | 0x37 -> OP_i64_store
    | 0x38 -> OP_f32_store | 0x39 -> OP_f64_store | 0x3a -> OP_i32_store8 | 0x3b -> OP_i32_store16
    | 0x3c -> OP_i64_store8 | 0x3d -> OP_i64_store16 | 0x3e -> OP_i64_store32 | 0x3f -> OP_memory_size
    | 0x40 -> OP_memory_grow
    (* Numeric *)
    | 0x41 -> OP_i32_const | 0x42 -> OP_i64_const | 0x43 -> OP_f32_const | 0x44 -> OP_f64_const
    | 0x45 -> OP_i32_eqz | 0x46 -> OP_i32_eq | 0x47 -> OP_i32_ne | 0x48 -> OP_i32_lt_s
    | 0x49 -> OP_i32_lt_u | 0x4a -> OP_i32_gt_s | 0x4b -> OP_i32_gt_u | 0x4c -> OP_i32_le_s
    | 0x4d -> OP_i32_le_u | 0x4e -> OP_i32_ge_s | 0x4f -> OP_i32_ge_u
    | 0x50 -> OP_i64_eqz | 0x51 -> OP_i64_eq | 0x52 -> OP_i64_ne | 0x53 -> OP_i64_lt_s
    | 0x54 -> OP_i64_lt_u | 0x55 -> OP_i64_gt_s | 0x56 -> OP_i64_gt_u | 0x57 -> OP_i64_le_s
    | 0x58 -> OP_i64_le_u | 0x59 -> OP_i64_ge_s | 0x5a -> OP_i64_ge_u
    | 0x5b -> OP_f32_eq | 0x5c -> OP_f32_ne | 0x5d -> OP_f32_lt | 0x5e -> OP_f32_gt
    | 0x5f -> OP_f32_le | 0x60 -> OP_f32_ge
    | 0x61 -> OP_f64_eq | 0x62 -> OP_f64_ne | 0x63 -> OP_f64_lt | 0x64 -> OP_f64_gt
    | 0x65 -> OP_f64_le | 0x66 -> OP_f64_ge
    | 0x67 -> OP_i32_clz | 0x68 -> OP_i32_ctz | 0x69 -> OP_i32_popcnt | 0x6a -> OP_i32_add
    | 0x6b -> OP_i32_sub | 0x6c -> OP_i32_mul | 0x6d -> OP_i32_div_s | 0x6e -> OP_i32_div_u
    | 0x6f -> OP_i32_rem_s | 0x70 -> OP_i32_rem_u | 0x71 -> OP_i32_and | 0x72 -> OP_i32_or
    | 0x73 -> OP_i32_xor | 0x74 -> OP_i32_shl | 0x75 -> OP_i32_shr_s | 0x76 -> OP_i32_shr_u
    | 0x77 -> OP_i32_rotl | 0x78 -> OP_i32_rotr
    | 0x79 -> OP_i64_clz | 0x7a -> OP_i64_ctz | 0x7b -> OP_i64_popcnt | 0x7c -> OP_i64_add
    | 0x7d -> OP_i64_sub | 0x7e -> OP_i64_mul | 0x7f -> OP_i64_div_s | 0x80 -> OP_i64_div_u
    | 0x81 -> OP_i64_rem_s | 0x82 -> OP_i64_rem_u | 0x83 -> OP_i64_and | 0x84 -> OP_i64_or
    | 0x85 -> OP_i64_xor | 0x86 -> OP_i64_shl | 0x87 -> OP_i64_shr_s | 0x88 -> OP_i64_shr_u
    | 0x89 -> OP_i64_rotl | 0x8a -> OP_i64_rotr
    | 0x8b -> OP_f32_abs | 0x8c -> OP_f32_neg | 0x8d -> OP_f32_ceil | 0x8e -> OP_f32_floor
    | 0x8f -> OP_f32_trunc | 0x90 -> OP_f32_nearest | 0x91 -> OP_f32_sqrt | 0x92 -> OP_f32_add
    | 0x93 -> OP_f32_sub | 0x94 -> OP_f32_mul | 0x95 -> OP_f32_div | 0x96 -> OP_f32_min
    | 0x97 -> OP_f32_max | 0x98 -> OP_f32_copysign
    | 0x99 -> OP_f64_abs | 0x9a -> OP_f64_neg | 0x9b -> OP_f64_ceil | 0x9c -> OP_f64_floor
    | 0x9d -> OP_f64_trunc | 0x9e -> OP_f64_nearest | 0x9f -> OP_f64_sqrt | 0xa0 -> OP_f64_add
    | 0xa1 -> OP_f64_sub | 0xa2 -> OP_f64_mul | 0xa3 -> OP_f64_div | 0xa4 -> OP_f64_min
    | 0xa5 -> OP_f64_max | 0xa6 -> OP_f64_copysign
    | 0xa7 -> OP_i32_wrap_i64 | 0xa8 -> OP_i32_trunc_f32_s | 0xa9 -> OP_i32_trunc_f32_u | 0xaa -> OP_i32_trunc_f64_s
    | 0xab -> OP_i32_trunc_f64_u | 0xac -> OP_i64_extend_i32_s | 0xad -> OP_i64_extend_i32_u | 0xae -> OP_i64_trunc_f32_s
    | 0xaf -> OP_i64_trunc_f32_u | 0xb0 -> OP_i64_trunc_f64_s | 0xb1 -> OP_i64_trunc_f64_u | 0xb2 -> OP_f32_convert_i32_s
    | 0xb3 -> OP_f32_convert_i32_u | 0xb4 -> OP_f32_convert_i64_s | 0xb5 -> OP_f32_convert_i64_u | 0xb6 -> OP_f32_demote_f64
    | 0xb7 -> OP_f64_convert_i32_s | 0xb8 -> OP_f64_convert_i32_u | 0xb9 -> OP_f64_convert_i64_s | 0xba -> OP_f64_convert_i64_u
    | 0xbb -> OP_f64_promote_f32 | 0xbc -> OP_i32_reinterpret_f32 | 0xbd -> OP_i64_reinterpret_f64 | 0xbe -> OP_f32_reinterpret_i32
    | 0xbf -> OP_f64_reinterpret_i64
    | 0xc0 -> OP_i32_extend8_s | 0xc1 -> OP_i32_extend16_s | 0xc2 -> OP_i64_extend8_s | 0xc3 -> OP_i64_extend16_s
    | 0xc4 -> OP_i64_extend32_s
    | 0xfc -> OP_trunc_sat
    | _ -> failwith (sprintf "Invalid opcode %x" code)

let string_of_opcode (code: wasm_opcode): string =
  match code with
  (* Control *)
  | OP_unreachable -> "unreachable"| OP_nop -> "nop" | OP_block -> "block" | OP_loop -> "loop" | OP_if -> "if"
  | OP_else -> "else" | OP_end -> "end" | OP_br -> "br" | OP_br_if -> "br_if" | OP_br_table -> "br_table"
  | OP_return -> "return"| OP_call -> "call" | OP_call_indirect -> "call_indirect"
  (* Reference *)
  | OP_ref_null -> "ref.null"
  (* Parametric *)
  | OP_drop -> "drop" | OP_select -> "select"
  (* Variable *)
  | OP_local_get -> "local.get" | OP_local_set -> "local.set" | OP_local_tee -> "local.tee"
  | OP_global_get -> "global.get" | OP_global_set -> "global.set"
  (* Table *)
  | OP_table_get -> "table.get" | OP_table_set -> "table.set"
  (* Memory *)
  | OP_i32_load -> "i32.load" | OP_i64_load -> "i64.load" | OP_f32_load -> "f32.load" | OP_f64_load -> "f64.load" 
  | OP_i32_load8_s -> "i32.load8_s" | OP_i32_load8_u -> "i32.load8_u" | OP_i32_load16_s -> "i32.load16_s" | OP_i32_load16_u -> "i32.load16_u"
  | OP_i64_load8_s -> "i64.load8_s" | OP_i64_load8_u -> "i64.load8_u" | OP_i64_load16_s -> "i64.load16_s" 
  | OP_i64_load16_u -> "i64.load16_u" | OP_i64_load32_s -> "i64.load32_s" | OP_i64_load32_u -> "i64.load32_u" 
  | OP_i32_store -> "i32.store" | OP_i64_store -> "i64.store" | OP_f32_store -> "f32.store" | OP_f64_store -> "f64.store" 
  | OP_i32_store8 -> "i32.store8" | OP_i32_store16 -> "i32.store16"  | OP_i64_store8 -> "i64.store8" | OP_i64_store16 -> "i64.store16" 
  | OP_i64_store32 -> "i64.store32" 
  | OP_memory_size -> "memory_size" | OP_memory_grow -> "memory_grow"
  (* Numeric *)
  | OP_i32_const -> "i32.const" | OP_i64_const -> "i64.const" | OP_f32_const -> "f32.const" | OP_f64_const -> "f64.const"
  | OP_i32_eqz -> "i32.eqz" | OP_i32_eq -> "i32.eq" | OP_i32_ne -> "i32.ne" | OP_i32_lt_s -> "i32.lt_s" | OP_i32_lt_u -> "i32.lt_u" 
  | OP_i32_gt_s -> "i32.gt_s" | OP_i32_gt_u -> "i32.gt_u" | OP_i32_le_s -> "i32.le_s" | OP_i32_le_u -> "i32.le_u" | OP_i32_ge_s -> "i32.ge_s" 
  | OP_i32_ge_u -> "i32.ge_u"
  | OP_i64_eqz -> "i64.eqz" | OP_i64_eq -> "i64.eq" | OP_i64_ne -> "i64.ne"  | OP_i64_lt_s -> "i64.lt_s" | OP_i64_lt_u -> "i64.lt_u" 
  | OP_i64_gt_s -> "i64.gt_s" | OP_i64_gt_u -> "i64.gt_u" | OP_i64_le_s -> "i64.le_s" | OP_i64_le_u -> "i64.le_u" | OP_i64_ge_s -> "i64.ge_s" 
  | OP_i64_ge_u -> "i64.ge_u"
  | OP_f32_eq -> "f32.eq" | OP_f32_ne -> "f32.ne" | OP_f32_lt -> "f32.lt" | OP_f32_gt -> "f32.gt" | OP_f32_le -> "f32.le" 
  | OP_f32_ge -> "f32.ge"
  | OP_f64_eq -> "f64.eq" | OP_f64_ne -> "f64.ne" | OP_f64_lt -> "f64.lt" | OP_f64_gt -> "f64.gt" | OP_f64_le -> "f64.le" 
  | OP_f64_ge -> "f64.ge"
  | OP_i32_clz -> "i32.clz" | OP_i32_ctz -> "i32.ctz" | OP_i32_popcnt -> "i32.popcnt" | OP_i32_add -> "i32.add" | OP_i32_sub -> "i32.sub" 
  | OP_i32_mul -> "i32.mul" | OP_i32_div_s -> "i32.div_s" | OP_i32_div_u -> "i32.div_u" | OP_i32_rem_s -> "i32.rem_s" 
  | OP_i32_rem_u -> "i32.rem_u" | OP_i32_and -> "i32.and" | OP_i32_or -> "i32.or" | OP_i32_xor -> "i32.xor" | OP_i32_shl -> "i32.shl" 
  | OP_i32_shr_s -> "i32.shr_s" | OP_i32_shr_u -> "i32.shr_u" | OP_i32_rotl -> "i32.rotl" | OP_i32_rotr -> "i32.rotr"
  | OP_i64_clz -> "i64.clz" | OP_i64_ctz -> "i64.ctz" | OP_i64_popcnt -> "i64.popcnt" | OP_i64_add -> "i64.add" | OP_i64_sub -> "i64.sub" 
  | OP_i64_mul -> "i64.mul" | OP_i64_div_s -> "i64.div_s" | OP_i64_div_u -> "i64.div_u" | OP_i64_rem_s -> "i64.rem_s" 
  | OP_i64_rem_u -> "i64.rem_u" | OP_i64_and -> "i64.and" | OP_i64_or -> "i64.or" | OP_i64_xor -> "i64.xor" | OP_i64_shl -> "i64.shl" 
  | OP_i64_shr_s -> "i64.shr_s" | OP_i64_shr_u -> "i64.shr_u" | OP_i64_rotl -> "i64.rotl" | OP_i64_rotr -> "i64.rotr"
  | OP_f32_abs -> "f32.abs" | OP_f32_neg -> "f32.neg" | OP_f32_ceil -> "f32.ceil" | OP_f32_floor -> "f32.floor" | OP_f32_trunc -> "f32.trunc" 
  | OP_f32_nearest -> "f32.nearest" | OP_f32_sqrt -> "f32.sqrt" |OP_f32_add -> "f32.add" | OP_f32_sub -> "f32.sub" | OP_f32_mul -> "f32.mul" 
  | OP_f32_div -> "f32.div" | OP_f32_min -> "f32.min" | OP_f32_max -> "f32.max" | OP_f32_copysign -> "f32.copysign"
  | OP_f64_abs -> "f64.abs" | OP_f64_neg -> "f64.neg" | OP_f64_ceil -> "f64.ceil" | OP_f64_floor -> "f64.floor" | OP_f64_trunc -> "f64.trunc" 
  | OP_f64_nearest -> "f64.nearest" | OP_f64_sqrt -> "f64.sqrt" | OP_f64_add -> "f64.add" | OP_f64_sub -> "f64.sub" | OP_f64_mul -> "f64.mul" 
  | OP_f64_div -> "f64.div" | OP_f64_min -> "f64.min" | OP_f64_max -> "f64.max" | OP_f64_copysign -> "f64.copysign"
  | OP_i32_wrap_i64 -> "i32.wrap_i64" 
  | OP_i32_trunc_f32_s -> "i32.trunc_f32_s" | OP_i32_trunc_f32_u -> "i32.trunc_f32_u" | OP_i32_trunc_f64_s  -> "i32.trunc_f64_s" 
  | OP_i32_trunc_f64_u -> "i32.trunc_f64_u" 
  | OP_i64_extend_i32_s -> "i64.extend_i32_s" | OP_i64_extend_i32_u -> "i64.extend_i32_u" | OP_i64_trunc_f32_s -> "i64.trunc_f32_s" 
  | OP_i64_trunc_f32_u -> "i64.trunc_f32_u" | OP_i64_trunc_f64_s -> "i64.trunc_f64_s" | OP_i64_trunc_f64_u -> "i64.trunc_f64_u" 
  | OP_f32_convert_i32_s -> "f32.convert_i32_s" | OP_f32_convert_i32_u -> "f32.convert_i32_u" | OP_f32_convert_i64_s -> "f32.convert_i64_s" 
  | OP_f32_convert_i64_u -> "f32.convert_i64_u" | OP_f32_demote_f64 -> "f32.demote_f64"
  | OP_f64_convert_i32_s -> "f64.convert_i32_s" | OP_f64_convert_i32_u -> "f64.convert_i32_u" | OP_f64_convert_i64_s -> "f64.convert_i64_s" 
  | OP_f64_convert_i64_u -> "f64.convert_i64_u" | OP_f64_promote_f32 -> "f64.promote_f32" 
  | OP_i32_reinterpret_f32 -> "i32.reinterpret_f32" | OP_i64_reinterpret_f64 -> "i64.reinterpret_f64" 
  | OP_f32_reinterpret_i32 -> "f32.reinterpret_i32" | OP_f64_reinterpret_i64 -> "f64.reinterpret_i64"
  | OP_i32_extend8_s -> "i32.extend8_s" | OP_i32_extend16_s -> "i32.extend16_s" | OP_i64_extend8_s -> "i64.extend8_s" 
  | OP_i64_extend16_s -> "i64.extend16_s" | OP_i64_extend32_s -> "i64.extend32_s"
  | OP_trunc_sat -> "trunc_sat"
