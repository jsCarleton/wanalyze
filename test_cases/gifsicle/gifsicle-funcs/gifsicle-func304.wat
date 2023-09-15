  (func (;304;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 32
0002    i32.sub
0003    local.tee 3
0004    global.set 0
0005    local.get 3
0006    local.get 1
0007    i32.store offset=16
0008    local.get 3
0009    local.get 2
0010    local.get 0
0011    i32.load offset=48
0012    local.tee 4
0013    i32.const 0
0014    i32.ne
0015    i32.sub
0016    i32.store offset=20
0017    local.get 0
0018    i32.load offset=44
0019    local.set 5
0020    local.get 3
0021    local.get 4
0022    i32.store offset=28
0023    local.get 3
0024    local.get 5
0025    i32.store offset=24
0026    block  ;; label = @1
1 ------------------------------------------------------------
0027      block  ;; label = @2
2 ------------------------------------------------------------
0028        block (result i32)  ;; label = @3
3 ------------------------------------------------------------
0029          local.get 0
0030          i32.load offset=60
0031          local.get 3
0032          i32.const 16
0033          i32.add
0034          i32.const 2
0035          local.get 3
0036          i32.const 12
0037          i32.add
0038          call 7
0039          call 105
0040          if  ;; label = @4
4 ------------------------------------------------------------
0041            local.get 3
0042            i32.const -1
0043            i32.store offset=12
0044            i32.const -1
0045            br 1 (;@3;)
5 ------------------------------------------------------------
0046          end
6 ------------------------------------------------------------
0047          local.get 3
0048          i32.load offset=12
0049          local.tee 4
0050          i32.const 0
0051          i32.gt_s
0052          br_if 1 (;@2;)
7 ------------------------------------------------------------
0053          local.get 4
0054        end
8 ------------------------------------------------------------
0055        local.set 2
0056        local.get 0
0057        local.get 0
0058        i32.load
0059        local.get 2
0060        i32.const 48
0061        i32.and
0062        i32.const 16
0063        i32.xor
0064        i32.or
0065        i32.store
0066        br 1 (;@1;)
9 ------------------------------------------------------------
0067      end
10 ------------------------------------------------------------
0068      local.get 4
0069      local.get 3
0070      i32.load offset=20
0071      local.tee 6
0072      i32.le_u
0073      if  ;; label = @2
11 ------------------------------------------------------------
0074        local.get 4
0075        local.set 2
0076        br 1 (;@1;)
12 ------------------------------------------------------------
0077      end
13 ------------------------------------------------------------
0078      local.get 0
0079      local.get 0
0080      i32.load offset=44
0081      local.tee 5
0082      i32.store offset=4
0083      local.get 0
0084      local.get 5
0085      local.get 4
0086      local.get 6
0087      i32.sub
0088      i32.add
0089      i32.store offset=8
0090      local.get 0
0091      i32.load offset=48
0092      i32.eqz
0093      br_if 0 (;@1;)
14 ------------------------------------------------------------
0094      local.get 0
0095      local.get 5
0096      i32.const 1
0097      i32.add
0098      i32.store offset=4
0099      local.get 1
0100      local.get 2
0101      i32.add
0102      i32.const -1
0103      i32.add
0104      local.get 5
0105      i32.load8_u
0106      i32.store8
0107    end
15 ------------------------------------------------------------
0108    local.get 3
0109    i32.const 32
0110    i32.add
0111    global.set 0
0112    local.get 2)
