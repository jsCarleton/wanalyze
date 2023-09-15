  (func (;108;) (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    block  ;; label = @1
1 ------------------------------------------------------------
0001      local.get 0
0002      i32.load offset=332
0003      i32.load offset=20
0004      if  ;; label = @2
2 ------------------------------------------------------------
0005        local.get 0
0006        i32.load offset=60
0007        local.set 4
0008        local.get 0
0009        i32.load offset=20
0010        local.tee 1
0011        i32.const 100
0012        i32.ne
0013        if  ;; label = @3
3 ------------------------------------------------------------
0014          local.get 0
0015          i32.load
0016          local.tee 5
0017          local.get 1
0018          i32.store offset=24
0019          local.get 5
0020          i32.const 20
0021          i32.store offset=20
0022          local.get 0
0023          local.get 0
0024          i32.load
0025          i32.load
0026          call_indirect (type 0)
0027        end
4 ------------------------------------------------------------
0028        i32.const 23
0029        local.set 3
0030        block  ;; label = @3
5 ------------------------------------------------------------
0031          block  ;; label = @4
6 ------------------------------------------------------------
0032            block  ;; label = @5
7 ------------------------------------------------------------
0033              local.get 4
0034              i32.const -1
0035              i32.add
0036              br_table 1 (;@4;) 2 (;@3;) 0 (;@5;) 2 (;@3;)
8 ------------------------------------------------------------
0037            end
9 ------------------------------------------------------------
0038            i32.const 64
0039            local.set 3
0040            local.get 0
0041            i32.load offset=64
0042            i32.const 3
0043            i32.ne
0044            br_if 1 (;@3;)
10 ------------------------------------------------------------
0045          end
11 ------------------------------------------------------------
0046          block  ;; label = @4
12 ------------------------------------------------------------
0047            local.get 0
0048            i32.load offset=368
0049            local.tee 1
0050            if  ;; label = @5
13 ------------------------------------------------------------
0051              local.get 0
0052              i32.load offset=372
0053              local.get 3
0054              i32.ge_s
0055              br_if 1 (;@4;)
14 ------------------------------------------------------------
0056            end
15 ------------------------------------------------------------
0057            local.get 0
0058            i32.const 64
0059            i32.store offset=372
0060            local.get 0
0061            local.get 0
0062            i32.const 0
0063            i32.const 2304
0064            local.get 0
0065            i32.load offset=4
0066            i32.load
0067            call_indirect (type 3)
0068            local.tee 1
0069            i32.store offset=368
0070          end
16 ------------------------------------------------------------
0071          local.get 0
0072          local.get 3
0073          i32.store offset=168
0074          local.get 0
0075          local.get 1
0076          i32.store offset=172
0077          local.get 0
0078          i32.load offset=332
0079          local.tee 6
0080          i64.const 4294967319
0081          i64.store offset=4172 align=4
0082          local.get 6
0083          i64.const 12884901893
0084          i64.store offset=4184
0085          block  ;; label = @4
17 ------------------------------------------------------------
0086            local.get 6
0087            i32.load offset=4156
0088            i32.eqz
0089            if  ;; label = @5
18 ------------------------------------------------------------
0090              local.get 1
0091              local.get 4
0092              i32.store
0093              i32.const 0
0094              local.set 3
0095              loop  ;; label = @6
19 ------------------------------------------------------------
0096                local.get 1
0097                local.get 3
0098                i32.const 2
0099                i32.shl
0100                i32.add
0101                local.get 3
0102                i32.store offset=4
0103                local.get 3
0104                i32.const 1
0105                i32.add
0106                local.tee 3
0107                local.get 4
0108                i32.ne
0109                br_if 0 (;@6;)
20 ------------------------------------------------------------
0110              end
21 ------------------------------------------------------------
0111              br 1 (;@4;)
22 ------------------------------------------------------------
0112            end
23 ------------------------------------------------------------
0113            local.get 1
0114            i64.const 1
0115            i64.store align=4
0116          end
24 ------------------------------------------------------------
0117          local.get 1
0118          i64.const 1
0119          i64.store offset=72 align=4
0120          local.get 1
0121          i64.const 1
0122          i64.store offset=36 align=4
0123          local.get 1
0124          i64.const 0
0125          i64.store offset=20 align=4
0126          local.get 1
0127          i64.const 0
0128          i64.store offset=100 align=4
0129          local.get 1
0130          i64.const 270582939657
0131          i64.store offset=92 align=4
0132          local.get 1
0133          i32.const -64
0134          i32.sub
0135          i64.const 0
0136          i64.store align=4
0137          local.get 1
0138          i64.const 34359738369
0139          i64.store offset=56 align=4
0140          local.get 1
0141          i64.const 0
0142          i64.store offset=28 align=4
0143          local.get 1
0144          i32.const 108
0145          i32.add
0146          local.set 3
0147          block  ;; label = @4
25 ------------------------------------------------------------
0148            local.get 6
0149            i32.load offset=4188
0150            i32.const 1
0151            i32.lt_s
0152            if  ;; label = @5
26 ------------------------------------------------------------
0153              local.get 1
0154              local.set 5
0155              br 1 (;@4;)
27 ------------------------------------------------------------
0156            end
28 ------------------------------------------------------------
0157            loop  ;; label = @5
29 ------------------------------------------------------------
0158              local.get 3
0159              local.tee 5
0160              i32.const 1
0161              i32.store
0162              local.get 1
0163              local.get 7
0164              i32.const 1
0165              i32.add
0166              local.tee 2
0167              i32.store offset=212
0168              local.get 1
0169              i32.const 0
0170              i32.store offset=208
0171              local.get 1
0172              i64.const 270582939657
0173              i64.store offset=200 align=4
0174              local.get 1
0175              i64.const 1
0176              i64.store offset=180 align=4
0177              local.get 1
0178              local.get 2
0179              i32.store offset=176
0180              local.get 1
0181              i32.const 0
0182              i32.store offset=172
0183              local.get 1
0184              i64.const 34359738369
0185              i64.store offset=164 align=4
0186              local.get 1
0187              i64.const 1
0188              i64.store offset=144 align=4
0189              local.get 1
0190              local.get 7
0191              i32.store offset=140
0192              local.get 1
0193              local.get 2
0194              i32.store offset=136
0195              local.get 1
0196              i64.const 270582939649
0197              i64.store offset=128 align=4
0198              local.get 1
0199              i32.const 0
0200              i32.store offset=112
0201              local.get 3
0202              i32.const 108
0203              i32.add
0204              local.set 3
0205              local.get 5
0206              local.set 1
0207              local.get 2
0208              local.tee 7
0209              local.get 6
0210              i32.load offset=4188
0211              i32.lt_s
0212              br_if 0 (;@5;)
30 ------------------------------------------------------------
0213            end
31 ------------------------------------------------------------
0214          end
32 ------------------------------------------------------------
0215          local.get 3
0216          i32.const 1
0217          i32.store
0218          local.get 5
0219          i64.const 0
0220          i64.store offset=136 align=4
0221          local.get 5
0222          i64.const 270582939649
0223          i64.store offset=128 align=4
0224          i32.const 0
0225          local.set 1
0226          local.get 5
0227          i32.const 0
0228          i32.store offset=112
0229          local.get 6
0230          i32.load offset=4184
0231          i32.const 1
0232          i32.ge_s
0233          if  ;; label = @4
33 ------------------------------------------------------------
0234            loop  ;; label = @5
34 ------------------------------------------------------------
0235              local.get 3
0236              i64.const 1
0237              i64.store offset=72 align=4
0238              local.get 3
0239              i64.const 1
0240              i64.store offset=36 align=4
0241              local.get 3
0242              i32.const 0
0243              i32.store offset=104
0244              local.get 3
0245              i64.const 63
0246              i64.store offset=96 align=4
0247              local.get 3
0248              i32.const -64
0249              i32.sub
0250              i64.const 0
0251              i64.store align=4
0252              local.get 3
0253              i32.const 1
0254              i32.store offset=56
0255              local.get 3
0256              local.get 1
0257              i32.const 2
0258              i32.shl
0259              i32.const 137536
0260              i32.add
0261              i32.load
0262              local.tee 5
0263              i32.store offset=60
0264              local.get 3
0265              local.get 5
0266              i32.const 1
0267              i32.add
0268              i32.store offset=92
0269              local.get 3
0270              i32.const 72
0271              i32.add
0272              local.set 3
0273              local.get 1
0274              i32.const 1
0275              i32.add
0276              local.tee 1
0277              local.get 6
0278              i32.load offset=4184
0279              i32.lt_s
0280              br_if 0 (;@5;)
35 ------------------------------------------------------------
0281            end
36 ------------------------------------------------------------
0282          end
37 ------------------------------------------------------------
0283          local.get 4
0284          i32.const 1
0285          i32.eq
0286          if  ;; label = @4
38 ------------------------------------------------------------
0287            local.get 6
0288            i32.const 0
0289            i32.store offset=4180
0290            local.get 6
0291            i32.const 0
0292            i32.store offset=4192
0293            return
39 ------------------------------------------------------------
0294          end
40 ------------------------------------------------------------
0295          local.get 6
0296          i32.const 3
0297          i32.store offset=4180
0298          local.get 6
0299          i32.const 2
0300          i32.store offset=4192
0301          local.get 3
0302          i64.const 0
0303          i64.store offset=56 align=4
0304          local.get 3
0305          i32.const 2
0306          i32.store offset=44
0307          local.get 3
0308          i64.const 4294967298
0309          i64.store offset=36 align=4
0310          local.get 3
0311          i32.const -64
0312          i32.sub
0313          i64.const 0
0314          i64.store align=4
0315          local.get 3
0316          i64.const 0
0317          i64.store offset=92 align=4
0318          local.get 3
0319          i64.const 4294967297
0320          i64.store offset=72 align=4
0321          local.get 3
0322          i64.const 0
0323          i64.store offset=100 align=4
0324          local.get 3
0325          i64.const 0
0326          i64.store offset=128 align=4
0327          local.get 3
0328          i64.const 8589934593
0329          i64.store offset=108 align=4
0330          local.get 3
0331          i64.const 0
0332          i64.store offset=136 align=4
0333          local.get 3
0334          i64.const 0
0335          i64.store offset=280 align=4
0336          local.get 3
0337          i64.const 270582939657
0338          i64.store offset=272 align=4
0339          local.get 3
0340          i64.const 8589934593
0341          i64.store offset=252 align=4
0342          local.get 3
0343          i64.const 0
0344          i64.store offset=244 align=4
0345          local.get 3
0346          i64.const 34359738369
0347          i64.store offset=236 align=4
0348          local.get 3
0349          i64.const 8589934593
0350          i64.store offset=216 align=4
0351          local.get 3
0352          i64.const 0
0353          i64.store offset=208 align=4
0354          local.get 3
0355          i64.const 270582939657
0356          i64.store offset=200 align=4
0357          local.get 3
0358          i64.const 4294967297
0359          i64.store offset=180 align=4
0360          local.get 3
0361          i64.const 0
0362          i64.store offset=172 align=4
0363          local.get 3
0364          i64.const 34359738369
0365          i64.store offset=164 align=4
0366          local.get 3
0367          i64.const 4294967297
0368          i64.store offset=144 align=4
0369          local.get 3
0370          i32.const 288
0371          i32.add
0372          local.set 1
0373          local.get 0
0374          i32.load offset=332
0375          local.tee 5
0376          i32.load offset=4192
0377          i32.const 1
0378          i32.ge_s
0379          if  ;; label = @4
41 ------------------------------------------------------------
0380            i32.const 0
0381            local.set 2
0382            loop  ;; label = @5
42 ------------------------------------------------------------
0383              local.get 1
0384              i64.const 8589934593
0385              i64.store offset=180 align=4
0386              local.get 1
0387              i64.const 8589934593
0388              i64.store offset=144 align=4
0389              local.get 1
0390              i64.const 4294967297
0391              i64.store offset=108 align=4
0392              local.get 1
0393              i64.const 4294967297
0394              i64.store offset=72 align=4
0395              local.get 1
0396              i64.const 8589934593
0397              i64.store offset=36 align=4
0398              local.get 1
0399              local.get 2
0400              i32.store offset=32
0401              local.get 1
0402              i64.const 270582939649
0403              i64.store offset=20 align=4
0404              local.get 1
0405              i64.const 4294967297
0406              i64.store align=4
0407              local.get 1
0408              local.get 2
0409              i32.const 1
0410              i32.add
0411              local.tee 0
0412              i32.store offset=212
0413              local.get 1
0414              i32.const 0
0415              i32.store offset=208
0416              local.get 1
0417              i64.const 270582939657
0418              i64.store offset=200 align=4
0419              local.get 1
0420              local.get 0
0421              i32.store offset=176
0422              local.get 1
0423              i32.const 0
0424              i32.store offset=172
0425              local.get 1
0426              i64.const 34359738369
0427              i64.store offset=164 align=4
0428              local.get 1
0429              local.get 0
0430              i32.store offset=140
0431              local.get 1
0432              i32.const 0
0433              i32.store offset=136
0434              local.get 1
0435              i64.const 270582939657
0436              i64.store offset=128 align=4
0437              local.get 1
0438              local.get 0
0439              i32.store offset=104
0440              local.get 1
0441              i32.const 0
0442              i32.store offset=100
0443              local.get 1
0444              i64.const 34359738369
0445              i64.store offset=92 align=4
0446              local.get 1
0447              local.get 2
0448              i32.store offset=68
0449              local.get 1
0450              i32.const -64
0451              i32.sub
0452              local.get 0
0453              i32.store
0454              local.get 1
0455              i64.const 270582939649
0456              i64.store offset=56 align=4
0457              local.get 1
0458              local.get 0
0459              i32.store offset=28
0460              local.get 1
0461              i32.const 216
0462              i32.add
0463              local.set 1
0464              local.get 0
0465              local.tee 2
0466              local.get 5
0467              i32.load offset=4192
0468              i32.lt_s
0469              br_if 0 (;@5;)
43 ------------------------------------------------------------
0470            end
44 ------------------------------------------------------------
0471          end
45 ------------------------------------------------------------
0472          local.get 1
0473          i64.const 8589934593
0474          i64.store offset=36 align=4
0475          local.get 1
0476          i64.const 0
0477          i64.store offset=28 align=4
0478          local.get 1
0479          i64.const 270582939649
0480          i64.store offset=20 align=4
0481          local.get 1
0482          i64.const 4294967297
0483          i64.store align=4
0484          local.get 1
0485          i32.const -64
0486          i32.sub
0487          i64.const 0
0488          i64.store align=4
0489          local.get 1
0490          i64.const 270582939649
0491          i64.store offset=56 align=4
0492          local.get 5
0493          i32.load offset=4184
0494          i32.const 1
0495          i32.lt_s
0496          br_if 2 (;@1;)
46 ------------------------------------------------------------
0497          local.get 1
0498          i32.const 72
0499          i32.add
0500          local.set 1
0501          i32.const 0
0502          local.set 3
0503          loop  ;; label = @4
47 ------------------------------------------------------------
0504            local.get 1
0505            i64.const 8589934593
0506            i64.store offset=108 align=4
0507            local.get 1
0508            i64.const 4294967297
0509            i64.store offset=36 align=4
0510            local.get 1
0511            i64.const 0
0512            i64.store offset=28 align=4
0513            local.get 1
0514            i32.const 1
0515            i32.store offset=20
0516            local.get 1
0517            i64.const 4294967297
0518            i64.store align=4
0519            local.get 1
0520            i32.const 0
0521            i32.store offset=140
0522            local.get 1
0523            i64.const 63
0524            i64.store offset=132 align=4
0525            local.get 1
0526            i64.const 0
0527            i64.store offset=100 align=4
0528            local.get 1
0529            i32.const 1
0530            i32.store offset=92
0531            local.get 1
0532            i32.const 2
0533            i32.store offset=76
0534            local.get 1
0535            i64.const 4294967296
0536            i64.store offset=68 align=4
0537            local.get 1
0538            i64.const 63
0539            i64.store offset=60 align=4
0540            local.get 1
0541            local.get 3
0542            i32.const 2
0543            i32.shl
0544            i32.const 137536
0545            i32.add
0546            i32.load
0547            local.tee 0
0548            i32.store offset=96
0549            local.get 1
0550            local.get 0
0551            i32.store offset=24
0552            local.get 1
0553            local.get 0
0554            i32.const 1
0555            i32.add
0556            local.tee 0
0557            i32.store offset=128
0558            local.get 1
0559            local.get 0
0560            i32.store offset=56
0561            local.get 1
0562            i32.const 144
0563            i32.add
0564            local.set 1
0565            local.get 3
0566            i32.const 1
0567            i32.add
0568            local.tee 3
0569            local.get 5
0570            i32.load offset=4184
0571            i32.lt_s
0572            br_if 0 (;@4;)
48 ------------------------------------------------------------
0573          end
49 ------------------------------------------------------------
0574          br 2 (;@1;)
50 ------------------------------------------------------------
0575        end
51 ------------------------------------------------------------
0576        local.get 0
0577        i32.load offset=332
0578        i32.const 0
0579        i32.store offset=4172
0580      end
52 ------------------------------------------------------------
0581      local.get 0
0582      i32.load offset=20
0583      local.tee 1
0584      i32.const 100
0585      i32.ne
0586      if  ;; label = @2
53 ------------------------------------------------------------
0587        local.get 0
0588        i32.load
0589        local.tee 5
0590        local.get 1
0591        i32.store offset=24
0592        local.get 5
0593        i32.const 20
0594        i32.store offset=20
0595        local.get 0
0596        local.get 0
0597        i32.load
0598        i32.load
0599        call_indirect (type 0)
0600      end
54 ------------------------------------------------------------
0601      block (result i32)  ;; label = @2
55 ------------------------------------------------------------
0602        block  ;; label = @3
56 ------------------------------------------------------------
0603          local.get 0
0604          i32.load offset=60
0605          local.tee 4
0606          i32.const 3
0607          i32.ne
0608          br_if 0 (;@3;)
57 ------------------------------------------------------------
0609          local.get 0
0610          i32.load offset=64
0611          i32.const 3
0612          i32.ne
0613          br_if 0 (;@3;)
58 ------------------------------------------------------------
0614          i32.const 10
0615          local.get 0
0616          i32.load offset=332
0617          local.tee 5
0618          i32.load offset=4152
0619          i32.const 1560820397
0620          i32.ne
0621          br_if 1 (;@2;)
59 ------------------------------------------------------------
0622          drop
0623          i32.const 11
0624          i32.const 10
0625          local.get 5
0626          i32.load offset=4156
0627          local.tee 5
0628          i32.const 1
0629          i32.eq
0630          select
0631          i32.const 9
0632          local.get 5
0633          select
0634          br 1 (;@2;)
60 ------------------------------------------------------------
0635        end
61 ------------------------------------------------------------
0636        local.get 0
0637        i32.load offset=332
0638        i32.load offset=4152
0639        i32.const 1560820397
0640        i32.eq
0641        if  ;; label = @3
62 ------------------------------------------------------------
0642          local.get 4
0643          i32.const 5
0644          i32.mul
0645          local.get 4
0646          i32.const 5
0647          i32.ge_s
0648          br_if 1 (;@2;)
63 ------------------------------------------------------------
0649          drop
0650          local.get 4
0651          i32.const 2
0652          i32.shl
0653          i32.const 1
0654          i32.or
0655          br 1 (;@2;)
64 ------------------------------------------------------------
0656        end
65 ------------------------------------------------------------
0657        local.get 4
0658        i32.const 6
0659        i32.mul
0660        local.get 4
0661        i32.const 5
0662        i32.ge_s
0663        br_if 0 (;@2;)
66 ------------------------------------------------------------
0664        drop
0665        local.get 4
0666        i32.const 2
0667        i32.shl
0668        i32.const 2
0669        i32.or
0670      end
67 ------------------------------------------------------------
0671      local.set 2
0672      block  ;; label = @2
68 ------------------------------------------------------------
0673        local.get 0
0674        i32.load offset=368
0675        local.tee 1
0676        if  ;; label = @3
69 ------------------------------------------------------------
0677          local.get 0
0678          i32.load offset=372
0679          local.get 2
0680          i32.ge_s
0681          br_if 1 (;@2;)
70 ------------------------------------------------------------
0682        end
71 ------------------------------------------------------------
0683        local.get 0
0684        local.get 2
0685        i32.const 10
0686        local.get 2
0687        i32.const 10
0688        i32.gt_s
0689        select
0690        local.tee 5
0691        i32.store offset=372
0692        local.get 0
0693        local.get 0
0694        i32.const 0
0695        local.get 5
0696        i32.const 36
0697        i32.mul
0698        local.get 0
0699        i32.load offset=4
0700        i32.load
0701        call_indirect (type 3)
0702        local.tee 1
0703        i32.store offset=368
0704      end
72 ------------------------------------------------------------
0705      local.get 0
0706      local.get 2
0707      i32.store offset=168
0708      local.get 0
0709      local.get 1
0710      i32.store offset=172
0711      block  ;; label = @2
73 ------------------------------------------------------------
0712        block  ;; label = @3
74 ------------------------------------------------------------
0713          block  ;; label = @4
75 ------------------------------------------------------------
0714            block  ;; label = @5
76 ------------------------------------------------------------
0715              block  ;; label = @6
77 ------------------------------------------------------------
0716                block  ;; label = @7
78 ------------------------------------------------------------
0717                  block  ;; label = @8
79 ------------------------------------------------------------
0718                    block  ;; label = @9
80 ------------------------------------------------------------
0719                      block  ;; label = @10
81 ------------------------------------------------------------
0720                        block  ;; label = @11
82 ------------------------------------------------------------
0721                          block  ;; label = @12
83 ------------------------------------------------------------
0722                            block  ;; label = @13
84 ------------------------------------------------------------
0723                              local.get 4
0724                              i32.const 3
0725                              i32.eq
0726                              if  ;; label = @14
85 ------------------------------------------------------------
0727                                local.get 0
0728                                i32.load offset=332
0729                                local.tee 5
0730                                i32.load offset=4152
0731                                local.set 2
0732                                local.get 0
0733                                i32.load offset=64
0734                                i32.const 3
0735                                i32.eq
0736                                if  ;; label = @15
86 ------------------------------------------------------------
0737                                  local.get 2
0738                                  i32.const 1560820397
0739                                  i32.eq
0740                                  if  ;; label = @16
87 ------------------------------------------------------------
0741                                    block (result i32)  ;; label = @17
88 ------------------------------------------------------------
0742                                      block  ;; label = @18
89 ------------------------------------------------------------
0743                                        block  ;; label = @19
90 ------------------------------------------------------------
0744                                          block  ;; label = @20
91 ------------------------------------------------------------
0745                                            local.get 5
0746                                            i32.load offset=4156
0747                                            br_table 0 (;@20;) 1 (;@19;) 2 (;@18;)
92 ------------------------------------------------------------
0748                                          end
93 ------------------------------------------------------------
0749                                          local.get 1
0750                                          i64.const 0
0751                                          i64.store offset=20 align=4
0752                                          local.get 1
0753                                          i64.const 3
0754                                          i64.store align=4
0755                                          local.get 1
0756                                          i64.const 8589934593
0757                                          i64.store offset=8 align=4
0758                                          local.get 1
0759                                          i64.const 0
0760                                          i64.store offset=28 align=4
0761                                          local.get 1
0762                                          i32.const 36
0763                                          i32.add
0764                                          br 2 (;@17;)
94 ------------------------------------------------------------
0765                                        end
95 ------------------------------------------------------------
0766                                        local.get 1
0767                                        i64.const 0
0768                                        i64.store offset=20 align=4
0769                                        local.get 1
0770                                        i64.const 1
0771                                        i64.store align=4
0772                                        local.get 1
0773                                        i64.const 4294967297
0774                                        i64.store offset=36 align=4
0775                                        local.get 1
0776                                        i64.const 8589934593
0777                                        i64.store offset=72 align=4
0778                                        local.get 1
0779                                        i64.const 0
0780                                        i64.store offset=28 align=4
0781                                        local.get 1
0782                                        i64.const 0
0783                                        i64.store offset=56 align=4
0784                                        local.get 1
0785                                        i32.const -64
0786                                        i32.sub
0787                                        i64.const 0
0788                                        i64.store align=4
0789                                        local.get 1
0790                                        i64.const 0
0791                                        i64.store offset=92 align=4
0792                                        local.get 1
0793                                        i64.const 0
0794                                        i64.store offset=100 align=4
0795                                        local.get 1
0796                                        i32.const 108
0797                                        i32.add
0798                                        br 1 (;@17;)
96 ------------------------------------------------------------
0799                                      end
97 ------------------------------------------------------------
0800                                      local.get 1
0801                                      i64.const 0
0802                                      i64.store offset=20 align=4
0803                                      local.get 1
0804                                      i64.const 1
0805                                      i64.store align=4
0806                                      local.get 1
0807                                      i64.const 4294967298
0808                                      i64.store offset=36 align=4
0809                                      local.get 1
0810                                      i64.const 0
0811                                      i64.store offset=28 align=4
0812                                      local.get 1
0813                                      i64.const 0
0814                                      i64.store offset=56 align=4
0815                                      local.get 1
0816                                      i32.const 2
0817                                      i32.store offset=44
0818                                      local.get 1
0819                                      i32.const -64
0820                                      i32.sub
0821                                      i64.const 0
0822                                      i64.store align=4
0823                                      local.get 1
0824                                      i32.const 72
0825                                      i32.add
0826                                    end
98 ------------------------------------------------------------
0827                                    local.tee 1
0828                                    i64.const 8589934593
0829                                    i64.store offset=252 align=4
0830                                    local.get 1
0831                                    i64.const 4294967297
0832                                    i64.store offset=216 align=4
0833                                    local.get 1
0834                                    i64.const 1
0835                                    i64.store offset=180 align=4
0836                                    local.get 1
0837                                    i64.const 1
0838                                    i64.store offset=144 align=4
0839                                    local.get 1
0840                                    i64.const 1
0841                                    i64.store offset=108 align=4
0842                                    local.get 1
0843                                    i64.const 8589934593
0844                                    i64.store offset=72 align=4
0845                                    local.get 1
0846                                    i64.const 4294967297
0847                                    i64.store offset=36 align=4
0848                                    local.get 1
0849                                    i64.const 8589934592
0850                                    i64.store offset=28 align=4
0851                                    local.get 1
0852                                    i64.const 34359738369
0853                                    i64.store offset=20 align=4
0854                                    local.get 1
0855                                    i64.const 1
0856                                    i64.store align=4
0857                                    local.get 1
0858                                    i64.const 0
0859                                    i64.store offset=280 align=4
0860                                    local.get 1
0861                                    i64.const 270582939657
0862                                    i64.store offset=272 align=4
0863                                    local.get 1
0864                                    i64.const 0
0865                                    i64.store offset=244 align=4
0866                                    local.get 1
0867                                    i64.const 270582939657
0868                                    i64.store offset=236 align=4
0869                                    local.get 1
0870                                    i64.const 1
0871                                    i64.store offset=208 align=4
0872                                    local.get 1
0873                                    i64.const 270582939649
0874                                    i64.store offset=200 align=4
0875                                    local.get 1
0876                                    i64.const 4294967298
0877                                    i64.store offset=172 align=4
0878                                    local.get 1
0879                                    i64.const 270582939649
0880                                    i64.store offset=164 align=4
0881                                    local.get 1
0882                                    i64.const 8589934592
0883                                    i64.store offset=136 align=4
0884                                    local.get 1
0885                                    i64.const 270582939657
0886                                    i64.store offset=128 align=4
0887                                    local.get 1
0888                                    i64.const 0
0889                                    i64.store offset=100 align=4
0890                                    local.get 1
0891                                    i64.const 34359738369
0892                                    i64.store offset=92 align=4
0893                                    local.get 1
0894                                    i32.const -64
0895                                    i32.sub
0896                                    i64.const 0
0897                                    i64.store align=4
0898                                    local.get 1
0899                                    i64.const 34359738369
0900                                    i64.store offset=56 align=4
0901                                    return
99 ------------------------------------------------------------
0902                                  end
100 ------------------------------------------------------------
0903                                  local.get 1
0904                                  i64.const 3
0905                                  i64.store align=4
0906                                  local.get 1
0907                                  i64.const 3
0908                                  i64.store offset=216 align=4
0909                                  local.get 1
0910                                  i64.const 1
0911                                  i64.store offset=180 align=4
0912                                  local.get 1
0913                                  i64.const 1
0914                                  i64.store offset=144 align=4
0915                                  local.get 1
0916                                  i64.const 4294967297
0917                                  i64.store offset=108 align=4
0918                                  local.get 1
0919                                  i64.const 8589934593
0920                                  i64.store offset=72 align=4
0921                                  local.get 1
0922                                  i64.const 1
0923                                  i64.store offset=36 align=4
0924                                  local.get 1
0925                                  i64.const 4294967296
0926                                  i64.store offset=28 align=4
0927                                  local.get 1
0928                                  i64.const 0
0929                                  i64.store offset=20 align=4
0930                                  local.get 1
0931                                  i64.const 8589934593
0932                                  i64.store offset=8 align=4
0933                                  local.get 1
0934                                  i32.const 0
0935                                  i32.store offset=240
0936                                  local.get 1
0937                                  i64.const 8589934593
0938                                  i64.store offset=224 align=4
0939                                  local.get 1
0940                                  i64.const 4294967298
0941                                  i64.store offset=208 align=4
0942                                  local.get 1
0943                                  i64.const 270582939649
0944                                  i64.store offset=200 align=4
0945                                  local.get 1
0946                                  i64.const 8589934592
0947                                  i64.store offset=172 align=4
0948                                  local.get 1
0949                                  i64.const 270582939654
0950                                  i64.store offset=164 align=4
0951                                  local.get 1
0952                                  i64.const 4294967296
0953                                  i64.store offset=136 align=4
0954                                  local.get 1
0955                                  i64.const 270582939649
0956                                  i64.store offset=128 align=4
0957                                  local.get 1
0958                                  i64.const 4294967296
0959                                  i64.store offset=100 align=4
0960                                  local.get 1
0961                                  i64.const 270582939649
0962                                  i64.store offset=92 align=4
0963                                  local.get 1
0964                                  i32.const -64
0965                                  i32.sub
0966                                  i64.const 8589934592
0967                                  i64.store align=4
0968                                  local.get 1
0969                                  i64.const 21474836481
0970                                  i64.store offset=56 align=4
0971                                  local.get 1
0972                                  i64.const 1
0973                                  i64.store offset=352 align=4
0974                                  local.get 1
0975                                  i64.const 270582939649
0976                                  i64.store offset=344 align=4
0977                                  local.get 1
0978                                  i64.const 1
0979                                  i64.store offset=324 align=4
0980                                  local.get 1
0981                                  i64.const 1
0982                                  i64.store offset=316 align=4
0983                                  local.get 1
0984                                  i64.const 270582939649
0985                                  i64.store offset=308 align=4
0986                                  local.get 1
0987                                  i64.const 4294967297
0988                                  i64.store offset=288 align=4
0989                                  local.get 1
0990                                  i64.const 1
0991                                  i64.store offset=280 align=4
0992                                  local.get 1
0993                                  i64.const 270582939649
0994                                  i64.store offset=272 align=4
0995                                  local.get 1
0996                                  i64.const 8589934593
0997                                  i64.store offset=252 align=4
0998                                  local.get 1
0999                                  i64.const 1
1000                                  i64.store offset=244 align=4
1001                                  local.get 1
1002                                  i32.const 0
1003                                  i32.store offset=236
1004                                  return
101 ------------------------------------------------------------
1005                                end
102 ------------------------------------------------------------
1006                                local.get 1
1007                                local.get 4
1008                                i32.store
1009                                local.get 2
1010                                i32.const 1560820397
1011                                i32.eq
1012                                br_if 1 (;@13;)
103 ------------------------------------------------------------
1013                                br 5 (;@9;)
104 ------------------------------------------------------------
1014                              end
105 ------------------------------------------------------------
1015                              local.get 0
1016                              i32.load offset=332
1017                              i32.load offset=4152
1018                              i32.const 1560820397
1019                              i32.ne
1020                              br_if 3 (;@10;)
106 ------------------------------------------------------------
1021                              local.get 4
1022                              i32.const 4
1023                              i32.gt_s
1024                              if  ;; label = @14
107 ------------------------------------------------------------
1025                                i32.const 0
1026                                local.set 2
1027                                loop  ;; label = @15
108 ------------------------------------------------------------
1028                                  local.get 1
1029                                  i64.const 0
1030                                  i64.store offset=20 align=4
1031                                  local.get 1
1032                                  local.get 2
1033                                  i32.store offset=4
1034                                  local.get 1
1035                                  i32.const 1
1036                                  i32.store
1037                                  local.get 1
1038                                  i64.const 0
1039                                  i64.store offset=28 align=4
1040                                  local.get 1
1041                                  i32.const 36
1042                                  i32.add
1043                                  local.set 1
1044                                  local.get 2
1045                                  i32.const 1
1046                                  i32.add
1047                                  local.tee 2
1048                                  local.get 4
1049                                  i32.ne
1050                                  br_if 0 (;@15;)
109 ------------------------------------------------------------
1051                                end
110 ------------------------------------------------------------
1052                                br 3 (;@11;)
111 ------------------------------------------------------------
1053                              end
112 ------------------------------------------------------------
1054                              local.get 1
1055                              local.get 4
1056                              i32.store
1057                              local.get 4
1058                              i32.const 1
1059                              i32.lt_s
1060                              br_if 1 (;@12;)
113 ------------------------------------------------------------
1061                            end
114 ------------------------------------------------------------
1062                            i32.const 0
1063                            local.set 2
1064                            loop  ;; label = @13
115 ------------------------------------------------------------
1065                              local.get 1
1066                              local.get 2
1067                              i32.const 2
1068                              i32.shl
1069                              i32.add
1070                              local.get 2
1071                              i32.store offset=4
1072                              local.get 2
1073                              i32.const 1
1074                              i32.add
1075                              local.tee 2
1076                              local.get 4
1077                              i32.ne
1078                              br_if 0 (;@13;)
116 ------------------------------------------------------------
1079                            end
117 ------------------------------------------------------------
1080                          end
118 ------------------------------------------------------------
1081                          local.get 1
1082                          i64.const 0
1083                          i64.store offset=20 align=4
1084                          local.get 1
1085                          i64.const 0
1086                          i64.store offset=28 align=4
1087                          local.get 1
1088                          i32.const 36
1089                          i32.add
1090                          local.set 1
1091                        end
119 ------------------------------------------------------------
1092                        local.get 4
1093                        i32.const 1
1094                        i32.lt_s
1095                        br_if 9 (;@1;)
120 ------------------------------------------------------------
1096                        i32.const 0
1097                        local.set 2
1098                        loop  ;; label = @11
121 ------------------------------------------------------------
1099                          local.get 1
1100                          i64.const 8589934592
1101                          i64.store offset=28 align=4
1102                          local.get 1
1103                          i64.const 34359738369
1104                          i64.store offset=20 align=4
1105                          local.get 1
1106                          local.get 2
1107                          i32.store offset=4
1108                          local.get 1
1109                          i32.const 1
1110                          i32.store
1111                          local.get 1
1112                          i32.const 36
1113                          i32.add
1114                          local.set 1
1115                          local.get 2
1116                          i32.const 1
1117                          i32.add
1118                          local.tee 2
1119                          local.get 4
1120                          i32.ne
1121                          br_if 0 (;@11;)
122 ------------------------------------------------------------
1122                        end
123 ------------------------------------------------------------
1123                        i32.const 0
1124                        local.set 2
1125                        loop  ;; label = @11
124 ------------------------------------------------------------
1126                          local.get 1
1127                          i64.const 8589934592
1128                          i64.store offset=28 align=4
1129                          local.get 1
1130                          i64.const 270582939657
1131                          i64.store offset=20 align=4
1132                          local.get 1
1133                          local.get 2
1134                          i32.store offset=4
1135                          local.get 1
1136                          i32.const 1
1137                          i32.store
1138                          local.get 1
1139                          i32.const 36
1140                          i32.add
1141                          local.set 1
1142                          local.get 2
1143                          i32.const 1
1144                          i32.add
1145                          local.tee 2
1146                          local.get 4
1147                          i32.ne
1148                          br_if 0 (;@11;)
125 ------------------------------------------------------------
1149                        end
126 ------------------------------------------------------------
1150                        i32.const 0
1151                        local.set 2
1152                        loop  ;; label = @11
127 ------------------------------------------------------------
1153                          local.get 1
1154                          i64.const 4294967298
1155                          i64.store offset=28 align=4
1156                          local.get 1
1157                          i64.const 270582939649
1158                          i64.store offset=20 align=4
1159                          local.get 1
1160                          local.get 2
1161                          i32.store offset=4
1162                          local.get 1
1163                          i32.const 1
1164                          i32.store
1165                          local.get 1
1166                          i32.const 36
1167                          i32.add
1168                          local.set 1
1169                          local.get 2
1170                          i32.const 1
1171                          i32.add
1172                          local.tee 2
1173                          local.get 4
1174                          i32.ne
1175                          br_if 0 (;@11;)
128 ------------------------------------------------------------
1176                        end
129 ------------------------------------------------------------
1177                        i32.const 0
1178                        local.set 2
1179                        loop  ;; label = @11
130 ------------------------------------------------------------
1180                          local.get 1
1181                          i64.const 1
1182                          i64.store offset=28 align=4
1183                          local.get 1
1184                          i64.const 270582939649
1185                          i64.store offset=20 align=4
1186                          local.get 1
1187                          local.get 2
1188                          i32.store offset=4
1189                          local.get 1
1190                          i32.const 1
1191                          i32.store
1192                          local.get 1
1193                          i32.const 36
1194                          i32.add
1195                          local.set 1
1196                          local.get 2
1197                          i32.const 1
1198                          i32.add
1199                          local.tee 2
1200                          local.get 4
1201                          i32.ne
1202                          br_if 0 (;@11;)
131 ------------------------------------------------------------
1203                        end
132 ------------------------------------------------------------
1204                        br 9 (;@1;)
133 ------------------------------------------------------------
1205                      end
134 ------------------------------------------------------------
1206                      local.get 4
1207                      i32.const 4
1208                      i32.gt_s
1209                      if  ;; label = @10
135 ------------------------------------------------------------
1210                        i32.const 0
1211                        local.set 2
1212                        loop  ;; label = @11
136 ------------------------------------------------------------
1213                          local.get 1
1214                          i64.const 4294967296
1215                          i64.store offset=28 align=4
1216                          local.get 1
1217                          i64.const 0
1218                          i64.store offset=20 align=4
1219                          local.get 1
1220                          local.get 2
1221                          i32.store offset=4
1222                          local.get 1
1223                          i32.const 1
1224                          i32.store
1225                          local.get 1
1226                          i32.const 36
1227                          i32.add
1228                          local.set 1
1229                          local.get 2
1230                          i32.const 1
1231                          i32.add
1232                          local.tee 2
1233                          local.get 4
1234                          i32.ne
1235                          br_if 0 (;@11;)
137 ------------------------------------------------------------
1236                        end
138 ------------------------------------------------------------
1237                        i32.const 0
1238                        local.set 3
1239                        local.get 4
1240                        i32.const 1
1241                        i32.ge_s
1242                        br_if 3 (;@7;)
139 ------------------------------------------------------------
1243                        br 4 (;@6;)
140 ------------------------------------------------------------
1244                      end
141 ------------------------------------------------------------
1245                      local.get 1
1246                      local.get 4
1247                      i32.store
1248                      local.get 4
1249                      i32.const 1
1250                      i32.lt_s
1251                      br_if 1 (;@8;)
142 ------------------------------------------------------------
1252                    end
143 ------------------------------------------------------------
1253                    i32.const 0
1254                    local.set 2
1255                    loop  ;; label = @9
144 ------------------------------------------------------------
1256                      local.get 1
1257                      local.get 2
1258                      i32.const 2
1259                      i32.shl
1260                      i32.add
1261                      local.get 2
1262                      i32.store offset=4
1263                      local.get 2
1264                      i32.const 1
1265                      i32.add
1266                      local.tee 2
1267                      local.get 4
1268                      i32.ne
1269                      br_if 0 (;@9;)
145 ------------------------------------------------------------
1270                    end
146 ------------------------------------------------------------
1271                  end
147 ------------------------------------------------------------
1272                  local.get 1
1273                  i64.const 4294967296
1274                  i64.store offset=28 align=4
1275                  local.get 1
1276                  i64.const 0
1277                  i64.store offset=20 align=4
1278                  local.get 1
1279                  i32.const 36
1280                  i32.add
1281                  local.set 1
1282                  i32.const 1
1283                  local.set 3
1284                  local.get 4
1285                  i32.const 0
1286                  i32.le_s
1287                  br_if 3 (;@4;)
148 ------------------------------------------------------------
1288                end
149 ------------------------------------------------------------
1289                i32.const 0
1290                local.set 2
1291                i32.const 0
1292                local.set 5
1293                loop  ;; label = @7
150 ------------------------------------------------------------
1294                  local.get 1
1295                  i64.const 8589934592
1296                  i64.store offset=28 align=4
1297                  local.get 1
1298                  i64.const 21474836481
1299                  i64.store offset=20 align=4
1300                  local.get 1
1301                  local.get 5
1302                  i32.store offset=4
1303                  local.get 1
1304                  i32.const 1
1305                  i32.store
1306                  local.get 1
1307                  i32.const 36
1308                  i32.add
1309                  local.set 1
1310                  local.get 5
1311                  i32.const 1
1312                  i32.add
1313                  local.tee 5
1314                  local.get 4
1315                  i32.ne
1316                  br_if 0 (;@7;)
151 ------------------------------------------------------------
1317                end
152 ------------------------------------------------------------
1318                loop  ;; label = @7
153 ------------------------------------------------------------
1319                  local.get 1
1320                  i64.const 8589934592
1321                  i64.store offset=28 align=4
1322                  local.get 1
1323                  i64.const 270582939654
1324                  i64.store offset=20 align=4
1325                  local.get 1
1326                  local.get 2
1327                  i32.store offset=4
1328                  local.get 1
1329                  i32.const 1
1330                  i32.store
1331                  local.get 1
1332                  i32.const 36
1333                  i32.add
1334                  local.set 1
1335                  local.get 2
1336                  i32.const 1
1337                  i32.add
1338                  local.tee 2
1339                  local.get 4
1340                  i32.ne
1341                  br_if 0 (;@7;)
154 ------------------------------------------------------------
1342                end
155 ------------------------------------------------------------
1343                i32.const 0
1344                local.set 5
1345                loop  ;; label = @7
156 ------------------------------------------------------------
1346                  local.get 1
1347                  local.tee 0
1348                  i64.const 4294967298
1349                  i64.store offset=28 align=4
1350                  local.get 1
1351                  i64.const 270582939649
1352                  i64.store offset=20 align=4
1353                  local.get 1
1354                  local.get 5
1355                  i32.store offset=4
1356                  local.get 1
1357                  i32.const 1
1358                  i32.store
1359                  local.get 1
1360                  i32.const 36
1361                  i32.add
1362                  local.set 1
1363                  local.get 5
1364                  i32.const 1
1365                  i32.add
1366                  local.tee 5
1367                  local.get 4
1368                  i32.ne
1369                  br_if 0 (;@7;)
157 ------------------------------------------------------------
1370                end
158 ------------------------------------------------------------
1371                local.get 3
1372                br_if 1 (;@5;)
159 ------------------------------------------------------------
1373                i32.const 1
1374                local.set 3
1375              end
160 ------------------------------------------------------------
1376              i32.const 0
1377              local.set 2
1378              loop  ;; label = @6
161 ------------------------------------------------------------
1379                local.get 1
1380                i64.const 1
1381                i64.store offset=28 align=4
1382                local.get 1
1383                i64.const 0
1384                i64.store offset=20 align=4
1385                local.get 1
1386                local.get 2
1387                i32.store offset=4
1388                local.get 1
1389                i32.const 1
1390                i32.store
1391                local.get 1
1392                i32.const 36
1393                i32.add
1394                local.set 1
1395                local.get 2
1396                i32.const 1
1397                i32.add
1398                local.tee 2
1399                local.get 4
1400                i32.ne
1401                br_if 0 (;@6;)
162 ------------------------------------------------------------
1402              end
163 ------------------------------------------------------------
1403              local.get 3
1404              br_if 3 (;@2;)
164 ------------------------------------------------------------
1405              br 4 (;@1;)
165 ------------------------------------------------------------
1406            end
166 ------------------------------------------------------------
1407            local.get 1
1408            local.get 4
1409            i32.store
1410            i32.const 0
1411            local.set 5
1412            loop  ;; label = @5
167 ------------------------------------------------------------
1413              local.get 0
1414              local.get 5
1415              i32.const 2
1416              i32.shl
1417              i32.add
1418              local.get 5
1419              i32.store offset=40
1420              i32.const 1
1421              local.set 7
1422              local.get 5
1423              i32.const 1
1424              i32.add
1425              local.tee 5
1426              local.get 4
1427              i32.ne
1428              br_if 0 (;@5;)
168 ------------------------------------------------------------
1429            end
169 ------------------------------------------------------------
1430            br 1 (;@3;)
170 ------------------------------------------------------------
1431          end
171 ------------------------------------------------------------
1432          local.get 1
1433          local.get 4
1434          i32.store
1435        end
172 ------------------------------------------------------------
1436        local.get 1
1437        i64.const 1
1438        i64.store offset=28 align=4
1439        local.get 1
1440        i64.const 0
1441        i64.store offset=20 align=4
1442        local.get 7
1443        i32.eqz
1444        br_if 1 (;@1;)
173 ------------------------------------------------------------
1445        local.get 1
1446        i32.const 36
1447        i32.add
1448        local.set 1
1449      end
174 ------------------------------------------------------------
1450      i32.const 0
1451      local.set 2
1452      loop  ;; label = @2
175 ------------------------------------------------------------
1453        local.get 1
1454        i64.const 1
1455        i64.store offset=28 align=4
1456        local.get 1
1457        i64.const 270582939649
1458        i64.store offset=20 align=4
1459        local.get 1
1460        local.get 2
1461        i32.store offset=4
1462        local.get 1
1463        i32.const 1
1464        i32.store
1465        local.get 1
1466        i32.const 36
1467        i32.add
1468        local.set 1
1469        local.get 2
1470        i32.const 1
1471        i32.add
1472        local.tee 2
1473        local.get 4
1474        i32.ne
1475        br_if 0 (;@2;)
176 ------------------------------------------------------------
1476      end
177 ------------------------------------------------------------
1477    end
178 ------------------------------------------------------------)
