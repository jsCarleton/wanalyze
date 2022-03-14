  (func (;167;) (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    local.get 0
0002    i32.const 1
0003    i32.const 64
0004    local.get 0
0005    i32.load offset=4
0006    i32.load
0007    call_indirect (type 3)
0008    local.tee 5
0009    i32.store offset=340
0010    local.get 5
0011    i32.const 59
0012    i32.store
0013    block  ;; label = @1
1 ------------------------------------------------------------
0014      local.get 0
0015      i32.load offset=356
0016      i32.load offset=8
0017      if  ;; label = @2
2 ------------------------------------------------------------
0018        local.get 5
0019        i32.const 60
0020        i32.store offset=4
0021        local.get 0
0022        i32.const 1
0023        local.get 0
0024        i32.load offset=236
0025        local.tee 4
0026        local.get 0
0027        i32.load offset=60
0028        i32.mul
0029        i32.const 20
0030        i32.mul
0031        local.get 0
0032        i32.load offset=4
0033        i32.load
0034        call_indirect (type 3)
0035        local.set 1
0036        local.get 0
0037        i32.load offset=60
0038        i32.const 1
0039        i32.lt_s
0040        br_if 1 (;@1;)
3 ------------------------------------------------------------
0041        local.get 0
0042        i32.load offset=68
0043        local.set 2
0044        local.get 4
0045        i32.const 5
0046        i32.mul
0047        local.set 8
0048        local.get 4
0049        i32.const 2
0050        i32.shl
0051        local.set 7
0052        local.get 4
0053        i32.const 12
0054        i32.mul
0055        local.set 9
0056        local.get 4
0057        i32.const 3
0058        i32.mul
0059        local.set 10
0060        local.get 4
0061        i32.const 1
0062        i32.ge_s
0063        if  ;; label = @3
4 ------------------------------------------------------------
0064          local.get 4
0065          i32.const 1
0066          i32.shl
0067          local.set 12
0068          loop  ;; label = @4
5 ------------------------------------------------------------
0069            local.get 1
0070            local.get 7
0071            i32.add
0072            local.get 0
0073            i32.const 1
0074            local.get 2
0075            i32.load offset=28
0076            local.get 0
0077            i32.load offset=232
0078            i32.mul
0079            i32.const 3
0080            i32.shl
0081            local.get 2
0082            i32.load offset=8
0083            i32.div_s
0084            local.get 10
0085            local.get 0
0086            i32.load offset=4
0087            i32.load offset=8
0088            call_indirect (type 11)
0089            local.tee 11
0090            local.get 9
0091            call 34
0092            local.set 13
0093            i32.const 0
0094            local.set 3
0095            loop  ;; label = @5
6 ------------------------------------------------------------
0096              local.get 1
0097              local.get 3
0098              i32.const 2
0099              i32.shl
0100              local.tee 14
0101              i32.add
0102              local.get 11
0103              local.get 3
0104              local.get 12
0105              i32.add
0106              i32.const 2
0107              i32.shl
0108              i32.add
0109              i32.load
0110              i32.store
0111              local.get 1
0112              local.get 3
0113              local.get 7
0114              i32.add
0115              i32.const 2
0116              i32.shl
0117              i32.add
0118              local.get 11
0119              local.get 14
0120              i32.add
0121              i32.load
0122              i32.store
0123              local.get 3
0124              i32.const 1
0125              i32.add
0126              local.tee 3
0127              local.get 4
0128              i32.ne
0129              br_if 0 (;@5;)
7 ------------------------------------------------------------
0130            end
8 ------------------------------------------------------------
0131            local.get 5
0132            local.get 6
0133            i32.const 2
0134            i32.shl
0135            i32.add
0136            local.get 13
0137            i32.store offset=8
0138            local.get 2
0139            i32.const 84
0140            i32.add
0141            local.set 2
0142            local.get 1
0143            local.get 8
0144            i32.const 2
0145            i32.shl
0146            i32.add
0147            local.set 1
0148            local.get 6
0149            i32.const 1
0150            i32.add
0151            local.tee 6
0152            local.get 0
0153            i32.load offset=60
0154            i32.lt_s
0155            br_if 0 (;@4;)
9 ------------------------------------------------------------
0156          end
10 ------------------------------------------------------------
0157          br 2 (;@1;)
11 ------------------------------------------------------------
0158        end
12 ------------------------------------------------------------
0159        loop  ;; label = @3
13 ------------------------------------------------------------
0160          local.get 5
0161          local.get 6
0162          i32.const 2
0163          i32.shl
0164          i32.add
0165          local.get 1
0166          local.get 7
0167          i32.add
0168          local.get 0
0169          i32.const 1
0170          local.get 2
0171          i32.load offset=28
0172          local.get 0
0173          i32.load offset=232
0174          i32.mul
0175          i32.const 3
0176          i32.shl
0177          local.get 2
0178          i32.load offset=8
0179          i32.div_s
0180          local.get 10
0181          local.get 0
0182          i32.load offset=4
0183          i32.load offset=8
0184          call_indirect (type 11)
0185          local.get 9
0186          call 34
0187          i32.store offset=8
0188          local.get 2
0189          i32.const 84
0190          i32.add
0191          local.set 2
0192          local.get 1
0193          local.get 8
0194          i32.const 2
0195          i32.shl
0196          i32.add
0197          local.set 1
0198          local.get 6
0199          i32.const 1
0200          i32.add
0201          local.tee 6
0202          local.get 0
0203          i32.load offset=60
0204          i32.lt_s
0205          br_if 0 (;@3;)
14 ------------------------------------------------------------
0206        end
15 ------------------------------------------------------------
0207        br 1 (;@1;)
16 ------------------------------------------------------------
0208      end
17 ------------------------------------------------------------
0209      local.get 5
0210      i32.const 61
0211      i32.store offset=4
0212      local.get 0
0213      i32.load offset=60
0214      i32.const 1
0215      i32.lt_s
0216      br_if 0 (;@1;)
18 ------------------------------------------------------------
0217      local.get 5
0218      i32.const 8
0219      i32.add
0220      local.set 2
0221      local.get 0
0222      i32.load offset=68
0223      local.set 3
0224      loop  ;; label = @2
19 ------------------------------------------------------------
0225        local.get 2
0226        local.get 1
0227        i32.const 2
0228        i32.shl
0229        i32.add
0230        local.get 0
0231        i32.const 1
0232        local.get 3
0233        i32.load offset=28
0234        local.get 0
0235        i32.load offset=232
0236        i32.mul
0237        i32.const 3
0238        i32.shl
0239        local.get 3
0240        i32.load offset=8
0241        i32.div_s
0242        local.get 0
0243        i32.load offset=236
0244        local.get 0
0245        i32.load offset=4
0246        i32.load offset=8
0247        call_indirect (type 11)
0248        i32.store
0249        local.get 3
0250        i32.const 84
0251        i32.add
0252        local.set 3
0253        local.get 1
0254        i32.const 1
0255        i32.add
0256        local.tee 1
0257        local.get 0
0258        i32.load offset=60
0259        i32.lt_s
0260        br_if 0 (;@2;)
20 ------------------------------------------------------------
0261      end
21 ------------------------------------------------------------
0262    end
22 ------------------------------------------------------------)
