  (func (;161;) (type 7) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 1
0001    i32.load
0002    i32.const 3
0003    i32.shl
0004    local.set 6
0005    block  ;; label = @1
1 ------------------------------------------------------------
0006      local.get 0
0007      i32.load
0008      local.tee 5
0009      i32.const -1
0010      i32.lt_s
0011      br_if 0 (;@1;)
2 ------------------------------------------------------------
0012      local.get 6
0013      local.get 0
0014      i32.load
0015      local.tee 10
0016      i32.sub
0017      local.tee 11
0018      i32.const 1
0019      i32.lt_s
0020      br_if 0 (;@1;)
3 ------------------------------------------------------------
0021      local.get 2
0022      i32.const -4
0023      i32.add
0024      local.set 8
0025      local.get 5
0026      i32.const 1
0027      i32.add
0028      local.set 5
0029      loop  ;; label = @2
4 ------------------------------------------------------------
0030        local.get 8
0031        local.get 4
0032        i32.const 2
0033        i32.shl
0034        i32.add
0035        i32.load
0036        local.get 10
0037        i32.add
0038        local.tee 7
0039        local.get 7
0040        i32.const -1
0041        i32.add
0042        i32.load8_u
0043        local.get 11
0044        call 27
0045        drop
0046        local.get 4
0047        local.get 5
0048        i32.ne
0049        local.set 7
0050        local.get 4
0051        i32.const 1
0052        i32.add
0053        local.set 4
0054        local.get 7
0055        br_if 0 (;@2;)
5 ------------------------------------------------------------
0056      end
6 ------------------------------------------------------------
0057    end
7 ------------------------------------------------------------
0058    local.get 1
0059    i32.load
0060    i32.const 1
0061    i32.ge_s
0062    if  ;; label = @1
8 ------------------------------------------------------------
0063      local.get 0
0064      i32.load
0065      local.tee 0
0066      i32.const 6
0067      i32.shl
0068      local.set 12
0069      i32.const 65536
0070      local.get 0
0071      i32.const 9
0072      i32.shl
0073      i32.sub
0074      local.set 13
0075      local.get 6
0076      i32.const -2
0077      i32.add
0078      local.set 11
0079      i32.const 0
0080      local.set 8
0081      loop  ;; label = @2
9 ------------------------------------------------------------
0082        local.get 3
0083        local.get 8
0084        i32.const 2
0085        i32.shl
0086        local.tee 0
0087        i32.add
0088        i32.load
0089        local.tee 4
0090        local.get 13
0091        local.get 0
0092        local.get 2
0093        i32.add
0094        local.tee 5
0095        i32.load
0096        local.tee 0
0097        i32.load8_u
0098        local.tee 6
0099        i32.mul
0100        local.get 6
0101        local.get 2
0102        local.get 8
0103        i32.const 1
0104        i32.add
0105        local.tee 8
0106        i32.const 2
0107        i32.shl
0108        i32.add
0109        i32.load
0110        local.tee 6
0111        i32.load8_u
0112        local.get 5
0113        i32.const -4
0114        i32.add
0115        i32.load
0116        local.tee 9
0117        i32.load8_u
0118        i32.add
0119        local.tee 5
0120        i32.add
0121        local.tee 10
0122        local.get 5
0123        i32.add
0124        local.get 0
0125        i32.load8_u
0126        local.get 6
0127        i32.load8_u
0128        local.get 9
0129        i32.load8_u
0130        i32.add
0131        i32.add
0132        local.tee 5
0133        i32.add
0134        local.get 12
0135        i32.mul
0136        i32.add
0137        i32.const 32768
0138        i32.add
0139        i32.const 16
0140        i32.shr_u
0141        i32.store8
0142        local.get 4
0143        i32.const 1
0144        i32.add
0145        local.set 7
0146        local.get 0
0147        i32.const 1
0148        i32.add
0149        local.set 4
0150        local.get 6
0151        i32.const 1
0152        i32.add
0153        local.set 14
0154        local.get 9
0155        i32.const 1
0156        i32.add
0157        local.set 9
0158        local.get 11
0159        local.set 0
0160        loop  ;; label = @3
10 ------------------------------------------------------------
0161          local.get 7
0162          local.get 13
0163          local.get 4
0164          i32.load8_u
0165          local.tee 15
0166          i32.mul
0167          local.get 10
0168          local.get 5
0169          local.tee 6
0170          i32.add
0171          local.get 15
0172          i32.sub
0173          local.get 4
0174          i32.load8_u
0175          local.get 14
0176          i32.load8_u
0177          local.get 9
0178          i32.load8_u
0179          i32.add
0180          i32.add
0181          local.tee 5
0182          i32.add
0183          local.get 12
0184          i32.mul
0185          i32.add
0186          i32.const 32768
0187          i32.add
0188          i32.const 16
0189          i32.shr_u
0190          i32.store8
0191          local.get 7
0192          i32.const 1
0193          i32.add
0194          local.set 7
0195          local.get 14
0196          i32.const 1
0197          i32.add
0198          local.set 14
0199          local.get 9
0200          i32.const 1
0201          i32.add
0202          local.set 9
0203          local.get 4
0204          i32.const 1
0205          i32.add
0206          local.set 4
0207          local.get 6
0208          local.set 10
0209          local.get 0
0210          i32.const -1
0211          i32.add
0212          local.tee 0
0213          br_if 0 (;@3;)
11 ------------------------------------------------------------
0214        end
12 ------------------------------------------------------------
0215        local.get 7
0216        local.get 13
0217        local.get 4
0218        i32.load8_u
0219        local.tee 0
0220        i32.mul
0221        local.get 5
0222        i32.const 1
0223        i32.shl
0224        local.get 10
0225        i32.add
0226        local.get 0
0227        i32.sub
0228        local.get 12
0229        i32.mul
0230        i32.add
0231        i32.const 32768
0232        i32.add
0233        i32.const 16
0234        i32.shr_u
0235        i32.store8
0236        local.get 8
0237        local.get 1
0238        i32.load
0239        i32.lt_s
0240        br_if 0 (;@2;)
13 ------------------------------------------------------------
0241      end
14 ------------------------------------------------------------
0242    end
15 ------------------------------------------------------------)
