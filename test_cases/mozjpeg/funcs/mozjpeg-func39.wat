  (func (;39;) (type 2) (param i32 i32)
    (local i32 i32 i64)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 3
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
0013      local.get 3
0014      local.get 1
0015      local.get 1
0016      i32.const 31
0017      i32.shr_s
0018      local.tee 2
0019      i32.add
0020      local.get 2
0021      i32.xor
0022      local.tee 2
0023      i64.extend_i32_u
0024      i64.const 0
0025      local.get 2
0026      i32.clz
0027      local.tee 2
0028      i32.const 81
0029      i32.add
0030      call 36
0031      local.get 3
0032      i64.load offset=8
0033      i64.const 281474976710656
0034      i64.xor
0035      i32.const 16414
0036      local.get 2
0037      i32.sub
0038      i64.extend_i32_u
0039      i64.const 48
0040      i64.shl
0041      i64.add
0042      local.get 1
0043      i32.const -2147483648
0044      i32.and
0045      i64.extend_i32_u
0046      i64.const 32
0047      i64.shl
0048      i64.or
0049      local.set 4
0050      local.get 3
0051      i64.load
0052    end
5 ------------------------------------------------------------
0053    i64.store
0054    local.get 0
0055    local.get 4
0056    i64.store offset=8
0057    local.get 3
0058    i32.const 16
0059    i32.add
0060    global.set 0)
