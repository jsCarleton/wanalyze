  (func (;158;) (type 7) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 1
0001    i32.load
0002    local.set 10
0003    block  ;; label = @1
1 ------------------------------------------------------------
0004      local.get 0
0005      i32.load
0006      local.tee 4
0007      i32.const -1
0008      i32.lt_s
0009      br_if 0 (;@1;)
2 ------------------------------------------------------------
0010      local.get 10
0011      i32.const 4
0012      i32.shl
0013      local.get 0
0014      i32.load
0015      local.tee 6
0016      i32.sub
0017      local.tee 5
0018      i32.const 1
0019      i32.lt_s
0020      br_if 0 (;@1;)
3 ------------------------------------------------------------
0021      local.get 2
0022      i32.const -4
0023      i32.add
0024      local.set 7
0025      local.get 4
0026      i32.const 1
0027      i32.add
0028      local.set 9
0029      i32.const 0
0030      local.set 4
0031      loop  ;; label = @2
4 ------------------------------------------------------------
0032        local.get 7
0033        local.get 4
0034        i32.const 2
0035        i32.shl
0036        i32.add
0037        i32.load
0038        local.get 6
0039        i32.add
0040        local.tee 8
0041        local.get 8
0042        i32.const -1
0043        i32.add
0044        i32.load8_u
0045        local.get 5
0046        call 27
0047        drop
0048        local.get 4
0049        local.get 9
0050        i32.ne
0051        local.set 8
0052        local.get 4
0053        i32.const 1
0054        i32.add
0055        local.set 4
0056        local.get 8
0057        br_if 0 (;@2;)
5 ------------------------------------------------------------
0058      end
6 ------------------------------------------------------------
0059    end
7 ------------------------------------------------------------
0060    local.get 1
0061    i32.load
0062    i32.const 1
0063    i32.ge_s
0064    if  ;; label = @1
8 ------------------------------------------------------------
0065      local.get 0
0066      i32.load
0067      local.tee 0
0068      i32.const 4
0069      i32.shl
0070      local.set 8
0071      local.get 0
0072      i32.const -80
0073      i32.mul
0074      i32.const 16384
0075      i32.add
0076      local.set 13
0077      local.get 10
0078      i32.const 3
0079      i32.shl
0080      i32.const -2
0081      i32.add
0082      local.set 10
0083      loop  ;; label = @2
9 ------------------------------------------------------------
0084        local.get 3
0085        local.get 15
0086        i32.const 2
0087        i32.shl
0088        i32.add
0089        i32.load
0090        local.tee 9
0091        local.get 2
0092        local.get 14
0093        i32.const 2
0094        i32.shl
0095        local.tee 4
0096        i32.const 4
0097        i32.or
0098        i32.add
0099        i32.load
0100        local.tee 0
0101        i32.load8_u
0102        local.get 2
0103        local.get 4
0104        i32.add
0105        local.tee 5
0106        i32.load
0107        local.tee 4
0108        i32.load8_u
0109        i32.add
0110        local.tee 7
0111        local.get 4
0112        i32.load8_u
0113        i32.add
0114        local.get 0
0115        i32.load8_u
0116        i32.add
0117        local.get 13
0118        i32.mul
0119        local.get 2
0120        local.get 14
0121        i32.const 2
0122        i32.add
0123        local.tee 14
0124        i32.const 2
0125        i32.shl
0126        i32.add
0127        i32.load
0128        local.tee 6
0129        i32.load8_u
0130        local.tee 11
0131        local.get 5
0132        i32.const -4
0133        i32.add
0134        i32.load
0135        local.tee 5
0136        i32.load8_u
0137        local.tee 12
0138        i32.add
0139        local.get 5
0140        i32.load8_u
0141        i32.add
0142        local.get 6
0143        i32.load8_u
0144        i32.add
0145        local.get 0
0146        i32.load8_u
0147        local.get 4
0148        i32.load8_u
0149        local.get 6
0150        i32.load8_u
0151        local.get 5
0152        i32.load8_u
0153        local.get 7
0154        local.get 12
0155        i32.add
0156        i32.add
0157        local.get 11
0158        i32.add
0159        i32.add
0160        i32.add
0161        i32.add
0162        i32.const 1
0163        i32.shl
0164        i32.add
0165        local.get 8
0166        i32.mul
0167        i32.add
0168        i32.const 32768
0169        i32.add
0170        i32.const 16
0171        i32.shr_u
0172        i32.store8
0173        local.get 4
0174        i32.const 2
0175        i32.add
0176        local.set 4
0177        local.get 6
0178        i32.const 2
0179        i32.add
0180        local.set 6
0181        local.get 5
0182        i32.const 2
0183        i32.add
0184        local.set 5
0185        local.get 0
0186        i32.const 2
0187        i32.add
0188        local.set 7
0189        local.get 10
0190        local.set 0
0191        loop  ;; label = @3
10 ------------------------------------------------------------
0192          local.get 4
0193          i32.const -1
0194          i32.add
0195          i32.load8_u
0196          local.get 6
0197          i32.load8_u
0198          local.get 6
0199          i32.load8_u
0200          local.get 5
0201          i32.load8_u
0202          i32.add
0203          local.tee 16
0204          local.get 5
0205          i32.load8_u
0206          i32.add
0207          i32.add
0208          i32.add
0209          local.set 11
0210          local.get 9
0211          i32.const 1
0212          i32.add
0213          local.set 9
0214          local.get 7
0215          i32.load8_u
0216          local.get 7
0217          i32.load8_u
0218          local.get 4
0219          i32.load8_u
0220          i32.add
0221          local.tee 17
0222          local.get 4
0223          i32.load8_u
0224          i32.add
0225          i32.add
0226          local.set 12
0227          local.get 0
0228          if  ;; label = @4
11 ------------------------------------------------------------
0229            local.get 9
0230            local.get 12
0231            local.get 13
0232            i32.mul
0233            local.get 6
0234            i32.load8_u
0235            local.get 6
0236            i32.const -1
0237            i32.add
0238            i32.load8_u
0239            local.get 5
0240            i32.load8_u
0241            local.get 5
0242            i32.const -1
0243            i32.add
0244            i32.load8_u
0245            i32.add
0246            local.get 7
0247            i32.load8_u
0248            local.get 7
0249            i32.const -1
0250            i32.add
0251            i32.load8_u
0252            local.get 11
0253            local.get 4
0254            i32.load8_u
0255            i32.add
0256            i32.add
0257            i32.add
0258            i32.const 1
0259            i32.shl
0260            i32.add
0261            i32.add
0262            i32.add
0263            local.get 8
0264            i32.mul
0265            i32.add
0266            i32.const 32768
0267            i32.add
0268            i32.const 16
0269            i32.shr_u
0270            i32.store8
0271            local.get 0
0272            i32.const -1
0273            i32.add
0274            local.set 0
0275            local.get 6
0276            i32.const 2
0277            i32.add
0278            local.set 6
0279            local.get 5
0280            i32.const 2
0281            i32.add
0282            local.set 5
0283            local.get 7
0284            i32.const 2
0285            i32.add
0286            local.set 7
0287            local.get 4
0288            i32.const 2
0289            i32.add
0290            local.set 4
0291            br 1 (;@3;)
12 ------------------------------------------------------------
0292          end
13 ------------------------------------------------------------
0293        end
14 ------------------------------------------------------------
0294        local.get 9
0295        local.get 12
0296        local.get 13
0297        i32.mul
0298        local.get 6
0299        i32.const -1
0300        i32.add
0301        i32.load8_u
0302        local.get 16
0303        local.get 5
0304        i32.const -1
0305        i32.add
0306        i32.load8_u
0307        i32.add
0308        i32.add
0309        local.get 7
0310        i32.const -1
0311        i32.add
0312        i32.load8_u
0313        local.get 11
0314        local.get 17
0315        i32.add
0316        i32.add
0317        i32.const 1
0318        i32.shl
0319        i32.add
0320        local.get 8
0321        i32.mul
0322        i32.add
0323        i32.const 32768
0324        i32.add
0325        i32.const 16
0326        i32.shr_u
0327        i32.store8
0328        local.get 15
0329        i32.const 1
0330        i32.add
0331        local.tee 15
0332        local.get 1
0333        i32.load
0334        i32.lt_s
0335        br_if 0 (;@2;)
15 ------------------------------------------------------------
0336      end
16 ------------------------------------------------------------
0337    end
17 ------------------------------------------------------------)
