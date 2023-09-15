  (func (;280;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    local.get 1
0001    local.get 0
0002    i32.load offset=84
0003    local.tee 1
0004    local.get 1
0005    i32.const 0
0006    local.get 2
0007    i32.const 256
0008    i32.add
0009    local.tee 3
0010    call 106
0011    local.tee 4
0012    local.get 1
0013    i32.sub
0014    local.get 3
0015    local.get 4
0016    select
0017    local.tee 3
0018    local.get 2
0019    local.get 3
0020    local.get 2
0021    i32.lt_u
0022    select
0023    local.tee 2
0024    call 24
0025    drop
0026    local.get 0
0027    local.get 1
0028    local.get 3
0029    i32.add
0030    local.tee 3
0031    i32.store offset=84
0032    local.get 0
0033    local.get 3
0034    i32.store offset=8
0035    local.get 0
0036    local.get 1
0037    local.get 2
0038    i32.add
0039    i32.store offset=4
0040    local.get 2)
