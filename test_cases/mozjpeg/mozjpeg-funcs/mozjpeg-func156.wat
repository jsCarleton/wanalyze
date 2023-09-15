  (func (;156;) (type 7) (param i32 i32 i32 i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    local.get 1
0001    i32.const 0
0002    local.get 2
0003    select
0004    i32.eqz
0005    if  ;; label = @1
1 ------------------------------------------------------------
0006      local.get 0
0007      i32.load
0008      local.tee 4
0009      i32.const 23
0010      i32.store offset=20
0011      local.get 0
0012      local.get 4
0013      i32.load
0014      call_indirect (type 0)
0015    end
2 ------------------------------------------------------------
0016    block  ;; label = @1
3 ------------------------------------------------------------
0017      local.get 0
0018      i32.load offset=24
0019      local.tee 4
0020      i32.eqz
0021      if  ;; label = @2
4 ------------------------------------------------------------
0022        local.get 0
0023        local.get 0
0024        local.get 3
0025        i32.const 40
0026        local.get 0
0027        i32.load offset=4
0028        i32.load
0029        call_indirect (type 3)
0030        local.tee 4
0031        i32.store offset=24
0032        br 1 (;@1;)
5 ------------------------------------------------------------
0033      end
6 ------------------------------------------------------------
0034      local.get 4
0035      i32.load offset=8
0036      i32.const 72
0037      i32.eq
0038      br_if 0 (;@1;)
7 ------------------------------------------------------------
0039      local.get 0
0040      i32.load
0041      local.tee 3
0042      i32.const 23
0043      i32.store offset=20
0044      local.get 0
0045      local.get 3
0046      i32.load
0047      call_indirect (type 0)
0048      local.get 0
0049      i32.load offset=24
0050      local.set 4
0051    end
8 ------------------------------------------------------------
0052    local.get 4
0053    i32.const 0
0054    i32.store offset=28
0055    local.get 4
0056    local.get 2
0057    i32.store offset=24
0058    local.get 4
0059    local.get 1
0060    i32.store offset=20
0061    local.get 4
0062    i32.const 73
0063    i32.store offset=16
0064    local.get 4
0065    i32.const 74
0066    i32.store offset=12
0067    local.get 4
0068    i32.const 72
0069    i32.store offset=8
0070    block  ;; label = @1
9 ------------------------------------------------------------
0071      local.get 1
0072      i32.load
0073      local.tee 3
0074      if  ;; label = @2
10 ------------------------------------------------------------
0075        local.get 2
0076        i32.load
0077        local.tee 5
0078        br_if 1 (;@1;)
11 ------------------------------------------------------------
0079      end
12 ------------------------------------------------------------
0080      i32.const 4096
0081      local.set 5
0082      local.get 1
0083      i32.const 4096
0084      call 32
0085      local.tee 3
0086      i32.store
0087      local.get 4
0088      local.get 3
0089      i32.store offset=28
0090      local.get 3
0091      i32.eqz
0092      if  ;; label = @2
13 ------------------------------------------------------------
0093        local.get 0
0094        i32.load
0095        i64.const 42949673014
0096        i64.store offset=20 align=4
0097        local.get 0
0098        local.get 0
0099        i32.load
0100        i32.load
0101        call_indirect (type 0)
0102      end
14 ------------------------------------------------------------
0103      local.get 2
0104      i32.const 4096
0105      i32.store
0106      local.get 1
0107      i32.load
0108      local.set 3
0109    end
15 ------------------------------------------------------------
0110    local.get 4
0111    local.get 5
0112    i32.store offset=36
0113    local.get 4
0114    local.get 3
0115    i32.store
0116    local.get 4
0117    local.get 3
0118    i32.store offset=32
0119    local.get 4
0120    local.get 5
0121    i32.store offset=4)
