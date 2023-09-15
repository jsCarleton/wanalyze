  (func (;306;) (type 12) (result i32)
    (local i32 i32 i32)
0 ------------------------------------------------------------
0000    i32.const 34288
0001    i32.load
0002    local.tee 1
0003    i32.const 2
0004    i32.shl
0005    i32.const 34308
0006    i32.add
0007    local.tee 0
0008    local.get 0
0009    i32.load
0010    i32.const 36512
0011    i32.load
0012    local.tee 0
0013    i32.const 2
0014    i32.shl
0015    i32.const 34308
0016    i32.add
0017    i32.load
0018    i32.add
0019    local.tee 2
0020    i32.store
0021    i32.const 36512
0022    i32.const 0
0023    local.get 0
0024    i32.const 1
0025    i32.add
0026    local.tee 0
0027    local.get 0
0028    i32.const 31
0029    i32.eq
0030    select
0031    i32.store
0032    i32.const 34288
0033    i32.const 0
0034    local.get 1
0035    i32.const 1
0036    i32.add
0037    local.tee 1
0038    local.get 1
0039    i32.const 31
0040    i32.eq
0041    select
0042    i32.store
0043    local.get 2
0044    i32.const 1
0045    i32.shr_u)
