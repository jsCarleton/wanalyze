  (func (;72;) (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 2128
0002    i32.sub
0003    local.tee 3
0004    global.set 0
0005    local.get 3
0006    i32.const 2096
0007    i32.add
0008    i64.const 0
0009    i64.store
0010    local.get 3
0011    i32.const 2104
0012    i32.add
0013    i64.const 0
0014    i64.store
0015    local.get 3
0016    i32.const 2112
0017    i32.add
0018    i32.const 0
0019    i32.store8
0020    local.get 3
0021    i64.const 0
0022    i64.store
0023    local.get 3
0024    i64.const 0
0025    i64.store
0026    local.get 3
0027    i32.const 1040
0028    i32.add
0029    i32.const 0
0030    i32.const 1028
0031    call 27
0032    drop
0033    local.get 3
0034    i32.const 255
0035    i32.const 1028
0036    call 27
0037    local.set 5
0038    local.get 2
0039    i32.const 1
0040    i32.store
0041    i32.const 1000000000
0042    local.set 8
0043    i32.const -1
0044    local.set 7
0045    loop  ;; label = @1
1 ------------------------------------------------------------
0046      local.get 8
0047      local.get 2
0048      local.get 6
0049      i32.const 2
0050      i32.shl
0051      i32.add
0052      i32.load
0053      local.tee 3
0054      local.get 3
0055      i32.eqz
0056      local.get 3
0057      local.get 8
0058      i32.gt_s
0059      i32.or
0060      local.tee 3
0061      select
0062      local.set 8
0063      local.get 7
0064      local.get 6
0065      local.get 3
0066      select
0067      local.set 7
0068      i32.const 1000000000
0069      local.set 4
0070      i32.const 0
0071      local.set 3
0072      i32.const -1
0073      local.set 9
0074      local.get 6
0075      i32.const 1
0076      i32.add
0077      local.tee 6
0078      i32.const 257
0079      i32.ne
0080      br_if 0 (;@1;)
2 ------------------------------------------------------------
0081      loop  ;; label = @2
3 ------------------------------------------------------------
0082        local.get 4
0083        local.get 2
0084        local.get 3
0085        i32.const 2
0086        i32.shl
0087        i32.add
0088        i32.load
0089        local.tee 6
0090        local.get 6
0091        i32.eqz
0092        local.get 6
0093        local.get 4
0094        i32.gt_s
0095        i32.or
0096        local.get 3
0097        local.get 7
0098        i32.eq
0099        i32.or
0100        local.tee 6
0101        select
0102        local.set 4
0103        local.get 9
0104        local.get 3
0105        local.get 6
0106        select
0107        local.set 9
0108        local.get 3
0109        i32.const 1
0110        i32.add
0111        local.tee 3
0112        i32.const 257
0113        i32.ne
0114        br_if 0 (;@2;)
4 ------------------------------------------------------------
0115      end
5 ------------------------------------------------------------
0116      local.get 9
0117      i32.const -1
0118      i32.le_s
0119      if  ;; label = @2
6 ------------------------------------------------------------
0120        i32.const 0
0121        local.set 3
0122        loop  ;; label = @3
7 ------------------------------------------------------------
0123          local.get 5
0124          i32.const 1040
0125          i32.add
0126          local.get 3
0127          i32.const 2
0128          i32.shl
0129          i32.add
0130          i32.load
0131          local.tee 2
0132          if  ;; label = @4
8 ------------------------------------------------------------
0133            local.get 2
0134            i32.const 33
0135            i32.ge_s
0136            if  ;; label = @5
9 ------------------------------------------------------------
0137              local.get 0
0138              i32.load
0139              local.tee 4
0140              i32.const 39
0141              i32.store
0142              local.get 0
0143              local.get 4
0144              i32.load
0145              call_indirect (type 0)
0146            end
10 ------------------------------------------------------------
0147            local.get 5
0148            i32.const 2080
0149            i32.add
0150            local.get 2
0151            i32.add
0152            local.tee 2
0153            local.get 2
0154            i32.load8_u
0155            i32.const 1
0156            i32.add
0157            i32.store8
0158          end
11 ------------------------------------------------------------
0159          local.get 3
0160          i32.const 1
0161          i32.add
0162          local.tee 3
0163          i32.const 257
0164          i32.ne
0165          br_if 0 (;@3;)
12 ------------------------------------------------------------
0166        end
13 ------------------------------------------------------------
0167        i32.const 32
0168        local.set 2
0169        loop  ;; label = @3
14 ------------------------------------------------------------
0170          block  ;; label = @4
15 ------------------------------------------------------------
0171            local.get 5
0172            i32.const 2080
0173            i32.add
0174            local.get 2
0175            i32.add
0176            local.tee 8
0177            i32.load8_u
0178            local.tee 7
0179            i32.eqz
0180            if  ;; label = @5
16 ------------------------------------------------------------
0181              local.get 2
0182              i32.const -1
0183              i32.add
0184              local.set 0
0185              br 1 (;@4;)
17 ------------------------------------------------------------
0186            end
18 ------------------------------------------------------------
0187            local.get 2
0188            i32.const -2
0189            i32.add
0190            local.set 6
0191            local.get 2
0192            i32.const -1
0193            i32.add
0194            local.tee 0
0195            local.get 5
0196            i32.const 2080
0197            i32.add
0198            i32.add
0199            local.set 9
0200            loop  ;; label = @5
19 ------------------------------------------------------------
0201              local.get 6
0202              local.set 3
0203              loop  ;; label = @6
20 ------------------------------------------------------------
0204                local.get 3
0205                local.tee 4
0206                i32.const -1
0207                i32.add
0208                local.set 3
0209                local.get 4
0210                local.get 5
0211                i32.const 2080
0212                i32.add
0213                i32.add
0214                local.tee 10
0215                i32.load8_u
0216                i32.eqz
0217                br_if 0 (;@6;)
21 ------------------------------------------------------------
0218              end
22 ------------------------------------------------------------
0219              local.get 8
0220              local.get 7
0221              i32.const -2
0222              i32.add
0223              i32.store8
0224              local.get 9
0225              local.get 9
0226              i32.load8_u
0227              i32.const 1
0228              i32.add
0229              i32.store8
0230              local.get 4
0231              local.get 5
0232              i32.add
0233              i32.const 2081
0234              i32.add
0235              local.tee 3
0236              local.get 3
0237              i32.load8_u
0238              i32.const 2
0239              i32.add
0240              i32.store8
0241              local.get 10
0242              local.get 10
0243              i32.load8_u
0244              i32.const -1
0245              i32.add
0246              i32.store8
0247              local.get 8
0248              i32.load8_u
0249              local.tee 7
0250              br_if 0 (;@5;)
23 ------------------------------------------------------------
0251            end
24 ------------------------------------------------------------
0252          end
25 ------------------------------------------------------------
0253          local.get 2
0254          i32.const 17
0255          i32.gt_u
0256          local.set 3
0257          local.get 0
0258          local.set 2
0259          local.get 3
0260          br_if 0 (;@3;)
26 ------------------------------------------------------------
0261        end
27 ------------------------------------------------------------
0262        i32.const 16
0263        local.set 3
0264        loop  ;; label = @3
28 ------------------------------------------------------------
0265          local.get 5
0266          i32.const 2080
0267          i32.add
0268          local.get 3
0269          i32.add
0270          local.set 0
0271          local.get 3
0272          i32.const -1
0273          i32.add
0274          local.set 3
0275          local.get 0
0276          i32.load8_u
0277          local.tee 2
0278          i32.eqz
0279          br_if 0 (;@3;)
29 ------------------------------------------------------------
0280        end
30 ------------------------------------------------------------
0281        local.get 0
0282        local.get 2
0283        i32.const -1
0284        i32.add
0285        i32.store8
0286        local.get 1
0287        local.get 5
0288        i32.const 2096
0289        i32.add
0290        i32.load8_u
0291        i32.store8
0292        local.get 1
0293        local.get 5
0294        i64.load
0295        i64.store align=4
0296        local.get 1
0297        local.get 5
0298        i64.load
0299        i64.store align=4
0300        i32.const 0
0301        local.set 4
0302        i32.const 1
0303        local.set 6
0304        loop  ;; label = @3
31 ------------------------------------------------------------
0305          i32.const 0
0306          local.set 3
0307          loop  ;; label = @4
32 ------------------------------------------------------------
0308            local.get 6
0309            local.get 5
0310            i32.const 1040
0311            i32.add
0312            local.get 3
0313            i32.const 2
0314            i32.shl
0315            i32.add
0316            i32.load
0317            i32.eq
0318            if  ;; label = @5
33 ------------------------------------------------------------
0319              local.get 1
0320              local.get 4
0321              i32.add
0322              local.get 3
0323              i32.store8
0324              local.get 4
0325              i32.const 1
0326              i32.add
0327              local.set 4
0328            end
34 ------------------------------------------------------------
0329            local.get 3
0330            i32.const 1
0331            i32.add
0332            local.tee 3
0333            i32.const 256
0334            i32.ne
0335            br_if 0 (;@4;)
35 ------------------------------------------------------------
0336          end
36 ------------------------------------------------------------
0337          local.get 6
0338          i32.const 1
0339          i32.add
0340          local.tee 6
0341          i32.const 33
0342          i32.ne
0343          br_if 0 (;@3;)
37 ------------------------------------------------------------
0344        end
38 ------------------------------------------------------------
0345        local.get 1
0346        i32.const 0
0347        i32.store
0348        local.get 5
0349        i32.const 2128
0350        i32.add
0351        global.set 0
0352        return
39 ------------------------------------------------------------
0353      end
40 ------------------------------------------------------------
0354      local.get 2
0355      local.get 7
0356      i32.const 2
0357      i32.shl
0358      local.tee 3
0359      i32.add
0360      local.tee 4
0361      local.get 4
0362      i32.load
0363      local.get 2
0364      local.get 9
0365      i32.const 2
0366      i32.shl
0367      local.tee 10
0368      i32.add
0369      local.tee 4
0370      i32.load
0371      i32.add
0372      i32.store
0373      local.get 4
0374      i32.const 0
0375      i32.store
0376      local.get 5
0377      i32.const 1040
0378      i32.add
0379      local.get 3
0380      i32.add
0381      local.tee 4
0382      local.get 4
0383      i32.load
0384      i32.const 1
0385      i32.add
0386      i32.store
0387      local.get 3
0388      local.get 5
0389      i32.add
0390      local.tee 4
0391      i32.load
0392      local.tee 3
0393      i32.const 0
0394      i32.ge_s
0395      if  ;; label = @2
41 ------------------------------------------------------------
0396        loop  ;; label = @3
42 ------------------------------------------------------------
0397          local.get 3
0398          i32.const 2
0399          i32.shl
0400          local.tee 3
0401          local.get 5
0402          i32.const 1040
0403          i32.add
0404          i32.add
0405          local.tee 4
0406          local.get 4
0407          i32.load
0408          i32.const 1
0409          i32.add
0410          i32.store
0411          local.get 3
0412          local.get 5
0413          i32.add
0414          local.tee 4
0415          i32.load
0416          local.tee 3
0417          i32.const -1
0418          i32.gt_s
0419          br_if 0 (;@3;)
43 ------------------------------------------------------------
0420        end
44 ------------------------------------------------------------
0421      end
45 ------------------------------------------------------------
0422      local.get 4
0423      local.get 9
0424      i32.store
0425      local.get 5
0426      i32.const 1040
0427      i32.add
0428      local.get 10
0429      i32.add
0430      local.tee 3
0431      local.get 3
0432      i32.load
0433      i32.const 1
0434      i32.add
0435      i32.store
0436      i32.const 0
0437      local.set 6
0438      i32.const 1000000000
0439      local.set 8
0440      i32.const -1
0441      local.set 7
0442      local.get 5
0443      local.get 10
0444      i32.add
0445      i32.load
0446      local.tee 3
0447      i32.const 0
0448      i32.lt_s
0449      br_if 0 (;@1;)
46 ------------------------------------------------------------
0450      loop  ;; label = @2
47 ------------------------------------------------------------
0451        local.get 3
0452        i32.const 2
0453        i32.shl
0454        local.tee 3
0455        local.get 5
0456        i32.const 1040
0457        i32.add
0458        i32.add
0459        local.tee 4
0460        local.get 4
0461        i32.load
0462        i32.const 1
0463        i32.add
0464        i32.store
0465        local.get 3
0466        local.get 5
0467        i32.add
0468        i32.load
0469        local.tee 3
0470        i32.const -1
0471        i32.gt_s
0472        br_if 0 (;@2;)
48 ------------------------------------------------------------
0473      end
49 ------------------------------------------------------------
0474      br 0 (;@1;)
50 ------------------------------------------------------------
0475      unreachable
51 ------------------------------------------------------------
0476    end
52 ------------------------------------------------------------
0477    unreachable
53 ------------------------------------------------------------)
