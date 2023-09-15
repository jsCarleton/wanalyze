  (func (;213;) (type 0) (param i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    i32.const 0
0001    i32.const 12
0002    i32.const 1
0003    call 23
0004    local.tee 1
0005    i32.const 0
0006    i32.store
0007    local.get 1
0008    local.get 0
0009    i32.const 0
0010    local.get 0
0011    i32.const 0
0012    i32.gt_s
0013    select
0014    local.tee 0
0015    i32.store offset=4
0016    local.get 1
0017    i32.const 0
0018    i32.const 100
0019    local.get 0
0020    call 23
0021    i32.store offset=8
0022    local.get 1)
