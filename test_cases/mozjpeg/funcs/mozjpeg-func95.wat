  (func (;95;) (type 3) (param i32 i32 i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 3
0004    global.set 0
0005    local.get 3
0006    local.get 2
0007    i32.store
0008    local.get 0
0009    local.get 1
0010    local.get 2
0011    call 279
0012    local.set 0
0013    local.get 3
0014    i32.const 16
0015    i32.add
0016    global.set 0
0017    local.get 0)
