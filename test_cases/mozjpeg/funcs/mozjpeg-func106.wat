  (func (;106;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load offset=4
0002    local.set 3
0003    local.get 2
0004    i32.const 1000000001
0005    i32.ge_u
0006    if  ;; label = @1
1 ------------------------------------------------------------
0007      local.get 0
0008      i32.load
0009      i64.const 34359738422
0010      i64.store offset=20 align=4
0011      local.get 0
0012      local.get 0
0013      i32.load
0014      i32.load
0015      call_indirect (type 0)
0016    end
2 ------------------------------------------------------------
0017    local.get 2
0018    i32.const 7
0019    i32.add
0020    i32.const -8
0021    i32.and
0022    local.tee 5
0023    i32.const 19
0024    i32.add
0025    local.tee 4
0026    i32.const 1000000001
0027    i32.ge_u
0028    if  ;; label = @1
3 ------------------------------------------------------------
0029      local.get 0
0030      i32.load
0031      i64.const 12884901942
0032      i64.store offset=20 align=4
0033      local.get 0
0034      local.get 0
0035      i32.load
0036      i32.load
0037      call_indirect (type 0)
0038    end
4 ------------------------------------------------------------
0039    local.get 1
0040    i32.const 2
0041    i32.ge_u
0042    if  ;; label = @1
5 ------------------------------------------------------------
0043      local.get 0
0044      i32.load
0045      local.tee 2
0046      local.get 1
0047      i32.store offset=24
0048      local.get 2
0049      i32.const 14
0050      i32.store offset=20
0051      local.get 0
0052      local.get 0
0053      i32.load
0054      i32.load
0055      call_indirect (type 0)
0056    end
6 ------------------------------------------------------------
0057    local.get 4
0058    call 32
0059    local.tee 2
0060    i32.eqz
0061    if  ;; label = @1
7 ------------------------------------------------------------
0062      local.get 0
0063      i32.load
0064      i64.const 17179869238
0065      i64.store offset=20 align=4
0066      local.get 0
0067      local.get 0
0068      i32.load
0069      i32.load
0070      call_indirect (type 0)
0071    end
8 ------------------------------------------------------------
0072    local.get 3
0073    local.get 3
0074    i32.load offset=76
0075    local.get 4
0076    i32.add
0077    i32.store offset=76
0078    local.get 3
0079    local.get 1
0080    i32.const 2
0081    i32.shl
0082    i32.add
0083    local.tee 0
0084    i32.load offset=60
0085    local.set 1
0086    local.get 2
0087    i32.const 0
0088    i32.store offset=8
0089    local.get 2
0090    local.get 5
0091    i32.store offset=4
0092    local.get 2
0093    local.get 1
0094    i32.store
0095    local.get 0
0096    local.get 2
0097    i32.store offset=60
0098    local.get 2
0099    i32.const 12
0100    i32.add
0101    local.tee 0
0102    i32.const -8
0103    i32.and
0104    i32.const 8
0105    i32.add
0106    local.get 0
0107    local.get 0
0108    i32.const 7
0109    i32.and
0110    select)
