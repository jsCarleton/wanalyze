  (func (;45;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64 i64 i64 i64 i64 i64)
0 ------------------------------------------------------------
0000    i32.const 6144
0001    call 34
0002    local.tee 5
0003    i32.eqz
0004    if  ;; label = @1
1 ------------------------------------------------------------
0005      i32.const -1
0006      return
2 ------------------------------------------------------------
0007    end
3 ------------------------------------------------------------
0008    local.get 5
0009    i32.const 0
0010    i32.const 6144
0011    call 30
0012    drop
0013    i32.const 32
0014    call 34
0015    local.tee 4
0016    i32.eqz
0017    if  ;; label = @1
4 ------------------------------------------------------------
0018      i32.const -1
0019      return
5 ------------------------------------------------------------
0020    end
6 ------------------------------------------------------------
0021    local.get 5
0022    local.set 3
0023    loop  ;; label = @1
7 ------------------------------------------------------------
0024      local.get 4
0025      local.get 8
0026      i32.wrap_i64
0027      i32.const 2
0028      i32.shl
0029      i32.add
0030      i32.const 0
0031      local.get 3
0032      call 17
0033      local.get 3
0034      i32.const 768
0035      i32.add
0036      local.set 3
0037      local.get 8
0038      i64.const 1
0039      i64.add
0040      local.tee 8
0041      i64.const 8
0042      i64.lt_s
0043      br_if 0 (;@1;)
8 ------------------------------------------------------------
0044    end
9 ------------------------------------------------------------
0045    local.get 5
0046    i32.const 32
0047    i32.add
0048    i32.const 0
0049    i32.const 96
0050    call 30
0051    drop
0052    local.get 5
0053    local.get 1
0054    i32.const 32
0055    call 29
0056    drop
0057    local.get 5
0058    i32.const 32
0059    i32.add
0060    local.tee 3
0061    local.get 2
0062    i32.const 32
0063    call 29
0064    drop
0065    local.get 3
0066    i32.const 32
0067    i32.add
0068    local.tee 1
0069    i32.const 0
0070    i64.const 32
0071    call 26
0072    local.get 1
0073    i32.const 8
0074    i32.add
0075    local.tee 1
0076    i32.const 0
0077    i64.const 32
0078    call 26
0079    local.get 1
0080    i32.const 8
0081    i32.add
0082    local.tee 1
0083    i32.const 0
0084    i64.const 32
0085    call 26
0086    local.get 1
0087    i32.const 8
0088    i32.add
0089    local.tee 1
0090    i32.const 0
0091    i64.const 1
0092    call 26
0093    local.get 1
0094    i32.const 8
0095    i32.add
0096    local.tee 1
0097    i32.const 0
0098    i64.const 8
0099    call 26
0100    local.get 1
0101    i32.const 8
0102    i32.add
0103    local.tee 1
0104    i32.const 0
0105    i64.const 8
0106    call 26
0107    local.get 1
0108    i32.const 8
0109    i32.const -128
0110    call 25
0111    local.get 5
0112    i32.const 127
0113    i32.add
0114    local.tee 1
0115    i32.const 0
0116    local.get 1
0117    i32.const 0
0118    call 37
0119    i32.const 1
0120    i32.xor
0121    call 25
0122    i32.const 128
0123    call 34
0124    local.tee 3
0125    i32.eqz
0126    if  ;; label = @1
10 ------------------------------------------------------------
0127      i32.const -1
0128      return
11 ------------------------------------------------------------
0129    end
12 ------------------------------------------------------------
0130    local.get 3
0131    call 79
0132    local.get 5
0133    local.set 1
0134    loop  ;; label = @1
13 ------------------------------------------------------------
0135      local.get 3
0136      local.get 1
0137      call 76
0138      local.get 1
0139      i32.const 512
0140      i32.add
0141      local.set 1
0142      local.get 7
0143      i64.const 1
0144      i64.add
0145      local.set 6
0146      local.get 7
0147      i64.const 1
0148      i64.lt_u
0149      if  ;; label = @2
14 ------------------------------------------------------------
0150        local.get 6
0151        local.set 7
0152        br 1 (;@1;)
15 ------------------------------------------------------------
0153      end
16 ------------------------------------------------------------
0154    end
17 ------------------------------------------------------------
0155    local.get 3
0156    local.get 4
0157    i32.const 0
0158    call 20
0159    local.tee 2
0160    i64.const 8
0161    call 75
0162    local.get 3
0163    local.get 2
0164    local.get 4
0165    i32.const 4
0166    call 20
0167    local.tee 1
0168    i64.const 8
0169    call 73
0170    local.get 3
0171    local.get 1
0172    local.get 2
0173    local.get 4
0174    i32.const 8
0175    call 20
0176    local.tee 1
0177    i64.const 8
0178    call 44
0179    i64.const 1
0180    local.set 7
0181    i64.const 2
0182    local.set 9
0183    i64.const 1
0184    local.set 6
0185    i32.const 0
0186    local.set 2
0187    i64.const 1
0188    local.set 11
0189    i64.const 3
0190    local.set 8
0191    loop  ;; label = @1
18 ------------------------------------------------------------
0192      local.get 9
0193      local.get 6
0194      i64.add
0195      local.set 10
0196      local.get 2
0197      if  ;; label = @2
19 ------------------------------------------------------------
0198        local.get 10
0199        local.set 7
0200      end
20 ------------------------------------------------------------
0201      local.get 9
0202      local.get 2
0203      i32.const 1
0204      i32.and
0205      i64.extend_i32_u
0206      i64.shl
0207      local.set 9
0208      i64.const 0
0209      local.get 6
0210      i64.sub
0211      local.set 10
0212      local.get 2
0213      if  ;; label = @2
21 ------------------------------------------------------------
0214        local.get 10
0215        local.set 6
0216      end
22 ------------------------------------------------------------
0217      local.get 3
0218      local.get 1
0219      local.get 4
0220      local.get 11
0221      i32.wrap_i64
0222      i32.const 2
0223      i32.shl
0224      i32.add
0225      i32.const 0
0226      call 20
0227      local.get 4
0228      local.get 8
0229      i32.wrap_i64
0230      i32.const 2
0231      i32.shl
0232      i32.add
0233      i32.const 0
0234      call 20
0235      local.tee 1
0236      i64.const 8
0237      call 44
0238      local.get 11
0239      local.get 7
0240      i64.add
0241      local.get 9
0242      i64.const -1
0243      i64.add
0244      i64.and
0245      local.tee 11
0246      i64.const 0
0247      i64.eq
0248      local.set 2
0249      local.get 8
0250      i64.const 1
0251      i64.add
0252      local.tee 8
0253      i64.const 8
0254      i64.lt_s
0255      br_if 0 (;@1;)
23 ------------------------------------------------------------
0256    end
24 ------------------------------------------------------------
0257    i64.const 1
0258    local.set 7
0259    loop  ;; label = @1
25 ------------------------------------------------------------
0260      local.get 7
0261      i64.const 1
0262      i64.and
0263      i64.const 0
0264      i64.eq
0265      if (result i64)  ;; label = @2
26 ------------------------------------------------------------
0266        i64.const -1
0267      else
27 ------------------------------------------------------------
0268        i64.const 3
0269      end
28 ------------------------------------------------------------
0270      local.set 8
0271      i64.const 0
0272      local.set 6
0273      loop  ;; label = @2
29 ------------------------------------------------------------
0274        local.get 3
0275        local.get 1
0276        local.get 4
0277        local.get 3
0278        i32.const 0
0279        call 16
0280        local.tee 10
0281        i64.const 8
0282        i64.rem_u
0283        i32.wrap_i64
0284        i32.const 2
0285        i32.shl
0286        i32.add
0287        i32.const 0
0288        call 20
0289        local.tee 2
0290        local.get 4
0291        local.get 6
0292        i32.wrap_i64
0293        i32.const 2
0294        i32.shl
0295        i32.add
0296        i32.const 0
0297        call 20
0298        local.tee 1
0299        i64.const 8
0300        call 72
0301        local.get 6
0302        local.get 8
0303        i64.add
0304        local.tee 6
0305        i64.const 8
0306        i64.rem_u
0307        local.tee 6
0308        i64.const 0
0309        i64.ne
0310        br_if 0 (;@2;)
30 ------------------------------------------------------------
0311      end
31 ------------------------------------------------------------
0312      local.get 7
0313      i64.const 1
0314      i64.add
0315      local.set 6
0316      local.get 7
0317      i64.const 1
0318      i64.lt_s
0319      if  ;; label = @2
32 ------------------------------------------------------------
0320        local.get 6
0321        local.set 7
0322        br 1 (;@1;)
33 ------------------------------------------------------------
0323      end
34 ------------------------------------------------------------
0324    end
35 ------------------------------------------------------------
0325    local.get 3
0326    local.get 2
0327    call 77
0328    local.get 3
0329    local.get 0
0330    i32.const 32
0331    call 78
0332    local.get 4
0333    call 33
0334    local.get 5
0335    call 33
0336    local.get 3
0337    call 33
0338    i32.const 0)
