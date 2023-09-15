  (func (;234;) (type 2) (param i32 i32) (result i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load8_u offset=3
0002    local.get 0
0003    i32.load8_u offset=2
0004    i32.const 8
0005    i32.shl
0006    local.get 0
0007    i32.load8_u offset=1
0008    i32.const 16
0009    i32.shl
0010    i32.or
0011    i32.or
0012    local.get 1
0013    i32.load8_u offset=3
0014    local.get 1
0015    i32.load8_u offset=2
0016    i32.const 8
0017    i32.shl
0018    local.get 1
0019    i32.load8_u offset=1
0020    i32.const 16
0021    i32.shl
0022    i32.or
0023    i32.or
0024    i32.sub)
