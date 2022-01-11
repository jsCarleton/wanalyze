  (func (;137;) (type 0) (param i32)
    (local i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 1
0004    global.set 0
0005    local.get 1
0006    local.get 0
0007    i32.store
0008    i32.const 154080
0009    i32.const 2
0010    local.get 1
0011    i32.load
0012    call 0
0013    local.get 1
0014    i32.const 16
0015    i32.add
0016    global.set 0)
