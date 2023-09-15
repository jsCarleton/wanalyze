  (func (;268;) (type 2) (param i32 i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 2
0004    global.set 0
0005    local.get 2
0006    local.get 1
0007    i32.const 4
0008    i32.add
0009    i32.store offset=12
0010    local.get 2
0011    local.get 1
0012    i32.load
0013    i32.store
0014    local.get 0
0015    i32.const 32962
0016    local.get 2
0017    call 4
0018    call 90
0019    local.set 0
0020    local.get 2
0021    i32.const 16
0022    i32.add
0023    global.set 0
0024    local.get 0)
