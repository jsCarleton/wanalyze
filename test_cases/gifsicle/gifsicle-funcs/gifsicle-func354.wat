  (func (;354;) (type 10)
    (local i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 0
0004    global.set 0
0005    local.get 0
0006    i32.const 34048
0007    i32.load
0008    local.tee 1
0009    i32.store
0010    local.get 0
0011    local.get 1
0012    i32.store offset=4
0013    i32.const 29696
0014    i32.load
0015    i32.const 9389
0016    local.get 0
0017    call 33
0018    local.get 0
0019    i32.const 16
0020    i32.add
0021    global.set 0)
