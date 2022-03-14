  (func (;270;) (type 3) (param i32 i32 i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load offset=20
0002    local.tee 3
0003    local.get 1
0004    local.get 2
0005    local.get 0
0006    i32.load offset=16
0007    local.get 3
0008    i32.sub
0009    local.tee 1
0010    local.get 1
0011    local.get 2
0012    i32.gt_u
0013    select
0014    local.tee 1
0015    call 34
0016    drop
0017    local.get 0
0018    local.get 0
0019    i32.load offset=20
0020    local.get 1
0021    i32.add
0022    i32.store offset=20
0023    local.get 2)
