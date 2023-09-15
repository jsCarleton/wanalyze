  (func (;135;) (type 0) (param i32) (result i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    block  ;; label = @1
1 ------------------------------------------------------------
0001      local.get 0
0002      i32.load offset=20
0003      local.get 0
0004      i32.load offset=28
0005      i32.le_u
0006      br_if 0 (;@1;)
2 ------------------------------------------------------------
0007      local.get 0
0008      i32.const 0
0009      i32.const 0
0010      local.get 0
0011      i32.load offset=36
0012      call_indirect (type 3)
0013      drop
0014      local.get 0
0015      i32.load offset=20
0016      br_if 0 (;@1;)
3 ------------------------------------------------------------
0017      i32.const -1
0018      return
4 ------------------------------------------------------------
0019    end
5 ------------------------------------------------------------
0020    local.get 0
0021    i32.load offset=4
0022    local.tee 1
0023    local.get 0
0024    i32.load offset=8
0025    local.tee 2
0026    i32.lt_u
0027    if  ;; label = @1
6 ------------------------------------------------------------
0028      local.get 0
0029      local.get 1
0030      local.get 2
0031      i32.sub
0032      i64.extend_i32_s
0033      i32.const 1
0034      local.get 0
0035      i32.load offset=40
0036      call_indirect (type 15)
0037      drop
0038    end
7 ------------------------------------------------------------
0039    local.get 0
0040    i32.const 0
0041    i32.store offset=28
0042    local.get 0
0043    i64.const 0
0044    i64.store offset=16
0045    local.get 0
0046    i64.const 0
0047    i64.store offset=4 align=4
0048    i32.const 0)
