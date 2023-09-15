  (func (;281;) (type 2) (param i32 i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 2
0004    local.get 0
0005    i32.store offset=12
0006    local.get 2
0007    local.get 0
0008    local.get 1
0009    i32.const 2
0010    i32.shl
0011    local.get 1
0012    i32.const 0
0013    i32.ne
0014    i32.const 2
0015    i32.shl
0016    i32.sub
0017    i32.add
0018    local.tee 0
0019    i32.const 4
0020    i32.add
0021    i32.store offset=8
0022    local.get 0
0023    i32.load)
