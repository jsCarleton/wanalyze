  (func (;318;) (type 1) (param i32 i32)
    (local i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    block  ;; label = @1
1 ------------------------------------------------------------
0001      local.get 0
0002      i32.load offset=12
0003      local.tee 2
0004      i32.eqz
0005      br_if 0 (;@1;)
2 ------------------------------------------------------------
0006      local.get 2
0007      i32.load
0008      local.tee 2
0009      i32.const 1
0010      i32.lt_s
0011      br_if 0 (;@1;)
3 ------------------------------------------------------------
0012      block  ;; label = @2
4 ------------------------------------------------------------
0013        local.get 1
0014        i32.load8_u offset=16
0015        i32.const 1
0016        i32.and
0017        i32.eqz
0018        br_if 0 (;@2;)
5 ------------------------------------------------------------
0019        local.get 0
0020        i32.load offset=4
0021        local.tee 5
0022        i32.const 1
0023        i32.lt_s
0024        br_if 0 (;@2;)
6 ------------------------------------------------------------
0025        local.get 0
0026        i32.load
0027        local.set 6
0028        loop  ;; label = @3
7 ------------------------------------------------------------
0029          local.get 2
0030          local.get 6
0031          local.get 3
0032          i32.const 2
0033          i32.shl
0034          i32.add
0035          i32.load
0036          i32.load16_s offset=20
0037          local.tee 4
0038          i32.const 1
0039          i32.add
0040          local.get 2
0041          local.get 4
0042          i32.gt_s
0043          select
0044          local.set 2
0045          local.get 3
0046          i32.const 1
0047          i32.add
0048          local.tee 3
0049          local.get 5
0050          i32.ne
0051          br_if 0 (;@3;)
8 ------------------------------------------------------------
0052        end
9 ------------------------------------------------------------
0053      end
10 ------------------------------------------------------------
0054      local.get 2
0055      i32.const 256
0056      local.get 2
0057      i32.const 256
0058      i32.lt_s
0059      select
0060      local.set 4
0061      i32.const 2
0062      local.set 2
0063      loop  ;; label = @2
11 ------------------------------------------------------------
0064        local.get 2
0065        local.tee 3
0066        i32.const 1
0067        i32.shl
0068        local.set 2
0069        local.get 3
0070        local.get 4
0071        i32.lt_s
0072        br_if 0 (;@2;)
12 ------------------------------------------------------------
0073      end
13 ------------------------------------------------------------
0074    end
14 ------------------------------------------------------------
0075    local.get 1
0076    local.get 3
0077    i32.store offset=52
0078    local.get 0
0079    call 74
0080    local.get 0
0081    i32.load16_u offset=18
0082    local.tee 2
0083    i32.const 255
0084    i32.and
0085    local.get 1
0086    local.get 1
0087    i32.load offset=88
0088    call_indirect (type 1)
0089    local.get 2
0090    i32.const 8
0091    i32.shr_u
0092    local.get 1
0093    local.get 1
0094    i32.load offset=88
0095    call_indirect (type 1)
0096    local.get 0
0097    i32.load16_u offset=20
0098    local.tee 2
0099    i32.const 255
0100    i32.and
0101    local.get 1
0102    local.get 1
0103    i32.load offset=88
0104    call_indirect (type 1)
0105    local.get 2
0106    i32.const 8
0107    i32.shr_u
0108    local.get 1
0109    local.get 1
0110    i32.load offset=88
0111    call_indirect (type 1)
0112    block  ;; label = @1
15 ------------------------------------------------------------
0113      local.get 1
0114      i32.load offset=52
0115      local.tee 4
0116      i32.const 1
0117      i32.lt_s
0118      if  ;; label = @2
16 ------------------------------------------------------------
0119        i32.const 112
0120        local.set 3
0121        br 1 (;@1;)
17 ------------------------------------------------------------
0122      end
18 ------------------------------------------------------------
0123      i32.const 240
0124      local.set 3
0125      local.get 4
0126      i32.const 3
0127      i32.lt_s
0128      br_if 0 (;@1;)
19 ------------------------------------------------------------
0129      i32.const 2
0130      local.set 2
0131      loop  ;; label = @2
20 ------------------------------------------------------------
0132        local.get 3
0133        i32.const 1
0134        i32.add
0135        local.set 3
0136        local.get 2
0137        i32.const 1
0138        i32.shl
0139        i32.const 65532
0140        i32.and
0141        local.tee 2
0142        local.get 4
0143        i32.lt_s
0144        br_if 0 (;@2;)
21 ------------------------------------------------------------
0145      end
22 ------------------------------------------------------------
0146    end
23 ------------------------------------------------------------
0147    local.get 3
0148    i32.const 255
0149    i32.and
0150    local.get 1
0151    local.get 1
0152    i32.load offset=88
0153    call_indirect (type 1)
0154    local.get 0
0155    i32.load16_u offset=16
0156    local.tee 2
0157    i32.const -1
0158    local.get 1
0159    i32.load offset=52
0160    local.get 2
0161    i32.gt_s
0162    select
0163    i32.const 255
0164    i32.and
0165    local.get 1
0166    local.get 1
0167    i32.load offset=88
0168    call_indirect (type 1)
0169    i32.const 0
0170    local.set 2
0171    i32.const 0
0172    local.get 1
0173    local.get 1
0174    i32.load offset=88
0175    call_indirect (type 1)
0176    block  ;; label = @1
24 ------------------------------------------------------------
0177      local.get 1
0178      i32.load offset=52
0179      local.tee 4
0180      i32.const 1
0181      i32.lt_s
0182      br_if 0 (;@1;)
25 ------------------------------------------------------------
0183      local.get 0
0184      i32.load offset=12
0185      local.tee 0
0186      i32.load
0187      local.tee 3
0188      i32.const 1
0189      i32.ge_s
0190      if  ;; label = @2
26 ------------------------------------------------------------
0191        local.get 3
0192        local.get 4
0193        local.get 3
0194        i32.const -1
0195        i32.add
0196        local.get 4
0197        i32.const -1
0198        i32.add
0199        i32.lt_u
0200        select
0201        local.set 2
0202        local.get 0
0203        i32.load offset=16
0204        local.set 3
0205        i32.const 0
0206        local.set 0
0207        loop  ;; label = @3
27 ------------------------------------------------------------
0208          local.get 3
0209          i32.load8_u offset=1
0210          local.get 1
0211          local.get 1
0212          i32.load offset=88
0213          call_indirect (type 1)
0214          local.get 3
0215          i32.load8_u offset=2
0216          local.get 1
0217          local.get 1
0218          i32.load offset=88
0219          call_indirect (type 1)
0220          local.get 3
0221          i32.load8_u offset=3
0222          local.get 1
0223          local.get 1
0224          i32.load offset=88
0225          call_indirect (type 1)
0226          local.get 3
0227          i32.const 8
0228          i32.add
0229          local.set 3
0230          local.get 0
0231          i32.const 1
0232          i32.add
0233          local.tee 0
0234          local.get 2
0235          i32.ne
0236          br_if 0 (;@3;)
28 ------------------------------------------------------------
0237        end
29 ------------------------------------------------------------
0238      end
30 ------------------------------------------------------------
0239      local.get 2
0240      local.get 4
0241      i32.ge_s
0242      br_if 0 (;@1;)
31 ------------------------------------------------------------
0243      loop  ;; label = @2
32 ------------------------------------------------------------
0244        i32.const 0
0245        local.get 1
0246        local.get 1
0247        i32.load offset=88
0248        call_indirect (type 1)
0249        i32.const 0
0250        local.get 1
0251        local.get 1
0252        i32.load offset=88
0253        call_indirect (type 1)
0254        i32.const 0
0255        local.get 1
0256        local.get 1
0257        i32.load offset=88
0258        call_indirect (type 1)
0259        local.get 2
0260        i32.const 1
0261        i32.add
0262        local.tee 2
0263        local.get 4
0264        i32.ne
0265        br_if 0 (;@2;)
33 ------------------------------------------------------------
0266      end
34 ------------------------------------------------------------
0267    end
35 ------------------------------------------------------------)
