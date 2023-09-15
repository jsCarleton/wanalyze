  (func (;340;) (type 6) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    block  ;; label = @1
1 ------------------------------------------------------------
0001      block  ;; label = @2
2 ------------------------------------------------------------
0002        block  ;; label = @3
3 ------------------------------------------------------------
0003          block  ;; label = @4
4 ------------------------------------------------------------
0004            block  ;; label = @5
5 ------------------------------------------------------------
0005              block  ;; label = @6
6 ------------------------------------------------------------
0006                block  ;; label = @7
7 ------------------------------------------------------------
0007                  block  ;; label = @8
8 ------------------------------------------------------------
0008                    local.get 0
0009                    i32.load offset=40
0010                    i32.const -6
0011                    i32.add
0012                    br_table 0 (;@8;) 1 (;@7;) 2 (;@6;) 3 (;@5;) 4 (;@4;) 5 (;@3;) 1 (;@7;) 3 (;@5;) 4 (;@4;) 5 (;@3;) 6 (;@2;)
9 ------------------------------------------------------------
0013                  end
10 ------------------------------------------------------------
0014                  local.get 4
0015                  i32.const 1
0016                  i32.lt_s
0017                  br_if 6 (;@1;)
11 ------------------------------------------------------------
0018                  local.get 0
0019                  i32.load offset=28
0020                  local.tee 6
0021                  i32.eqz
0022                  br_if 6 (;@1;)
12 ------------------------------------------------------------
0023                  loop  ;; label = @8
13 ------------------------------------------------------------
0024                    local.get 3
0025                    i32.const 2
0026                    i32.shl
0027                    local.tee 0
0028                    local.get 2
0029                    i32.load offset=8
0030                    i32.add
0031                    i32.load
0032                    local.set 7
0033                    local.get 2
0034                    i32.load offset=4
0035                    local.get 0
0036                    i32.add
0037                    i32.load
0038                    local.set 8
0039                    local.get 2
0040                    i32.load
0041                    local.get 0
0042                    i32.add
0043                    i32.load
0044                    local.set 9
0045                    local.get 1
0046                    i32.load
0047                    local.set 0
0048                    i32.const 0
0049                    local.set 5
0050                    loop  ;; label = @9
14 ------------------------------------------------------------
0051                      local.get 5
0052                      local.get 9
0053                      i32.add
0054                      local.get 0
0055                      i32.load8_u
0056                      i32.store8
0057                      local.get 5
0058                      local.get 8
0059                      i32.add
0060                      local.get 0
0061                      i32.load8_u offset=1
0062                      i32.store8
0063                      local.get 5
0064                      local.get 7
0065                      i32.add
0066                      local.get 0
0067                      i32.load8_u offset=2
0068                      i32.store8
0069                      local.get 0
0070                      i32.const 3
0071                      i32.add
0072                      local.set 0
0073                      local.get 5
0074                      i32.const 1
0075                      i32.add
0076                      local.tee 5
0077                      local.get 6
0078                      i32.ne
0079                      br_if 0 (;@9;)
15 ------------------------------------------------------------
0080                    end
16 ------------------------------------------------------------
0081                    local.get 3
0082                    i32.const 1
0083                    i32.add
0084                    local.set 3
0085                    local.get 1
0086                    i32.const 4
0087                    i32.add
0088                    local.set 1
0089                    local.get 4
0090                    i32.const 1
0091                    i32.gt_s
0092                    local.set 0
0093                    local.get 4
0094                    i32.const -1
0095                    i32.add
0096                    local.set 4
0097                    local.get 0
0098                    br_if 0 (;@8;)
17 ------------------------------------------------------------
0099                  end
18 ------------------------------------------------------------
0100                  br 6 (;@1;)
19 ------------------------------------------------------------
0101                end
20 ------------------------------------------------------------
0102                local.get 4
0103                i32.const 1
0104                i32.lt_s
0105                br_if 5 (;@1;)
21 ------------------------------------------------------------
0106                local.get 0
0107                i32.load offset=28
0108                local.tee 6
0109                i32.eqz
0110                br_if 5 (;@1;)
22 ------------------------------------------------------------
0111                loop  ;; label = @7
23 ------------------------------------------------------------
0112                  local.get 3
0113                  i32.const 2
0114                  i32.shl
0115                  local.tee 0
0116                  local.get 2
0117                  i32.load offset=8
0118                  i32.add
0119                  i32.load
0120                  local.set 7
0121                  local.get 2
0122                  i32.load offset=4
0123                  local.get 0
0124                  i32.add
0125                  i32.load
0126                  local.set 8
0127                  local.get 2
0128                  i32.load
0129                  local.get 0
0130                  i32.add
0131                  i32.load
0132                  local.set 9
0133                  local.get 1
0134                  i32.load
0135                  local.set 0
0136                  i32.const 0
0137                  local.set 5
0138                  loop  ;; label = @8
24 ------------------------------------------------------------
0139                    local.get 5
0140                    local.get 9
0141                    i32.add
0142                    local.get 0
0143                    i32.load8_u
0144                    i32.store8
0145                    local.get 5
0146                    local.get 8
0147                    i32.add
0148                    local.get 0
0149                    i32.load8_u offset=1
0150                    i32.store8
0151                    local.get 5
0152                    local.get 7
0153                    i32.add
0154                    local.get 0
0155                    i32.load8_u offset=2
0156                    i32.store8
0157                    local.get 0
0158                    i32.const 4
0159                    i32.add
0160                    local.set 0
0161                    local.get 5
0162                    i32.const 1
0163                    i32.add
0164                    local.tee 5
0165                    local.get 6
0166                    i32.ne
0167                    br_if 0 (;@8;)
25 ------------------------------------------------------------
0168                  end
26 ------------------------------------------------------------
0169                  local.get 3
0170                  i32.const 1
0171                  i32.add
0172                  local.set 3
0173                  local.get 1
0174                  i32.const 4
0175                  i32.add
0176                  local.set 1
0177                  local.get 4
0178                  i32.const 1
0179                  i32.gt_s
0180                  local.set 0
0181                  local.get 4
0182                  i32.const -1
0183                  i32.add
0184                  local.set 4
0185                  local.get 0
0186                  br_if 0 (;@7;)
27 ------------------------------------------------------------
0187                end
28 ------------------------------------------------------------
0188                br 5 (;@1;)
29 ------------------------------------------------------------
0189              end
30 ------------------------------------------------------------
0190              local.get 4
0191              i32.const 1
0192              i32.lt_s
0193              br_if 4 (;@1;)
31 ------------------------------------------------------------
0194              local.get 0
0195              i32.load offset=28
0196              local.tee 6
0197              i32.eqz
0198              br_if 4 (;@1;)
32 ------------------------------------------------------------
0199              loop  ;; label = @6
33 ------------------------------------------------------------
0200                local.get 3
0201                i32.const 2
0202                i32.shl
0203                local.tee 0
0204                local.get 2
0205                i32.load offset=8
0206                i32.add
0207                i32.load
0208                local.set 7
0209                local.get 2
0210                i32.load offset=4
0211                local.get 0
0212                i32.add
0213                i32.load
0214                local.set 8
0215                local.get 2
0216                i32.load
0217                local.get 0
0218                i32.add
0219                i32.load
0220                local.set 9
0221                local.get 1
0222                i32.load
0223                local.set 0
0224                i32.const 0
0225                local.set 5
0226                loop  ;; label = @7
34 ------------------------------------------------------------
0227                  local.get 5
0228                  local.get 9
0229                  i32.add
0230                  local.get 0
0231                  i32.load8_u offset=2
0232                  i32.store8
0233                  local.get 5
0234                  local.get 8
0235                  i32.add
0236                  local.get 0
0237                  i32.load8_u offset=1
0238                  i32.store8
0239                  local.get 5
0240                  local.get 7
0241                  i32.add
0242                  local.get 0
0243                  i32.load8_u
0244                  i32.store8
0245                  local.get 0
0246                  i32.const 3
0247                  i32.add
0248                  local.set 0
0249                  local.get 5
0250                  i32.const 1
0251                  i32.add
0252                  local.tee 5
0253                  local.get 6
0254                  i32.ne
0255                  br_if 0 (;@7;)
35 ------------------------------------------------------------
0256                end
36 ------------------------------------------------------------
0257                local.get 3
0258                i32.const 1
0259                i32.add
0260                local.set 3
0261                local.get 1
0262                i32.const 4
0263                i32.add
0264                local.set 1
0265                local.get 4
0266                i32.const 1
0267                i32.gt_s
0268                local.set 0
0269                local.get 4
0270                i32.const -1
0271                i32.add
0272                local.set 4
0273                local.get 0
0274                br_if 0 (;@6;)
37 ------------------------------------------------------------
0275              end
38 ------------------------------------------------------------
0276              br 4 (;@1;)
39 ------------------------------------------------------------
0277            end
40 ------------------------------------------------------------
0278            local.get 4
0279            i32.const 1
0280            i32.lt_s
0281            br_if 3 (;@1;)
41 ------------------------------------------------------------
0282            local.get 0
0283            i32.load offset=28
0284            local.tee 6
0285            i32.eqz
0286            br_if 3 (;@1;)
42 ------------------------------------------------------------
0287            loop  ;; label = @5
43 ------------------------------------------------------------
0288              local.get 3
0289              i32.const 2
0290              i32.shl
0291              local.tee 0
0292              local.get 2
0293              i32.load offset=8
0294              i32.add
0295              i32.load
0296              local.set 7
0297              local.get 2
0298              i32.load offset=4
0299              local.get 0
0300              i32.add
0301              i32.load
0302              local.set 8
0303              local.get 2
0304              i32.load
0305              local.get 0
0306              i32.add
0307              i32.load
0308              local.set 9
0309              local.get 1
0310              i32.load
0311              local.set 0
0312              i32.const 0
0313              local.set 5
0314              loop  ;; label = @6
44 ------------------------------------------------------------
0315                local.get 5
0316                local.get 9
0317                i32.add
0318                local.get 0
0319                i32.load8_u offset=2
0320                i32.store8
0321                local.get 5
0322                local.get 8
0323                i32.add
0324                local.get 0
0325                i32.load8_u offset=1
0326                i32.store8
0327                local.get 5
0328                local.get 7
0329                i32.add
0330                local.get 0
0331                i32.load8_u
0332                i32.store8
0333                local.get 0
0334                i32.const 4
0335                i32.add
0336                local.set 0
0337                local.get 5
0338                i32.const 1
0339                i32.add
0340                local.tee 5
0341                local.get 6
0342                i32.ne
0343                br_if 0 (;@6;)
45 ------------------------------------------------------------
0344              end
46 ------------------------------------------------------------
0345              local.get 3
0346              i32.const 1
0347              i32.add
0348              local.set 3
0349              local.get 1
0350              i32.const 4
0351              i32.add
0352              local.set 1
0353              local.get 4
0354              i32.const 1
0355              i32.gt_s
0356              local.set 0
0357              local.get 4
0358              i32.const -1
0359              i32.add
0360              local.set 4
0361              local.get 0
0362              br_if 0 (;@5;)
47 ------------------------------------------------------------
0363            end
48 ------------------------------------------------------------
0364            br 3 (;@1;)
49 ------------------------------------------------------------
0365          end
50 ------------------------------------------------------------
0366          local.get 4
0367          i32.const 1
0368          i32.lt_s
0369          br_if 2 (;@1;)
51 ------------------------------------------------------------
0370          local.get 0
0371          i32.load offset=28
0372          local.tee 6
0373          i32.eqz
0374          br_if 2 (;@1;)
52 ------------------------------------------------------------
0375          loop  ;; label = @4
53 ------------------------------------------------------------
0376            local.get 3
0377            i32.const 2
0378            i32.shl
0379            local.tee 0
0380            local.get 2
0381            i32.load offset=8
0382            i32.add
0383            i32.load
0384            local.set 7
0385            local.get 2
0386            i32.load offset=4
0387            local.get 0
0388            i32.add
0389            i32.load
0390            local.set 8
0391            local.get 2
0392            i32.load
0393            local.get 0
0394            i32.add
0395            i32.load
0396            local.set 9
0397            local.get 1
0398            i32.load
0399            local.set 0
0400            i32.const 0
0401            local.set 5
0402            loop  ;; label = @5
54 ------------------------------------------------------------
0403              local.get 5
0404              local.get 9
0405              i32.add
0406              local.get 0
0407              i32.load8_u offset=3
0408              i32.store8
0409              local.get 5
0410              local.get 8
0411              i32.add
0412              local.get 0
0413              i32.load8_u offset=2
0414              i32.store8
0415              local.get 5
0416              local.get 7
0417              i32.add
0418              local.get 0
0419              i32.load8_u offset=1
0420              i32.store8
0421              local.get 0
0422              i32.const 4
0423              i32.add
0424              local.set 0
0425              local.get 5
0426              i32.const 1
0427              i32.add
0428              local.tee 5
0429              local.get 6
0430              i32.ne
0431              br_if 0 (;@5;)
55 ------------------------------------------------------------
0432            end
56 ------------------------------------------------------------
0433            local.get 3
0434            i32.const 1
0435            i32.add
0436            local.set 3
0437            local.get 1
0438            i32.const 4
0439            i32.add
0440            local.set 1
0441            local.get 4
0442            i32.const 1
0443            i32.gt_s
0444            local.set 0
0445            local.get 4
0446            i32.const -1
0447            i32.add
0448            local.set 4
0449            local.get 0
0450            br_if 0 (;@4;)
57 ------------------------------------------------------------
0451          end
58 ------------------------------------------------------------
0452          br 2 (;@1;)
59 ------------------------------------------------------------
0453        end
60 ------------------------------------------------------------
0454        local.get 4
0455        i32.const 1
0456        i32.lt_s
0457        br_if 1 (;@1;)
61 ------------------------------------------------------------
0458        local.get 0
0459        i32.load offset=28
0460        local.tee 6
0461        i32.eqz
0462        br_if 1 (;@1;)
62 ------------------------------------------------------------
0463        loop  ;; label = @3
63 ------------------------------------------------------------
0464          local.get 3
0465          i32.const 2
0466          i32.shl
0467          local.tee 0
0468          local.get 2
0469          i32.load offset=8
0470          i32.add
0471          i32.load
0472          local.set 7
0473          local.get 2
0474          i32.load offset=4
0475          local.get 0
0476          i32.add
0477          i32.load
0478          local.set 8
0479          local.get 2
0480          i32.load
0481          local.get 0
0482          i32.add
0483          i32.load
0484          local.set 9
0485          local.get 1
0486          i32.load
0487          local.set 0
0488          i32.const 0
0489          local.set 5
0490          loop  ;; label = @4
64 ------------------------------------------------------------
0491            local.get 5
0492            local.get 9
0493            i32.add
0494            local.get 0
0495            i32.load8_u offset=1
0496            i32.store8
0497            local.get 5
0498            local.get 8
0499            i32.add
0500            local.get 0
0501            i32.load8_u offset=2
0502            i32.store8
0503            local.get 5
0504            local.get 7
0505            i32.add
0506            local.get 0
0507            i32.load8_u offset=3
0508            i32.store8
0509            local.get 0
0510            i32.const 4
0511            i32.add
0512            local.set 0
0513            local.get 5
0514            i32.const 1
0515            i32.add
0516            local.tee 5
0517            local.get 6
0518            i32.ne
0519            br_if 0 (;@4;)
65 ------------------------------------------------------------
0520          end
66 ------------------------------------------------------------
0521          local.get 3
0522          i32.const 1
0523          i32.add
0524          local.set 3
0525          local.get 1
0526          i32.const 4
0527          i32.add
0528          local.set 1
0529          local.get 4
0530          i32.const 1
0531          i32.gt_s
0532          local.set 0
0533          local.get 4
0534          i32.const -1
0535          i32.add
0536          local.set 4
0537          local.get 0
0538          br_if 0 (;@3;)
67 ------------------------------------------------------------
0539        end
68 ------------------------------------------------------------
0540        br 1 (;@1;)
69 ------------------------------------------------------------
0541      end
70 ------------------------------------------------------------
0542      local.get 4
0543      i32.const 1
0544      i32.lt_s
0545      br_if 0 (;@1;)
71 ------------------------------------------------------------
0546      local.get 0
0547      i32.load offset=28
0548      local.tee 6
0549      i32.eqz
0550      br_if 0 (;@1;)
72 ------------------------------------------------------------
0551      loop  ;; label = @2
73 ------------------------------------------------------------
0552        local.get 3
0553        i32.const 2
0554        i32.shl
0555        local.tee 0
0556        local.get 2
0557        i32.load offset=8
0558        i32.add
0559        i32.load
0560        local.set 7
0561        local.get 2
0562        i32.load offset=4
0563        local.get 0
0564        i32.add
0565        i32.load
0566        local.set 8
0567        local.get 2
0568        i32.load
0569        local.get 0
0570        i32.add
0571        i32.load
0572        local.set 9
0573        local.get 1
0574        i32.load
0575        local.set 0
0576        i32.const 0
0577        local.set 5
0578        loop  ;; label = @3
74 ------------------------------------------------------------
0579          local.get 5
0580          local.get 9
0581          i32.add
0582          local.get 0
0583          i32.load8_u
0584          i32.store8
0585          local.get 5
0586          local.get 8
0587          i32.add
0588          local.get 0
0589          i32.load8_u offset=1
0590          i32.store8
0591          local.get 5
0592          local.get 7
0593          i32.add
0594          local.get 0
0595          i32.load8_u offset=2
0596          i32.store8
0597          local.get 0
0598          i32.const 3
0599          i32.add
0600          local.set 0
0601          local.get 5
0602          i32.const 1
0603          i32.add
0604          local.tee 5
0605          local.get 6
0606          i32.ne
0607          br_if 0 (;@3;)
75 ------------------------------------------------------------
0608        end
76 ------------------------------------------------------------
0609        local.get 3
0610        i32.const 1
0611        i32.add
0612        local.set 3
0613        local.get 1
0614        i32.const 4
0615        i32.add
0616        local.set 1
0617        local.get 4
0618        i32.const 1
0619        i32.gt_s
0620        local.set 0
0621        local.get 4
0622        i32.const -1
0623        i32.add
0624        local.set 4
0625        local.get 0
0626        br_if 0 (;@2;)
77 ------------------------------------------------------------
0627      end
78 ------------------------------------------------------------
0628    end
79 ------------------------------------------------------------)
