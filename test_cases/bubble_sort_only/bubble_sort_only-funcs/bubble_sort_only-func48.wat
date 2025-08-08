  (func (;48;) (type 20) (param i32 i64 i64 i64 i64)
    (local i64)
0 ------------------------------------------------------------
0000    local.get 0
0001    local.get 4
0002    local.get 1
0003    i64.mul
0004    local.get 2
0005    local.get 3
0006    i64.mul
0007    i64.add
0008    local.get 3
0009    i64.const 32
0010    i64.shr_u
0011    local.tee 2
0012    local.get 1
0013    i64.const 32
0014    i64.shr_u
0015    local.tee 4
0016    i64.mul
0017    i64.add
0018    local.get 3
0019    i64.const 4294967295
0020    i64.and
0021    local.tee 3
0022    local.get 1
0023    i64.const 4294967295
0024    i64.and
0025    local.tee 1
0026    i64.mul
0027    local.tee 5
0028    i64.const 32
0029    i64.shr_u
0030    local.get 3
0031    local.get 4
0032    i64.mul
0033    i64.add
0034    local.tee 3
0035    i64.const 32
0036    i64.shr_u
0037    i64.add
0038    local.get 3
0039    i64.const 4294967295
0040    i64.and
0041    local.get 2
0042    local.get 1
0043    i64.mul
0044    i64.add
0045    local.tee 1
0046    i64.const 32
0047    i64.shr_u
0048    i64.add
0049    i64.store offset=8
0050    local.get 0
0051    local.get 1
0052    i64.const 32
0053    i64.shl
0054    local.get 5
0055    i64.const 4294967295
0056    i64.and
0057    i64.or
0058    i64.store)
