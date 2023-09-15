  (func (;22;) (type 2) (result i32)
    (local i64)
0 ------------------------------------------------------------
0000    i32.const 0
0001    i32.const 0
0002    i64.load offset=1736
0003    i64.const 6364136223846793005
0004    i64.mul
0005    i64.const 1
0006    i64.add
0007    local.tee 0
0008    i64.store offset=1736
0009    local.get 0
0010    i64.const 33
0011    i64.shr_u
0012    i32.wrap_i64)
