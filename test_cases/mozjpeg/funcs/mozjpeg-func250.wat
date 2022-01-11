  (func (;250;) (type 2) (param i32 i32)
    (local i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 32
0002    i32.sub
0003    local.tee 2
0004    global.set 0
0005    local.get 2
0006    i32.const 8
0007    i32.add
0008    local.get 2
0009    i32.const 21
0010    i32.add
0011    local.get 2
0012    i32.const 32
0013    i32.add
0014    local.get 1
0015    call 249
0016    local.get 0
0017    local.get 2
0018    i32.const 21
0019    i32.add
0020    local.get 2
0021    i32.load
0022    call 247
0023    local.get 2
0024    i32.const 32
0025    i32.add
0026    global.set 0)
