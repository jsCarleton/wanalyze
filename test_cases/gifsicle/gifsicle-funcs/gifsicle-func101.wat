  (func (;101;) (type 1) (param i32 i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    block (result i32)  ;; label = @1
1 ------------------------------------------------------------
0002      local.get 1
0003      i32.const 31
0004      i32.le_u
0005      if  ;; label = @2
2 ------------------------------------------------------------
0006        local.get 0
0007        i32.load
0008        local.set 2
0009        local.get 0
0010        i32.load offset=4
0011        br 1 (;@1;)
3 ------------------------------------------------------------
0012      end
4 ------------------------------------------------------------
0013      local.get 0
0014      i32.load offset=4
0015      local.set 2
0016      local.get 0
0017      i32.const 0
0018      i32.store offset=4
0019      local.get 0
0020      local.get 2
0021      i32.store
0022      local.get 1
0023      i32.const -32
0024      i32.add
0025      local.set 1
0026      i32.const 0
0027    end
5 ------------------------------------------------------------
0028    local.tee 3
0029    local.get 1
0030    i32.shr_u
0031    i32.store offset=4
0032    local.get 0
0033    local.get 3
0034    i32.const 32
0035    local.get 1
0036    i32.sub
0037    i32.shl
0038    local.get 2
0039    local.get 1
0040    i32.shr_u
0041    i32.or
0042    i32.store)
