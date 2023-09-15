  (func (;351;) (type 6) (param i32 i32 i32 i32)
    (local i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 144
0002    i32.sub
0003    local.tee 4
0004    global.set 0
0005    block  ;; label = @1
1 ------------------------------------------------------------
0006      local.get 1
0007      i32.eqz
0008      local.get 2
0009      i32.eqz
0010      i32.or
0011      br_if 0 (;@1;)
2 ------------------------------------------------------------
0012      local.get 1
0013      local.get 2
0014      call 96
0015      local.set 1
0016      i32.const 35288
0017      i32.load
0018      if  ;; label = @2
3 ------------------------------------------------------------
0019        i32.const 10
0020        i32.const 29696
0021        i32.load
0022        local.tee 5
0023        call 37
0024        local.get 5
0025        call 71
0026        drop
0027        i32.const 35288
0028        i32.const 0
0029        i32.store
0030      end
4 ------------------------------------------------------------
0031      local.get 4
0032      local.get 1
0033      i32.store offset=128
0034      local.get 0
0035      i32.const 9949
0036      local.get 4
0037      i32.const 128
0038      i32.add
0039      call 33
0040      local.get 2
0041      i32.load offset=28
0042      local.tee 1
0043      if  ;; label = @2
5 ------------------------------------------------------------
0044        local.get 4
0045        local.get 1
0046        i32.store offset=112
0047        local.get 0
0048        i32.const 9964
0049        local.get 4
0050        i32.const 112
0051        i32.add
0052        call 33
0053      end
6 ------------------------------------------------------------
0054      local.get 2
0055      i32.load16_u offset=8
0056      local.set 1
0057      local.get 4
0058      local.get 2
0059      i32.load16_u offset=10
0060      i32.store offset=100
0061      local.get 4
0062      local.get 1
0063      i32.store offset=96
0064      local.get 0
0065      i32.const 9969
0066      local.get 4
0067      i32.const 96
0068      i32.add
0069      call 33
0070      local.get 2
0071      i32.load16_u offset=12
0072      local.tee 1
0073      local.get 2
0074      i32.load16_u offset=14
0075      local.tee 5
0076      i32.or
0077      if  ;; label = @2
7 ------------------------------------------------------------
0078        local.get 4
0079        local.get 5
0080        i32.store offset=84
0081        local.get 4
0082        local.get 1
0083        i32.store offset=80
0084        local.get 0
0085        i32.const 9975
0086        local.get 4
0087        i32.const 80
0088        i32.add
0089        call 33
0090      end
8 ------------------------------------------------------------
0091      local.get 2
0092      i32.load8_u offset=19
0093      if  ;; label = @2
9 ------------------------------------------------------------
0094        i32.const 9985
0095        i32.const 11
0096        i32.const 1
0097        local.get 0
0098        call 35
0099        drop
0100      end
10 ------------------------------------------------------------
0101      local.get 2
0102      i32.load16_s offset=20
0103      local.tee 1
0104      i32.const 0
0105      i32.ge_s
0106      if  ;; label = @2
11 ------------------------------------------------------------
0107        local.get 4
0108        local.get 1
0109        i32.const 65535
0110        i32.and
0111        i32.store offset=64
0112        local.get 0
0113        i32.const 9997
0114        local.get 4
0115        i32.const -64
0116        i32.sub
0117        call 33
0118      end
12 ------------------------------------------------------------
0119      i32.const 10
0120      local.get 0
0121      call 37
0122      block  ;; label = @2
13 ------------------------------------------------------------
0123        local.get 3
0124        i32.const 4
0125        i32.and
0126        i32.eqz
0127        br_if 0 (;@2;)
14 ------------------------------------------------------------
0128        local.get 2
0129        i32.load offset=52
0130        i32.eqz
0131        br_if 0 (;@2;)
15 ------------------------------------------------------------
0132        local.get 4
0133        local.get 2
0134        i32.load offset=44
0135        i32.store offset=48
0136        local.get 0
0137        i32.const 10013
0138        local.get 4
0139        i32.const 48
0140        i32.add
0141        call 33
0142      end
16 ------------------------------------------------------------
0143      block  ;; label = @2
17 ------------------------------------------------------------
0144        local.get 2
0145        i32.load offset=32
0146        local.tee 1
0147        i32.eqz
0148        br_if 0 (;@2;)
18 ------------------------------------------------------------
0149        local.get 1
0150        i32.load offset=8
0151        i32.const 1
0152        i32.lt_s
0153        br_if 0 (;@2;)
19 ------------------------------------------------------------
0154        i32.const 0
0155        local.set 5
0156        loop  ;; label = @3
20 ------------------------------------------------------------
0157          i32.const 10037
0158          i32.const 12
0159          i32.const 1
0160          local.get 0
0161          call 35
0162          drop
0163          local.get 5
0164          i32.const 2
0165          i32.shl
0166          local.tee 6
0167          local.get 1
0168          i32.load
0169          i32.add
0170          i32.load
0171          local.get 1
0172          i32.load offset=4
0173          local.get 6
0174          i32.add
0175          i32.load
0176          local.get 0
0177          call 151
0178          i32.const 10
0179          local.get 0
0180          call 37
0181          local.get 5
0182          i32.const 1
0183          i32.add
0184          local.tee 5
0185          local.get 1
0186          i32.load offset=8
0187          i32.lt_s
0188          br_if 0 (;@3;)
21 ------------------------------------------------------------
0189        end
22 ------------------------------------------------------------
0190      end
23 ------------------------------------------------------------
0191      block  ;; label = @2
24 ------------------------------------------------------------
0192        local.get 2
0193        i32.load offset=24
0194        local.tee 1
0195        i32.eqz
0196        br_if 0 (;@2;)
25 ------------------------------------------------------------
0197        local.get 4
0198        local.get 1
0199        i32.load
0200        i32.store offset=32
0201        local.get 0
0202        i32.const 10050
0203        local.get 4
0204        i32.const 32
0205        i32.add
0206        call 33
0207        local.get 3
0208        i32.const 1
0209        i32.and
0210        i32.eqz
0211        br_if 0 (;@2;)
26 ------------------------------------------------------------
0212        local.get 0
0213        local.get 2
0214        i32.load offset=24
0215        i32.const 10078
0216        call 217
0217      end
27 ------------------------------------------------------------
0218      local.get 2
0219      i32.load8_u offset=18
0220      i32.eqz
0221      if  ;; label = @2
28 ------------------------------------------------------------
0222        local.get 2
0223        i32.load16_u offset=16
0224        i32.eqz
0225        br_if 1 (;@1;)
29 ------------------------------------------------------------
0226      end
30 ------------------------------------------------------------
0227      i32.const 10084
0228      i32.const 3
0229      i32.const 1
0230      local.get 0
0231      call 35
0232      drop
0233      local.get 2
0234      i32.load8_u offset=18
0235      local.tee 1
0236      if  ;; label = @2
31 ------------------------------------------------------------
0237        local.get 4
0238        local.get 1
0239        i32.const 2
0240        i32.shl
0241        i32.const 10112
0242        i32.add
0243        i32.load
0244        i32.store offset=16
0245        local.get 0
0246        i32.const 10088
0247        local.get 4
0248        i32.const 16
0249        i32.add
0250        call 33
0251      end
32 ------------------------------------------------------------
0252      local.get 2
0253      i32.load16_u offset=16
0254      local.tee 1
0255      if  ;; label = @2
33 ------------------------------------------------------------
0256        local.get 4
0257        local.get 1
0258        i32.const 100
0259        i32.div_u
0260        local.tee 2
0261        i32.store
0262        local.get 4
0263        local.get 1
0264        local.get 2
0265        i32.const 100
0266        i32.mul
0267        i32.sub
0268        i32.const 65535
0269        i32.and
0270        i32.store offset=4
0271        local.get 0
0272        i32.const 10144
0273        local.get 4
0274        call 33
0275      end
34 ------------------------------------------------------------
0276      i32.const 10
0277      local.get 0
0278      call 37
0279    end
35 ------------------------------------------------------------
0280    local.get 4
0281    i32.const 144
0282    i32.add
0283    global.set 0)
