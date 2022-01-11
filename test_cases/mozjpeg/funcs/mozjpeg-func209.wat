  (func (;209;) (type 9) (param i32 i32 i32 i32 i32) (result i32)
    (local i64)
0 ------------------------------------------------------------
0000    local.get 1
0001    local.get 2
0002    i64.extend_i32_u
0003    local.get 3
0004    i64.extend_i32_u
0005    i64.const 32
0006    i64.shl
0007    i64.or
0008    local.get 4
0009    local.get 0
0010    call_indirect (type 20)
0011    local.tee 5
0012    i64.const 32
0013    i64.shr_u
0014    i32.wrap_i64
0015    call 15
0016    local.get 5
0017    i32.wrap_i64)
