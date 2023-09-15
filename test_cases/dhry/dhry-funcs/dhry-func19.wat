  (func (;19;) (type 1) (param i32) (result i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load align=1
0002    local.tee 0
0003    i32.const 24
0004    i32.shl
0005    local.get 0
0006    i32.const 8
0007    i32.shl
0008    i32.const 16711680
0009    i32.and
0010    i32.or
0011    local.get 0
0012    i32.const 8
0013    i32.shr_u
0014    i32.const 65280
0015    i32.and
0016    local.get 0
0017    i32.const 24
0018    i32.shr_u
0019    i32.or
0020    i32.or)
