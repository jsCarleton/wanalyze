  (func (;323;) (type 13) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const -64
0002    i32.add
0003    local.tee 6
0004    global.set 0
0005    local.get 6
0006    i32.const 48
0007    i32.add
0008    local.get 1
0009    i32.const 4
0010    i32.add
0011    local.get 1
0012    i32.load
0013    call 314
0014    local.get 6
0015    i32.const 4
0016    i32.add
0017    local.get 5
0018    i32.const 44
0019    call 34
0020    drop
0021    local.get 6
0022    i32.const 48
0023    i32.add
0024    local.get 2
0025    local.get 3
0026    local.get 4
0027    local.get 6
0028    i32.const 4
0029    i32.add
0030    local.get 0
0031    call_indirect (type 9)
0032    local.set 0
0033    local.get 6
0034    i32.const 48
0035    i32.add
0036    call 77
0037    local.get 6
0038    i32.const -64
0039    i32.sub
0040    global.set 0
0041    local.get 0)
