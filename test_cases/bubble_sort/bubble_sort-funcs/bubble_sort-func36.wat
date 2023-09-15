  (func (;36;) (type 1) (param i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    local.get 0
0002    i32.load offset=72
0003    local.tee 1
0004    i32.const -1
0005    i32.add
0006    local.get 1
0007    i32.or
0008    i32.store offset=72
0009    block  ;; label = @1
1 ------------------------------------------------------------
0010      local.get 0
0011      i32.load
0012      local.tee 1
0013      i32.const 8
0014      i32.and
0015      i32.eqz
0016      br_if 0 (;@1;)
2 ------------------------------------------------------------
0017      local.get 0
0018      local.get 1
0019      i32.const 32
0020      i32.or
0021      i32.store
0022      i32.const -1
0023      return
3 ------------------------------------------------------------
0024    end
4 ------------------------------------------------------------
0025    local.get 0
0026    i64.const 0
0027    i64.store offset=4 align=4
0028    local.get 0
0029    local.get 0
0030    i32.load offset=44
0031    local.tee 1
0032    i32.store offset=28
0033    local.get 0
0034    local.get 1
0035    i32.store offset=20
0036    local.get 0
0037    local.get 1
0038    local.get 0
0039    i32.load offset=48
0040    i32.add
0041    i32.store offset=16
0042    i32.const 0)
