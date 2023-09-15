  (func (;356;) (type 2) (param i32 i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load8_u
0002    local.tee 0
0003    local.get 1
0004    i32.load8_u
0005    local.tee 1
0006    i32.sub
0007    i32.const 35276
0008    i32.load
0009    local.tee 2
0010    local.get 0
0011    i32.const 2
0012    i32.shl
0013    i32.add
0014    i32.load
0015    local.tee 0
0016    local.get 2
0017    local.get 1
0018    i32.const 2
0019    i32.shl
0020    i32.add
0021    i32.load
0022    local.tee 1
0023    i32.sub
0024    local.get 0
0025    local.get 1
0026    i32.eq
0027    select)
