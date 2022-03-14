  (func (;42;) (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 1
0001    i32.const 16
0002    i32.add
0003    local.get 1
0004    local.get 2
0005    select
0006    local.set 3
0007    local.get 0
0008    local.get 1
0009    i32.const 2
0010    i32.shl
0011    i32.add
0012    local.tee 1
0013    i32.const 104
0014    i32.add
0015    local.get 1
0016    i32.const 88
0017    i32.add
0018    local.get 2
0019    select
0020    i32.load
0021    local.tee 1
0022    i32.eqz
0023    if  ;; label = @1
1 ------------------------------------------------------------
0024      local.get 0
0025      i32.load
0026      local.tee 2
0027      local.get 3
0028      i32.store offset=24
0029      local.get 2
0030      i32.const 50
0031      i32.store offset=20
0032      local.get 0
0033      local.get 0
0034      i32.load
0035      i32.load
0036      call_indirect (type 0)
0037    end
2 ------------------------------------------------------------
0038    local.get 1
0039    i32.load offset=276
0040    i32.eqz
0041    if  ;; label = @1
3 ------------------------------------------------------------
0042      local.get 0
0043      i32.load offset=24
0044      local.tee 2
0045      local.get 2
0046      i32.load
0047      local.tee 5
0048      i32.const 1
0049      i32.add
0050      i32.store
0051      local.get 5
0052      i32.const 255
0053      i32.store8
0054      local.get 2
0055      local.get 2
0056      i32.load offset=4
0057      i32.const -1
0058      i32.add
0059      local.tee 5
0060      i32.store offset=4
0061      block  ;; label = @2
4 ------------------------------------------------------------
0062        local.get 5
0063        br_if 0 (;@2;)
5 ------------------------------------------------------------
0064        local.get 0
0065        local.get 2
0066        i32.load offset=12
0067        call_indirect (type 1)
0068        br_if 0 (;@2;)
6 ------------------------------------------------------------
0069        local.get 0
0070        i32.load
0071        local.tee 2
0072        i32.const 24
0073        i32.store offset=20
0074        local.get 0
0075        local.get 2
0076        i32.load
0077        call_indirect (type 0)
0078      end
7 ------------------------------------------------------------
0079      local.get 0
0080      i32.load offset=24
0081      local.tee 2
0082      local.get 2
0083      i32.load
0084      local.tee 5
0085      i32.const 1
0086      i32.add
0087      i32.store
0088      local.get 5
0089      i32.const 196
0090      i32.store8
0091      local.get 2
0092      local.get 2
0093      i32.load offset=4
0094      i32.const -1
0095      i32.add
0096      local.tee 5
0097      i32.store offset=4
0098      block  ;; label = @2
8 ------------------------------------------------------------
0099        local.get 5
0100        br_if 0 (;@2;)
9 ------------------------------------------------------------
0101        local.get 0
0102        local.get 2
0103        i32.load offset=12
0104        call_indirect (type 1)
0105        br_if 0 (;@2;)
10 ------------------------------------------------------------
0106        local.get 0
0107        i32.load
0108        local.tee 2
0109        i32.const 24
0110        i32.store offset=20
0111        local.get 0
0112        local.get 2
0113        i32.load
0114        call_indirect (type 0)
0115      end
11 ------------------------------------------------------------
0116      local.get 1
0117      i32.load8_u offset=16
0118      local.set 5
0119      local.get 1
0120      i32.load8_u offset=15
0121      local.set 4
0122      local.get 1
0123      i32.load8_u offset=14
0124      local.set 6
0125      local.get 1
0126      i32.load8_u offset=13
0127      local.set 7
0128      local.get 1
0129      i32.load8_u offset=12
0130      local.set 8
0131      local.get 1
0132      i32.load8_u offset=11
0133      local.set 9
0134      local.get 1
0135      i32.load8_u offset=10
0136      local.set 10
0137      local.get 1
0138      i32.load8_u offset=9
0139      local.set 11
0140      local.get 1
0141      i32.load8_u offset=8
0142      local.set 12
0143      local.get 1
0144      i32.load8_u offset=7
0145      local.set 13
0146      local.get 1
0147      i32.load8_u offset=6
0148      local.set 14
0149      local.get 1
0150      i32.load8_u offset=5
0151      local.set 15
0152      local.get 1
0153      i32.load8_u offset=4
0154      local.set 16
0155      local.get 1
0156      i32.load8_u offset=3
0157      local.set 17
0158      local.get 1
0159      i32.load8_u offset=2
0160      local.set 18
0161      local.get 1
0162      i32.load8_u offset=1
0163      local.set 19
0164      local.get 0
0165      i32.load offset=24
0166      local.tee 2
0167      local.get 2
0168      i32.load
0169      local.tee 20
0170      i32.const 1
0171      i32.add
0172      i32.store
0173      local.get 20
0174      local.get 5
0175      local.get 4
0176      local.get 6
0177      local.get 7
0178      local.get 8
0179      local.get 9
0180      local.get 10
0181      local.get 11
0182      local.get 12
0183      local.get 13
0184      local.get 14
0185      local.get 15
0186      local.get 16
0187      local.get 17
0188      local.get 18
0189      local.get 19
0190      i32.add
0191      i32.add
0192      i32.add
0193      i32.add
0194      i32.add
0195      i32.add
0196      i32.add
0197      i32.add
0198      i32.add
0199      i32.add
0200      i32.add
0201      i32.add
0202      i32.add
0203      i32.add
0204      i32.add
0205      local.tee 5
0206      i32.const 19
0207      i32.add
0208      local.tee 4
0209      i32.const 8
0210      i32.shr_u
0211      i32.store8
0212      local.get 2
0213      local.get 2
0214      i32.load offset=4
0215      i32.const -1
0216      i32.add
0217      local.tee 6
0218      i32.store offset=4
0219      block  ;; label = @2
12 ------------------------------------------------------------
0220        local.get 6
0221        br_if 0 (;@2;)
13 ------------------------------------------------------------
0222        local.get 0
0223        local.get 2
0224        i32.load offset=12
0225        call_indirect (type 1)
0226        br_if 0 (;@2;)
14 ------------------------------------------------------------
0227        local.get 0
0228        i32.load
0229        local.tee 2
0230        i32.const 24
0231        i32.store offset=20
0232        local.get 0
0233        local.get 2
0234        i32.load
0235        call_indirect (type 0)
0236      end
15 ------------------------------------------------------------
0237      local.get 0
0238      i32.load offset=24
0239      local.tee 2
0240      local.get 2
0241      i32.load
0242      local.tee 6
0243      i32.const 1
0244      i32.add
0245      i32.store
0246      local.get 6
0247      local.get 4
0248      i32.store8
0249      local.get 2
0250      local.get 2
0251      i32.load offset=4
0252      i32.const -1
0253      i32.add
0254      local.tee 4
0255      i32.store offset=4
0256      block  ;; label = @2
16 ------------------------------------------------------------
0257        local.get 4
0258        br_if 0 (;@2;)
17 ------------------------------------------------------------
0259        local.get 0
0260        local.get 2
0261        i32.load offset=12
0262        call_indirect (type 1)
0263        br_if 0 (;@2;)
18 ------------------------------------------------------------
0264        local.get 0
0265        i32.load
0266        local.tee 2
0267        i32.const 24
0268        i32.store offset=20
0269        local.get 0
0270        local.get 2
0271        i32.load
0272        call_indirect (type 0)
0273      end
19 ------------------------------------------------------------
0274      local.get 0
0275      i32.load offset=24
0276      local.tee 2
0277      local.get 2
0278      i32.load
0279      local.tee 4
0280      i32.const 1
0281      i32.add
0282      i32.store
0283      local.get 4
0284      local.get 3
0285      i32.store8
0286      local.get 2
0287      local.get 2
0288      i32.load offset=4
0289      i32.const -1
0290      i32.add
0291      local.tee 3
0292      i32.store offset=4
0293      block  ;; label = @2
20 ------------------------------------------------------------
0294        local.get 3
0295        br_if 0 (;@2;)
21 ------------------------------------------------------------
0296        local.get 0
0297        local.get 2
0298        i32.load offset=12
0299        call_indirect (type 1)
0300        br_if 0 (;@2;)
22 ------------------------------------------------------------
0301        local.get 0
0302        i32.load
0303        local.tee 2
0304        i32.const 24
0305        i32.store offset=20
0306        local.get 0
0307        local.get 2
0308        i32.load
0309        call_indirect (type 0)
0310      end
23 ------------------------------------------------------------
0311      i32.const 1
0312      local.set 2
0313      loop  ;; label = @2
24 ------------------------------------------------------------
0314        local.get 1
0315        local.get 2
0316        i32.add
0317        i32.load8_u
0318        local.set 4
0319        local.get 0
0320        i32.load offset=24
0321        local.tee 3
0322        local.get 3
0323        i32.load
0324        local.tee 6
0325        i32.const 1
0326        i32.add
0327        i32.store
0328        local.get 6
0329        local.get 4
0330        i32.store8
0331        local.get 3
0332        local.get 3
0333        i32.load offset=4
0334        i32.const -1
0335        i32.add
0336        local.tee 4
0337        i32.store offset=4
0338        block  ;; label = @3
25 ------------------------------------------------------------
0339          local.get 4
0340          br_if 0 (;@3;)
26 ------------------------------------------------------------
0341          local.get 0
0342          local.get 3
0343          i32.load offset=12
0344          call_indirect (type 1)
0345          br_if 0 (;@3;)
27 ------------------------------------------------------------
0346          local.get 0
0347          i32.load
0348          local.tee 3
0349          i32.const 24
0350          i32.store offset=20
0351          local.get 0
0352          local.get 3
0353          i32.load
0354          call_indirect (type 0)
0355        end
28 ------------------------------------------------------------
0356        local.get 2
0357        i32.const 1
0358        i32.add
0359        local.tee 2
0360        i32.const 17
0361        i32.ne
0362        br_if 0 (;@2;)
29 ------------------------------------------------------------
0363      end
30 ------------------------------------------------------------
0364      local.get 5
0365      if  ;; label = @2
31 ------------------------------------------------------------
0366        i32.const 0
0367        local.set 2
0368        loop  ;; label = @3
32 ------------------------------------------------------------
0369          local.get 1
0370          local.get 2
0371          i32.add
0372          i32.load8_u offset=17
0373          local.set 4
0374          local.get 0
0375          i32.load offset=24
0376          local.tee 3
0377          local.get 3
0378          i32.load
0379          local.tee 6
0380          i32.const 1
0381          i32.add
0382          i32.store
0383          local.get 6
0384          local.get 4
0385          i32.store8
0386          local.get 3
0387          local.get 3
0388          i32.load offset=4
0389          i32.const -1
0390          i32.add
0391          local.tee 4
0392          i32.store offset=4
0393          block  ;; label = @4
33 ------------------------------------------------------------
0394            local.get 4
0395            br_if 0 (;@4;)
34 ------------------------------------------------------------
0396            local.get 0
0397            local.get 3
0398            i32.load offset=12
0399            call_indirect (type 1)
0400            br_if 0 (;@4;)
35 ------------------------------------------------------------
0401            local.get 0
0402            i32.load
0403            local.tee 3
0404            i32.const 24
0405            i32.store offset=20
0406            local.get 0
0407            local.get 3
0408            i32.load
0409            call_indirect (type 0)
0410          end
36 ------------------------------------------------------------
0411          local.get 2
0412          i32.const 1
0413          i32.add
0414          local.tee 2
0415          local.get 5
0416          i32.ne
0417          br_if 0 (;@3;)
37 ------------------------------------------------------------
0418        end
38 ------------------------------------------------------------
0419      end
39 ------------------------------------------------------------
0420      local.get 1
0421      i32.const 1
0422      i32.store offset=276
0423    end
40 ------------------------------------------------------------)
