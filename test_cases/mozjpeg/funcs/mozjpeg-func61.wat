  (func (;61;) (type 2) (param i32 i32)
    (local i32 i64)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 2
0004    global.set 0
0005    local.get 0
0006    block (result i64)  ;; label = @1
1 ------------------------------------------------------------
0007      local.get 1
0008      i32.eqz
0009      if  ;; label = @2
2 ------------------------------------------------------------
0010        i64.const 0
0011        br 1 (;@1;)
3 ------------------------------------------------------------
0012      end
4 ------------------------------------------------------------
0013      local.get 2
0014      local.get 1
0015      i64.extend_i32_u
0016      i64.const 0
0017      i32.const 112
0018      local.get 1
0019      i32.clz
0020      i32.const 31
0021      i32.xor
0022      local.tee 1
0023      i32.sub
0024      call 36
0025      local.get 2
0026      i64.load offset=8
0027      i64.const 281474976710656
0028      i64.xor
0029      local.get 1
0030      i32.const 16383
0031      i32.add
0032      i64.extend_i32_u
0033      i64.const 48
0034      i64.shl
0035      i64.add
0036      local.set 3
0037      local.get 2
0038      i64.load
0039    end
5 ------------------------------------------------------------
0040    i64.store
0041    local.get 0
0042    local.get 3
0043    i64.store offset=8
0044    local.get 2
0045    i32.const 16
0046    i32.add
0047    global.set 0)
