  (func (;83;) (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    block  ;; label = @1
1 ------------------------------------------------------------
0001      local.get 0
0002      i32.load
0003      local.tee 1
0004      i32.const 1
0005      i32.eq
0006      if  ;; label = @2
2 ------------------------------------------------------------
0007        local.get 0
0008        local.get 0
0009        i32.load
0010        local.tee 1
0011        i32.load
0012        i32.store
0013        local.get 0
0014        local.get 1
0015        i32.load
0016        local.tee 2
0017        i32.store
0018        local.get 1
0019        i32.const 1
0020        i32.store
0021        local.get 1
0022        i64.const 34359738369
0023        i64.store align=4
0024        local.get 1
0025        i64.const 4294967297
0026        i64.store align=4
0027        local.get 1
0028        local.get 2
0029        local.get 1
0030        i32.load
0031        local.tee 1
0032        i32.rem_u
0033        local.tee 2
0034        local.get 1
0035        local.get 2
0036        select
0037        i32.store
0038        local.get 0
0039        i64.const 1
0040        i64.store
0041        br 1 (;@1;)
3 ------------------------------------------------------------
0042      end
4 ------------------------------------------------------------
0043      local.get 1
0044      i32.const -1
0045      i32.add
0046      i32.const 4
0047      i32.ge_u
0048      if  ;; label = @2
5 ------------------------------------------------------------
0049        local.get 0
0050        i32.load
0051        local.tee 2
0052        local.get 1
0053        i32.store
0054        local.get 2
0055        i32.const 26
0056        i32.store
0057        local.get 0
0058        i32.load
0059        i32.const 4
0060        i32.store
0061        local.get 0
0062        local.get 0
0063        i32.load
0064        i32.load
0065        call_indirect (type 0)
0066      end
6 ------------------------------------------------------------
0067      local.get 0
0068      local.get 0
0069      i32.load
0070      local.get 0
0071      i32.load
0072      i32.const 3
0073      i32.shl
0074      call 53
0075      i32.store
0076      local.get 0
0077      i32.load
0078      local.get 0
0079      i32.load
0080      i32.const 3
0081      i32.shl
0082      call 53
0083      local.set 1
0084      local.get 0
0085      i32.const 0
0086      i32.store
0087      local.get 0
0088      local.get 1
0089      i32.store
0090      local.get 0
0091      i32.load
0092      i32.const 1
0093      i32.lt_s
0094      br_if 0 (;@1;)
7 ------------------------------------------------------------
0095      loop  ;; label = @2
8 ------------------------------------------------------------
0096        local.get 0
0097        local.get 3
0098        i32.const 2
0099        i32.shl
0100        i32.add
0101        i32.load
0102        local.tee 1
0103        local.get 1
0104        i32.load
0105        local.tee 4
0106        i32.store
0107        local.get 1
0108        local.get 1
0109        i32.load
0110        local.tee 5
0111        i32.store
0112        local.get 1
0113        local.get 4
0114        i32.const 3
0115        i32.shl
0116        i32.store
0117        local.get 1
0118        local.get 4
0119        local.get 5
0120        i32.mul
0121        local.tee 2
0122        i32.store
0123        local.get 1
0124        local.get 1
0125        i32.load
0126        local.get 4
0127        i32.rem_u
0128        local.tee 7
0129        local.get 4
0130        local.get 7
0131        select
0132        i32.store
0133        local.get 1
0134        local.get 1
0135        i32.load
0136        local.get 5
0137        i32.rem_u
0138        local.tee 1
0139        local.get 5
0140        local.get 1
0141        select
0142        i32.store
0143        local.get 2
0144        local.get 6
0145        i32.add
0146        i32.const 11
0147        i32.ge_s
0148        if  ;; label = @3
9 ------------------------------------------------------------
0149          local.get 0
0150          i32.load
0151          local.tee 1
0152          i32.const 13
0153          i32.store
0154          local.get 0
0155          local.get 1
0156          i32.load
0157          call_indirect (type 0)
0158        end
10 ------------------------------------------------------------
0159        local.get 2
0160        i32.const 1
0161        i32.ge_s
0162        if  ;; label = @3
11 ------------------------------------------------------------
0163          loop  ;; label = @4
12 ------------------------------------------------------------
0164            local.get 0
0165            local.get 0
0166            i32.load
0167            local.tee 1
0168            i32.const 1
0169            i32.add
0170            i32.store
0171            local.get 0
0172            local.get 1
0173            i32.const 2
0174            i32.shl
0175            i32.add
0176            local.get 3
0177            i32.store
0178            local.get 2
0179            i32.const 1
0180            i32.gt_s
0181            local.set 1
0182            local.get 2
0183            i32.const -1
0184            i32.add
0185            local.set 2
0186            local.get 1
0187            br_if 0 (;@4;)
13 ------------------------------------------------------------
0188          end
14 ------------------------------------------------------------
0189        end
15 ------------------------------------------------------------
0190        local.get 3
0191        i32.const 1
0192        i32.add
0193        local.tee 3
0194        local.get 0
0195        i32.load
0196        i32.ge_s
0197        br_if 1 (;@1;)
16 ------------------------------------------------------------
0198        local.get 0
0199        i32.load
0200        local.set 6
0201        br 0 (;@2;)
17 ------------------------------------------------------------
0202        unreachable
18 ------------------------------------------------------------
0203      end
19 ------------------------------------------------------------
0204      unreachable
20 ------------------------------------------------------------
0205    end
21 ------------------------------------------------------------
0206    local.get 0
0207    i32.load
0208    local.tee 1
0209    i32.const 1
0210    i32.ge_s
0211    if  ;; label = @1
22 ------------------------------------------------------------
0212      local.get 0
0213      local.get 0
0214      i32.load
0215      local.get 1
0216      i32.mul
0217      local.tee 0
0218      i32.const 65535
0219      local.get 0
0220      i32.const 65535
0221      i32.lt_s
0222      select
0223      i32.store
0224    end
23 ------------------------------------------------------------)
