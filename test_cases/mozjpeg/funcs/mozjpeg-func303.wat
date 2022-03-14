  (func (;303;) (type 8)
    (local i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 0
0004    global.set 0
0005    local.get 0
0006    i32.const 153049
0007    i32.store offset=12
0008    i32.const 156580
0009    local.get 0
0010    i32.load offset=12
0011    i32.const 2
0012    i32.const -32768
0013    i32.const 32767
0014    call 1
0015    local.get 0
0016    i32.const 16
0017    i32.add
0018    global.set 0)
