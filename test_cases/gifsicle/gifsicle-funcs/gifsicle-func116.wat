  (func (;116;) (type 6) (param i32 i32 i32 i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 4
0004    global.set 0
0005    local.get 4
0006    i32.const 34032
0007    i32.load
0008    local.tee 5
0009    local.get 1
0010    i32.const 1
0011    i32.shl
0012    i32.add
0013    i32.load16_u
0014    i32.store16 offset=8
0015    local.get 4
0016    local.get 5
0017    local.get 2
0018    i32.const 1
0019    i32.shl
0020    i32.add
0021    i32.load16_u
0022    i32.store16 offset=10
0023    local.get 4
0024    local.get 5
0025    local.get 3
0026    i32.const 1
0027    i32.shl
0028    i32.add
0029    i32.load16_u
0030    i32.store16 offset=12
0031    local.get 0
0032    i32.load offset=28
0033    local.tee 1
0034    if  ;; label = @1
1 ------------------------------------------------------------
0035      local.get 4
0036      i32.const 8
0037      i32.add
0038      local.get 1
0039      call_indirect (type 4)
0040    end
2 ------------------------------------------------------------
0041    block  ;; label = @1
3 ------------------------------------------------------------
0042      local.get 0
0043      i32.load offset=16
0044      local.tee 1
0045      local.get 0
0046      i32.load offset=20
0047      i32.ne
0048      if  ;; label = @2
4 ------------------------------------------------------------
0049        local.get 0
0050        i32.load offset=12
0051        local.set 3
0052        br 1 (;@1;)
5 ------------------------------------------------------------
0053      end
6 ------------------------------------------------------------
0054      local.get 0
0055      local.get 1
0056      i32.const 1
0057      i32.shl
0058      local.tee 1
0059      i32.store offset=20
0060      local.get 0
0061      local.get 0
0062      i32.load offset=12
0063      i32.const 6
0064      local.get 1
0065      call 23
0066      local.tee 3
0067      i32.store offset=12
0068      local.get 0
0069      i32.load offset=16
0070      local.set 1
0071    end
7 ------------------------------------------------------------
0072    local.get 3
0073    local.get 1
0074    i32.const 6
0075    i32.mul
0076    i32.add
0077    local.tee 1
0078    local.get 4
0079    i32.load offset=8
0080    i32.store align=2
0081    local.get 1
0082    local.get 4
0083    i32.load16_u offset=12
0084    i32.store16 offset=4
0085    local.get 0
0086    local.get 0
0087    i32.load offset=16
0088    i32.const 1
0089    i32.add
0090    i32.store offset=16
0091    local.get 0
0092    i32.load
0093    local.tee 1
0094    if  ;; label = @1
8 ------------------------------------------------------------
0095      local.get 1
0096      call 22
0097      local.get 0
0098      i32.load offset=32
0099      call 22
0100      local.get 0
0101      i32.const 0
0102      i32.store offset=32
0103      local.get 0
0104      i32.const 0
0105      i32.store
0106    end
9 ------------------------------------------------------------
0107    local.get 4
0108    i32.const 16
0109    i32.add
0110    global.set 0)
