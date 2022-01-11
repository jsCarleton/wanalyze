  (func (;245;) (type 1) (param i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    i32.const 32
0001    local.get 0
0002    i32.const 1
0003    i32.or
0004    i32.clz
0005    i32.sub
0006    i32.const 1233
0007    i32.mul
0008    i32.const 12
0009    i32.shr_u
0010    local.tee 1
0011    local.get 1
0012    i32.const 2
0013    i32.shl
0014    i32.const 156032
0015    i32.add
0016    i32.load
0017    local.get 0
0018    i32.gt_u
0019    i32.sub
0020    i32.const 1
0021    i32.add)
