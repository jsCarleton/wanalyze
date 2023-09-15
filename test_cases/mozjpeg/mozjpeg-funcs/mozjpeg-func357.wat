  (func (;357;) (type 9) (param i32 i32 i32 i32 i32) (result i32)
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
0109          i32.const 7
0110          i32.shl
0111          local.tee 11
0112          i32.mul
0113          local.set 6
0114          i32.const 0
0115          local.set 3
0116          loop  ;; label = @4
18 ------------------------------------------------------------
0117            local.get 0
0118            local.get 10
0119            local.get 1
0120            i32.load
0121            local.get 3
0122            i32.const 2
0123            i32.shl
0124            i32.add
0125            i32.load
0126            local.get 6
0127            local.get 5
0128            local.get 11
0129            i32.mul
0130            local.tee 7
0131            local.get 1
0132            i32.load offset=52
0133            call_indirect (type 6)
0134            local.get 1
0135            i32.load offset=16
0136            local.tee 8
0137            local.get 1
0138            i32.load offset=20
0139            local.tee 5
0140            local.get 3
0141            i32.add
0142            local.tee 3
0143            i32.le_s
0144            br_if 1 (;@3;)
19 ------------------------------------------------------------
0145            local.get 6
0146            local.get 7
0147            i32.add
0148            local.set 6
0149            local.get 5
0150            local.get 8
0151            local.get 3
0152            i32.sub
0153            local.tee 7
0154            local.get 5
0155            local.get 7
0156            i32.lt_s
0157            select
0158            local.tee 5
0159            local.get 1
0160            i32.load offset=28
0161            local.get 3
0162            local.get 1
0163            i32.load offset=24
0164            i32.add
0165            local.tee 7
0166            i32.sub
0167            local.tee 8
0168            local.get 5
0169            local.get 8
0170            i32.lt_s
0171            select
0172            local.tee 5
0173            local.get 1
0174            i32.load offset=4
0175            local.get 7
0176            i32.sub
0177            local.tee 7
0178            local.get 5
0179            local.get 7
0180            i32.lt_s
0181            select
0182            local.tee 5
0183            i32.const 0
0184            i32.gt_s
0185            br_if 0 (;@4;)
20 ------------------------------------------------------------
0186          end
21 ------------------------------------------------------------
0187        end
22 ------------------------------------------------------------
0188        local.get 1
0189        i32.const 0
0190        i32.store offset=36
0191      end
23 ------------------------------------------------------------
0192      local.get 1
0193      local.get 2
0194      local.get 9
0195      local.get 1
0196      i32.load offset=16
0197      local.tee 3
0198      i32.sub
0199      local.tee 6
0200      i32.const 0
0201      local.get 6
0202      i32.const 0
0203      i32.gt_s
0204      select
0205      local.get 1
0206      i32.load offset=24
0207      local.get 2
0208      i32.lt_u
0209      select
0210      local.tee 6
0211      i32.store offset=24
0212      local.get 3
0213      i32.const 1
0214      i32.lt_s
0215      br_if 0 (;@1;)
24 ------------------------------------------------------------
0216      local.get 1
0217      i32.load offset=20
0218      local.tee 5
0219      local.get 3
0220      local.get 5
0221      local.get 3
0222      i32.lt_s
0223      select
0224      local.tee 3
0225      local.get 1
0226      i32.load offset=28
0227      local.get 6
0228      i32.sub
0229      local.tee 5
0230      local.get 3
0231      local.get 5
0232      i32.lt_s
0233      select
0234      local.tee 3
0235      local.get 1
0236      i32.load offset=4
0237      local.get 6
0238      i32.sub
0239      local.tee 5
0240      local.get 3
0241      local.get 5
0242      i32.lt_s
0243      select
0244      local.tee 5
0245      i32.const 1
0246      i32.lt_s
0247      br_if 0 (;@1;)
25 ------------------------------------------------------------
0248      local.get 1
0249      i32.const 48
0250      i32.add
0251      local.set 10
0252      local.get 1
0253      i32.load offset=8
0254      i32.const 7
0255      i32.shl
0256      local.tee 11
0257      local.get 6
0258      i32.mul
0259      local.set 6
0260      i32.const 0
0261      local.set 3
0262      loop  ;; label = @2
26 ------------------------------------------------------------
0263        local.get 0
0264        local.get 10
0265        local.get 1
0266        i32.load
0267        local.get 3
0268        i32.const 2
0269        i32.shl
0270        i32.add
0271        i32.load
0272        local.get 6
0273        local.get 5
0274        local.get 11
0275        i32.mul
0276        local.tee 7
0277        local.get 1
0278        i32.load offset=48
0279        call_indirect (type 6)
0280        local.get 1
0281        i32.load offset=16
0282        local.tee 8
0283        local.get 1
0284        i32.load offset=20
0285        local.tee 5
0286        local.get 3
0287        i32.add
0288        local.tee 3
0289        i32.le_s
0290        br_if 1 (;@1;)
27 ------------------------------------------------------------
0291        local.get 6
0292        local.get 7
0293        i32.add
0294        local.set 6
0295        local.get 5
0296        local.get 8
0297        local.get 3
0298        i32.sub
0299        local.tee 7
0300        local.get 5
0301        local.get 7
0302        i32.lt_s
0303        select
0304        local.tee 5
0305        local.get 1
0306        i32.load offset=28
0307        local.get 3
0308        local.get 1
0309        i32.load offset=24
0310        i32.add
0311        local.tee 7
0312        i32.sub
0313        local.tee 8
0314        local.get 5
0315        local.get 8
0316        i32.lt_s
0317        select
0318        local.tee 5
0319        local.get 1
0320        i32.load offset=4
0321        local.get 7
0322        i32.sub
0323        local.tee 7
0324        local.get 5
0325        local.get 7
0326        i32.lt_s
0327        select
0328        local.tee 5
0329        i32.const 0
0330        i32.gt_s
0331        br_if 0 (;@2;)
28 ------------------------------------------------------------
0332      end
29 ------------------------------------------------------------
0333    end
30 ------------------------------------------------------------
0334    block  ;; label = @1
31 ------------------------------------------------------------
0335      block  ;; label = @2
32 ------------------------------------------------------------
0336        block  ;; label = @3
33 ------------------------------------------------------------
0337          local.get 1
0338          i32.load offset=28
0339          local.tee 3
0340          local.get 9
0341          i32.ge_u
0342          br_if 0 (;@3;)
34 ------------------------------------------------------------
0343          block  ;; label = @4
35 ------------------------------------------------------------
0344            block  ;; label = @5
36 ------------------------------------------------------------
0345              block  ;; label = @6
37 ------------------------------------------------------------
0346                local.get 3
0347                local.get 2
0348                i32.lt_u
0349                if  ;; label = @7
38 ------------------------------------------------------------
0350                  local.get 2
0351                  local.set 3
0352                  local.get 4
0353                  i32.eqz
0354                  br_if 1 (;@6;)
39 ------------------------------------------------------------
0355                  local.get 0
0356                  i32.load
0357                  local.tee 3
0358                  i32.const 22
0359                  i32.store offset=20
0360                  local.get 0
0361                  local.get 3
0362                  i32.load
0363                  call_indirect (type 0)
0364                  local.get 2
0365                  local.set 3
0366                  br 2 (;@5;)
40 ------------------------------------------------------------
0367                end
41 ------------------------------------------------------------
0368                local.get 4
0369                br_if 1 (;@5;)
42 ------------------------------------------------------------
0370              end
43 ------------------------------------------------------------
0371              local.get 1
0372              i32.load offset=32
0373              br_if 1 (;@4;)
44 ------------------------------------------------------------
0374              local.get 0
0375              i32.load
0376              local.tee 3
0377              i32.const 22
0378              i32.store offset=20
0379              local.get 0
0380              local.get 3
0381              i32.load
0382              call_indirect (type 0)
0383              br 4 (;@1;)
45 ------------------------------------------------------------
0384            end
46 ------------------------------------------------------------
0385            local.get 1
0386            local.get 9
0387            i32.store offset=28
0388            local.get 1
0389            i32.load offset=32
0390            i32.eqz
0391            br_if 2 (;@2;)
47 ------------------------------------------------------------
0392          end
48 ------------------------------------------------------------
0393          local.get 3
0394          local.get 1
0395          i32.load offset=24
0396          local.tee 0
0397          i32.sub
0398          local.tee 3
0399          local.get 9
0400          local.get 0
0401          i32.sub
0402          local.tee 0
0403          i32.ge_u
0404          br_if 0 (;@3;)
49 ------------------------------------------------------------
0405          local.get 1
0406          i32.load offset=8
0407          i32.const 7
0408          i32.shl
0409          local.set 6
0410          loop  ;; label = @4
50 ------------------------------------------------------------
0411            local.get 1
0412            i32.load
0413            local.get 3
0414            i32.const 2
0415            i32.shl
0416            i32.add
0417            i32.load
0418            local.get 6
0419            call 40
0420            local.get 3
0421            i32.const 1
0422            i32.add
0423            local.tee 3
0424            local.get 0
0425            i32.ne
0426            br_if 0 (;@4;)
51 ------------------------------------------------------------
0427          end
52 ------------------------------------------------------------
0428        end
53 ------------------------------------------------------------
0429        local.get 4
0430        i32.eqz
0431        br_if 1 (;@1;)
54 ------------------------------------------------------------
0432      end
55 ------------------------------------------------------------
0433      local.get 1
0434      i32.const 1
0435      i32.store offset=36
0436    end
56 ------------------------------------------------------------
0437    local.get 1
0438    i32.load
0439    local.get 2
0440    local.get 1
0441    i32.load offset=24
0442    i32.sub
0443    i32.const 2
0444    i32.shl
0445    i32.add)
