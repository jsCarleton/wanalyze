  (func (;45;) (type 1) (param i32 i32)
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
0008    i32.const 0
0009    i32.const 0
0010    i32.const 3
0011    local.get 0
0012    local.get 1
0013    call 93
0014    i32.const 1
0015    call 2
0016    unreachable
1 ------------------------------------------------------------)
