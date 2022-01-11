  (func (;354;) (type 13) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    i32.const 1
0001    local.set 6
0002    local.get 0
0003    i32.load
0004    local.set 7
0005    local.get 0
0006    local.get 1
0007    i32.const 1
0008    i32.ne
0009    if (result i32)  ;; label = @1
1 ------------------------------------------------------------
0010      local.get 0
0011      i32.load
0012      local.tee 6
0013      local.get 1
0014      i32.store
0015      local.get 6
0016      i32.const 14
0017      i32.store
0018      local.get 0
0019      local.get 0
0020      i32.load
0021      i32.load
0022      call_indirect (type 0)
0023      local.get 1
0024    else
2 ------------------------------------------------------------
0025      i32.const 1
0026    end
3 ------------------------------------------------------------
0027    i32.const 128
0028    call 52
0029    local.tee 0
0030    i32.const 0
0031    i32.store
0032    local.get 0
0033    local.get 2
0034    i32.store
0035    local.get 0
0036    local.get 5
0037    i32.store
0038    local.get 0
0039    local.get 3
0040    i32.store
0041    local.get 0
0042    local.get 4
0043    i32.store
0044    local.get 0
0045    i32.const 0
0046    i32.store
0047    local.get 0
0048    local.get 7
0049    i32.load
0050    i32.store
0051    local.get 7
0052    local.get 0
0053    i32.store
0054    local.get 0)
