  (func (;103;) (type 15) (param i32 i64 i64 i64 i64)
    (local i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 5
0004    global.set 0
0005    local.get 5
0006    local.get 1
0007    local.get 2
0008    local.get 3
0009    local.get 4
0010    i64.const -9223372036854775808
0011    i64.xor
0012    call 38
0013    local.get 0
0014    local.get 5
0015    i64.load
0016    i64.store
0017    local.get 0
0018    local.get 5
0019    i64.load
0020    i64.store
0021    local.get 5
0022    i32.const 16
0023    i32.add
0024    global.set 0)
