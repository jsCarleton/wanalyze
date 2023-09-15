  (func (;104;) (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 4
0004    global.set 0
0005    local.get 4
0006    local.get 3
0007    i32.store offset=12
0008    local.get 0
0009    local.get 1
0010    local.get 2
0011    local.get 3
0012    call 296
0013    local.set 0
0014    local.get 4
0015    i32.const 16
0016    i32.add
0017    global.set 0
0018    local.get 0)
