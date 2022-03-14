  (func (;367;) (type 0) (param i32)
    (local i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 224
0002    i32.sub
0003    local.tee 1
0004    global.set 0
0005    local.get 0
0006    local.get 1
0007    i32.const 16
0008    i32.add
0009    local.get 0
0010    i32.load
0011    i32.load offset=12
0012    call_indirect (type 2)
0013    local.get 1
0014    local.get 1
0015    i32.const 16
0016    i32.add
0017    i32.store
0018    i32.const 154560
0019    i32.load
0020    i32.const 142860
0021    local.get 1
0022    call 75
0023    local.get 1
0024    i32.const 224
0025    i32.add
0026    global.set 0)
