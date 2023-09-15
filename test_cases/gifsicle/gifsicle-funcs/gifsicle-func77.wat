  (func (;77;) (type 44) (param i32 i32) (result f64)
    (local i32 f64)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 2
0004    global.set 0
0005    local.get 2
0006    local.get 0
0007    local.get 1
0008    call 278
0009    local.get 2
0010    i64.load
0011    local.get 2
0012    i64.load offset=8
0013    call 109
0014    local.set 3
0015    local.get 2
0016    i32.const 16
0017    i32.add
0018    global.set 0
0019    local.get 3)
