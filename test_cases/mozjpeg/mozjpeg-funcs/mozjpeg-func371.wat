  (func (;371;) (type 1) (param i32) (result i32)
    (local i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load offset=24
0002    local.tee 1
0003    i32.load offset=36
0004    i32.const 1
0005    i32.shl
0006    local.tee 3
0007    call 32
0008    local.tee 2
0009    i32.eqz
0010    if  ;; label = @1
1 ------------------------------------------------------------
0011      local.get 0
0012      i32.load
0013      i64.const 42949673014
0014      i64.store offset=20 align=4
0015      local.get 0
0016      local.get 0
0017      i32.load
0018      i32.load
0019      call_indirect (type 0)
0020    end
2 ------------------------------------------------------------
0021    local.get 2
0022    local.get 1
0023    i32.load offset=32
0024    local.get 1
0025    i32.load offset=36
0026    call 34
0027    local.set 0
0028    local.get 1
0029    i32.load offset=28
0030    local.tee 2
0031    if  ;; label = @1
3 ------------------------------------------------------------
0032      local.get 2
0033      call 33
0034    end
4 ------------------------------------------------------------
0035    local.get 1
0036    local.get 0
0037    i32.store offset=28
0038    local.get 1
0039    local.get 0
0040    i32.store offset=32
0041    local.get 1
0042    i32.load offset=36
0043    local.set 2
0044    local.get 1
0045    local.get 3
0046    i32.store offset=36
0047    local.get 1
0048    local.get 2
0049    i32.store offset=4
0050    local.get 1
0051    local.get 0
0052    local.get 2
0053    i32.add
0054    i32.store
0055    i32.const 1)
