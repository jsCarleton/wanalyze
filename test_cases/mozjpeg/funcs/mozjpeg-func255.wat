  (func (;255;) (type 0) (param i32)
    (local i32)
0 ------------------------------------------------------------
0000    i32.const 25
0001    call 58
0002    local.tee 1
0003    i32.const 0
0004    i32.store offset=8
0005    local.get 1
0006    i64.const 51539607564
0007    i64.store align=4
0008    local.get 1
0009    i32.const 12
0010    i32.add
0011    local.tee 1
0012    i32.const 156013
0013    i64.load align=1
0014    i64.store offset=5 align=1
0015    local.get 1
0016    i32.const 156008
0017    i64.load align=1
0018    i64.store align=1
0019    local.get 0
0020    local.get 1
0021    i32.store)
