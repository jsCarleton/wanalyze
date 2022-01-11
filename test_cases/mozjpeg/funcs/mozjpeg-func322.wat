  (func (;322;) (type 2) (param i32 i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 2
0004    global.set 0
0005    local.get 1
0006    i32.load
0007    local.set 3
0008    local.get 2
0009    local.get 1
0010    i32.load
0011    i32.store
0012    local.get 2
0013    local.get 3
0014    i32.store
0015    local.get 0
0016    local.get 2
0017    i32.const 8
0018    i32.add
0019    call 321
0020    local.get 2
0021    i32.const 16
0022    i32.add
0023    global.set 0)
