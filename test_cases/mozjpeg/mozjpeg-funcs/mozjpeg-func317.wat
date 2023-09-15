  (func (;317;) (type 2) (param i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load
0002    local.get 1
0003    i32.load
0004    i32.store
0005    local.get 0
0006    i32.load
0007    local.get 1
0008    i32.load offset=4
0009    i32.store offset=4
0010    local.get 0
0011    local.get 0
0012    i32.load
0013    i32.const 8
0014    i32.add
0015    i32.store)
