  (func (;288;) (type 1) (param i32 i32)
0 ------------------------------------------------------------
0000    local.get 1
0001    local.get 1
0002    i32.load
0003    i32.const 15
0004    i32.add
0005    i32.const -16
0006    i32.and
0007    local.tee 1
0008    i32.const 16
0009    i32.add
0010    i32.store
0011    local.get 0
0012    local.get 1
0013    i64.load
0014    local.get 1
0015    i64.load offset=8
0016    call 109
0017    f64.store)
