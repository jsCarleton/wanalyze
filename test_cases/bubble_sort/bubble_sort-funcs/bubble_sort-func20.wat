  (func (;20;) (type 4) (param i32 i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 2
0004    global.set 0
0005    local.get 2
0006    local.get 1
0007    i32.store offset=12
0008    i32.const 1568
0009    local.get 0
0010    local.get 1
0011    call 51
0012    local.set 1
0013    local.get 2
0014    i32.const 16
0015    i32.add
0016    global.set 0
0017    local.get 1)
