  (func (;356;) (type 9) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    block  ;; label = @1
1 ------------------------------------------------------------
0001      block  ;; label = @2
2 ------------------------------------------------------------
0002        local.get 2
0003        local.get 3
0004        i32.add
0005        local.tee 9
0006        local.get 1
0007        i32.load offset=4
0008        i32.gt_u
0009        br_if 0 (;@2;)
3 ------------------------------------------------------------
0010        local.get 1
0011        i32.load offset=12
0012        local.get 3
0013        i32.lt_u
0014        br_if 0 (;@2;)
4 ------------------------------------------------------------
0015        local.get 1
0016        i32.load
0017        br_if 1 (;@1;)
5 ------------------------------------------------------------
0018      end
6 ------------------------------------------------------------
0019      local.get 0
0020      i32.load
0021      local.tee 3
0022      i32.const 22
0023      i32.store offset=20
0024      local.get 0
0025      local.get 3
0026      i32.load
0027      call_indirect (type 0)
0028    end
7 ------------------------------------------------------------
0029    block  ;; label = @1
8 ------------------------------------------------------------
0030      local.get 1
0031      i32.load offset=24
0032      local.tee 3
0033      local.get 2
0034      i32.le_u
0035      if  ;; label = @2
9 ------------------------------------------------------------
0036        local.get 9
0037        local.get 1
0038        i32.load offset=16
0039        local.get 3
0040        i32.add
0041        i32.le_u
0042        br_if 1 (;@1;)
10 ------------------------------------------------------------
0043      end
11 ------------------------------------------------------------
0044      local.get 1
0045      i32.load offset=40
0046      i32.eqz
0047      if  ;; label = @2
12 ------------------------------------------------------------
0048        local.get 0
0049        i32.load
0050        local.tee 3
0051        i32.const 69
0052        i32.store offset=20
0053        local.get 0
0054        local.get 3
0055        i32.load
0056        call_indirect (type 0)
0057      end
13 ------------------------------------------------------------
0058      local.get 1
0059      i32.load offset=36
0060      if  ;; label = @2
14 ------------------------------------------------------------
0061        block  ;; label = @3
15 ------------------------------------------------------------
0062          local.get 1
0063          i32.load offset=16
0064          local.tee 3
0065          i32.const 1
0066          i32.lt_s
0067          br_if 0 (;@3;)
16 ------------------------------------------------------------
0068          local.get 1
0069          i32.load offset=20
0070          local.tee 6
0071          local.get 3
0072          local.get 6
0073          local.get 3
0074          i32.lt_s
0075          select
0076          local.tee 6
0077          local.get 1
0078          i32.load offset=28
0079          local.get 1
0080          i32.load offset=24
0081          local.tee 3
0082          i32.sub
0083          local.tee 5
0084          local.get 6
0085          local.get 5
0086          i32.lt_s
0087          select
0088          local.tee 6
0089          local.get 1
0090          i32.load offset=4
0091          local.get 3
0092          i32.sub
0093          local.tee 5
0094          local.get 6
0095          local.get 5
0096          i32.lt_s
0097          select
0098          local.tee 5
0099          i32.const 1
0100          i32.lt_s
0101          br_if 0 (;@3;)
17 ------------------------------------------------------------
0102          local.get 1
0103          i32.const 48
0104          i32.add
0105          local.set 10
0106          local.get 3
0107          local.get 1
0108          i32.load offset=8
0109          local.tee 11
0110          i32.mul
0111          local.set 6
0112          i32.const 0
0113          local.set 3
0114          loop  ;; label = @4
18 ------------------------------------------------------------
0115            local.get 0
0116            local.get 10
0117            local.get 1
0118            i32.load
0119            local.get 3
0120            i32.const 2
0121            i32.shl
0122            i32.add
0123            i32.load
0124            local.get 6
0125            local.get 5
0126            local.get 11
0127            i32.mul
0128            local.tee 7
0129            local.get 1
0130            i32.load offset=52
0131            call_indirect (type 6)
0132            local.get 1
0133            i32.load offset=16
0134            local.tee 8
0135            local.get 1
0136            i32.load offset=20
0137            local.tee 5
0138            local.get 3
0139            i32.add
0140            local.tee 3
0141            i32.le_s
0142            br_if 1 (;@3;)
19 ------------------------------------------------------------
0143            local.get 6
0144            local.get 7
0145            i32.add
0146            local.set 6
0147            local.get 5
0148            local.get 8
0149            local.get 3
0150            i32.sub
0151            local.tee 7
0152            local.get 5
0153            local.get 7
0154            i32.lt_s
0155            select
0156            local.tee 5
0157            local.get 1
0158            i32.load offset=28
0159            local.get 3
0160            local.get 1
0161            i32.load offset=24
0162            i32.add
0163            local.tee 7
0164            i32.sub
0165            local.tee 8
0166            local.get 5
0167            local.get 8
0168            i32.lt_s
0169            select
0170            local.tee 5
0171            local.get 1
0172            i32.load offset=4
0173            local.get 7
0174            i32.sub
0175            local.tee 7
0176            local.get 5
0177            local.get 7
0178            i32.lt_s
0179            select
0180            local.tee 5
0181            i32.const 0
0182            i32.gt_s
0183            br_if 0 (;@4;)
20 ------------------------------------------------------------
0184          end
21 ------------------------------------------------------------
0185        end
22 ------------------------------------------------------------
0186        local.get 1
0187        i32.const 0
0188        i32.store offset=36
0189      end
23 ------------------------------------------------------------
0190      local.get 1
0191      local.get 2
0192      local.get 9
0193      local.get 1
0194      i32.load offset=16
0195      local.tee 3
0196      i32.sub
0197      local.tee 6
0198      i32.const 0
0199      local.get 6
0200      i32.const 0
0201      i32.gt_s
0202      select
0203      local.get 1
0204      i32.load offset=24
0205      local.get 2
0206      i32.lt_u
0207      select
0208      local.tee 6
0209      i32.store offset=24
0210      local.get 3
0211      i32.const 1
0212      i32.lt_s
0213      br_if 0 (;@1;)
24 ------------------------------------------------------------
0214      local.get 1
0215      i32.load offset=20
0216      local.tee 5
0217      local.get 3
0218      local.get 5
0219      local.get 3
0220      i32.lt_s
0221      select
0222      local.tee 3
0223      local.get 1
0224      i32.load offset=28
0225      local.get 6
0226      i32.sub
0227      local.tee 5
0228      local.get 3
0229      local.get 5
0230      i32.lt_s
0231      select
0232      local.tee 3
0233      local.get 1
0234      i32.load offset=4
0235      local.get 6
0236      i32.sub
0237      local.tee 5
0238      local.get 3
0239      local.get 5
0240      i32.lt_s
0241      select
0242      local.tee 5
0243      i32.const 1
0244      i32.lt_s
0245      br_if 0 (;@1;)
25 ------------------------------------------------------------
0246      local.get 1
0247      i32.const 48
0248      i32.add
0249      local.set 10
0250      local.get 1
0251      i32.load offset=8
0252      local.tee 11
0253      local.get 6
0254      i32.mul
0255      local.set 6
0256      i32.const 0
0257      local.set 3
0258      loop  ;; label = @2
26 ------------------------------------------------------------
0259        local.get 0
0260        local.get 10
0261        local.get 1
0262        i32.load
0263        local.get 3
0264        i32.const 2
0265        i32.shl
0266        i32.add
0267        i32.load
0268        local.get 6
0269        local.get 5
0270        local.get 11
0271        i32.mul
0272        local.tee 7
0273        local.get 1
0274        i32.load offset=48
0275        call_indirect (type 6)
0276        local.get 1
0277        i32.load offset=16
0278        local.tee 8
0279        local.get 1
0280        i32.load offset=20
0281        local.tee 5
0282        local.get 3
0283        i32.add
0284        local.tee 3
0285        i32.le_s
0286        br_if 1 (;@1;)
27 ------------------------------------------------------------
0287        local.get 6
0288        local.get 7
0289        i32.add
0290        local.set 6
0291        local.get 5
0292        local.get 8
0293        local.get 3
0294        i32.sub
0295        local.tee 7
0296        local.get 5
0297        local.get 7
0298        i32.lt_s
0299        select
0300        local.tee 5
0301        local.get 1
0302        i32.load offset=28
0303        local.get 3
0304        local.get 1
0305        i32.load offset=24
0306        i32.add
0307        local.tee 7
0308        i32.sub
0309        local.tee 8
0310        local.get 5
0311        local.get 8
0312        i32.lt_s
0313        select
0314        local.tee 5
0315        local.get 1
0316        i32.load offset=4
0317        local.get 7
0318        i32.sub
0319        local.tee 7
0320        local.get 5
0321        local.get 7
0322        i32.lt_s
0323        select
0324        local.tee 5
0325        i32.const 0
0326        i32.gt_s
0327        br_if 0 (;@2;)
28 ------------------------------------------------------------
0328      end
29 ------------------------------------------------------------
0329    end
30 ------------------------------------------------------------
0330    block  ;; label = @1
31 ------------------------------------------------------------
0331      block  ;; label = @2
32 ------------------------------------------------------------
0332        block  ;; label = @3
33 ------------------------------------------------------------
0333          local.get 1
0334          i32.load offset=28
0335          local.tee 3
0336          local.get 9
0337          i32.ge_u
0338          br_if 0 (;@3;)
34 ------------------------------------------------------------
0339          block  ;; label = @4
35 ------------------------------------------------------------
0340            block  ;; label = @5
36 ------------------------------------------------------------
0341              block  ;; label = @6
37 ------------------------------------------------------------
0342                local.get 3
0343                local.get 2
0344                i32.lt_u
0345                if  ;; label = @7
38 ------------------------------------------------------------
0346                  local.get 2
0347                  local.set 3
0348                  local.get 4
0349                  i32.eqz
0350                  br_if 1 (;@6;)
39 ------------------------------------------------------------
0351                  local.get 0
0352                  i32.load
0353                  local.tee 3
0354                  i32.const 22
0355                  i32.store offset=20
0356                  local.get 0
0357                  local.get 3
0358                  i32.load
0359                  call_indirect (type 0)
0360                  local.get 2
0361                  local.set 3
0362                  br 2 (;@5;)
40 ------------------------------------------------------------
0363                end
41 ------------------------------------------------------------
0364                local.get 4
0365                br_if 1 (;@5;)
42 ------------------------------------------------------------
0366              end
43 ------------------------------------------------------------
0367              local.get 1
0368              i32.load offset=32
0369              br_if 1 (;@4;)
44 ------------------------------------------------------------
0370              local.get 0
0371              i32.load
0372              local.tee 3
0373              i32.const 22
0374              i32.store offset=20
0375              local.get 0
0376              local.get 3
0377              i32.load
0378              call_indirect (type 0)
0379              br 4 (;@1;)
45 ------------------------------------------------------------
0380            end
46 ------------------------------------------------------------
0381            local.get 1
0382            local.get 9
0383            i32.store offset=28
0384            local.get 1
0385            i32.load offset=32
0386            i32.eqz
0387            br_if 2 (;@2;)
47 ------------------------------------------------------------
0388          end
48 ------------------------------------------------------------
0389          local.get 3
0390          local.get 1
0391          i32.load offset=24
0392          local.tee 0
0393          i32.sub
0394          local.tee 3
0395          local.get 9
0396          local.get 0
0397          i32.sub
0398          local.tee 0
0399          i32.ge_u
0400          br_if 0 (;@3;)
49 ------------------------------------------------------------
0401          local.get 1
0402          i32.load offset=8
0403          local.set 6
0404          loop  ;; label = @4
50 ------------------------------------------------------------
0405            local.get 1
0406            i32.load
0407            local.get 3
0408            i32.const 2
0409            i32.shl
0410            i32.add
0411            i32.load
0412            local.get 6
0413            call 40
0414            local.get 3
0415            i32.const 1
0416            i32.add
0417            local.tee 3
0418            local.get 0
0419            i32.ne
0420            br_if 0 (;@4;)
51 ------------------------------------------------------------
0421          end
52 ------------------------------------------------------------
0422        end
53 ------------------------------------------------------------
0423        local.get 4
0424        i32.eqz
0425        br_if 1 (;@1;)
54 ------------------------------------------------------------
0426      end
55 ------------------------------------------------------------
0427      local.get 1
0428      i32.const 1
0429      i32.store offset=36
0430    end
56 ------------------------------------------------------------
0431    local.get 1
0432    i32.load
0433    local.get 2
0434    local.get 1
0435    i32.load offset=24
0436    i32.sub
0437    i32.const 2
0438    i32.shl
0439    i32.add)
