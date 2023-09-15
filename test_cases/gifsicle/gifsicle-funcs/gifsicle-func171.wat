  (func (;171;) (type 2) (param i32 i32) (result i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    block  ;; label = @1
1 ------------------------------------------------------------
0001      local.get 0
0002      i32.load offset=4
0003      local.tee 3
0004      local.get 0
0005      i32.load offset=8
0006      local.tee 2
0007      i32.lt_s
0008      if  ;; label = @2
2 ------------------------------------------------------------
0009        local.get 0
0010        i32.load
0011        local.set 2
0012        br 1 (;@1;)
3 ------------------------------------------------------------
0013      end
4 ------------------------------------------------------------
0014      local.get 0
0015      local.get 2
0016      i32.const 1
0017      i32.shl
0018      i32.const 2
0019      local.get 2
0020      select
0021      local.tee 3
0022      i32.store offset=8
0023      local.get 0
0024      local.get 0
0025      i32.load
0026      i32.const 4
0027      local.get 3
0028      call 23
0029      local.tee 2
0030      i32.store
0031      local.get 2
0032      i32.eqz
0033      if  ;; label = @2
5 ------------------------------------------------------------
0034        i32.const 0
0035        return
6 ------------------------------------------------------------
0036      end
7 ------------------------------------------------------------
0037      local.get 0
0038      i32.load offset=4
0039      local.set 3
0040    end
8 ------------------------------------------------------------
0041    local.get 2
0042    local.get 3
0043    i32.const 2
0044    i32.shl
0045    i32.add
0046    local.get 1
0047    i32.store
0048    local.get 0
0049    local.get 3
0050    i32.const 1
0051    i32.add
0052    i32.store offset=4
0053    local.get 1
0054    local.get 1
0055    i32.load offset=72
0056    i32.const 1
0057    i32.add
0058    i32.store offset=72
0059    i32.const 1)
