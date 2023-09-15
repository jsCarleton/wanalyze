  (func (;20;) (type 4) (param i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    block  ;; label = @1
1 ------------------------------------------------------------
0001      local.get 0
0002      i32.eqz
0003      br_if 0 (;@1;)
2 ------------------------------------------------------------
0004      local.get 0
0005      i32.load offset=76
0006      drop
0007      local.get 0
0008      i32.load offset=20
0009      local.get 0
0010      i32.load offset=28
0011      i32.ne
0012      if  ;; label = @2
3 ------------------------------------------------------------
0013        local.get 0
0014        i32.const 0
0015        i32.const 0
0016        local.get 0
0017        i32.load offset=36
0018        call_indirect (type 0)
0019        drop
0020      end
4 ------------------------------------------------------------
0021      local.get 0
0022      i32.load offset=4
0023      local.tee 1
0024      local.get 0
0025      i32.load offset=8
0026      local.tee 2
0027      i32.eq
0028      br_if 0 (;@1;)
5 ------------------------------------------------------------
0029      local.get 0
0030      local.get 1
0031      local.get 2
0032      i32.sub
0033      i64.extend_i32_s
0034      i32.const 1
0035      local.get 0
0036      i32.load offset=40
0037      call_indirect (type 7)
0038      drop
0039    end
6 ------------------------------------------------------------)
