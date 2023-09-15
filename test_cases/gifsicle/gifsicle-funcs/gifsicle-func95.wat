  (func (;95;) (type 2) (param i32 i32) (result i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.const 0
0002    i32.const 1
0003    local.get 0
0004    i32.load16_u offset=10
0005    local.get 0
0006    i32.load16_u offset=8
0007    i32.mul
0008    local.tee 0
0009    i32.const 1
0010    local.get 0
0011    select
0012    call 23
0013    local.get 1
0014    call 66)
