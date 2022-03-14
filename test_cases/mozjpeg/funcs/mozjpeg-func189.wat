  (func (;189;) (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const -64
0002    i32.add
0003    local.tee 4
0004    global.set 0
0005    local.get 0
0006    i32.load offset=348
0007    local.set 18
0008    block  ;; label = @1
1 ------------------------------------------------------------
0009      block (result i32)  ;; label = @2
2 ------------------------------------------------------------
0010        block  ;; label = @3
3 ------------------------------------------------------------
0011          block  ;; label = @4
4 ------------------------------------------------------------
0012            block (result i32)  ;; label = @5
5 ------------------------------------------------------------
0013              block  ;; label = @6
6 ------------------------------------------------------------
0014                local.get 0
0015                i32.load offset=180
0016                if  ;; label = @7
7 ------------------------------------------------------------
0017                  local.get 4
0018                  i64.const 0
0019                  i64.store offset=48
0020                  local.get 4
0021                  i64.const 0
0022                  i64.store offset=56
0023                  local.get 4
0024                  i64.const 0
0025                  i64.store offset=40
0026                  local.get 4
0027                  i64.const 0
0028                  i64.store offset=32
0029                  local.get 0
0030                  i32.load offset=244
0031                  local.tee 1
0032                  i32.const 1
0033                  i32.lt_s
0034                  br_if 3 (;@4;)
8 ------------------------------------------------------------
0035                  local.get 0
0036                  i32.load offset=320
0037                  local.set 3
0038                  local.get 0
0039                  i32.load offset=316
0040                  i32.eqz
0041                  if  ;; label = @8
9 ------------------------------------------------------------
0042                    local.get 1
0043                    i32.const 1
0044                    local.get 1
0045                    i32.const 1
0046                    i32.gt_s
0047                    select
0048                    local.set 5
0049                    local.get 0
0050                    i32.load offset=324
0051                    i32.eqz
0052                    if  ;; label = @9
10 ------------------------------------------------------------
0053                      loop  ;; label = @10
11 ------------------------------------------------------------
0054                        local.get 0
0055                        local.get 2
0056                        i32.const 2
0057                        i32.shl
0058                        i32.add
0059                        i32.load offset=248
0060                        local.tee 1
0061                        i32.load offset=20
0062                        local.get 4
0063                        i32.const 48
0064                        i32.add
0065                        i32.add
0066                        i32.const 1
0067                        i32.store8
0068                        local.get 3
0069                        if  ;; label = @11
12 ------------------------------------------------------------
0070                          local.get 1
0071                          i32.load offset=24
0072                          local.get 4
0073                          i32.const 32
0074                          i32.add
0075                          i32.add
0076                          i32.const 1
0077                          i32.store8
0078                        end
13 ------------------------------------------------------------
0079                        local.get 2
0080                        i32.const 1
0081                        i32.add
0082                        local.tee 2
0083                        local.get 5
0084                        i32.ne
0085                        br_if 0 (;@10;)
14 ------------------------------------------------------------
0086                      end
15 ------------------------------------------------------------
0087                      local.get 4
0088                      i32.load8_u offset=63
0089                      local.set 1
0090                      local.get 4
0091                      i32.load8_u offset=61
0092                      local.set 7
0093                      local.get 4
0094                      i32.load8_u offset=60
0095                      local.set 3
0096                      local.get 4
0097                      i32.load8_u offset=59
0098                      local.set 8
0099                      local.get 4
0100                      i32.load8_u offset=58
0101                      local.set 5
0102                      local.get 4
0103                      i32.load8_u offset=57
0104                      local.set 6
0105                      local.get 4
0106                      i32.load8_u offset=56
0107                      local.set 9
0108                      local.get 4
0109                      i32.load8_u offset=55
0110                      local.set 10
0111                      local.get 4
0112                      i32.load8_u offset=54
0113                      local.set 11
0114                      local.get 4
0115                      i32.load8_u offset=53
0116                      local.set 12
0117                      local.get 4
0118                      i32.load8_u offset=52
0119                      local.set 13
0120                      local.get 4
0121                      i32.load8_u offset=51
0122                      local.set 14
0123                      local.get 4
0124                      i32.load8_u offset=50
0125                      local.set 15
0126                      local.get 4
0127                      i32.load8_u offset=49
0128                      local.set 16
0129                      local.get 4
0130                      i32.load8_u offset=48
0131                      local.set 17
0132                      local.get 4
0133                      i32.load8_u offset=62
0134                      br 4 (;@5;)
16 ------------------------------------------------------------
0135                    end
17 ------------------------------------------------------------
0136                    i32.const 0
0137                    local.set 1
0138                    local.get 3
0139                    i32.eqz
0140                    br_if 2 (;@6;)
18 ------------------------------------------------------------
0141                    loop  ;; label = @9
19 ------------------------------------------------------------
0142                      local.get 0
0143                      local.get 1
0144                      i32.const 2
0145                      i32.shl
0146                      i32.add
0147                      i32.load offset=248
0148                      i32.load offset=24
0149                      local.get 4
0150                      i32.const 32
0151                      i32.add
0152                      i32.add
0153                      i32.const 1
0154                      i32.store8
0155                      local.get 1
0156                      i32.const 1
0157                      i32.add
0158                      local.tee 1
0159                      local.get 5
0160                      i32.ne
0161                      br_if 0 (;@9;)
20 ------------------------------------------------------------
0162                    end
21 ------------------------------------------------------------
0163                    i32.const 0
0164                    local.set 1
0165                    br 2 (;@6;)
22 ------------------------------------------------------------
0166                  end
23 ------------------------------------------------------------
0167                  local.get 3
0168                  i32.eqz
0169                  br_if 3 (;@4;)
24 ------------------------------------------------------------
0170                  local.get 1
0171                  i32.const 1
0172                  local.get 1
0173                  i32.const 1
0174                  i32.gt_s
0175                  select
0176                  local.set 3
0177                  i32.const 0
0178                  local.set 1
0179                  loop  ;; label = @8
25 ------------------------------------------------------------
0180                    local.get 0
0181                    local.get 2
0182                    i32.const 2
0183                    i32.shl
0184                    i32.add
0185                    i32.load offset=248
0186                    i32.load offset=24
0187                    local.get 4
0188                    i32.const 32
0189                    i32.add
0190                    i32.add
0191                    i32.const 1
0192                    i32.store8
0193                    local.get 2
0194                    i32.const 1
0195                    i32.add
0196                    local.tee 2
0197                    local.get 3
0198                    i32.ne
0199                    br_if 0 (;@8;)
26 ------------------------------------------------------------
0200                  end
27 ------------------------------------------------------------
0201                  br 4 (;@3;)
28 ------------------------------------------------------------
0202                end
29 ------------------------------------------------------------
0203                local.get 4
0204                i64.const 0
0205                i64.store offset=56
0206                local.get 4
0207                i64.const 0
0208                i64.store offset=48
0209                local.get 4
0210                i64.const 0
0211                i64.store offset=40
0212                local.get 4
0213                i64.const 0
0214                i64.store offset=32
0215                local.get 4
0216                i64.const 0
0217                i64.store offset=24
0218                local.get 4
0219                i64.const 0
0220                i64.store offset=16
0221                local.get 4
0222                i64.const 0
0223                i64.store offset=8
0224                local.get 4
0225                i64.const 0
0226                i64.store
0227                block  ;; label = @7
30 ------------------------------------------------------------
0228                  local.get 0
0229                  i32.load offset=332
0230                  i32.load offset=4152
0231                  i32.const 720002228
0232                  i32.ne
0233                  if  ;; label = @8
31 ------------------------------------------------------------
0234                    block  ;; label = @9
32 ------------------------------------------------------------
0235                      local.get 0
0236                      i32.load offset=244
0237                      i32.const 1
0238                      i32.lt_s
0239                      if  ;; label = @10
33 ------------------------------------------------------------
0240                        i32.const 2
0241                        local.set 5
0242                        br 1 (;@9;)
34 ------------------------------------------------------------
0243                      end
35 ------------------------------------------------------------
0244                      i32.const 2
0245                      local.set 5
0246                      loop  ;; label = @10
36 ------------------------------------------------------------
0247                        local.get 0
0248                        local.get 0
0249                        local.get 1
0250                        i32.const 2
0251                        i32.shl
0252                        local.tee 6
0253                        i32.add
0254                        i32.load offset=248
0255                        local.tee 3
0256                        i32.load offset=24
0257                        local.tee 7
0258                        i32.const 2
0259                        i32.shl
0260                        i32.add
0261                        i32.load offset=104
0262                        local.set 2
0263                        block  ;; label = @11
37 ------------------------------------------------------------
0264                          block  ;; label = @12
38 ------------------------------------------------------------
0265                            local.get 0
0266                            i32.load offset=316
0267                            br_if 0 (;@12;)
39 ------------------------------------------------------------
0268                            local.get 0
0269                            i32.load offset=324
0270                            br_if 0 (;@12;)
40 ------------------------------------------------------------
0271                            local.get 0
0272                            local.get 3
0273                            i32.load offset=20
0274                            local.tee 8
0275                            i32.const 2
0276                            i32.shl
0277                            i32.add
0278                            i32.load offset=88
0279                            local.tee 3
0280                            i32.eqz
0281                            if  ;; label = @13
41 ------------------------------------------------------------
0282                              local.get 0
0283                              i32.load
0284                              local.tee 9
0285                              local.get 8
0286                              i32.store offset=24
0287                              local.get 9
0288                              i32.const 50
0289                              i32.store offset=20
0290                              local.get 0
0291                              local.get 0
0292                              i32.load
0293                              i32.load
0294                              call_indirect (type 0)
0295                            end
42 ------------------------------------------------------------
0296                            local.get 3
0297                            i32.load offset=276
0298                            br_if 1 (;@11;)
43 ------------------------------------------------------------
0299                            local.get 3
0300                            local.get 4
0301                            i32.load offset=20
0302                            i32.eq
0303                            local.get 3
0304                            local.get 4
0305                            i32.load offset=16
0306                            i32.eq
0307                            i32.add
0308                            local.get 3
0309                            local.get 4
0310                            i32.load offset=24
0311                            i32.eq
0312                            i32.add
0313                            i32.const -1
0314                            i32.const 0
0315                            local.get 3
0316                            local.get 4
0317                            i32.load offset=28
0318                            i32.eq
0319                            select
0320                            i32.ne
0321                            br_if 1 (;@11;)
44 ------------------------------------------------------------
0322                            local.get 4
0323                            i32.const 16
0324                            i32.add
0325                            local.get 6
0326                            i32.add
0327                            local.get 3
0328                            i32.store
0329                            local.get 4
0330                            i32.const 48
0331                            i32.add
0332                            local.get 6
0333                            i32.add
0334                            local.tee 8
0335                            local.get 3
0336                            i32.load8_u offset=16
0337                            local.get 3
0338                            i32.load8_u offset=15
0339                            local.get 3
0340                            i32.load8_u offset=14
0341                            local.get 3
0342                            i32.load8_u offset=13
0343                            local.get 3
0344                            i32.load8_u offset=12
0345                            local.get 3
0346                            i32.load8_u offset=11
0347                            local.get 3
0348                            i32.load8_u offset=10
0349                            local.get 3
0350                            i32.load8_u offset=9
0351                            local.get 3
0352                            i32.load8_u offset=8
0353                            local.get 3
0354                            i32.load8_u offset=7
0355                            local.get 3
0356                            i32.load8_u offset=6
0357                            local.get 3
0358                            i32.load8_u offset=5
0359                            local.get 3
0360                            i32.load8_u offset=4
0361                            local.get 3
0362                            i32.load8_u offset=3
0363                            local.get 3
0364                            i32.load8_u offset=2
0365                            local.get 8
0366                            i32.load
0367                            local.get 3
0368                            i32.load8_u offset=1
0369                            i32.add
0370                            i32.add
0371                            i32.add
0372                            i32.add
0373                            i32.add
0374                            i32.add
0375                            i32.add
0376                            i32.add
0377                            i32.add
0378                            i32.add
0379                            i32.add
0380                            i32.add
0381                            i32.add
0382                            i32.add
0383                            i32.add
0384                            i32.add
0385                            local.tee 3
0386                            i32.store
0387                            local.get 3
0388                            local.get 5
0389                            i32.add
0390                            i32.const 17
0391                            i32.add
0392                            local.set 5
0393                          end
45 ------------------------------------------------------------
0394                          local.get 0
0395                          i32.load offset=320
0396                          i32.eqz
0397                          br_if 0 (;@11;)
46 ------------------------------------------------------------
0398                          local.get 2
0399                          i32.eqz
0400                          if  ;; label = @12
47 ------------------------------------------------------------
0401                            local.get 0
0402                            i32.load
0403                            local.tee 3
0404                            local.get 7
0405                            i32.const 16
0406                            i32.add
0407                            i32.store offset=24
0408                            local.get 3
0409                            i32.const 50
0410                            i32.store offset=20
0411                            local.get 0
0412                            local.get 0
0413                            i32.load
0414                            i32.load
0415                            call_indirect (type 0)
0416                          end
48 ------------------------------------------------------------
0417                          local.get 2
0418                          i32.load offset=276
0419                          br_if 0 (;@11;)
49 ------------------------------------------------------------
0420                          local.get 2
0421                          local.get 4
0422                          i32.load offset=4
0423                          i32.eq
0424                          local.get 2
0425                          local.get 4
0426                          i32.load
0427                          i32.eq
0428                          i32.add
0429                          local.get 2
0430                          local.get 4
0431                          i32.load offset=8
0432                          i32.eq
0433                          i32.add
0434                          i32.const -1
0435                          i32.const 0
0436                          local.get 2
0437                          local.get 4
0438                          i32.load offset=12
0439                          i32.eq
0440                          select
0441                          i32.ne
0442                          br_if 0 (;@11;)
50 ------------------------------------------------------------
0443                          local.get 4
0444                          local.get 6
0445                          i32.add
0446                          local.get 2
0447                          i32.store
0448                          local.get 4
0449                          i32.const 32
0450                          i32.add
0451                          local.get 6
0452                          i32.add
0453                          local.tee 3
0454                          local.get 2
0455                          i32.load8_u offset=16
0456                          local.get 2
0457                          i32.load8_u offset=15
0458                          local.get 2
0459                          i32.load8_u offset=14
0460                          local.get 2
0461                          i32.load8_u offset=13
0462                          local.get 2
0463                          i32.load8_u offset=12
0464                          local.get 2
0465                          i32.load8_u offset=11
0466                          local.get 2
0467                          i32.load8_u offset=10
0468                          local.get 2
0469                          i32.load8_u offset=9
0470                          local.get 2
0471                          i32.load8_u offset=8
0472                          local.get 2
0473                          i32.load8_u offset=7
0474                          local.get 2
0475                          i32.load8_u offset=6
0476                          local.get 2
0477                          i32.load8_u offset=5
0478                          local.get 2
0479                          i32.load8_u offset=4
0480                          local.get 2
0481                          i32.load8_u offset=3
0482                          local.get 2
0483                          i32.load8_u offset=2
0484                          local.get 3
0485                          i32.load
0486                          local.get 2
0487                          i32.load8_u offset=1
0488                          i32.add
0489                          i32.add
0490                          i32.add
0491                          i32.add
0492                          i32.add
0493                          i32.add
0494                          i32.add
0495                          i32.add
0496                          i32.add
0497                          i32.add
0498                          i32.add
0499                          i32.add
0500                          i32.add
0501                          i32.add
0502                          i32.add
0503                          i32.add
0504                          local.tee 2
0505                          i32.store
0506                          local.get 2
0507                          local.get 5
0508                          i32.add
0509                          i32.const 17
0510                          i32.add
0511                          local.set 5
0512                        end
51 ------------------------------------------------------------
0513                        local.get 1
0514                        i32.const 1
0515                        i32.add
0516                        local.tee 1
0517                        local.get 0
0518                        i32.load offset=244
0519                        local.tee 2
0520                        i32.lt_s
0521                        br_if 0 (;@10;)
52 ------------------------------------------------------------
0522                      end
53 ------------------------------------------------------------
0523                      local.get 5
0524                      i32.const 65535
0525                      i32.gt_s
0526                      br_if 2 (;@7;)
54 ------------------------------------------------------------
0527                    end
55 ------------------------------------------------------------
0528                    local.get 0
0529                    i32.load offset=24
0530                    local.tee 1
0531                    local.get 1
0532                    i32.load
0533                    local.tee 2
0534                    i32.const 1
0535                    i32.add
0536                    i32.store
0537                    local.get 2
0538                    i32.const 255
0539                    i32.store8
0540                    local.get 1
0541                    local.get 1
0542                    i32.load offset=4
0543                    i32.const -1
0544                    i32.add
0545                    local.tee 2
0546                    i32.store offset=4
0547                    block  ;; label = @9
56 ------------------------------------------------------------
0548                      local.get 2
0549                      br_if 0 (;@9;)
57 ------------------------------------------------------------
0550                      local.get 0
0551                      local.get 1
0552                      i32.load offset=12
0553                      call_indirect (type 1)
0554                      br_if 0 (;@9;)
58 ------------------------------------------------------------
0555                      local.get 0
0556                      i32.load
0557                      local.tee 1
0558                      i32.const 24
0559                      i32.store offset=20
0560                      local.get 0
0561                      local.get 1
0562                      i32.load
0563                      call_indirect (type 0)
0564                    end
59 ------------------------------------------------------------
0565                    local.get 0
0566                    i32.load offset=24
0567                    local.tee 1
0568                    local.get 1
0569                    i32.load
0570                    local.tee 2
0571                    i32.const 1
0572                    i32.add
0573                    i32.store
0574                    local.get 2
0575                    i32.const 196
0576                    i32.store8
0577                    local.get 1
0578                    local.get 1
0579                    i32.load offset=4
0580                    i32.const -1
0581                    i32.add
0582                    local.tee 2
0583                    i32.store offset=4
0584                    block  ;; label = @9
60 ------------------------------------------------------------
0585                      local.get 2
0586                      br_if 0 (;@9;)
61 ------------------------------------------------------------
0587                      local.get 0
0588                      local.get 1
0589                      i32.load offset=12
0590                      call_indirect (type 1)
0591                      br_if 0 (;@9;)
62 ------------------------------------------------------------
0592                      local.get 0
0593                      i32.load
0594                      local.tee 1
0595                      i32.const 24
0596                      i32.store offset=20
0597                      local.get 0
0598                      local.get 1
0599                      i32.load
0600                      call_indirect (type 0)
0601                    end
63 ------------------------------------------------------------
0602                    local.get 0
0603                    i32.load offset=24
0604                    local.tee 1
0605                    local.get 1
0606                    i32.load
0607                    local.tee 2
0608                    i32.const 1
0609                    i32.add
0610                    i32.store
0611                    local.get 2
0612                    local.get 5
0613                    i32.const 8
0614                    i32.shr_u
0615                    i32.store8
0616                    local.get 1
0617                    local.get 1
0618                    i32.load offset=4
0619                    i32.const -1
0620                    i32.add
0621                    local.tee 2
0622                    i32.store offset=4
0623                    block  ;; label = @9
64 ------------------------------------------------------------
0624                      local.get 2
0625                      br_if 0 (;@9;)
65 ------------------------------------------------------------
0626                      local.get 0
0627                      local.get 1
0628                      i32.load offset=12
0629                      call_indirect (type 1)
0630                      br_if 0 (;@9;)
66 ------------------------------------------------------------
0631                      local.get 0
0632                      i32.load
0633                      local.tee 1
0634                      i32.const 24
0635                      i32.store offset=20
0636                      local.get 0
0637                      local.get 1
0638                      i32.load
0639                      call_indirect (type 0)
0640                    end
67 ------------------------------------------------------------
0641                    local.get 0
0642                    i32.load offset=24
0643                    local.tee 1
0644                    local.get 1
0645                    i32.load
0646                    local.tee 2
0647                    i32.const 1
0648                    i32.add
0649                    i32.store
0650                    local.get 2
0651                    local.get 5
0652                    i32.store8
0653                    local.get 1
0654                    local.get 1
0655                    i32.load offset=4
0656                    i32.const -1
0657                    i32.add
0658                    local.tee 2
0659                    i32.store offset=4
0660                    block  ;; label = @9
68 ------------------------------------------------------------
0661                      local.get 2
0662                      br_if 0 (;@9;)
69 ------------------------------------------------------------
0663                      local.get 0
0664                      local.get 1
0665                      i32.load offset=12
0666                      call_indirect (type 1)
0667                      br_if 0 (;@9;)
70 ------------------------------------------------------------
0668                      local.get 0
0669                      i32.load
0670                      local.tee 1
0671                      i32.const 24
0672                      i32.store offset=20
0673                      local.get 0
0674                      local.get 1
0675                      i32.load
0676                      call_indirect (type 0)
0677                    end
71 ------------------------------------------------------------
0678                    local.get 0
0679                    i32.load offset=244
0680                    i32.const 1
0681                    i32.lt_s
0682                    br_if 7 (;@1;)
72 ------------------------------------------------------------
0683                    i32.const 0
0684                    local.set 6
0685                    loop  ;; label = @9
73 ------------------------------------------------------------
0686                      local.get 0
0687                      local.get 0
0688                      local.get 6
0689                      i32.const 2
0690                      i32.shl
0691                      local.tee 7
0692                      i32.add
0693                      i32.load offset=248
0694                      local.tee 1
0695                      i32.load offset=24
0696                      local.tee 8
0697                      i32.const 2
0698                      i32.shl
0699                      i32.add
0700                      i32.load offset=104
0701                      local.set 2
0702                      block  ;; label = @10
74 ------------------------------------------------------------
0703                        local.get 0
0704                        i32.load offset=316
0705                        br_if 0 (;@10;)
75 ------------------------------------------------------------
0706                        local.get 0
0707                        i32.load offset=324
0708                        br_if 0 (;@10;)
76 ------------------------------------------------------------
0709                        local.get 0
0710                        local.get 1
0711                        i32.load offset=20
0712                        local.tee 3
0713                        i32.const 2
0714                        i32.shl
0715                        i32.add
0716                        i32.load offset=88
0717                        local.tee 5
0718                        i32.load offset=276
0719                        br_if 0 (;@10;)
77 ------------------------------------------------------------
0720                        local.get 0
0721                        i32.load offset=24
0722                        local.tee 1
0723                        local.get 1
0724                        i32.load
0725                        local.tee 9
0726                        i32.const 1
0727                        i32.add
0728                        i32.store
0729                        local.get 9
0730                        local.get 3
0731                        i32.store8
0732                        local.get 1
0733                        local.get 1
0734                        i32.load offset=4
0735                        i32.const -1
0736                        i32.add
0737                        local.tee 3
0738                        i32.store offset=4
0739                        block  ;; label = @11
78 ------------------------------------------------------------
0740                          local.get 3
0741                          br_if 0 (;@11;)
79 ------------------------------------------------------------
0742                          local.get 0
0743                          local.get 1
0744                          i32.load offset=12
0745                          call_indirect (type 1)
0746                          br_if 0 (;@11;)
80 ------------------------------------------------------------
0747                          local.get 0
0748                          i32.load
0749                          local.tee 1
0750                          i32.const 24
0751                          i32.store offset=20
0752                          local.get 0
0753                          local.get 1
0754                          i32.load
0755                          call_indirect (type 0)
0756                        end
81 ------------------------------------------------------------
0757                        i32.const 1
0758                        local.set 1
0759                        loop  ;; label = @11
82 ------------------------------------------------------------
0760                          local.get 1
0761                          local.get 5
0762                          i32.add
0763                          i32.load8_u
0764                          local.set 9
0765                          local.get 0
0766                          i32.load offset=24
0767                          local.tee 3
0768                          local.get 3
0769                          i32.load
0770                          local.tee 10
0771                          i32.const 1
0772                          i32.add
0773                          i32.store
0774                          local.get 10
0775                          local.get 9
0776                          i32.store8
0777                          local.get 3
0778                          local.get 3
0779                          i32.load offset=4
0780                          i32.const -1
0781                          i32.add
0782                          local.tee 9
0783                          i32.store offset=4
0784                          block  ;; label = @12
83 ------------------------------------------------------------
0785                            local.get 9
0786                            br_if 0 (;@12;)
84 ------------------------------------------------------------
0787                            local.get 0
0788                            local.get 3
0789                            i32.load offset=12
0790                            call_indirect (type 1)
0791                            br_if 0 (;@12;)
85 ------------------------------------------------------------
0792                            local.get 0
0793                            i32.load
0794                            local.tee 3
0795                            i32.const 24
0796                            i32.store offset=20
0797                            local.get 0
0798                            local.get 3
0799                            i32.load
0800                            call_indirect (type 0)
0801                          end
86 ------------------------------------------------------------
0802                          local.get 1
0803                          i32.const 1
0804                          i32.add
0805                          local.tee 1
0806                          i32.const 17
0807                          i32.ne
0808                          br_if 0 (;@11;)
87 ------------------------------------------------------------
0809                        end
88 ------------------------------------------------------------
0810                        i32.const 0
0811                        local.set 1
0812                        local.get 4
0813                        i32.const 48
0814                        i32.add
0815                        local.get 7
0816                        i32.add
0817                        i32.load
0818                        local.tee 9
0819                        i32.const 0
0820                        i32.gt_s
0821                        if  ;; label = @11
89 ------------------------------------------------------------
0822                          loop  ;; label = @12
90 ------------------------------------------------------------
0823                            local.get 1
0824                            local.get 5
0825                            i32.add
0826                            i32.load8_u offset=17
0827                            local.set 10
0828                            local.get 0
0829                            i32.load offset=24
0830                            local.tee 3
0831                            local.get 3
0832                            i32.load
0833                            local.tee 11
0834                            i32.const 1
0835                            i32.add
0836                            i32.store
0837                            local.get 11
0838                            local.get 10
0839                            i32.store8
0840                            local.get 3
0841                            local.get 3
0842                            i32.load offset=4
0843                            i32.const -1
0844                            i32.add
0845                            local.tee 10
0846                            i32.store offset=4
0847                            block  ;; label = @13
91 ------------------------------------------------------------
0848                              local.get 10
0849                              br_if 0 (;@13;)
92 ------------------------------------------------------------
0850                              local.get 0
0851                              local.get 3
0852                              i32.load offset=12
0853                              call_indirect (type 1)
0854                              br_if 0 (;@13;)
93 ------------------------------------------------------------
0855                              local.get 0
0856                              i32.load
0857                              local.tee 3
0858                              i32.const 24
0859                              i32.store offset=20
0860                              local.get 0
0861                              local.get 3
0862                              i32.load
0863                              call_indirect (type 0)
0864                            end
94 ------------------------------------------------------------
0865                            local.get 1
0866                            i32.const 1
0867                            i32.add
0868                            local.tee 1
0869                            local.get 9
0870                            i32.ne
0871                            br_if 0 (;@12;)
95 ------------------------------------------------------------
0872                          end
96 ------------------------------------------------------------
0873                        end
97 ------------------------------------------------------------
0874                        local.get 5
0875                        i32.const 1
0876                        i32.store offset=276
0877                      end
98 ------------------------------------------------------------
0878                      block  ;; label = @10
99 ------------------------------------------------------------
0879                        local.get 0
0880                        i32.load offset=320
0881                        i32.eqz
0882                        br_if 0 (;@10;)
100 ------------------------------------------------------------
0883                        local.get 2
0884                        i32.load offset=276
0885                        br_if 0 (;@10;)
101 ------------------------------------------------------------
0886                        local.get 0
0887                        i32.load offset=24
0888                        local.tee 1
0889                        local.get 1
0890                        i32.load
0891                        local.tee 3
0892                        i32.const 1
0893                        i32.add
0894                        i32.store
0895                        local.get 3
0896                        local.get 8
0897                        i32.const 16
0898                        i32.add
0899                        i32.store8
0900                        local.get 1
0901                        local.get 1
0902                        i32.load offset=4
0903                        i32.const -1
0904                        i32.add
0905                        local.tee 3
0906                        i32.store offset=4
0907                        block  ;; label = @11
102 ------------------------------------------------------------
0908                          local.get 3
0909                          br_if 0 (;@11;)
103 ------------------------------------------------------------
0910                          local.get 0
0911                          local.get 1
0912                          i32.load offset=12
0913                          call_indirect (type 1)
0914                          br_if 0 (;@11;)
104 ------------------------------------------------------------
0915                          local.get 0
0916                          i32.load
0917                          local.tee 1
0918                          i32.const 24
0919                          i32.store offset=20
0920                          local.get 0
0921                          local.get 1
0922                          i32.load
0923                          call_indirect (type 0)
0924                        end
105 ------------------------------------------------------------
0925                        i32.const 1
0926                        local.set 1
0927                        loop  ;; label = @11
106 ------------------------------------------------------------
0928                          local.get 1
0929                          local.get 2
0930                          i32.add
0931                          i32.load8_u
0932                          local.set 5
0933                          local.get 0
0934                          i32.load offset=24
0935                          local.tee 3
0936                          local.get 3
0937                          i32.load
0938                          local.tee 8
0939                          i32.const 1
0940                          i32.add
0941                          i32.store
0942                          local.get 8
0943                          local.get 5
0944                          i32.store8
0945                          local.get 3
0946                          local.get 3
0947                          i32.load offset=4
0948                          i32.const -1
0949                          i32.add
0950                          local.tee 5
0951                          i32.store offset=4
0952                          block  ;; label = @12
107 ------------------------------------------------------------
0953                            local.get 5
0954                            br_if 0 (;@12;)
108 ------------------------------------------------------------
0955                            local.get 0
0956                            local.get 3
0957                            i32.load offset=12
0958                            call_indirect (type 1)
0959                            br_if 0 (;@12;)
109 ------------------------------------------------------------
0960                            local.get 0
0961                            i32.load
0962                            local.tee 3
0963                            i32.const 24
0964                            i32.store offset=20
0965                            local.get 0
0966                            local.get 3
0967                            i32.load
0968                            call_indirect (type 0)
0969                          end
110 ------------------------------------------------------------
0970                          local.get 1
0971                          i32.const 1
0972                          i32.add
0973                          local.tee 1
0974                          i32.const 17
0975                          i32.ne
0976                          br_if 0 (;@11;)
111 ------------------------------------------------------------
0977                        end
112 ------------------------------------------------------------
0978                        i32.const 0
0979                        local.set 1
0980                        local.get 4
0981                        i32.const 32
0982                        i32.add
0983                        local.get 7
0984                        i32.add
0985                        i32.load
0986                        local.tee 5
0987                        i32.const 0
0988                        i32.gt_s
0989                        if  ;; label = @11
113 ------------------------------------------------------------
0990                          loop  ;; label = @12
114 ------------------------------------------------------------
0991                            local.get 1
0992                            local.get 2
0993                            i32.add
0994                            i32.load8_u offset=17
0995                            local.set 7
0996                            local.get 0
0997                            i32.load offset=24
0998                            local.tee 3
0999                            local.get 3
1000                            i32.load
1001                            local.tee 8
1002                            i32.const 1
1003                            i32.add
1004                            i32.store
1005                            local.get 8
1006                            local.get 7
1007                            i32.store8
1008                            local.get 3
1009                            local.get 3
1010                            i32.load offset=4
1011                            i32.const -1
1012                            i32.add
1013                            local.tee 7
1014                            i32.store offset=4
1015                            block  ;; label = @13
115 ------------------------------------------------------------
1016                              local.get 7
1017                              br_if 0 (;@13;)
116 ------------------------------------------------------------
1018                              local.get 0
1019                              local.get 3
1020                              i32.load offset=12
1021                              call_indirect (type 1)
1022                              br_if 0 (;@13;)
117 ------------------------------------------------------------
1023                              local.get 0
1024                              i32.load
1025                              local.tee 3
1026                              i32.const 24
1027                              i32.store offset=20
1028                              local.get 0
1029                              local.get 3
1030                              i32.load
1031                              call_indirect (type 0)
1032                            end
118 ------------------------------------------------------------
1033                            local.get 1
1034                            i32.const 1
1035                            i32.add
1036                            local.tee 1
1037                            local.get 5
1038                            i32.ne
1039                            br_if 0 (;@12;)
119 ------------------------------------------------------------
1040                          end
120 ------------------------------------------------------------
1041                        end
121 ------------------------------------------------------------
1042                        local.get 2
1043                        i32.const 1
1044                        i32.store offset=276
1045                      end
122 ------------------------------------------------------------
1046                      local.get 6
1047                      i32.const 1
1048                      i32.add
1049                      local.tee 6
1050                      local.get 0
1051                      i32.load offset=244
1052                      i32.lt_s
1053                      br_if 0 (;@9;)
123 ------------------------------------------------------------
1054                    end
124 ------------------------------------------------------------
1055                    br 7 (;@1;)
125 ------------------------------------------------------------
1056                  end
126 ------------------------------------------------------------
1057                  local.get 0
1058                  i32.load offset=244
1059                  local.set 2
1060                end
127 ------------------------------------------------------------
1061                local.get 2
1062                i32.const 1
1063                i32.lt_s
1064                br_if 5 (;@1;)
128 ------------------------------------------------------------
1065                i32.const 0
1066                local.set 2
1067                loop  ;; label = @7
129 ------------------------------------------------------------
1068                  local.get 0
1069                  local.get 2
1070                  i32.const 2
1071                  i32.shl
1072                  i32.add
1073                  i32.load offset=248
1074                  local.set 1
1075                  block  ;; label = @8
130 ------------------------------------------------------------
1076                    local.get 0
1077                    i32.load offset=316
1078                    br_if 0 (;@8;)
131 ------------------------------------------------------------
1079                    local.get 0
1080                    i32.load offset=324
1081                    br_if 0 (;@8;)
132 ------------------------------------------------------------
1082                    local.get 0
1083                    local.get 1
1084                    i32.load offset=20
1085                    i32.const 0
1086                    call 42
1087                  end
133 ------------------------------------------------------------
1088                  local.get 0
1089                  i32.load offset=320
1090                  if  ;; label = @8
134 ------------------------------------------------------------
1091                    local.get 0
1092                    local.get 1
1093                    i32.load offset=24
1094                    i32.const 1
1095                    call 42
1096                  end
135 ------------------------------------------------------------
1097                  local.get 2
1098                  i32.const 1
1099                  i32.add
1100                  local.tee 2
1101                  local.get 0
1102                  i32.load offset=244
1103                  i32.lt_s
1104                  br_if 0 (;@7;)
136 ------------------------------------------------------------
1105                end
137 ------------------------------------------------------------
1106                br 5 (;@1;)
138 ------------------------------------------------------------
1107              end
139 ------------------------------------------------------------
1108              i32.const 0
1109              local.set 3
1110              i32.const 0
1111              local.set 5
1112              i32.const 0
1113            end
140 ------------------------------------------------------------
1114            local.set 2
1115            local.get 8
1116            i32.const 24
1117            i32.shl
1118            i32.const 24
1119            i32.shr_s
1120            local.set 8
1121            local.get 5
1122            i32.const 24
1123            i32.shl
1124            i32.const 24
1125            i32.shr_s
1126            local.set 5
1127            local.get 6
1128            i32.const 24
1129            i32.shl
1130            i32.const 24
1131            i32.shr_s
1132            local.set 6
1133            local.get 9
1134            i32.const 24
1135            i32.shl
1136            i32.const 24
1137            i32.shr_s
1138            local.set 9
1139            local.get 10
1140            i32.const 24
1141            i32.shl
1142            i32.const 24
1143            i32.shr_s
1144            local.set 10
1145            local.get 11
1146            i32.const 24
1147            i32.shl
1148            i32.const 24
1149            i32.shr_s
1150            local.set 11
1151            local.get 12
1152            i32.const 24
1153            i32.shl
1154            i32.const 24
1155            i32.shr_s
1156            local.set 12
1157            local.get 13
1158            i32.const 24
1159            i32.shl
1160            i32.const 24
1161            i32.shr_s
1162            local.set 13
1163            local.get 14
1164            i32.const 24
1165            i32.shl
1166            i32.const 24
1167            i32.shr_s
1168            local.set 14
1169            local.get 15
1170            i32.const 24
1171            i32.shl
1172            i32.const 24
1173            i32.shr_s
1174            local.set 15
1175            local.get 16
1176            i32.const 24
1177            i32.shl
1178            i32.const 24
1179            i32.shr_s
1180            local.set 16
1181            local.get 17
1182            i32.const 24
1183            i32.shl
1184            i32.const 24
1185            i32.shr_s
1186            local.set 17
1187            local.get 3
1188            i32.const 24
1189            i32.shl
1190            i32.const 24
1191            i32.shr_s
1192            br 2 (;@2;)
141 ------------------------------------------------------------
1193          end
142 ------------------------------------------------------------
1194          i32.const 0
1195          local.set 1
1196        end
143 ------------------------------------------------------------
1197        i32.const 0
1198        local.set 2
1199        i32.const 0
1200      end
144 ------------------------------------------------------------
1201      local.set 3
1202      local.get 4
1203      i32.load8_s offset=47
1204      local.get 4
1205      i32.load8_s offset=46
1206      local.get 4
1207      i32.load8_s offset=45
1208      local.get 4
1209      i32.load8_s offset=44
1210      local.get 4
1211      i32.load8_s offset=43
1212      local.get 4
1213      i32.load8_s offset=42
1214      local.get 4
1215      i32.load8_s offset=41
1216      local.get 4
1217      i32.load8_s offset=40
1218      local.get 4
1219      i32.load8_s offset=39
1220      local.get 4
1221      i32.load8_s offset=38
1222      local.get 4
1223      i32.load8_s offset=37
1224      local.get 4
1225      i32.load8_s offset=36
1226      local.get 4
1227      i32.load8_s offset=35
1228      local.get 4
1229      i32.load8_s offset=34
1230      local.get 4
1231      i32.load8_s offset=33
1232      local.get 4
1233      i32.load8_s offset=32
1234      local.get 3
1235      local.get 8
1236      i32.add
1237      local.get 5
1238      i32.add
1239      local.get 6
1240      i32.add
1241      local.get 9
1242      i32.add
1243      local.get 10
1244      i32.add
1245      local.get 11
1246      i32.add
1247      local.get 12
1248      i32.add
1249      local.get 13
1250      i32.add
1251      local.get 14
1252      i32.add
1253      local.get 15
1254      i32.add
1255      local.get 16
1256      i32.add
1257      local.get 17
1258      i32.add
1259      i32.add
1260      i32.add
1261      i32.add
1262      i32.add
1263      i32.add
1264      i32.add
1265      i32.add
1266      i32.add
1267      i32.add
1268      i32.add
1269      i32.add
1270      i32.add
1271      i32.add
1272      local.get 7
1273      i32.const 24
1274      i32.shl
1275      i32.const 24
1276      i32.shr_s
1277      i32.add
1278      i32.add
1279      local.get 2
1280      i32.const 24
1281      i32.shl
1282      i32.const 24
1283      i32.shr_s
1284      i32.add
1285      i32.add
1286      local.get 1
1287      i32.const 24
1288      i32.shl
1289      i32.const 24
1290      i32.shr_s
1291      i32.add
1292      i32.add
1293      local.tee 2
1294      i32.eqz
1295      br_if 0 (;@1;)
145 ------------------------------------------------------------
1296      local.get 0
1297      i32.load offset=24
1298      local.tee 1
1299      local.get 1
1300      i32.load
1301      local.tee 3
1302      i32.const 1
1303      i32.add
1304      i32.store
1305      local.get 3
1306      i32.const 255
1307      i32.store8
1308      local.get 1
1309      local.get 1
1310      i32.load offset=4
1311      i32.const -1
1312      i32.add
1313      local.tee 3
1314      i32.store offset=4
1315      block  ;; label = @2
146 ------------------------------------------------------------
1316        local.get 3
1317        br_if 0 (;@2;)
147 ------------------------------------------------------------
1318        local.get 0
1319        local.get 1
1320        i32.load offset=12
1321        call_indirect (type 1)
1322        br_if 0 (;@2;)
148 ------------------------------------------------------------
1323        local.get 0
1324        i32.load
1325        local.tee 1
1326        i32.const 24
1327        i32.store offset=20
1328        local.get 0
1329        local.get 1
1330        i32.load
1331        call_indirect (type 0)
1332      end
149 ------------------------------------------------------------
1333      local.get 0
1334      i32.load offset=24
1335      local.tee 1
1336      local.get 1
1337      i32.load
1338      local.tee 3
1339      i32.const 1
1340      i32.add
1341      i32.store
1342      local.get 3
1343      i32.const 204
1344      i32.store8
1345      local.get 1
1346      local.get 1
1347      i32.load offset=4
1348      i32.const -1
1349      i32.add
1350      local.tee 3
1351      i32.store offset=4
1352      block  ;; label = @2
150 ------------------------------------------------------------
1353        local.get 3
1354        br_if 0 (;@2;)
151 ------------------------------------------------------------
1355        local.get 0
1356        local.get 1
1357        i32.load offset=12
1358        call_indirect (type 1)
1359        br_if 0 (;@2;)
152 ------------------------------------------------------------
1360        local.get 0
1361        i32.load
1362        local.tee 1
1363        i32.const 24
1364        i32.store offset=20
1365        local.get 0
1366        local.get 1
1367        i32.load
1368        call_indirect (type 0)
1369      end
153 ------------------------------------------------------------
1370      local.get 0
1371      i32.load offset=24
1372      local.tee 1
1373      local.get 1
1374      i32.load
1375      local.tee 3
1376      i32.const 1
1377      i32.add
1378      i32.store
1379      local.get 3
1380      local.get 2
1381      i32.const 1
1382      i32.shl
1383      i32.const 2
1384      i32.add
1385      local.tee 2
1386      i32.const 8
1387      i32.shr_u
1388      i32.store8
1389      local.get 1
1390      local.get 1
1391      i32.load offset=4
1392      i32.const -1
1393      i32.add
1394      local.tee 3
1395      i32.store offset=4
1396      block  ;; label = @2
154 ------------------------------------------------------------
1397        local.get 3
1398        br_if 0 (;@2;)
155 ------------------------------------------------------------
1399        local.get 0
1400        local.get 1
1401        i32.load offset=12
1402        call_indirect (type 1)
1403        br_if 0 (;@2;)
156 ------------------------------------------------------------
1404        local.get 0
1405        i32.load
1406        local.tee 1
1407        i32.const 24
1408        i32.store offset=20
1409        local.get 0
1410        local.get 1
1411        i32.load
1412        call_indirect (type 0)
1413      end
157 ------------------------------------------------------------
1414      local.get 0
1415      i32.load offset=24
1416      local.tee 1
1417      local.get 1
1418      i32.load
1419      local.tee 3
1420      i32.const 1
1421      i32.add
1422      i32.store
1423      local.get 3
1424      local.get 2
1425      i32.store8
1426      local.get 1
1427      local.get 1
1428      i32.load offset=4
1429      i32.const -1
1430      i32.add
1431      local.tee 2
1432      i32.store offset=4
1433      block  ;; label = @2
158 ------------------------------------------------------------
1434        local.get 2
1435        br_if 0 (;@2;)
159 ------------------------------------------------------------
1436        local.get 0
1437        local.get 1
1438        i32.load offset=12
1439        call_indirect (type 1)
1440        br_if 0 (;@2;)
160 ------------------------------------------------------------
1441        local.get 0
1442        i32.load
1443        local.tee 1
1444        i32.const 24
1445        i32.store offset=20
1446        local.get 0
1447        local.get 1
1448        i32.load
1449        call_indirect (type 0)
1450      end
161 ------------------------------------------------------------
1451      i32.const 0
1452      local.set 2
1453      loop  ;; label = @2
162 ------------------------------------------------------------
1454        block  ;; label = @3
163 ------------------------------------------------------------
1455          local.get 4
1456          i32.const 48
1457          i32.add
1458          local.get 2
1459          i32.add
1460          i32.load8_u
1461          i32.eqz
1462          br_if 0 (;@3;)
164 ------------------------------------------------------------
1463          local.get 0
1464          i32.load offset=24
1465          local.tee 1
1466          local.get 1
1467          i32.load
1468          local.tee 3
1469          i32.const 1
1470          i32.add
1471          i32.store
1472          local.get 3
1473          local.get 2
1474          i32.store8
1475          local.get 1
1476          local.get 1
1477          i32.load offset=4
1478          i32.const -1
1479          i32.add
1480          local.tee 3
1481          i32.store offset=4
1482          block  ;; label = @4
165 ------------------------------------------------------------
1483            local.get 3
1484            br_if 0 (;@4;)
166 ------------------------------------------------------------
1485            local.get 0
1486            local.get 1
1487            i32.load offset=12
1488            call_indirect (type 1)
1489            br_if 0 (;@4;)
167 ------------------------------------------------------------
1490            local.get 0
1491            i32.load
1492            local.tee 1
1493            i32.const 24
1494            i32.store offset=20
1495            local.get 0
1496            local.get 1
1497            i32.load
1498            call_indirect (type 0)
1499          end
168 ------------------------------------------------------------
1500          local.get 0
1501          local.get 2
1502          i32.add
1503          local.tee 1
1504          i32.load8_u offset=120
1505          local.set 3
1506          local.get 1
1507          i32.load8_u offset=136
1508          local.set 5
1509          local.get 0
1510          i32.load offset=24
1511          local.tee 1
1512          local.get 1
1513          i32.load
1514          local.tee 6
1515          i32.const 1
1516          i32.add
1517          i32.store
1518          local.get 6
1519          local.get 3
1520          local.get 5
1521          i32.const 4
1522          i32.shl
1523          i32.add
1524          i32.store8
1525          local.get 1
1526          local.get 1
1527          i32.load offset=4
1528          i32.const -1
1529          i32.add
1530          local.tee 3
1531          i32.store offset=4
1532          local.get 3
1533          br_if 0 (;@3;)
169 ------------------------------------------------------------
1534          local.get 0
1535          local.get 1
1536          i32.load offset=12
1537          call_indirect (type 1)
1538          br_if 0 (;@3;)
170 ------------------------------------------------------------
1539          local.get 0
1540          i32.load
1541          local.tee 1
1542          i32.const 24
1543          i32.store offset=20
1544          local.get 0
1545          local.get 1
1546          i32.load
1547          call_indirect (type 0)
1548        end
171 ------------------------------------------------------------
1549        block  ;; label = @3
172 ------------------------------------------------------------
1550          local.get 4
1551          i32.const 32
1552          i32.add
1553          local.get 2
1554          i32.add
1555          i32.load8_u
1556          i32.eqz
1557          br_if 0 (;@3;)
173 ------------------------------------------------------------
1558          local.get 0
1559          i32.load offset=24
1560          local.tee 1
1561          local.get 1
1562          i32.load
1563          local.tee 3
1564          i32.const 1
1565          i32.add
1566          i32.store
1567          local.get 3
1568          local.get 2
1569          i32.const 16
1570          i32.add
1571          i32.store8
1572          local.get 1
1573          local.get 1
1574          i32.load offset=4
1575          i32.const -1
1576          i32.add
1577          local.tee 3
1578          i32.store offset=4
1579          block  ;; label = @4
174 ------------------------------------------------------------
1580            local.get 3
1581            br_if 0 (;@4;)
175 ------------------------------------------------------------
1582            local.get 0
1583            local.get 1
1584            i32.load offset=12
1585            call_indirect (type 1)
1586            br_if 0 (;@4;)
176 ------------------------------------------------------------
1587            local.get 0
1588            i32.load
1589            local.tee 1
1590            i32.const 24
1591            i32.store offset=20
1592            local.get 0
1593            local.get 1
1594            i32.load
1595            call_indirect (type 0)
1596          end
177 ------------------------------------------------------------
1597          local.get 0
1598          local.get 2
1599          i32.add
1600          i32.load8_u offset=152
1601          local.set 3
1602          local.get 0
1603          i32.load offset=24
1604          local.tee 1
1605          local.get 1
1606          i32.load
1607          local.tee 5
1608          i32.const 1
1609          i32.add
1610          i32.store
1611          local.get 5
1612          local.get 3
1613          i32.store8
1614          local.get 1
1615          local.get 1
1616          i32.load offset=4
1617          i32.const -1
1618          i32.add
1619          local.tee 3
1620          i32.store offset=4
1621          local.get 3
1622          br_if 0 (;@3;)
178 ------------------------------------------------------------
1623          local.get 0
1624          local.get 1
1625          i32.load offset=12
1626          call_indirect (type 1)
1627          br_if 0 (;@3;)
179 ------------------------------------------------------------
1628          local.get 0
1629          i32.load
1630          local.tee 1
1631          i32.const 24
1632          i32.store offset=20
1633          local.get 0
1634          local.get 1
1635          i32.load
1636          call_indirect (type 0)
1637        end
180 ------------------------------------------------------------
1638        local.get 2
1639        i32.const 1
1640        i32.add
1641        local.tee 2
1642        i32.const 16
1643        i32.ne
1644        br_if 0 (;@2;)
181 ------------------------------------------------------------
1645      end
182 ------------------------------------------------------------
1646    end
183 ------------------------------------------------------------
1647    local.get 0
1648    i32.load offset=200
1649    local.get 18
1650    i32.load offset=28
1651    i32.ne
1652    if  ;; label = @1
184 ------------------------------------------------------------
1653      local.get 0
1654      i32.load offset=24
1655      local.tee 1
1656      local.get 1
1657      i32.load
1658      local.tee 2
1659      i32.const 1
1660      i32.add
1661      i32.store
1662      local.get 2
1663      i32.const 255
1664      i32.store8
1665      local.get 1
1666      local.get 1
1667      i32.load offset=4
1668      i32.const -1
1669      i32.add
1670      local.tee 2
1671      i32.store offset=4
1672      block  ;; label = @2
185 ------------------------------------------------------------
1673        local.get 2
1674        br_if 0 (;@2;)
186 ------------------------------------------------------------
1675        local.get 0
1676        local.get 1
1677        i32.load offset=12
1678        call_indirect (type 1)
1679        br_if 0 (;@2;)
187 ------------------------------------------------------------
1680        local.get 0
1681        i32.load
1682        local.tee 1
1683        i32.const 24
1684        i32.store offset=20
1685        local.get 0
1686        local.get 1
1687        i32.load
1688        call_indirect (type 0)
1689      end
188 ------------------------------------------------------------
1690      local.get 0
1691      i32.load offset=24
1692      local.tee 1
1693      local.get 1
1694      i32.load
1695      local.tee 2
1696      i32.const 1
1697      i32.add
1698      i32.store
1699      local.get 2
1700      i32.const 221
1701      i32.store8
1702      local.get 1
1703      local.get 1
1704      i32.load offset=4
1705      i32.const -1
1706      i32.add
1707      local.tee 2
1708      i32.store offset=4
1709      block  ;; label = @2
189 ------------------------------------------------------------
1710        local.get 2
1711        br_if 0 (;@2;)
190 ------------------------------------------------------------
1712        local.get 0
1713        local.get 1
1714        i32.load offset=12
1715        call_indirect (type 1)
1716        br_if 0 (;@2;)
191 ------------------------------------------------------------
1717        local.get 0
1718        i32.load
1719        local.tee 1
1720        i32.const 24
1721        i32.store offset=20
1722        local.get 0
1723        local.get 1
1724        i32.load
1725        call_indirect (type 0)
1726      end
192 ------------------------------------------------------------
1727      local.get 0
1728      i32.load offset=24
1729      local.tee 1
1730      local.get 1
1731      i32.load
1732      local.tee 2
1733      i32.const 1
1734      i32.add
1735      i32.store
1736      local.get 2
1737      i32.const 0
1738      i32.store8
1739      local.get 1
1740      local.get 1
1741      i32.load offset=4
1742      i32.const -1
1743      i32.add
1744      local.tee 2
1745      i32.store offset=4
1746      block  ;; label = @2
193 ------------------------------------------------------------
1747        local.get 2
1748        br_if 0 (;@2;)
194 ------------------------------------------------------------
1749        local.get 0
1750        local.get 1
1751        i32.load offset=12
1752        call_indirect (type 1)
1753        br_if 0 (;@2;)
195 ------------------------------------------------------------
1754        local.get 0
1755        i32.load
1756        local.tee 1
1757        i32.const 24
1758        i32.store offset=20
1759        local.get 0
1760        local.get 1
1761        i32.load
1762        call_indirect (type 0)
1763      end
196 ------------------------------------------------------------
1764      local.get 0
1765      i32.load offset=24
1766      local.tee 1
1767      local.get 1
1768      i32.load
1769      local.tee 2
1770      i32.const 1
1771      i32.add
1772      i32.store
1773      local.get 2
1774      i32.const 4
1775      i32.store8
1776      local.get 1
1777      local.get 1
1778      i32.load offset=4
1779      i32.const -1
1780      i32.add
1781      local.tee 2
1782      i32.store offset=4
1783      block  ;; label = @2
197 ------------------------------------------------------------
1784        local.get 2
1785        br_if 0 (;@2;)
198 ------------------------------------------------------------
1786        local.get 0
1787        local.get 1
1788        i32.load offset=12
1789        call_indirect (type 1)
1790        br_if 0 (;@2;)
199 ------------------------------------------------------------
1791        local.get 0
1792        i32.load
1793        local.tee 1
1794        i32.const 24
1795        i32.store offset=20
1796        local.get 0
1797        local.get 1
1798        i32.load
1799        call_indirect (type 0)
1800      end
200 ------------------------------------------------------------
1801      local.get 0
1802      i32.load offset=200
1803      local.set 2
1804      local.get 0
1805      i32.load offset=24
1806      local.tee 1
1807      local.get 1
1808      i32.load
1809      local.tee 3
1810      i32.const 1
1811      i32.add
1812      i32.store
1813      local.get 3
1814      local.get 2
1815      i32.const 8
1816      i32.shr_u
1817      i32.store8
1818      local.get 1
1819      local.get 1
1820      i32.load offset=4
1821      i32.const -1
1822      i32.add
1823      local.tee 3
1824      i32.store offset=4
1825      block  ;; label = @2
201 ------------------------------------------------------------
1826        local.get 3
1827        br_if 0 (;@2;)
202 ------------------------------------------------------------
1828        local.get 0
1829        local.get 1
1830        i32.load offset=12
1831        call_indirect (type 1)
1832        br_if 0 (;@2;)
203 ------------------------------------------------------------
1833        local.get 0
1834        i32.load
1835        local.tee 1
1836        i32.const 24
1837        i32.store offset=20
1838        local.get 0
1839        local.get 1
1840        i32.load
1841        call_indirect (type 0)
1842      end
204 ------------------------------------------------------------
1843      local.get 0
1844      i32.load offset=24
1845      local.tee 1
1846      local.get 1
1847      i32.load
1848      local.tee 3
1849      i32.const 1
1850      i32.add
1851      i32.store
1852      local.get 3
1853      local.get 2
1854      i32.store8
1855      local.get 1
1856      local.get 1
1857      i32.load offset=4
1858      i32.const -1
1859      i32.add
1860      local.tee 2
1861      i32.store offset=4
1862      block  ;; label = @2
205 ------------------------------------------------------------
1863        local.get 2
1864        br_if 0 (;@2;)
206 ------------------------------------------------------------
1865        local.get 0
1866        local.get 1
1867        i32.load offset=12
1868        call_indirect (type 1)
1869        br_if 0 (;@2;)
207 ------------------------------------------------------------
1870        local.get 0
1871        i32.load
1872        local.tee 1
1873        i32.const 24
1874        i32.store offset=20
1875        local.get 0
1876        local.get 1
1877        i32.load
1878        call_indirect (type 0)
1879      end
208 ------------------------------------------------------------
1880      local.get 18
1881      local.get 0
1882      i32.load offset=200
1883      i32.store offset=28
1884    end
209 ------------------------------------------------------------
1885    local.get 0
1886    i32.load offset=24
1887    local.tee 1
1888    local.get 1
1889    i32.load
1890    local.tee 2
1891    i32.const 1
1892    i32.add
1893    i32.store
1894    local.get 2
1895    i32.const 255
1896    i32.store8
1897    local.get 1
1898    local.get 1
1899    i32.load offset=4
1900    i32.const -1
1901    i32.add
1902    local.tee 2
1903    i32.store offset=4
1904    block  ;; label = @1
210 ------------------------------------------------------------
1905      local.get 2
1906      br_if 0 (;@1;)
211 ------------------------------------------------------------
1907      local.get 0
1908      local.get 1
1909      i32.load offset=12
1910      call_indirect (type 1)
1911      br_if 0 (;@1;)
212 ------------------------------------------------------------
1912      local.get 0
1913      i32.load
1914      local.tee 1
1915      i32.const 24
1916      i32.store offset=20
1917      local.get 0
1918      local.get 1
1919      i32.load
1920      call_indirect (type 0)
1921    end
213 ------------------------------------------------------------
1922    local.get 0
1923    i32.load offset=24
1924    local.tee 1
1925    local.get 1
1926    i32.load
1927    local.tee 2
1928    i32.const 1
1929    i32.add
1930    i32.store
1931    local.get 2
1932    i32.const 218
1933    i32.store8
1934    local.get 1
1935    local.get 1
1936    i32.load offset=4
1937    i32.const -1
1938    i32.add
1939    local.tee 2
1940    i32.store offset=4
1941    block  ;; label = @1
214 ------------------------------------------------------------
1942      local.get 2
1943      br_if 0 (;@1;)
215 ------------------------------------------------------------
1944      local.get 0
1945      local.get 1
1946      i32.load offset=12
1947      call_indirect (type 1)
1948      br_if 0 (;@1;)
216 ------------------------------------------------------------
1949      local.get 0
1950      i32.load
1951      local.tee 1
1952      i32.const 24
1953      i32.store offset=20
1954      local.get 0
1955      local.get 1
1956      i32.load
1957      call_indirect (type 0)
1958    end
217 ------------------------------------------------------------
1959    local.get 0
1960    i32.load offset=244
1961    local.set 2
1962    local.get 0
1963    i32.load offset=24
1964    local.tee 1
1965    local.get 1
1966    i32.load
1967    local.tee 3
1968    i32.const 1
1969    i32.add
1970    i32.store
1971    local.get 3
1972    local.get 2
1973    i32.const 1
1974    i32.shl
1975    i32.const 6
1976    i32.add
1977    local.tee 2
1978    i32.const 8
1979    i32.shr_u
1980    i32.store8
1981    local.get 1
1982    local.get 1
1983    i32.load offset=4
1984    i32.const -1
1985    i32.add
1986    local.tee 3
1987    i32.store offset=4
1988    block  ;; label = @1
218 ------------------------------------------------------------
1989      local.get 3
1990      br_if 0 (;@1;)
219 ------------------------------------------------------------
1991      local.get 0
1992      local.get 1
1993      i32.load offset=12
1994      call_indirect (type 1)
1995      br_if 0 (;@1;)
220 ------------------------------------------------------------
1996      local.get 0
1997      i32.load
1998      local.tee 1
1999      i32.const 24
2000      i32.store offset=20
2001      local.get 0
2002      local.get 1
2003      i32.load
2004      call_indirect (type 0)
2005    end
221 ------------------------------------------------------------
2006    local.get 0
2007    i32.load offset=24
2008    local.tee 1
2009    local.get 1
2010    i32.load
2011    local.tee 3
2012    i32.const 1
2013    i32.add
2014    i32.store
2015    local.get 3
2016    local.get 2
2017    i32.store8
2018    local.get 1
2019    local.get 1
2020    i32.load offset=4
2021    i32.const -1
2022    i32.add
2023    local.tee 2
2024    i32.store offset=4
2025    block  ;; label = @1
222 ------------------------------------------------------------
2026      local.get 2
2027      br_if 0 (;@1;)
223 ------------------------------------------------------------
2028      local.get 0
2029      local.get 1
2030      i32.load offset=12
2031      call_indirect (type 1)
2032      br_if 0 (;@1;)
224 ------------------------------------------------------------
2033      local.get 0
2034      i32.load
2035      local.tee 1
2036      i32.const 24
2037      i32.store offset=20
2038      local.get 0
2039      local.get 1
2040      i32.load
2041      call_indirect (type 0)
2042    end
225 ------------------------------------------------------------
2043    local.get 0
2044    i32.load offset=244
2045    local.set 2
2046    local.get 0
2047    i32.load offset=24
2048    local.tee 1
2049    local.get 1
2050    i32.load
2051    local.tee 3
2052    i32.const 1
2053    i32.add
2054    i32.store
2055    local.get 3
2056    local.get 2
2057    i32.store8
2058    local.get 1
2059    local.get 1
2060    i32.load offset=4
2061    i32.const -1
2062    i32.add
2063    local.tee 2
2064    i32.store offset=4
2065    block  ;; label = @1
226 ------------------------------------------------------------
2066      local.get 2
2067      br_if 0 (;@1;)
227 ------------------------------------------------------------
2068      local.get 0
2069      local.get 1
2070      i32.load offset=12
2071      call_indirect (type 1)
2072      br_if 0 (;@1;)
228 ------------------------------------------------------------
2073      local.get 0
2074      i32.load
2075      local.tee 1
2076      i32.const 24
2077      i32.store offset=20
2078      local.get 0
2079      local.get 1
2080      i32.load
2081      call_indirect (type 0)
2082    end
229 ------------------------------------------------------------
2083    local.get 0
2084    i32.load offset=244
2085    i32.const 1
2086    i32.ge_s
2087    if  ;; label = @1
230 ------------------------------------------------------------
2088      i32.const 0
2089      local.set 1
2090      loop  ;; label = @2
231 ------------------------------------------------------------
2091        local.get 0
2092        local.get 1
2093        i32.const 2
2094        i32.shl
2095        i32.add
2096        i32.load offset=248
2097        local.tee 5
2098        i32.load
2099        local.set 3
2100        local.get 0
2101        i32.load offset=24
2102        local.tee 2
2103        local.get 2
2104        i32.load
2105        local.tee 6
2106        i32.const 1
2107        i32.add
2108        i32.store
2109        local.get 6
2110        local.get 3
2111        i32.store8
2112        local.get 2
2113        local.get 2
2114        i32.load offset=4
2115        i32.const -1
2116        i32.add
2117        local.tee 3
2118        i32.store offset=4
2119        block  ;; label = @3
232 ------------------------------------------------------------
2120          local.get 3
2121          br_if 0 (;@3;)
233 ------------------------------------------------------------
2122          local.get 0
2123          local.get 2
2124          i32.load offset=12
2125          call_indirect (type 1)
2126          br_if 0 (;@3;)
234 ------------------------------------------------------------
2127          local.get 0
2128          i32.load
2129          local.tee 2
2130          i32.const 24
2131          i32.store offset=20
2132          local.get 0
2133          local.get 2
2134          i32.load
2135          call_indirect (type 0)
2136        end
235 ------------------------------------------------------------
2137        i32.const 0
2138        local.set 7
2139        block (result i32)  ;; label = @3
236 ------------------------------------------------------------
2140          i32.const 0
2141          local.get 0
2142          i32.load offset=316
2143          br_if 0 (;@3;)
237 ------------------------------------------------------------
2144          drop
2145          i32.const 0
2146          local.get 0
2147          i32.load offset=324
2148          br_if 0 (;@3;)
238 ------------------------------------------------------------
2149          drop
2150          local.get 5
2151          i32.load offset=20
2152        end
239 ------------------------------------------------------------
2153        local.set 3
2154        local.get 0
2155        i32.load offset=320
2156        if  ;; label = @3
240 ------------------------------------------------------------
2157          local.get 5
2158          i32.load offset=24
2159          local.set 7
2160        end
241 ------------------------------------------------------------
2161        local.get 0
2162        i32.load offset=24
2163        local.tee 2
2164        local.get 2
2165        i32.load
2166        local.tee 5
2167        i32.const 1
2168        i32.add
2169        i32.store
2170        local.get 5
2171        local.get 7
2172        local.get 3
2173        i32.const 4
2174        i32.shl
2175        i32.add
2176        i32.store8
2177        local.get 2
2178        local.get 2
2179        i32.load offset=4
2180        i32.const -1
2181        i32.add
2182        local.tee 3
2183        i32.store offset=4
2184        block  ;; label = @3
242 ------------------------------------------------------------
2185          local.get 3
2186          br_if 0 (;@3;)
243 ------------------------------------------------------------
2187          local.get 0
2188          local.get 2
2189          i32.load offset=12
2190          call_indirect (type 1)
2191          br_if 0 (;@3;)
244 ------------------------------------------------------------
2192          local.get 0
2193          i32.load
2194          local.tee 2
2195          i32.const 24
2196          i32.store offset=20
2197          local.get 0
2198          local.get 2
2199          i32.load
2200          call_indirect (type 0)
2201        end
245 ------------------------------------------------------------
2202        local.get 1
2203        i32.const 1
2204        i32.add
2205        local.tee 1
2206        local.get 0
2207        i32.load offset=244
2208        i32.lt_s
2209        br_if 0 (;@2;)
246 ------------------------------------------------------------
2210      end
247 ------------------------------------------------------------
2211    end
248 ------------------------------------------------------------
2212    local.get 0
2213    i32.load offset=316
2214    local.set 2
2215    local.get 0
2216    i32.load offset=24
2217    local.tee 1
2218    local.get 1
2219    i32.load
2220    local.tee 3
2221    i32.const 1
2222    i32.add
2223    i32.store
2224    local.get 3
2225    local.get 2
2226    i32.store8
2227    local.get 1
2228    local.get 1
2229    i32.load offset=4
2230    i32.const -1
2231    i32.add
2232    local.tee 2
2233    i32.store offset=4
2234    block  ;; label = @1
249 ------------------------------------------------------------
2235      local.get 2
2236      br_if 0 (;@1;)
250 ------------------------------------------------------------
2237      local.get 0
2238      local.get 1
2239      i32.load offset=12
2240      call_indirect (type 1)
2241      br_if 0 (;@1;)
251 ------------------------------------------------------------
2242      local.get 0
2243      i32.load
2244      local.tee 1
2245      i32.const 24
2246      i32.store offset=20
2247      local.get 0
2248      local.get 1
2249      i32.load
2250      call_indirect (type 0)
2251    end
252 ------------------------------------------------------------
2252    local.get 0
2253    i32.load offset=320
2254    local.set 2
2255    local.get 0
2256    i32.load offset=24
2257    local.tee 1
2258    local.get 1
2259    i32.load
2260    local.tee 3
2261    i32.const 1
2262    i32.add
2263    i32.store
2264    local.get 3
2265    local.get 2
2266    i32.store8
2267    local.get 1
2268    local.get 1
2269    i32.load offset=4
2270    i32.const -1
2271    i32.add
2272    local.tee 2
2273    i32.store offset=4
2274    block  ;; label = @1
253 ------------------------------------------------------------
2275      local.get 2
2276      br_if 0 (;@1;)
254 ------------------------------------------------------------
2277      local.get 0
2278      local.get 1
2279      i32.load offset=12
2280      call_indirect (type 1)
2281      br_if 0 (;@1;)
255 ------------------------------------------------------------
2282      local.get 0
2283      i32.load
2284      local.tee 1
2285      i32.const 24
2286      i32.store offset=20
2287      local.get 0
2288      local.get 1
2289      i32.load
2290      call_indirect (type 0)
2291    end
256 ------------------------------------------------------------
2292    local.get 0
2293    i32.load offset=328
2294    local.set 2
2295    local.get 0
2296    i32.load offset=324
2297    local.set 3
2298    local.get 0
2299    i32.load offset=24
2300    local.tee 1
2301    local.get 1
2302    i32.load
2303    local.tee 5
2304    i32.const 1
2305    i32.add
2306    i32.store
2307    local.get 5
2308    local.get 2
2309    local.get 3
2310    i32.const 4
2311    i32.shl
2312    i32.add
2313    i32.store8
2314    local.get 1
2315    local.get 1
2316    i32.load offset=4
2317    i32.const -1
2318    i32.add
2319    local.tee 2
2320    i32.store offset=4
2321    block  ;; label = @1
257 ------------------------------------------------------------
2322      local.get 2
2323      br_if 0 (;@1;)
258 ------------------------------------------------------------
2324      local.get 0
2325      local.get 1
2326      i32.load offset=12
2327      call_indirect (type 1)
2328      br_if 0 (;@1;)
259 ------------------------------------------------------------
2329      local.get 0
2330      i32.load
2331      local.tee 1
2332      i32.const 24
2333      i32.store offset=20
2334      local.get 0
2335      local.get 1
2336      i32.load
2337      call_indirect (type 0)
2338    end
260 ------------------------------------------------------------
2339    local.get 4
2340    i32.const -64
2341    i32.sub
2342    global.set 0)
