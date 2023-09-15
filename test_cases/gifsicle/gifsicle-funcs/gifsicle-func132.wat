  (func (;132;) (type 12) (result i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    i32.const 0
0001    i32.const 76
0002    i32.const 1
0003    call 23
0004    local.tee 0
0005    if (result i32)  ;; label = @1
1 ------------------------------------------------------------
0006      local.get 0
0007      i64.const 0
0008      i64.store align=4
0009      local.get 0
0010      i64.const 0
0011      i64.store offset=24 align=4
0012      local.get 0
0013      i32.const 0
0014      i32.store offset=60
0015      local.get 0
0016      i32.const 65535
0017      i32.store16 offset=20
0018      local.get 0
0019      i32.const 0
0020      i32.store offset=72
0021      local.get 0
0022      i64.const 0
0023      i64.store offset=64 align=4
0024      local.get 0
0025      i32.const 6
0026      i32.store offset=40
0027      local.get 0
0028      i64.const 0
0029      i64.store offset=32 align=4
0030      local.get 0
0031      i64.const 0
0032      i64.store offset=44 align=4
0033      local.get 0
0034      i64.const 0
0035      i64.store offset=8 align=4
0036      local.get 0
0037      i32.const 0
0038      i32.store offset=16
0039      local.get 0
0040      i64.const 0
0041      i64.store offset=52 align=4
0042      local.get 0
0043    else
2 ------------------------------------------------------------
0044      i32.const 0
0045    end
3 ------------------------------------------------------------)
