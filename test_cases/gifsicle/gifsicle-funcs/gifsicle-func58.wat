  (func (;58;) (type 34) (param i32 i64 i64)
    (local i64 i64 i64)
0 ------------------------------------------------------------
0000    local.get 0
0001    local.get 2
0002    i64.const 32
0003    i64.shr_u
0004    local.tee 3
0005    local.get 1
0006    i64.const 32
0007    i64.shr_u
0008    local.tee 4
0009    i64.mul
0010    i64.const 0
0011    i64.add
0012    local.get 2
0013    i64.const 4294967295
0014    i64.and
0015    local.tee 2
0016    local.get 1
0017    i64.const 4294967295
0018    i64.and
0019    local.tee 1
0020    i64.mul
0021    local.tee 5
0022    i64.const 32
0023    i64.shr_u
0024    local.get 2
0025    local.get 4
0026    i64.mul
0027    i64.add
0028    local.tee 2
0029    i64.const 32
0030    i64.shr_u
0031    i64.add
0032    local.get 1
0033    local.get 3
0034    i64.mul
0035    local.get 2
0036    i64.const 4294967295
0037    i64.and
0038    i64.add
0039    local.tee 1
0040    i64.const 32
0041    i64.shr_u
0042    i64.add
0043    i64.store offset=8
0044    local.get 0
0045    local.get 5
0046    i64.const 4294967295
0047    i64.and
0048    local.get 1
0049    i64.const 32
0050    i64.shl
0051    i64.or
0052    i64.store)
