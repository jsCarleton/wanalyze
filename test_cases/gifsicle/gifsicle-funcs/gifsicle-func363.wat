  (func (;363;) (type 4) (param i32)
    (local i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    local.get 0
0002    i32.load16_s offset=2
0003    i32.const 183
0004    i32.mul
0005    local.get 0
0006    i32.load16_s
0007    i32.const 55
0008    i32.mul
0009    i32.add
0010    local.get 0
0011    i32.load16_s offset=4
0012    i32.const 19
0013    i32.mul
0014    i32.add
0015    i32.const 8
0016    i32.shr_u
0017    local.tee 1
0018    i32.store16 offset=4
0019    local.get 0
0020    local.get 1
0021    i32.store16 offset=2
0022    local.get 0
0023    local.get 1
0024    i32.store16)
