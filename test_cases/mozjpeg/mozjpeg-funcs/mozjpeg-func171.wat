  (func (;171;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load offset=328
0002    local.set 4
0003    local.get 0
0004    i32.load offset=364
0005    local.tee 2
0006    local.get 0
0007    i32.load offset=24
0008    local.tee 3
0009    i32.load
0010    i32.store offset=16
0011    local.get 2
0012    local.get 3
0013    i32.load offset=4
0014    i32.store offset=20
0015    block  ;; label = @1
1 ------------------------------------------------------------
0016      local.get 0
0017      i32.load offset=200
0018      i32.eqz
0019      br_if 0 (;@1;)
2 ------------------------------------------------------------
0020      local.get 2
0021      i32.load offset=68
0022      br_if 0 (;@1;)
3 ------------------------------------------------------------
0023      local.get 2
0024      local.get 2
0025      i32.load offset=72
0026      call 69
0027    end
4 ------------------------------------------------------------
0028    local.get 0
0029    i32.load offset=272
0030    i32.const 1
0031    i32.ge_s
0032    if  ;; label = @1
5 ------------------------------------------------------------
0033      i32.const 0
0034      local.set 3
0035      loop  ;; label = @2
6 ------------------------------------------------------------
0036        local.get 2
0037        local.get 1
0038        local.get 3
0039        i32.const 2
0040        i32.shl
0041        i32.add
0042        i32.load
0043        i32.load16_s
0044        local.get 4
0045        i32.shr_s
0046        i32.const 1
0047        call 30
0048        local.get 3
0049        i32.const 1
0050        i32.add
0051        local.tee 3
0052        local.get 0
0053        i32.load offset=272
0054        i32.lt_s
0055        br_if 0 (;@2;)
7 ------------------------------------------------------------
0056      end
8 ------------------------------------------------------------
0057    end
9 ------------------------------------------------------------
0058    local.get 0
0059    i32.load offset=24
0060    local.tee 1
0061    local.get 2
0062    i32.load offset=16
0063    i32.store
0064    local.get 1
0065    local.get 2
0066    i32.load offset=20
0067    i32.store offset=4
0068    local.get 0
0069    i32.load offset=200
0070    local.tee 1
0071    if  ;; label = @1
10 ------------------------------------------------------------
0072      local.get 2
0073      local.get 2
0074      i32.load offset=68
0075      local.tee 0
0076      if (result i32)  ;; label = @2
11 ------------------------------------------------------------
0077        local.get 0
0078      else
12 ------------------------------------------------------------
0079        local.get 2
0080        local.get 1
0081        i32.store offset=68
0082        local.get 2
0083        local.get 2
0084        i32.load offset=72
0085        i32.const 1
0086        i32.add
0087        i32.const 7
0088        i32.and
0089        i32.store offset=72
0090        local.get 1
0091      end
13 ------------------------------------------------------------
0092      i32.const -1
0093      i32.add
0094      i32.store offset=68
0095    end
14 ------------------------------------------------------------
0096    i32.const 1)
