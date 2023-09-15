  (func (;162;) (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 48
0002    i32.sub
0003    local.tee 4
0004    global.set 0
0005    local.get 0
0006    if (result i32)  ;; label = @1
1 ------------------------------------------------------------
0007      local.get 4
0008      i32.const 10
0009      i32.store offset=40
0010      local.get 4
0011      i32.const 11
0012      i32.store offset=36
0013      local.get 4
0014      i32.const 12
0015      i32.store offset=32
0016      local.get 4
0017      i32.const 0
0018      i32.store offset=24
0019      local.get 4
0020      i32.const 0
0021      i32.store offset=16
0022      local.get 4
0023      local.get 0
0024      i32.store offset=8
0025      local.get 4
0026      i32.const 8
0027      i32.add
0028      local.get 1
0029      local.get 2
0030      local.get 3
0031      call 246
0032    else
2 ------------------------------------------------------------
0033      i32.const 0
0034    end
3 ------------------------------------------------------------
0035    local.set 0
0036    local.get 4
0037    i32.const 48
0038    i32.add
0039    global.set 0
0040    local.get 0)
