  (func (;24;) (type 4) (param i32)
    (local i32 i32 i64 i64)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 1
0004    global.set 0
0005    i32.const 0
0006    i64.const 1
0007    local.get 1
0008    i32.const 8
0009    i32.add
0010    call 4
0011    local.tee 2
0012    if (result i32)  ;; label = @1
1 ------------------------------------------------------------
0013      i32.const 13720
0014      local.get 2
0015      i32.store
0016      i32.const -1
0017    else
2 ------------------------------------------------------------
0018      i32.const 0
0019    end
3 ------------------------------------------------------------
0020    if (result i32)  ;; label = @1
4 ------------------------------------------------------------
0021      i32.const -1
0022    else
5 ------------------------------------------------------------
0023      local.get 1
0024      local.get 1
0025      i64.load offset=8
0026      local.tee 3
0027      i64.const 1000000000
0028      i64.div_u
0029      local.tee 4
0030      i64.store32
0031      local.get 1
0032      local.get 3
0033      local.get 4
0034      i64.const 1000000000
0035      i64.mul
0036      i64.sub
0037      i64.store32 offset=4
0038      local.get 0
0039      local.get 1
0040      i64.load
0041      i64.store align=4
0042      i32.const 0
0043    end
6 ------------------------------------------------------------
0044    drop
0045    local.get 1
0046    i32.const 16
0047    i32.add
0048    global.set 0)
