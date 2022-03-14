  (func (;308;) (type 8)
    (local i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 0
0004    global.set 0
0005    local.get 0
0006    i32.const 156984
0007    i32.store offset=12
0008    local.get 0
0009    i32.load offset=12
0010    drop
0011    call 140
0012    local.get 0
0013    i32.const 16
0014    i32.add
0015    global.set 0)
