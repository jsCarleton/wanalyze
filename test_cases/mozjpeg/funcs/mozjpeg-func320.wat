  (func (;320;) (type 4) (param i32 i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 2
0004    global.set 0
0005    local.get 2
0006    i32.const 8
0007    i32.add
0008    local.get 1
0009    local.get 0
0010    call_indirect (type 2)
0011    local.get 2
0012    i32.load offset=8
0013    call 11
0014    local.get 2
0015    i32.load offset=8
0016    local.set 0
0017    local.get 2
0018    i32.load offset=8
0019    call 10
0020    local.get 2
0021    i32.const 16
0022    i32.add
0023    global.set 0
0024    local.get 0)
