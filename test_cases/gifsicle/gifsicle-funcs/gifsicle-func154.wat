  (func (;154;) (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load
0002    local.tee 3
0003    i32.load
0004    local.set 10
0005    local.get 3
0006    i32.load offset=4
0007    local.set 12
0008    local.get 0
0009    i32.load offset=8
0010    local.tee 16
0011    local.get 1
0012    i32.const 2
0013    i32.shl
0014    local.tee 3
0015    i32.add
0016    i32.const 0
0017    i32.store
0018    local.get 0
0019    i32.load offset=12
0020    local.tee 13
0021    if  ;; label = @1
1 ------------------------------------------------------------
0022      local.get 3
0023      local.get 13
0024      i32.add
0025      i32.const 0
0026      i32.store
0027    end
2 ------------------------------------------------------------
0028    local.get 0
0029    i32.load offset=4
0030    local.tee 5
0031    local.get 3
0032    i32.add
0033    local.get 1
0034    i32.store
0035    local.get 12
0036    if  ;; label = @1
3 ------------------------------------------------------------
0037      local.get 10
0038      local.get 1
0039      i32.const 4
0040      i32.shl
0041      i32.add
0042      local.set 6
0043      i32.const 0
0044      local.set 3
0045      loop  ;; label = @2
4 ------------------------------------------------------------
0046        block  ;; label = @3
5 ------------------------------------------------------------
0047          local.get 16
0048          local.get 3
0049          i32.const 2
0050          i32.shl
0051          local.tee 14
0052          i32.add
0053          local.tee 8
0054          i32.load
0055          local.tee 11
0056          i32.eqz
0057          br_if 0 (;@3;)
6 ------------------------------------------------------------
0058          local.get 10
0059          local.get 3
0060          i32.const 4
0061          i32.shl
0062          i32.add
0063          local.tee 4
0064          i32.load16_s offset=2
0065          local.get 6
0066          i32.load16_s offset=2
0067          i32.sub
0068          local.tee 9
0069          local.get 9
0070          i32.mul
0071          local.get 4
0072          i32.load16_s
0073          local.get 6
0074          i32.load16_s
0075          i32.sub
0076          local.tee 9
0077          local.get 9
0078          i32.mul
0079          i32.add
0080          local.get 4
0081          i32.load16_s offset=4
0082          local.get 6
0083          i32.load16_s offset=4
0084          i32.sub
0085          local.tee 4
0086          local.get 4
0087          i32.mul
0088          i32.add
0089          local.tee 4
0090          local.get 11
0091          i32.ge_u
0092          br_if 0 (;@3;)
7 ------------------------------------------------------------
0093          local.get 8
0094          local.get 4
0095          i32.store
0096          local.get 5
0097          local.get 14
0098          i32.add
0099          local.get 1
0100          i32.store
0101        end
8 ------------------------------------------------------------
0102        local.get 3
0103        i32.const 1
0104        i32.add
0105        local.tee 3
0106        local.get 12
0107        i32.ne
0108        br_if 0 (;@2;)
9 ------------------------------------------------------------
0109      end
10 ------------------------------------------------------------
0110    end
11 ------------------------------------------------------------
0111    global.get 0
0112    i32.const 16
0113    i32.sub
0114    local.set 6
0115    local.get 0
0116    i32.load offset=20
0117    local.set 4
0118    block  ;; label = @1
12 ------------------------------------------------------------
0119      local.get 2
0120      i32.eqz
0121      local.get 13
0122      i32.eqz
0123      i32.or
0124      br_if 0 (;@1;)
13 ------------------------------------------------------------
0125      local.get 4
0126      i32.eqz
0127      if  ;; label = @2
14 ------------------------------------------------------------
0128        i32.const 0
0129        local.set 4
0130        br 1 (;@1;)
15 ------------------------------------------------------------
0131      end
16 ------------------------------------------------------------
0132      local.get 10
0133      local.get 1
0134      i32.const 4
0135      i32.shl
0136      i32.add
0137      local.set 2
0138      local.get 0
0139      i32.load offset=16
0140      local.set 14
0141      i32.const 0
0142      local.set 4
0143      loop  ;; label = @2
17 ------------------------------------------------------------
0144        local.get 6
0145        local.get 2
0146        i32.load align=2
0147        local.tee 3
0148        i32.store offset=8
0149        local.get 6
0150        local.get 2
0151        i32.load16_u offset=4
0152        i32.store16 offset=12
0153        f64.const 1.
0154        local.set 17
0155        local.get 6
0156        i32.load16_s offset=10
0157        local.tee 5
0158        i32.const 183
0159        i32.mul
0160        local.get 3
0161        i32.const 16
0162        i32.shl
0163        i32.const 16
0164        i32.shr_s
0165        local.tee 8
0166        i32.const 55
0167        i32.mul
0168        i32.add
0169        local.get 6
0170        i32.load16_s offset=12
0171        local.tee 11
0172        i32.const 19
0173        i32.mul
0174        i32.add
0175        i32.const 8
0176        i32.shr_s
0177        local.get 10
0178        local.get 14
0179        local.get 4
0180        i32.const 2
0181        i32.shl
0182        i32.add
0183        i32.load
0184        i32.const 4
0185        i32.shl
0186        i32.add
0187        local.tee 3
0188        i32.load16_s offset=2
0189        local.tee 9
0190        i32.const 183
0191        i32.mul
0192        local.get 3
0193        i32.load16_s
0194        local.tee 15
0195        i32.const 55
0196        i32.mul
0197        i32.add
0198        local.get 3
0199        i32.load16_s offset=4
0200        local.tee 3
0201        i32.const 19
0202        i32.mul
0203        i32.add
0204        i32.const 8
0205        i32.shr_s
0206        i32.sub
0207        local.tee 7
0208        local.get 7
0209        i32.const 31
0210        i32.shr_s
0211        local.tee 7
0212        i32.add
0213        local.get 7
0214        i32.xor
0215        local.tee 7
0216        i32.const 8193
0217        i32.ge_s
0218        if  ;; label = @3
18 ------------------------------------------------------------
0219          local.get 7
0220          f64.convert_i32_s
0221          f64.const 4.
0222          f64.mul
0223          f64.const 32767.
0224          f64.div
0225          local.set 17
0226        end
19 ------------------------------------------------------------
0227        local.get 6
0228        local.get 3
0229        local.get 11
0230        i32.add
0231        i32.const 1
0232        i32.shr_u
0233        local.tee 3
0234        i32.store16 offset=12
0235        local.get 6
0236        local.get 5
0237        local.get 9
0238        i32.add
0239        i32.const 1
0240        i32.shr_u
0241        local.tee 5
0242        i32.store16 offset=10
0243        local.get 6
0244        local.get 8
0245        local.get 15
0246        i32.add
0247        i32.const 1
0248        i32.shr_u
0249        local.tee 8
0250        i32.store16 offset=8
0251        local.get 12
0252        if  ;; label = @3
20 ------------------------------------------------------------
0253          local.get 3
0254          i32.const 16
0255          i32.shl
0256          i32.const 16
0257          i32.shr_s
0258          local.set 11
0259          local.get 5
0260          i32.const 16
0261          i32.shl
0262          i32.const 16
0263          i32.shr_s
0264          local.set 9
0265          local.get 8
0266          i32.const 16
0267          i32.shl
0268          i32.const 16
0269          i32.shr_s
0270          local.set 8
0271          i32.const 0
0272          local.set 3
0273          loop  ;; label = @4
21 ------------------------------------------------------------
0274            block  ;; label = @5
22 ------------------------------------------------------------
0275              local.get 16
0276              local.get 3
0277              i32.const 2
0278              i32.shl
0279              local.tee 15
0280              i32.add
0281              i32.load
0282              i32.eqz
0283              br_if 0 (;@5;)
23 ------------------------------------------------------------
0284              local.get 17
0285              local.get 10
0286              local.get 3
0287              i32.const 4
0288              i32.shl
0289              i32.add
0290              local.tee 5
0291              i32.load16_s offset=2
0292              local.get 9
0293              i32.sub
0294              local.tee 7
0295              local.get 7
0296              i32.mul
0297              local.get 5
0298              i32.load16_s
0299              local.get 8
0300              i32.sub
0301              local.tee 7
0302              local.get 7
0303              i32.mul
0304              i32.add
0305              local.get 5
0306              i32.load16_s offset=4
0307              local.get 11
0308              i32.sub
0309              local.tee 5
0310              local.get 5
0311              i32.mul
0312              i32.add
0313              f64.convert_i32_u
0314              f64.mul
0315              local.tee 18
0316              local.get 13
0317              local.get 15
0318              i32.add
0319              local.tee 5
0320              i32.load
0321              f64.convert_i32_u
0322              f64.lt
0323              i32.const 1
0324              i32.xor
0325              br_if 0 (;@5;)
24 ------------------------------------------------------------
0326              local.get 5
0327              block (result i32)  ;; label = @6
25 ------------------------------------------------------------
0328                local.get 18
0329                f64.const 4294967296.
0330                f64.lt
0331                local.get 18
0332                f64.const 0.
0333                f64.ge
0334                i32.and
0335                if  ;; label = @7
26 ------------------------------------------------------------
0336                  local.get 18
0337                  i32.trunc_f64_u
0338                  br 1 (;@6;)
27 ------------------------------------------------------------
0339                end
28 ------------------------------------------------------------
0340                i32.const 0
0341              end
29 ------------------------------------------------------------
0342              i32.store
0343            end
30 ------------------------------------------------------------
0344            local.get 3
0345            i32.const 1
0346            i32.add
0347            local.tee 3
0348            local.get 12
0349            i32.ne
0350            br_if 0 (;@4;)
31 ------------------------------------------------------------
0351          end
32 ------------------------------------------------------------
0352        end
33 ------------------------------------------------------------
0353        local.get 4
0354        i32.const 1
0355        i32.add
0356        local.tee 4
0357        local.get 0
0358        i32.load offset=20
0359        i32.ne
0360        br_if 0 (;@2;)
34 ------------------------------------------------------------
0361      end
35 ------------------------------------------------------------
0362    end
36 ------------------------------------------------------------
0363    local.get 0
0364    i32.load offset=16
0365    local.get 4
0366    i32.const 2
0367    i32.shl
0368    i32.add
0369    local.get 1
0370    i32.store
0371    local.get 0
0372    local.get 0
0373    i32.load offset=20
0374    i32.const 1
0375    i32.add
0376    i32.store offset=20)
