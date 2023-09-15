  (func (;99;) (type 1) (param i32 i32)
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
0007        i32.load offset=4
0008        local.set 2
0009        local.get 0
0010        i32.load
0011        br 1 (;@1;)
3 ------------------------------------------------------------
0012      end
4 ------------------------------------------------------------
0013      local.get 0
0014      local.get 0
0015      i32.load
0016      local.tee 2
0017      i32.store offset=4
0018      local.get 0
0019      i32.const 0
0020      i32.store
0021      local.get 1
0022      i32.const -32
0023      i32.add
0024      local.set 1
0025      i32.const 0
0026    end
5 ------------------------------------------------------------
0027    local.tee 3
0028    local.get 1
0029    i32.shl
0030    i32.store
0031    local.get 0
0032    local.get 2
0033    local.get 1
0034    i32.shl
0035    local.get 3
0036    i32.const 32
0037    local.get 1
0038    i32.sub
0039    i32.shr_u
0040    i32.or
0041    i32.store offset=4)
