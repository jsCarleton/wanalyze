  (func (;127;) (type 15) (param i32 i64 i64 i64 i64)
0 ------------------------------------------------------------
0000    local.get 0
0001    local.get 1
0002    i64.store
0003    local.get 0
0004    local.get 2
0005    i64.const 281474976710655
0006    i64.and
0007    local.get 4
0008    i64.const 48
0009    i64.shr_u
0010    i32.wrap_i64
0011    i32.const 32768
0012    i32.and
0013    local.get 2
0014    i64.const 48
0015    i64.shr_u
0016    i32.wrap_i64
0017    i32.const 32767
0018    i32.and
0019    i32.or
0020    i64.extend_i32_u
0021    i64.const 48
0022    i64.shl
0023    i64.or
0024    i64.store)
