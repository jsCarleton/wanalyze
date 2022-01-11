  (func (;318;) (type 4) (param i32 i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 2
0004    global.set 0
0005    local.get 2
0006    local.get 0
0007    i32.store
0008    local.get 2
0009    local.get 1
0010    i64.load align=4
0011    i64.store align=4
0012    local.get 2
0013    i32.const 4
0014    i32.add
0015    local.get 2
0016    i32.const 8
0017    i32.add
0018    call 317
0019    local.get 2
0020    i32.const 16
0021    i32.add
0022    global.set 0
0023    local.get 0)
