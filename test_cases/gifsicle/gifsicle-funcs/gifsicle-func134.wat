  (func (;134;) (type 0) (param i32) (result i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    local.get 0
0002    i32.load8_u offset=74
0003    local.tee 1
0004    i32.const -1
0005    i32.add
0006    local.get 1
0007    i32.or
0008    i32.store8 offset=74
0009    local.get 0
0010    i32.load offset=20
0011    local.get 0
0012    i32.load offset=28
0013    i32.gt_u
0014    if  ;; label = @1
1 ------------------------------------------------------------
0015      local.get 0
0016      i32.const 0
0017      i32.const 0
0018      local.get 0
0019      i32.load offset=36
0020      call_indirect (type 3)
0021      drop
0022    end
2 ------------------------------------------------------------
0023    local.get 0
0024    i32.const 0
0025    i32.store offset=28
0026    local.get 0
0027    i64.const 0
0028    i64.store offset=16
0029    local.get 0
0030    i32.load
0031    local.tee 1
0032    i32.const 4
0033    i32.and
0034    if  ;; label = @1
3 ------------------------------------------------------------
0035      local.get 0
0036      local.get 1
0037      i32.const 32
0038      i32.or
0039      i32.store
0040      i32.const -1
0041      return
4 ------------------------------------------------------------
0042    end
5 ------------------------------------------------------------
0043    local.get 0
0044    local.get 0
0045    i32.load offset=44
0046    local.get 0
0047    i32.load offset=48
0048    i32.add
0049    local.tee 2
0050    i32.store offset=8
0051    local.get 0
0052    local.get 2
0053    i32.store offset=4
0054    local.get 1
0055    i32.const 27
0056    i32.shl
0057    i32.const 31
0058    i32.shr_s)
