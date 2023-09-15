  (func (;50;) (type 2) (param i32 i32) (result i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    local.get 1
0002    call 277
0003    local.tee 0
0004    i32.const 0
0005    local.get 0
0006    i32.load8_u
0007    local.get 1
0008    i32.const 255
0009    i32.and
0010    i32.eq
0011    select)
