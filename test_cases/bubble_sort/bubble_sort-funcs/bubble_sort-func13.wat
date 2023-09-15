  (func (;13;) (type 11) (param i32 i64)
    (local i64)
0 ------------------------------------------------------------
0000    local.get 0
0001    local.get 1
0002    i64.const 1000000000
0003    i64.div_u
0004    local.tee 2
0005    i64.store
0006    local.get 0
0007    local.get 1
0008    local.get 2
0009    i64.const 1000000000
0010    i64.mul
0011    i64.sub
0012    i64.store32 offset=8)
