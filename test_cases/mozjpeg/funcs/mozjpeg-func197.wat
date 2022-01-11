  (func (;197;) (type 2) (param i32 i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load
0002    i32.eqz
0003    if  ;; label = @1
1 ------------------------------------------------------------
0004      local.get 0
0005      i32.load
0006      local.set 2
0007      local.get 1
0008      if  ;; label = @2
2 ------------------------------------------------------------
0009        local.get 0
0010        i32.load
0011        local.tee 3
0012        i32.const 4
0013        i32.store
0014        local.get 0
0015        local.get 3
0016        i32.load
0017        call_indirect (type 0)
0018      end
3 ------------------------------------------------------------
0019      local.get 2
0020      local.get 1
0021      i32.store
0022      local.get 2
0023      i32.const 0
0024      i32.store
0025      local.get 2
0026      i64.const 0
0027      i64.store align=4
0028      local.get 2
0029      i32.const 41
0030      i32.store
0031    end
4 ------------------------------------------------------------)
