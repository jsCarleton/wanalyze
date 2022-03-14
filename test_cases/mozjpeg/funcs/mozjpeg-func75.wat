  (func (;75;) (type 5) (param i32 i32 i32)
    (local i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 3
0004    global.set 0
0005    local.get 3
0006    local.get 2
0007    i32.store offset=12
0008    local.get 0
0009    local.get 1
0010    local.get 2
0011    call 133
0012    local.get 3
0013    i32.const 16
0014    i32.add
0015    global.set 0)
