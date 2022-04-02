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

val opcode_of_int       : int -> wasm_opcode
val string_of_opcode    : wasm_opcode -> string
