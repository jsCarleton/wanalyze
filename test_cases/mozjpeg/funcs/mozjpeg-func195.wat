  (func (;195;) (type 2) (param i32 i32)
    (local i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 3
0004    global.set 0
0005    local.get 0
0006    i32.load
0007    local.tee 2
0008    i32.const 101
0009    i32.ne
0010    if  ;; label = @1
1 ------------------------------------------------------------
0011      local.get 0
0012      i32.load
0013      local.tee 4
0014      local.get 2
0015      i32.store
0016      local.get 4
0017      i32.const 20
0018      i32.store
0019      local.get 0
0020      local.get 0
0021      i32.load
0022      i32.load
0023      call_indirect (type 0)
0024    end
2 ------------------------------------------------------------
0025    local.get 0
0026    i32.load
0027    local.get 0
0028    i32.load
0029    i32.ge_u
0030    if  ;; label = @1
3 ------------------------------------------------------------
0031      local.get 0
0032      i32.load
0033      local.tee 2
0034      i32.const 123
0035      i32.store
0036      local.get 0
0037      i32.const -1
0038      local.get 2
0039      i32.load
0040      call_indirect (type 2)
0041    end
4 ------------------------------------------------------------
0042    local.get 0
0043    i32.load
0044    local.tee 2
0045    if  ;; label = @1
5 ------------------------------------------------------------
0046      local.get 2
0047      local.get 0
0048      i32.load
0049      i32.store
0050      local.get 2
0051      local.get 0
0052      i32.load
0053      i32.store
0054      local.get 0
0055      local.get 2
0056      i32.load
0057      call_indirect (type 0)
0058    end
6 ------------------------------------------------------------
0059    local.get 0
0060    i32.load
0061    local.tee 2
0062    i32.load
0063    if  ;; label = @1
7 ------------------------------------------------------------
0064      local.get 0
0065      local.get 2
0066      i32.load
0067      call_indirect (type 0)
0068    end
8 ------------------------------------------------------------
0069    local.get 0
0070    i32.load
0071    local.set 2
0072    local.get 0
0073    i32.load
0074    local.set 4
0075    local.get 3
0076    i32.const 0
0077    i32.store
0078    local.get 0
0079    local.get 1
0080    local.get 3
0081    i32.const 12
0082    i32.add
0083    local.get 4
0084    local.get 2
0085    i32.sub
0086    local.tee 1
0087    i32.const 1
0088    local.get 1
0089    i32.const 1
0090    i32.lt_u
0091    select
0092    local.get 0
0093    i32.load
0094    i32.load
0095    call_indirect (type 7)
0096    local.get 0
0097    local.get 3
0098    i32.load
0099    local.get 0
0100    i32.load
0101    i32.add
0102    i32.store
0103    local.get 3
0104    i32.const 16
0105    i32.add
0106    global.set 0)
