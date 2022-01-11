  (func (;279;) (type 3) (param i32 i32 i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 144
0002    i32.sub
0003    local.tee 3
0004    global.set 0
0005    local.get 3
0006    i32.const 0
0007    i32.const 144
0008    call 27
0009    local.tee 3
0010    i32.const -1
0011    i32.store
0012    local.get 3
0013    local.get 0
0014    i32.store
0015    local.get 3
0016    i32.const 111
0017    i32.store
0018    local.get 3
0019    local.get 0
0020    i32.store
0021    local.get 3
0022    local.get 1
0023    local.get 2
0024    call 263
0025    local.set 0
0026    local.get 3
0027    i32.const 144
0028    i32.add
0029    global.set 0
0030    local.get 0)
