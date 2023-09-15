  (func (;225;) (type 2) (param i32 i32) (result i32)
0 ------------------------------------------------------------
0000    i32.const -1
0001    local.get 0
0002    i32.load offset=8
0003    local.tee 0
0004    local.get 1
0005    i32.load offset=8
0006    local.tee 1
0007    i32.ne
0008    local.get 0
0009    local.get 1
0010    i32.gt_u
0011    select)
