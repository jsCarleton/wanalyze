  (func (;73;) (type 4) (param i32 i32) (result i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    local.get 1
0002    i32.const 100
0003    i32.div_u
0004    local.tee 0
0005    call 71
0006    local.get 0
0007    i32.const -100
0008    i32.mul
0009    local.get 1
0010    i32.add
0011    call 71)
