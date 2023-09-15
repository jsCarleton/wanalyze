  (func (;357;) (type 2) (param i32 i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    i32.const 35268
0001    i32.load
0002    i32.load offset=12
0003    local.tee 2
0004    local.get 0
0005    i32.load
0006    i32.const 6
0007    i32.mul
0008    i32.add
0009    i32.load16_s offset=4
0010    local.get 2
0011    local.get 1
0012    i32.load
0013    i32.const 6
0014    i32.mul
0015    i32.add
0016    i32.load16_s offset=4
0017    i32.sub)
