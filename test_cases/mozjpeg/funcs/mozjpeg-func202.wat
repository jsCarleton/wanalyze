  (func (;202;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load offset=344
0002    local.tee 3
0003    local.set 2
0004    local.get 3
0005    i32.load offset=16
0006    local.tee 13
0007    local.get 3
0008    i32.load offset=20
0009    local.tee 4
0010    i32.lt_s
0011    if  ;; label = @1
1 ------------------------------------------------------------
0012      local.get 0
0013      i32.load offset=240
0014      i32.const -1
0015      i32.add
0016      local.set 16
0017      local.get 0
0018      i32.load offset=264
0019      i32.const -1
0020      i32.add
0021      local.set 15
0022      local.get 3
0023      i32.const 24
0024      i32.add
0025      local.set 18
0026      local.get 3
0027      i32.load offset=12
0028      local.set 8
0029      loop  ;; label = @2
2 ------------------------------------------------------------
0030        local.get 8
0031        local.get 15
0032        i32.le_u
0033        if  ;; label = @3
3 ------------------------------------------------------------
0034          local.get 13
0035          i32.const 3
0036          i32.shl
0037          local.set 17
0038          loop  ;; label = @4
4 ------------------------------------------------------------
0039            block  ;; label = @5
5 ------------------------------------------------------------
0040              local.get 0
0041              i32.load offset=244
0042              local.tee 2
0043              i32.const 1
0044              i32.lt_s
0045              br_if 0 (;@5;)
6 ------------------------------------------------------------
0046              i32.const 0
0047              local.set 4
0048              i32.const 0
0049              local.set 7
0050              i32.const 0
0051              local.set 14
0052              local.get 8
0053              local.get 15
0054              i32.lt_u
0055              if  ;; label = @6
7 ------------------------------------------------------------
0056                loop  ;; label = @7
8 ------------------------------------------------------------
0057                  local.get 0
0058                  local.get 7
0059                  i32.const 2
0060                  i32.shl
0061                  i32.add
0062                  i32.load offset=248
0063                  local.tee 5
0064                  i32.load offset=56
0065                  i32.const 0
0066                  i32.gt_s
0067                  if  ;; label = @8
9 ------------------------------------------------------------
0068                    local.get 5
0069                    i32.load offset=64
0070                    local.get 8
0071                    i32.mul
0072                    local.set 14
0073                    i32.const 0
0074                    local.set 9
0075                    local.get 5
0076                    i32.load offset=52
0077                    local.tee 6
0078                    local.set 2
0079                    local.get 17
0080                    local.set 10
0081                    loop  ;; label = @9
10 ------------------------------------------------------------
0082                      block  ;; label = @10
11 ------------------------------------------------------------
0083                        block  ;; label = @11
12 ------------------------------------------------------------
0084                          local.get 3
0085                          i32.load offset=8
0086                          local.get 16
0087                          i32.lt_u
0088                          br_if 0 (;@11;)
13 ------------------------------------------------------------
0089                          local.get 9
0090                          local.get 13
0091                          i32.add
0092                          local.get 5
0093                          i32.load offset=72
0094                          i32.lt_s
0095                          br_if 0 (;@11;)
14 ------------------------------------------------------------
0096                          local.get 3
0097                          local.get 4
0098                          i32.const 2
0099                          i32.shl
0100                          i32.add
0101                          local.tee 11
0102                          i32.load offset=24
0103                          local.get 2
0104                          i32.const 7
0105                          i32.shl
0106                          call 40
0107                          local.get 5
0108                          i32.load offset=52
0109                          local.tee 12
0110                          i32.const 0
0111                          i32.le_s
0112                          br_if 1 (;@10;)
15 ------------------------------------------------------------
0113                          local.get 11
0114                          i32.load offset=20
0115                          local.set 11
0116                          i32.const 0
0117                          local.set 2
0118                          loop  ;; label = @12
16 ------------------------------------------------------------
0119                            local.get 3
0120                            local.get 2
0121                            local.get 4
0122                            i32.add
0123                            i32.const 2
0124                            i32.shl
0125                            i32.add
0126                            i32.load offset=24
0127                            local.get 11
0128                            i32.load16_u
0129                            i32.store16
0130                            local.get 2
0131                            i32.const 1
0132                            i32.add
0133                            local.tee 2
0134                            local.get 12
0135                            i32.ne
0136                            br_if 0 (;@12;)
17 ------------------------------------------------------------
0137                          end
18 ------------------------------------------------------------
0138                          br 1 (;@10;)
19 ------------------------------------------------------------
0139                        end
20 ------------------------------------------------------------
0140                        local.get 0
0141                        local.get 5
0142                        local.get 1
0143                        local.get 5
0144                        i32.load offset=4
0145                        i32.const 2
0146                        i32.shl
0147                        i32.add
0148                        i32.load
0149                        local.get 3
0150                        local.get 4
0151                        i32.const 2
0152                        i32.shl
0153                        i32.add
0154                        i32.load offset=24
0155                        local.get 10
0156                        local.get 14
0157                        local.get 6
0158                        i32.const 0
0159                        local.get 0
0160                        i32.load offset=360
0161                        i32.load offset=4
0162                        call_indirect (type 12)
0163                        local.get 5
0164                        i32.load offset=52
0165                        local.tee 2
0166                        local.get 6
0167                        i32.le_s
0168                        br_if 0 (;@10;)
21 ------------------------------------------------------------
0169                        local.get 3
0170                        local.get 4
0171                        local.get 6
0172                        i32.add
0173                        i32.const 2
0174                        i32.shl
0175                        i32.add
0176                        i32.load offset=24
0177                        local.get 2
0178                        local.get 6
0179                        i32.sub
0180                        i32.const 7
0181                        i32.shl
0182                        call 40
0183                        local.get 6
0184                        local.tee 2
0185                        local.get 5
0186                        i32.load offset=52
0187                        local.tee 11
0188                        i32.ge_s
0189                        br_if 0 (;@10;)
22 ------------------------------------------------------------
0190                        loop  ;; label = @11
23 ------------------------------------------------------------
0191                          local.get 3
0192                          local.get 2
0193                          local.get 4
0194                          i32.add
0195                          i32.const 2
0196                          i32.shl
0197                          i32.add
0198                          local.tee 12
0199                          i32.load offset=24
0200                          local.get 12
0201                          i32.load offset=20
0202                          i32.load16_u
0203                          i32.store16
0204                          local.get 2
0205                          i32.const 1
0206                          i32.add
0207                          local.tee 2
0208                          local.get 11
0209                          i32.lt_s
0210                          br_if 0 (;@11;)
24 ------------------------------------------------------------
0211                        end
25 ------------------------------------------------------------
0212                      end
26 ------------------------------------------------------------
0213                      local.get 10
0214                      i32.const 8
0215                      i32.add
0216                      local.set 10
0217                      local.get 5
0218                      i32.load offset=52
0219                      local.tee 2
0220                      local.get 4
0221                      i32.add
0222                      local.set 4
0223                      local.get 9
0224                      i32.const 1
0225                      i32.add
0226                      local.tee 9
0227                      local.get 5
0228                      i32.load offset=56
0229                      i32.lt_s
0230                      br_if 0 (;@9;)
27 ------------------------------------------------------------
0231                    end
28 ------------------------------------------------------------
0232                    local.get 0
0233                    i32.load offset=244
0234                    local.set 2
0235                  end
29 ------------------------------------------------------------
0236                  local.get 7
0237                  i32.const 1
0238                  i32.add
0239                  local.tee 7
0240                  local.get 2
0241                  i32.lt_s
0242                  br_if 0 (;@7;)
30 ------------------------------------------------------------
0243                  br 2 (;@5;)
31 ------------------------------------------------------------
0244                  unreachable
32 ------------------------------------------------------------
0245                end
33 ------------------------------------------------------------
0246                unreachable
34 ------------------------------------------------------------
0247              end
35 ------------------------------------------------------------
0248              loop  ;; label = @6
36 ------------------------------------------------------------
0249                local.get 0
0250                local.get 14
0251                i32.const 2
0252                i32.shl
0253                i32.add
0254                i32.load offset=248
0255                local.tee 5
0256                i32.load offset=56
0257                i32.const 1
0258                i32.ge_s
0259                if  ;; label = @7
37 ------------------------------------------------------------
0260                  local.get 5
0261                  i32.load offset=64
0262                  local.get 8
0263                  i32.mul
0264                  local.set 11
0265                  local.get 5
0266                  i32.load offset=68
0267                  local.set 6
0268                  i32.const 0
0269                  local.set 9
0270                  local.get 17
0271                  local.set 10
0272                  loop  ;; label = @8
38 ------------------------------------------------------------
0273                    block  ;; label = @9
39 ------------------------------------------------------------
0274                      block  ;; label = @10
40 ------------------------------------------------------------
0275                        local.get 3
0276                        i32.load offset=8
0277                        local.get 16
0278                        i32.ge_u
0279                        if  ;; label = @11
41 ------------------------------------------------------------
0280                          local.get 9
0281                          local.get 13
0282                          i32.add
0283                          local.get 5
0284                          i32.load offset=72
0285                          i32.ge_s
0286                          br_if 1 (;@10;)
42 ------------------------------------------------------------
0287                        end
43 ------------------------------------------------------------
0288                        local.get 0
0289                        local.get 5
0290                        local.get 1
0291                        local.get 5
0292                        i32.load offset=4
0293                        i32.const 2
0294                        i32.shl
0295                        i32.add
0296                        i32.load
0297                        local.get 3
0298                        local.get 4
0299                        i32.const 2
0300                        i32.shl
0301                        i32.add
0302                        i32.load offset=24
0303                        local.get 10
0304                        local.get 11
0305                        local.get 6
0306                        i32.const 0
0307                        local.get 0
0308                        i32.load offset=360
0309                        i32.load offset=4
0310                        call_indirect (type 12)
0311                        local.get 5
0312                        i32.load offset=52
0313                        local.tee 7
0314                        local.get 6
0315                        i32.le_s
0316                        br_if 1 (;@9;)
44 ------------------------------------------------------------
0317                        local.get 3
0318                        local.get 4
0319                        local.get 6
0320                        i32.add
0321                        i32.const 2
0322                        i32.shl
0323                        i32.add
0324                        i32.load offset=24
0325                        local.get 7
0326                        local.get 6
0327                        i32.sub
0328                        i32.const 7
0329                        i32.shl
0330                        call 40
0331                        local.get 6
0332                        local.tee 2
0333                        local.get 5
0334                        i32.load offset=52
0335                        local.tee 7
0336                        i32.ge_s
0337                        br_if 1 (;@9;)
45 ------------------------------------------------------------
0338                        loop  ;; label = @11
46 ------------------------------------------------------------
0339                          local.get 3
0340                          local.get 2
0341                          local.get 4
0342                          i32.add
0343                          i32.const 2
0344                          i32.shl
0345                          i32.add
0346                          local.tee 12
0347                          i32.load offset=24
0348                          local.get 12
0349                          i32.load offset=20
0350                          i32.load16_u
0351                          i32.store16
0352                          local.get 2
0353                          i32.const 1
0354                          i32.add
0355                          local.tee 2
0356                          local.get 7
0357                          i32.lt_s
0358                          br_if 0 (;@11;)
47 ------------------------------------------------------------
0359                        end
48 ------------------------------------------------------------
0360                        br 1 (;@9;)
49 ------------------------------------------------------------
0361                      end
50 ------------------------------------------------------------
0362                      local.get 3
0363                      local.get 4
0364                      i32.const 2
0365                      i32.shl
0366                      i32.add
0367                      local.tee 2
0368                      i32.load offset=24
0369                      local.get 5
0370                      i32.load offset=52
0371                      i32.const 7
0372                      i32.shl
0373                      call 40
0374                      local.get 5
0375                      i32.load offset=52
0376                      local.tee 7
0377                      i32.const 1
0378                      i32.lt_s
0379                      br_if 0 (;@9;)
51 ------------------------------------------------------------
0380                      local.get 2
0381                      i32.load offset=20
0382                      local.set 12
0383                      i32.const 0
0384                      local.set 2
0385                      loop  ;; label = @10
52 ------------------------------------------------------------
0386                        local.get 3
0387                        local.get 2
0388                        local.get 4
0389                        i32.add
0390                        i32.const 2
0391                        i32.shl
0392                        i32.add
0393                        i32.load offset=24
0394                        local.get 12
0395                        i32.load16_u
0396                        i32.store16
0397                        local.get 2
0398                        i32.const 1
0399                        i32.add
0400                        local.tee 2
0401                        local.get 7
0402                        i32.ne
0403                        br_if 0 (;@10;)
53 ------------------------------------------------------------
0404                      end
54 ------------------------------------------------------------
0405                    end
55 ------------------------------------------------------------
0406                    local.get 10
0407                    i32.const 8
0408                    i32.add
0409                    local.set 10
0410                    local.get 4
0411                    local.get 7
0412                    i32.add
0413                    local.set 4
0414                    local.get 9
0415                    i32.const 1
0416                    i32.add
0417                    local.tee 9
0418                    local.get 5
0419                    i32.load offset=56
0420                    i32.lt_s
0421                    br_if 0 (;@8;)
56 ------------------------------------------------------------
0422                  end
57 ------------------------------------------------------------
0423                  local.get 0
0424                  i32.load offset=244
0425                  local.set 2
0426                end
58 ------------------------------------------------------------
0427                local.get 14
0428                i32.const 1
0429                i32.add
0430                local.tee 14
0431                local.get 2
0432                i32.lt_s
0433                br_if 0 (;@6;)
59 ------------------------------------------------------------
0434              end
60 ------------------------------------------------------------
0435            end
61 ------------------------------------------------------------
0436            local.get 0
0437            local.get 18
0438            local.get 0
0439            i32.load offset=364
0440            i32.load offset=4
0441            call_indirect (type 4)
0442            i32.eqz
0443            if  ;; label = @5
62 ------------------------------------------------------------
0444              local.get 3
0445              local.get 8
0446              i32.store offset=12
0447              local.get 3
0448              local.get 13
0449              i32.store offset=16
0450              i32.const 0
0451              return
63 ------------------------------------------------------------
0452            end
64 ------------------------------------------------------------
0453            local.get 8
0454            i32.const 1
0455            i32.add
0456            local.tee 8
0457            local.get 15
0458            i32.le_u
0459            br_if 0 (;@4;)
65 ------------------------------------------------------------
0460          end
66 ------------------------------------------------------------
0461          local.get 3
0462          i32.load offset=20
0463          local.set 4
0464        end
67 ------------------------------------------------------------
0465        i32.const 0
0466        local.set 8
0467        local.get 3
0468        i32.const 0
0469        i32.store offset=12
0470        local.get 13
0471        i32.const 1
0472        i32.add
0473        local.tee 13
0474        local.get 4
0475        i32.lt_s
0476        br_if 0 (;@2;)
68 ------------------------------------------------------------
0477      end
69 ------------------------------------------------------------
0478      local.get 0
0479      i32.load offset=344
0480      local.set 2
0481    end
70 ------------------------------------------------------------
0482    local.get 3
0483    local.get 3
0484    i32.load offset=8
0485    i32.const 1
0486    i32.add
0487    i32.store offset=8
0488    i32.const 1
0489    local.set 4
0490    local.get 0
0491    i32.load offset=244
0492    i32.const 1
0493    i32.le_s
0494    if  ;; label = @1
71 ------------------------------------------------------------
0495      local.get 0
0496      i32.load offset=248
0497      i32.const 12
0498      i32.const 72
0499      local.get 2
0500      i32.load offset=8
0501      local.get 0
0502      i32.load offset=240
0503      i32.const -1
0504      i32.add
0505      i32.lt_u
0506      select
0507      i32.add
0508      i32.load
0509      local.set 4
0510    end
72 ------------------------------------------------------------
0511    local.get 2
0512    i64.const 0
0513    i64.store offset=12 align=4
0514    local.get 2
0515    local.get 4
0516    i32.store offset=20
0517    i32.const 1)
