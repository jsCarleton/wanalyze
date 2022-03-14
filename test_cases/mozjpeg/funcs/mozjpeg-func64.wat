  (func (;64;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    local.get 1
0002    i32.const 2
0003    i32.shl
0004    i32.add
0005    i32.load offset=72
0006    local.tee 6
0007    i32.eqz
0008    if  ;; label = @1
1 ------------------------------------------------------------
0009      local.get 0
0010      i32.load
0011      local.tee 2
0012      local.get 1
0013      i32.store offset=24
0014      local.get 2
0015      i32.const 52
0016      i32.store offset=20
0017      local.get 0
0018      local.get 0
0019      i32.load
0020      i32.load
0021      call_indirect (type 0)
0022    end
2 ------------------------------------------------------------
0023    i32.const 0
0024    local.set 2
0025    loop  ;; label = @1
3 ------------------------------------------------------------
0026      i32.const 1
0027      local.get 5
0028      local.get 6
0029      local.get 2
0030      i32.const 1
0031      i32.shl
0032      i32.add
0033      i32.load16_u
0034      i32.const 255
0035      i32.gt_u
0036      select
0037      local.set 5
0038      local.get 2
0039      i32.const 1
0040      i32.add
0041      local.tee 2
0042      i32.const 64
0043      i32.ne
0044      br_if 0 (;@1;)
4 ------------------------------------------------------------
0045    end
5 ------------------------------------------------------------
0046    local.get 6
0047    i32.load offset=128
0048    i32.eqz
0049    if  ;; label = @1
6 ------------------------------------------------------------
0050      local.get 0
0051      i32.load offset=24
0052      local.tee 2
0053      local.get 2
0054      i32.load
0055      local.tee 3
0056      i32.const 1
0057      i32.add
0058      i32.store
0059      local.get 3
0060      i32.const 255
0061      i32.store8
0062      local.get 2
0063      local.get 2
0064      i32.load offset=4
0065      i32.const -1
0066      i32.add
0067      local.tee 3
0068      i32.store offset=4
0069      block  ;; label = @2
7 ------------------------------------------------------------
0070        local.get 3
0071        br_if 0 (;@2;)
8 ------------------------------------------------------------
0072        local.get 0
0073        local.get 2
0074        i32.load offset=12
0075        call_indirect (type 1)
0076        br_if 0 (;@2;)
9 ------------------------------------------------------------
0077        local.get 0
0078        i32.load
0079        local.tee 2
0080        i32.const 24
0081        i32.store offset=20
0082        local.get 0
0083        local.get 2
0084        i32.load
0085        call_indirect (type 0)
0086      end
10 ------------------------------------------------------------
0087      local.get 0
0088      i32.load offset=24
0089      local.tee 2
0090      local.get 2
0091      i32.load
0092      local.tee 3
0093      i32.const 1
0094      i32.add
0095      i32.store
0096      local.get 3
0097      i32.const 219
0098      i32.store8
0099      local.get 2
0100      local.get 2
0101      i32.load offset=4
0102      i32.const -1
0103      i32.add
0104      local.tee 3
0105      i32.store offset=4
0106      block  ;; label = @2
11 ------------------------------------------------------------
0107        local.get 3
0108        br_if 0 (;@2;)
12 ------------------------------------------------------------
0109        local.get 0
0110        local.get 2
0111        i32.load offset=12
0112        call_indirect (type 1)
0113        br_if 0 (;@2;)
13 ------------------------------------------------------------
0114        local.get 0
0115        i32.load
0116        local.tee 2
0117        i32.const 24
0118        i32.store offset=20
0119        local.get 0
0120        local.get 2
0121        i32.load
0122        call_indirect (type 0)
0123      end
14 ------------------------------------------------------------
0124      local.get 0
0125      i32.load offset=24
0126      local.tee 2
0127      local.get 2
0128      i32.load
0129      local.tee 3
0130      i32.const 1
0131      i32.add
0132      i32.store
0133      local.get 3
0134      i32.const 0
0135      i32.store8
0136      local.get 2
0137      local.get 2
0138      i32.load offset=4
0139      i32.const -1
0140      i32.add
0141      local.tee 3
0142      i32.store offset=4
0143      block  ;; label = @2
15 ------------------------------------------------------------
0144        local.get 3
0145        br_if 0 (;@2;)
16 ------------------------------------------------------------
0146        local.get 0
0147        local.get 2
0148        i32.load offset=12
0149        call_indirect (type 1)
0150        br_if 0 (;@2;)
17 ------------------------------------------------------------
0151        local.get 0
0152        i32.load
0153        local.tee 2
0154        i32.const 24
0155        i32.store offset=20
0156        local.get 0
0157        local.get 2
0158        i32.load
0159        call_indirect (type 0)
0160      end
18 ------------------------------------------------------------
0161      local.get 0
0162      i32.load offset=24
0163      local.tee 2
0164      local.get 2
0165      i32.load
0166      local.tee 3
0167      i32.const 1
0168      i32.add
0169      i32.store
0170      local.get 3
0171      i32.const -125
0172      i32.const 67
0173      local.get 5
0174      select
0175      i32.store8
0176      local.get 2
0177      local.get 2
0178      i32.load offset=4
0179      i32.const -1
0180      i32.add
0181      local.tee 3
0182      i32.store offset=4
0183      block  ;; label = @2
19 ------------------------------------------------------------
0184        local.get 3
0185        br_if 0 (;@2;)
20 ------------------------------------------------------------
0186        local.get 0
0187        local.get 2
0188        i32.load offset=12
0189        call_indirect (type 1)
0190        br_if 0 (;@2;)
21 ------------------------------------------------------------
0191        local.get 0
0192        i32.load
0193        local.tee 2
0194        i32.const 24
0195        i32.store offset=20
0196        local.get 0
0197        local.get 2
0198        i32.load
0199        call_indirect (type 0)
0200      end
22 ------------------------------------------------------------
0201      local.get 0
0202      i32.load offset=24
0203      local.tee 2
0204      local.get 2
0205      i32.load
0206      local.tee 3
0207      i32.const 1
0208      i32.add
0209      i32.store
0210      local.get 3
0211      local.get 5
0212      i32.const 4
0213      i32.shl
0214      local.get 1
0215      i32.add
0216      i32.store8
0217      local.get 2
0218      local.get 2
0219      i32.load offset=4
0220      i32.const -1
0221      i32.add
0222      local.tee 1
0223      i32.store offset=4
0224      block  ;; label = @2
23 ------------------------------------------------------------
0225        local.get 1
0226        br_if 0 (;@2;)
24 ------------------------------------------------------------
0227        local.get 0
0228        local.get 2
0229        i32.load offset=12
0230        call_indirect (type 1)
0231        br_if 0 (;@2;)
25 ------------------------------------------------------------
0232        local.get 0
0233        i32.load
0234        local.tee 1
0235        i32.const 24
0236        i32.store offset=20
0237        local.get 0
0238        local.get 1
0239        i32.load
0240        call_indirect (type 0)
0241      end
26 ------------------------------------------------------------
0242      i32.const 0
0243      local.set 2
0244      block  ;; label = @2
27 ------------------------------------------------------------
0245        local.get 5
0246        if  ;; label = @3
28 ------------------------------------------------------------
0247          loop  ;; label = @4
29 ------------------------------------------------------------
0248            local.get 6
0249            local.get 2
0250            i32.const 2
0251            i32.shl
0252            i32.const 142864
0253            i32.add
0254            i32.load
0255            i32.const 1
0256            i32.shl
0257            i32.add
0258            i32.load16_u
0259            local.set 3
0260            local.get 0
0261            i32.load offset=24
0262            local.tee 1
0263            local.get 1
0264            i32.load
0265            local.tee 4
0266            i32.const 1
0267            i32.add
0268            i32.store
0269            local.get 4
0270            local.get 3
0271            i32.const 8
0272            i32.shr_u
0273            i32.store8
0274            local.get 1
0275            local.get 1
0276            i32.load offset=4
0277            i32.const -1
0278            i32.add
0279            local.tee 4
0280            i32.store offset=4
0281            block  ;; label = @5
30 ------------------------------------------------------------
0282              local.get 4
0283              br_if 0 (;@5;)
31 ------------------------------------------------------------
0284              local.get 0
0285              local.get 1
0286              i32.load offset=12
0287              call_indirect (type 1)
0288              br_if 0 (;@5;)
32 ------------------------------------------------------------
0289              local.get 0
0290              i32.load
0291              local.tee 1
0292              i32.const 24
0293              i32.store offset=20
0294              local.get 0
0295              local.get 1
0296              i32.load
0297              call_indirect (type 0)
0298            end
33 ------------------------------------------------------------
0299            local.get 0
0300            i32.load offset=24
0301            local.tee 1
0302            local.get 1
0303            i32.load
0304            local.tee 4
0305            i32.const 1
0306            i32.add
0307            i32.store
0308            local.get 4
0309            local.get 3
0310            i32.store8
0311            local.get 1
0312            local.get 1
0313            i32.load offset=4
0314            i32.const -1
0315            i32.add
0316            local.tee 3
0317            i32.store offset=4
0318            block  ;; label = @5
34 ------------------------------------------------------------
0319              local.get 3
0320              br_if 0 (;@5;)
35 ------------------------------------------------------------
0321              local.get 0
0322              local.get 1
0323              i32.load offset=12
0324              call_indirect (type 1)
0325              br_if 0 (;@5;)
36 ------------------------------------------------------------
0326              local.get 0
0327              i32.load
0328              local.tee 1
0329              i32.const 24
0330              i32.store offset=20
0331              local.get 0
0332              local.get 1
0333              i32.load
0334              call_indirect (type 0)
0335            end
37 ------------------------------------------------------------
0336            local.get 2
0337            i32.const 1
0338            i32.add
0339            local.tee 2
0340            i32.const 64
0341            i32.ne
0342            br_if 0 (;@4;)
38 ------------------------------------------------------------
0343            br 2 (;@2;)
39 ------------------------------------------------------------
0344            unreachable
40 ------------------------------------------------------------
0345          end
41 ------------------------------------------------------------
0346          unreachable
42 ------------------------------------------------------------
0347        end
43 ------------------------------------------------------------
0348        loop  ;; label = @3
44 ------------------------------------------------------------
0349          local.get 6
0350          local.get 2
0351          i32.const 2
0352          i32.shl
0353          i32.const 142864
0354          i32.add
0355          i32.load
0356          i32.const 1
0357          i32.shl
0358          i32.add
0359          i32.load8_u
0360          local.set 3
0361          local.get 0
0362          i32.load offset=24
0363          local.tee 1
0364          local.get 1
0365          i32.load
0366          local.tee 4
0367          i32.const 1
0368          i32.add
0369          i32.store
0370          local.get 4
0371          local.get 3
0372          i32.store8
0373          local.get 1
0374          local.get 1
0375          i32.load offset=4
0376          i32.const -1
0377          i32.add
0378          local.tee 3
0379          i32.store offset=4
0380          block  ;; label = @4
45 ------------------------------------------------------------
0381            local.get 3
0382            br_if 0 (;@4;)
46 ------------------------------------------------------------
0383            local.get 0
0384            local.get 1
0385            i32.load offset=12
0386            call_indirect (type 1)
0387            br_if 0 (;@4;)
47 ------------------------------------------------------------
0388            local.get 0
0389            i32.load
0390            local.tee 1
0391            i32.const 24
0392            i32.store offset=20
0393            local.get 0
0394            local.get 1
0395            i32.load
0396            call_indirect (type 0)
0397          end
48 ------------------------------------------------------------
0398          local.get 2
0399          i32.const 1
0400          i32.add
0401          local.tee 2
0402          i32.const 64
0403          i32.ne
0404          br_if 0 (;@3;)
49 ------------------------------------------------------------
0405        end
50 ------------------------------------------------------------
0406      end
51 ------------------------------------------------------------
0407      local.get 6
0408      i32.const 1
0409      i32.store offset=128
0410    end
52 ------------------------------------------------------------
0411    local.get 5)
