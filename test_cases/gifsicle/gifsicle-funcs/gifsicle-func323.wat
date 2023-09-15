  (func (;323;) (type 1) (param i32 i32)
    (local i32)
0 ------------------------------------------------------------
0000    block  ;; label = @1
1 ------------------------------------------------------------
0001      local.get 1
0002      i32.load offset=8
0003      local.get 1
0004      i32.load offset=12
0005      local.tee 2
0006      i32.lt_u
0007      if  ;; label = @2
2 ------------------------------------------------------------
0008        local.get 1
0009        i32.load offset=4
0010        local.set 2
0011        br 1 (;@1;)
3 ------------------------------------------------------------
0012      end
4 ------------------------------------------------------------
0013      local.get 1
0014      local.get 2
0015      i32.const 1
0016      i32.shl
0017      i32.const 1024
0018      local.get 2
0019      select
0020      local.tee 2
0021      i32.store offset=12
0022      local.get 1
0023      local.get 1
0024      i32.load offset=4
0025      i32.const 1
0026      local.get 2
0027      call 23
0028      local.tee 2
0029      i32.store offset=4
0030    end
5 ------------------------------------------------------------
0031    local.get 2
0032    if  ;; label = @1
6 ------------------------------------------------------------
0033      local.get 2
0034      local.get 1
0035      i32.load offset=8
0036      i32.add
0037      local.get 0
0038      i32.store8
0039      local.get 1
0040      local.get 1
0041      i32.load offset=8
0042      i32.const 1
0043      i32.add
0044      i32.store offset=8
0045    end
7 ------------------------------------------------------------)
