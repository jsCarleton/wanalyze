  (func (;21;) (type 3) (param i32 i32)
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
0008    i32.const 3216
0009    local.get 0
0010    local.get 1
0011    i32.const 5
0012    i32.const 0
0013    call 25
0014    drop
0015    local.get 2
0016    i32.const 16
0017    i32.add
0018    global.set 0)
