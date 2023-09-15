  (func (;261;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    local.get 1
0001    local.get 0
0002    i32.load offset=84
0003    local.tee 1
0004    local.get 1
0005    local.get 2
0006    i32.const 256
0007    i32.add
0008    local.tee 3
0009    call 128
0010    local.tee 4
0011    local.get 1
0012    i32.sub
0013    local.get 3
0014    local.get 4
0015    select
0016    local.tee 3
0017    local.get 2
0018    local.get 3
0019    local.get 2
0020    i32.lt_u
0021    select
0022    local.tee 2
0023    call 34
0024    drop
0025    local.get 0
0026    local.get 1
0027    local.get 3
0028    i32.add
0029    local.tee 3
0030    i32.store offset=84
0031    local.get 0
0032    local.get 3
0033    i32.store offset=8
0034    local.get 0
0035    local.get 1
0036    local.get 2
0037    i32.add
0038    i32.store offset=4
0039    local.get 2)
