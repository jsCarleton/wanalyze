  (func (;71;) (type 4) (param i32 i32) (result i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    local.get 1
0002    i32.const 1
0003    i32.shl
0004    i32.const 155808
0005    i32.add
0006    i32.load16_u
0007    i32.store16 align=1
0008    local.get 0
0009    i32.const 2
0010    i32.add)
