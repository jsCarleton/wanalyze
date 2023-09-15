  (func (;235;) (type 2) (param i32 i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    i32.const -1
0001    i32.const 35220
0002    i32.load
0003    local.tee 2
0004    local.get 0
0005    i32.load16_u
0006    i32.const 2
0007    i32.shl
0008    i32.add
0009    i32.load
0010    local.tee 0
0011    local.get 2
0012    local.get 1
0013    i32.load16_u
0014    i32.const 2
0015    i32.shl
0016    i32.add
0017    i32.load
0018    local.tee 1
0019    i32.ne
0020    local.get 0
0021    local.get 1
0022    i32.gt_s
0023    select)
