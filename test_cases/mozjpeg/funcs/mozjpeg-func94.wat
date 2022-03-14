  (func (;94;) (type 1) (param i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 1
0004    local.get 0
0005    i32.store offset=8
0006    local.get 1
0007    local.get 1
0008    i32.load offset=8
0009    i32.load offset=4
0010    i32.store offset=12
0011    local.get 1
0012    i32.load offset=12)
