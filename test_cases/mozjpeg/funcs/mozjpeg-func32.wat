  (func (;32;) (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 11
0004    global.set 0
0005    block  ;; label = @1
1 ------------------------------------------------------------
0006      block  ;; label = @2
2 ------------------------------------------------------------
0007        block  ;; label = @3
3 ------------------------------------------------------------
0008          block  ;; label = @4
4 ------------------------------------------------------------
0009            block  ;; label = @5
5 ------------------------------------------------------------
0010              block  ;; label = @6
6 ------------------------------------------------------------
0011                block  ;; label = @7
7 ------------------------------------------------------------
0012                  block  ;; label = @8
8 ------------------------------------------------------------
0013                    block  ;; label = @9
9 ------------------------------------------------------------
0014                      block  ;; label = @10
10 ------------------------------------------------------------
0015                        block  ;; label = @11
11 ------------------------------------------------------------
0016                          block  ;; label = @12
12 ------------------------------------------------------------
0017                            local.get 0
0018                            i32.const 244
0019                            i32.le_u
0020                            if  ;; label = @13
13 ------------------------------------------------------------
0021                              i32.const 157072
0022                              i32.load
0023                              local.tee 6
0024                              i32.const 16
0025                              local.get 0
0026                              i32.const 11
0027                              i32.add
0028                              i32.const -8
0029                              i32.and
0030                              local.get 0
0031                              i32.const 11
0032                              i32.lt_u
0033                              select
0034                              local.tee 5
0035                              i32.const 3
0036                              i32.shr_u
0037                              local.tee 0
0038                              i32.shr_u
0039                              local.tee 1
0040                              i32.const 3
0041                              i32.and
0042                              if  ;; label = @14
14 ------------------------------------------------------------
0043                                local.get 1
0044                                i32.const -1
0045                                i32.xor
0046                                i32.const 1
0047                                i32.and
0048                                local.get 0
0049                                i32.add
0050                                local.tee 2
0051                                i32.const 3
0052                                i32.shl
0053                                local.tee 4
0054                                i32.const 157120
0055                                i32.add
0056                                i32.load
0057                                local.tee 1
0058                                i32.const 8
0059                                i32.add
0060                                local.set 0
0061                                block  ;; label = @15
15 ------------------------------------------------------------
0062                                  local.get 1
0063                                  i32.load offset=8
0064                                  local.tee 3
0065                                  local.get 4
0066                                  i32.const 157112
0067                                  i32.add
0068                                  local.tee 4
0069                                  i32.eq
0070                                  if  ;; label = @16
16 ------------------------------------------------------------
0071                                    i32.const 157072
0072                                    local.get 6
0073                                    i32.const -2
0074                                    local.get 2
0075                                    i32.rotl
0076                                    i32.and
0077                                    i32.store
0078                                    br 1 (;@15;)
17 ------------------------------------------------------------
0079                                  end
18 ------------------------------------------------------------
0080                                  i32.const 157088
0081                                  i32.load
0082                                  drop
0083                                  local.get 3
0084                                  local.get 4
0085                                  i32.store offset=12
0086                                  local.get 4
0087                                  local.get 3
0088                                  i32.store offset=8
0089                                end
19 ------------------------------------------------------------
0090                                local.get 1
0091                                local.get 2
0092                                i32.const 3
0093                                i32.shl
0094                                local.tee 2
0095                                i32.const 3
0096                                i32.or
0097                                i32.store offset=4
0098                                local.get 1
0099                                local.get 2
0100                                i32.add
0101                                local.tee 1
0102                                local.get 1
0103                                i32.load offset=4
0104                                i32.const 1
0105                                i32.or
0106                                i32.store offset=4
0107                                br 13 (;@1;)
20 ------------------------------------------------------------
0108                              end
21 ------------------------------------------------------------
0109                              local.get 5
0110                              i32.const 157080
0111                              i32.load
0112                              local.tee 8
0113                              i32.le_u
0114                              br_if 1 (;@12;)
22 ------------------------------------------------------------
0115                              local.get 1
0116                              if  ;; label = @14
23 ------------------------------------------------------------
0117                                block  ;; label = @15
24 ------------------------------------------------------------
0118                                  i32.const 2
0119                                  local.get 0
0120                                  i32.shl
0121                                  local.tee 2
0122                                  i32.const 0
0123                                  local.get 2
0124                                  i32.sub
0125                                  i32.or
0126                                  local.get 1
0127                                  local.get 0
0128                                  i32.shl
0129                                  i32.and
0130                                  local.tee 0
0131                                  i32.const 0
0132                                  local.get 0
0133                                  i32.sub
0134                                  i32.and
0135                                  i32.const -1
0136                                  i32.add
0137                                  local.tee 0
0138                                  local.get 0
0139                                  i32.const 12
0140                                  i32.shr_u
0141                                  i32.const 16
0142                                  i32.and
0143                                  local.tee 0
0144                                  i32.shr_u
0145                                  local.tee 1
0146                                  i32.const 5
0147                                  i32.shr_u
0148                                  i32.const 8
0149                                  i32.and
0150                                  local.tee 2
0151                                  local.get 0
0152                                  i32.or
0153                                  local.get 1
0154                                  local.get 2
0155                                  i32.shr_u
0156                                  local.tee 0
0157                                  i32.const 2
0158                                  i32.shr_u
0159                                  i32.const 4
0160                                  i32.and
0161                                  local.tee 1
0162                                  i32.or
0163                                  local.get 0
0164                                  local.get 1
0165                                  i32.shr_u
0166                                  local.tee 0
0167                                  i32.const 1
0168                                  i32.shr_u
0169                                  i32.const 2
0170                                  i32.and
0171                                  local.tee 1
0172                                  i32.or
0173                                  local.get 0
0174                                  local.get 1
0175                                  i32.shr_u
0176                                  local.tee 0
0177                                  i32.const 1
0178                                  i32.shr_u
0179                                  i32.const 1
0180                                  i32.and
0181                                  local.tee 1
0182                                  i32.or
0183                                  local.get 0
0184                                  local.get 1
0185                                  i32.shr_u
0186                                  i32.add
0187                                  local.tee 2
0188                                  i32.const 3
0189                                  i32.shl
0190                                  local.tee 3
0191                                  i32.const 157120
0192                                  i32.add
0193                                  i32.load
0194                                  local.tee 1
0195                                  i32.load offset=8
0196                                  local.tee 0
0197                                  local.get 3
0198                                  i32.const 157112
0199                                  i32.add
0200                                  local.tee 3
0201                                  i32.eq
0202                                  if  ;; label = @16
25 ------------------------------------------------------------
0203                                    i32.const 157072
0204                                    local.get 6
0205                                    i32.const -2
0206                                    local.get 2
0207                                    i32.rotl
0208                                    i32.and
0209                                    local.tee 6
0210                                    i32.store
0211                                    br 1 (;@15;)
26 ------------------------------------------------------------
0212                                  end
27 ------------------------------------------------------------
0213                                  i32.const 157088
0214                                  i32.load
0215                                  drop
0216                                  local.get 0
0217                                  local.get 3
0218                                  i32.store offset=12
0219                                  local.get 3
0220                                  local.get 0
0221                                  i32.store offset=8
0222                                end
28 ------------------------------------------------------------
0223                                local.get 1
0224                                i32.const 8
0225                                i32.add
0226                                local.set 0
0227                                local.get 1
0228                                local.get 5
0229                                i32.const 3
0230                                i32.or
0231                                i32.store offset=4
0232                                local.get 1
0233                                local.get 5
0234                                i32.add
0235                                local.tee 7
0236                                local.get 2
0237                                i32.const 3
0238                                i32.shl
0239                                local.tee 2
0240                                local.get 5
0241                                i32.sub
0242                                local.tee 3
0243                                i32.const 1
0244                                i32.or
0245                                i32.store offset=4
0246                                local.get 1
0247                                local.get 2
0248                                i32.add
0249                                local.get 3
0250                                i32.store
0251                                local.get 8
0252                                if  ;; label = @15
29 ------------------------------------------------------------
0253                                  local.get 8
0254                                  i32.const 3
0255                                  i32.shr_u
0256                                  local.tee 4
0257                                  i32.const 3
0258                                  i32.shl
0259                                  i32.const 157112
0260                                  i32.add
0261                                  local.set 1
0262                                  i32.const 157092
0263                                  i32.load
0264                                  local.set 2
0265                                  block (result i32)  ;; label = @16
30 ------------------------------------------------------------
0266                                    local.get 6
0267                                    i32.const 1
0268                                    local.get 4
0269                                    i32.shl
0270                                    local.tee 4
0271                                    i32.and
0272                                    i32.eqz
0273                                    if  ;; label = @17
31 ------------------------------------------------------------
0274                                      i32.const 157072
0275                                      local.get 4
0276                                      local.get 6
0277                                      i32.or
0278                                      i32.store
0279                                      local.get 1
0280                                      br 1 (;@16;)
32 ------------------------------------------------------------
0281                                    end
33 ------------------------------------------------------------
0282                                    local.get 1
0283                                    i32.load offset=8
0284                                  end
34 ------------------------------------------------------------
0285                                  local.set 4
0286                                  local.get 1
0287                                  local.get 2
0288                                  i32.store offset=8
0289                                  local.get 4
0290                                  local.get 2
0291                                  i32.store offset=12
0292                                  local.get 2
0293                                  local.get 1
0294                                  i32.store offset=12
0295                                  local.get 2
0296                                  local.get 4
0297                                  i32.store offset=8
0298                                end
35 ------------------------------------------------------------
0299                                i32.const 157092
0300                                local.get 7
0301                                i32.store
0302                                i32.const 157080
0303                                local.get 3
0304                                i32.store
0305                                br 13 (;@1;)
36 ------------------------------------------------------------
0306                              end
37 ------------------------------------------------------------
0307                              i32.const 157076
0308                              i32.load
0309                              local.tee 10
0310                              i32.eqz
0311                              br_if 1 (;@12;)
38 ------------------------------------------------------------
0312                              local.get 10
0313                              i32.const 0
0314                              local.get 10
0315                              i32.sub
0316                              i32.and
0317                              i32.const -1
0318                              i32.add
0319                              local.tee 0
0320                              local.get 0
0321                              i32.const 12
0322                              i32.shr_u
0323                              i32.const 16
0324                              i32.and
0325                              local.tee 0
0326                              i32.shr_u
0327                              local.tee 1
0328                              i32.const 5
0329                              i32.shr_u
0330                              i32.const 8
0331                              i32.and
0332                              local.tee 2
0333                              local.get 0
0334                              i32.or
0335                              local.get 1
0336                              local.get 2
0337                              i32.shr_u
0338                              local.tee 0
0339                              i32.const 2
0340                              i32.shr_u
0341                              i32.const 4
0342                              i32.and
0343                              local.tee 1
0344                              i32.or
0345                              local.get 0
0346                              local.get 1
0347                              i32.shr_u
0348                              local.tee 0
0349                              i32.const 1
0350                              i32.shr_u
0351                              i32.const 2
0352                              i32.and
0353                              local.tee 1
0354                              i32.or
0355                              local.get 0
0356                              local.get 1
0357                              i32.shr_u
0358                              local.tee 0
0359                              i32.const 1
0360                              i32.shr_u
0361                              i32.const 1
0362                              i32.and
0363                              local.tee 1
0364                              i32.or
0365                              local.get 0
0366                              local.get 1
0367                              i32.shr_u
0368                              i32.add
0369                              i32.const 2
0370                              i32.shl
0371                              i32.const 157376
0372                              i32.add
0373                              i32.load
0374                              local.tee 2
0375                              i32.load offset=4
0376                              i32.const -8
0377                              i32.and
0378                              local.get 5
0379                              i32.sub
0380                              local.set 3
0381                              local.get 2
0382                              local.set 1
0383                              loop  ;; label = @14
39 ------------------------------------------------------------
0384                                block  ;; label = @15
40 ------------------------------------------------------------
0385                                  local.get 1
0386                                  i32.load offset=16
0387                                  local.tee 0
0388                                  i32.eqz
0389                                  if  ;; label = @16
41 ------------------------------------------------------------
0390                                    local.get 1
0391                                    i32.load offset=20
0392                                    local.tee 0
0393                                    i32.eqz
0394                                    br_if 1 (;@15;)
42 ------------------------------------------------------------
0395                                  end
43 ------------------------------------------------------------
0396                                  local.get 0
0397                                  i32.load offset=4
0398                                  i32.const -8
0399                                  i32.and
0400                                  local.get 5
0401                                  i32.sub
0402                                  local.tee 1
0403                                  local.get 3
0404                                  local.get 1
0405                                  local.get 3
0406                                  i32.lt_u
0407                                  local.tee 1
0408                                  select
0409                                  local.set 3
0410                                  local.get 0
0411                                  local.get 2
0412                                  local.get 1
0413                                  select
0414                                  local.set 2
0415                                  local.get 0
0416                                  local.set 1
0417                                  br 1 (;@14;)
44 ------------------------------------------------------------
0418                                end
45 ------------------------------------------------------------
0419                              end
46 ------------------------------------------------------------
0420                              local.get 2
0421                              i32.load offset=24
0422                              local.set 9
0423                              local.get 2
0424                              local.get 2
0425                              i32.load offset=12
0426                              local.tee 4
0427                              i32.ne
0428                              if  ;; label = @14
47 ------------------------------------------------------------
0429                                i32.const 157088
0430                                i32.load
0431                                local.get 2
0432                                i32.load offset=8
0433                                local.tee 0
0434                                i32.le_u
0435                                if  ;; label = @15
48 ------------------------------------------------------------
0436                                  local.get 0
0437                                  i32.load offset=12
0438                                  drop
0439                                end
49 ------------------------------------------------------------
0440                                local.get 0
0441                                local.get 4
0442                                i32.store offset=12
0443                                local.get 4
0444                                local.get 0
0445                                i32.store offset=8
0446                                br 12 (;@2;)
50 ------------------------------------------------------------
0447                              end
51 ------------------------------------------------------------
0448                              local.get 2
0449                              i32.const 20
0450                              i32.add
0451                              local.tee 1
0452                              i32.load
0453                              local.tee 0
0454                              i32.eqz
0455                              if  ;; label = @14
52 ------------------------------------------------------------
0456                                local.get 2
0457                                i32.load offset=16
0458                                local.tee 0
0459                                i32.eqz
0460                                br_if 3 (;@11;)
53 ------------------------------------------------------------
0461                                local.get 2
0462                                i32.const 16
0463                                i32.add
0464                                local.set 1
0465                              end
54 ------------------------------------------------------------
0466                              loop  ;; label = @14
55 ------------------------------------------------------------
0467                                local.get 1
0468                                local.set 7
0469                                local.get 0
0470                                local.tee 4
0471                                i32.const 20
0472                                i32.add
0473                                local.tee 1
0474                                i32.load
0475                                local.tee 0
0476                                br_if 0 (;@14;)
56 ------------------------------------------------------------
0477                                local.get 4
0478                                i32.const 16
0479                                i32.add
0480                                local.set 1
0481                                local.get 4
0482                                i32.load offset=16
0483                                local.tee 0
0484                                br_if 0 (;@14;)
57 ------------------------------------------------------------
0485                              end
58 ------------------------------------------------------------
0486                              local.get 7
0487                              i32.const 0
0488                              i32.store
0489                              br 11 (;@2;)
59 ------------------------------------------------------------
0490                            end
60 ------------------------------------------------------------
0491                            i32.const -1
0492                            local.set 5
0493                            local.get 0
0494                            i32.const -65
0495                            i32.gt_u
0496                            br_if 0 (;@12;)
61 ------------------------------------------------------------
0497                            local.get 0
0498                            i32.const 11
0499                            i32.add
0500                            local.tee 0
0501                            i32.const -8
0502                            i32.and
0503                            local.set 5
0504                            i32.const 157076
0505                            i32.load
0506                            local.tee 7
0507                            i32.eqz
0508                            br_if 0 (;@12;)
62 ------------------------------------------------------------
0509                            i32.const 31
0510                            local.set 8
0511                            local.get 5
0512                            i32.const 16777215
0513                            i32.le_u
0514                            if  ;; label = @13
63 ------------------------------------------------------------
0515                              local.get 0
0516                              i32.const 8
0517                              i32.shr_u
0518                              local.tee 0
0519                              local.get 0
0520                              i32.const 1048320
0521                              i32.add
0522                              i32.const 16
0523                              i32.shr_u
0524                              i32.const 8
0525                              i32.and
0526                              local.tee 0
0527                              i32.shl
0528                              local.tee 1
0529                              local.get 1
0530                              i32.const 520192
0531                              i32.add
0532                              i32.const 16
0533                              i32.shr_u
0534                              i32.const 4
0535                              i32.and
0536                              local.tee 1
0537                              i32.shl
0538                              local.tee 2
0539                              local.get 2
0540                              i32.const 245760
0541                              i32.add
0542                              i32.const 16
0543                              i32.shr_u
0544                              i32.const 2
0545                              i32.and
0546                              local.tee 2
0547                              i32.shl
0548                              i32.const 15
0549                              i32.shr_u
0550                              local.get 0
0551                              local.get 1
0552                              i32.or
0553                              local.get 2
0554                              i32.or
0555                              i32.sub
0556                              local.tee 0
0557                              i32.const 1
0558                              i32.shl
0559                              local.get 5
0560                              local.get 0
0561                              i32.const 21
0562                              i32.add
0563                              i32.shr_u
0564                              i32.const 1
0565                              i32.and
0566                              i32.or
0567                              i32.const 28
0568                              i32.add
0569                              local.set 8
0570                            end
64 ------------------------------------------------------------
0571                            i32.const 0
0572                            local.get 5
0573                            i32.sub
0574                            local.set 1
0575                            block  ;; label = @13
65 ------------------------------------------------------------
0576                              block  ;; label = @14
66 ------------------------------------------------------------
0577                                block  ;; label = @15
67 ------------------------------------------------------------
0578                                  local.get 8
0579                                  i32.const 2
0580                                  i32.shl
0581                                  i32.const 157376
0582                                  i32.add
0583                                  i32.load
0584                                  local.tee 3
0585                                  i32.eqz
0586                                  if  ;; label = @16
68 ------------------------------------------------------------
0587                                    i32.const 0
0588                                    local.set 0
0589                                    br 1 (;@15;)
69 ------------------------------------------------------------
0590                                  end
70 ------------------------------------------------------------
0591                                  local.get 5
0592                                  i32.const 0
0593                                  i32.const 25
0594                                  local.get 8
0595                                  i32.const 1
0596                                  i32.shr_u
0597                                  i32.sub
0598                                  local.get 8
0599                                  i32.const 31
0600                                  i32.eq
0601                                  select
0602                                  i32.shl
0603                                  local.set 2
0604                                  i32.const 0
0605                                  local.set 0
0606                                  loop  ;; label = @16
71 ------------------------------------------------------------
0607                                    block  ;; label = @17
72 ------------------------------------------------------------
0608                                      local.get 3
0609                                      i32.load offset=4
0610                                      i32.const -8
0611                                      i32.and
0612                                      local.get 5
0613                                      i32.sub
0614                                      local.tee 6
0615                                      local.get 1
0616                                      i32.ge_u
0617                                      br_if 0 (;@17;)
73 ------------------------------------------------------------
0618                                      local.get 3
0619                                      local.set 4
0620                                      local.get 6
0621                                      local.tee 1
0622                                      br_if 0 (;@17;)
74 ------------------------------------------------------------
0623                                      i32.const 0
0624                                      local.set 1
0625                                      local.get 3
0626                                      local.set 0
0627                                      br 3 (;@14;)
75 ------------------------------------------------------------
0628                                    end
76 ------------------------------------------------------------
0629                                    local.get 0
0630                                    local.get 3
0631                                    i32.load offset=20
0632                                    local.tee 6
0633                                    local.get 6
0634                                    local.get 3
0635                                    local.get 2
0636                                    i32.const 29
0637                                    i32.shr_u
0638                                    i32.const 4
0639                                    i32.and
0640                                    i32.add
0641                                    i32.load offset=16
0642                                    local.tee 3
0643                                    i32.eq
0644                                    select
0645                                    local.get 0
0646                                    local.get 6
0647                                    select
0648                                    local.set 0
0649                                    local.get 2
0650                                    local.get 3
0651                                    i32.const 0
0652                                    i32.ne
0653                                    i32.shl
0654                                    local.set 2
0655                                    local.get 3
0656                                    br_if 0 (;@16;)
77 ------------------------------------------------------------
0657                                  end
78 ------------------------------------------------------------
0658                                end
79 ------------------------------------------------------------
0659                                local.get 0
0660                                local.get 4
0661                                i32.or
0662                                i32.eqz
0663                                if  ;; label = @15
80 ------------------------------------------------------------
0664                                  i32.const 2
0665                                  local.get 8
0666                                  i32.shl
0667                                  local.tee 0
0668                                  i32.const 0
0669                                  local.get 0
0670                                  i32.sub
0671                                  i32.or
0672                                  local.get 7
0673                                  i32.and
0674                                  local.tee 0
0675                                  i32.eqz
0676                                  br_if 3 (;@12;)
81 ------------------------------------------------------------
0677                                  local.get 0
0678                                  i32.const 0
0679                                  local.get 0
0680                                  i32.sub
0681                                  i32.and
0682                                  i32.const -1
0683                                  i32.add
0684                                  local.tee 0
0685                                  local.get 0
0686                                  i32.const 12
0687                                  i32.shr_u
0688                                  i32.const 16
0689                                  i32.and
0690                                  local.tee 0
0691                                  i32.shr_u
0692                                  local.tee 2
0693                                  i32.const 5
0694                                  i32.shr_u
0695                                  i32.const 8
0696                                  i32.and
0697                                  local.tee 3
0698                                  local.get 0
0699                                  i32.or
0700                                  local.get 2
0701                                  local.get 3
0702                                  i32.shr_u
0703                                  local.tee 0
0704                                  i32.const 2
0705                                  i32.shr_u
0706                                  i32.const 4
0707                                  i32.and
0708                                  local.tee 2
0709                                  i32.or
0710                                  local.get 0
0711                                  local.get 2
0712                                  i32.shr_u
0713                                  local.tee 0
0714                                  i32.const 1
0715                                  i32.shr_u
0716                                  i32.const 2
0717                                  i32.and
0718                                  local.tee 2
0719                                  i32.or
0720                                  local.get 0
0721                                  local.get 2
0722                                  i32.shr_u
0723                                  local.tee 0
0724                                  i32.const 1
0725                                  i32.shr_u
0726                                  i32.const 1
0727                                  i32.and
0728                                  local.tee 2
0729                                  i32.or
0730                                  local.get 0
0731                                  local.get 2
0732                                  i32.shr_u
0733                                  i32.add
0734                                  i32.const 2
0735                                  i32.shl
0736                                  i32.const 157376
0737                                  i32.add
0738                                  i32.load
0739                                  local.set 0
0740                                end
82 ------------------------------------------------------------
0741                                local.get 0
0742                                i32.eqz
0743                                br_if 1 (;@13;)
83 ------------------------------------------------------------
0744                              end
84 ------------------------------------------------------------
0745                              loop  ;; label = @14
85 ------------------------------------------------------------
0746                                local.get 0
0747                                i32.load offset=4
0748                                i32.const -8
0749                                i32.and
0750                                local.get 5
0751                                i32.sub
0752                                local.tee 3
0753                                local.get 1
0754                                i32.lt_u
0755                                local.set 2
0756                                local.get 3
0757                                local.get 1
0758                                local.get 2
0759                                select
0760                                local.set 1
0761                                local.get 0
0762                                local.get 4
0763                                local.get 2
0764                                select
0765                                local.set 4
0766                                local.get 0
0767                                i32.load offset=16
0768                                local.tee 2
0769                                if (result i32)  ;; label = @15
86 ------------------------------------------------------------
0770                                  local.get 2
0771                                else
87 ------------------------------------------------------------
0772                                  local.get 0
0773                                  i32.load offset=20
0774                                end
88 ------------------------------------------------------------
0775                                local.tee 0
0776                                br_if 0 (;@14;)
89 ------------------------------------------------------------
0777                              end
90 ------------------------------------------------------------
0778                            end
91 ------------------------------------------------------------
0779                            local.get 4
0780                            i32.eqz
0781                            br_if 0 (;@12;)
92 ------------------------------------------------------------
0782                            local.get 1
0783                            i32.const 157080
0784                            i32.load
0785                            local.get 5
0786                            i32.sub
0787                            i32.ge_u
0788                            br_if 0 (;@12;)
93 ------------------------------------------------------------
0789                            local.get 4
0790                            i32.load offset=24
0791                            local.set 8
0792                            local.get 4
0793                            local.get 4
0794                            i32.load offset=12
0795                            local.tee 2
0796                            i32.ne
0797                            if  ;; label = @13
94 ------------------------------------------------------------
0798                              i32.const 157088
0799                              i32.load
0800                              local.get 4
0801                              i32.load offset=8
0802                              local.tee 0
0803                              i32.le_u
0804                              if  ;; label = @14
95 ------------------------------------------------------------
0805                                local.get 0
0806                                i32.load offset=12
0807                                drop
0808                              end
96 ------------------------------------------------------------
0809                              local.get 0
0810                              local.get 2
0811                              i32.store offset=12
0812                              local.get 2
0813                              local.get 0
0814                              i32.store offset=8
0815                              br 10 (;@3;)
97 ------------------------------------------------------------
0816                            end
98 ------------------------------------------------------------
0817                            local.get 4
0818                            i32.const 20
0819                            i32.add
0820                            local.tee 3
0821                            i32.load
0822                            local.tee 0
0823                            i32.eqz
0824                            if  ;; label = @13
99 ------------------------------------------------------------
0825                              local.get 4
0826                              i32.load offset=16
0827                              local.tee 0
0828                              i32.eqz
0829                              br_if 3 (;@10;)
100 ------------------------------------------------------------
0830                              local.get 4
0831                              i32.const 16
0832                              i32.add
0833                              local.set 3
0834                            end
101 ------------------------------------------------------------
0835                            loop  ;; label = @13
102 ------------------------------------------------------------
0836                              local.get 3
0837                              local.set 6
0838                              local.get 0
0839                              local.tee 2
0840                              i32.const 20
0841                              i32.add
0842                              local.tee 3
0843                              i32.load
0844                              local.tee 0
0845                              br_if 0 (;@13;)
103 ------------------------------------------------------------
0846                              local.get 2
0847                              i32.const 16
0848                              i32.add
0849                              local.set 3
0850                              local.get 2
0851                              i32.load offset=16
0852                              local.tee 0
0853                              br_if 0 (;@13;)
104 ------------------------------------------------------------
0854                            end
105 ------------------------------------------------------------
0855                            local.get 6
0856                            i32.const 0
0857                            i32.store
0858                            br 9 (;@3;)
106 ------------------------------------------------------------
0859                          end
107 ------------------------------------------------------------
0860                          i32.const 157080
0861                          i32.load
0862                          local.tee 1
0863                          local.get 5
0864                          i32.ge_u
0865                          if  ;; label = @12
108 ------------------------------------------------------------
0866                            i32.const 157092
0867                            i32.load
0868                            local.set 0
0869                            block  ;; label = @13
109 ------------------------------------------------------------
0870                              local.get 1
0871                              local.get 5
0872                              i32.sub
0873                              local.tee 2
0874                              i32.const 16
0875                              i32.ge_u
0876                              if  ;; label = @14
110 ------------------------------------------------------------
0877                                i32.const 157080
0878                                local.get 2
0879                                i32.store
0880                                i32.const 157092
0881                                local.get 0
0882                                local.get 5
0883                                i32.add
0884                                local.tee 3
0885                                i32.store
0886                                local.get 3
0887                                local.get 2
0888                                i32.const 1
0889                                i32.or
0890                                i32.store offset=4
0891                                local.get 0
0892                                local.get 1
0893                                i32.add
0894                                local.get 2
0895                                i32.store
0896                                local.get 0
0897                                local.get 5
0898                                i32.const 3
0899                                i32.or
0900                                i32.store offset=4
0901                                br 1 (;@13;)
111 ------------------------------------------------------------
0902                              end
112 ------------------------------------------------------------
0903                              i32.const 157092
0904                              i32.const 0
0905                              i32.store
0906                              i32.const 157080
0907                              i32.const 0
0908                              i32.store
0909                              local.get 0
0910                              local.get 1
0911                              i32.const 3
0912                              i32.or
0913                              i32.store offset=4
0914                              local.get 0
0915                              local.get 1
0916                              i32.add
0917                              local.tee 1
0918                              local.get 1
0919                              i32.load offset=4
0920                              i32.const 1
0921                              i32.or
0922                              i32.store offset=4
0923                            end
113 ------------------------------------------------------------
0924                            local.get 0
0925                            i32.const 8
0926                            i32.add
0927                            local.set 0
0928                            br 11 (;@1;)
114 ------------------------------------------------------------
0929                          end
115 ------------------------------------------------------------
0930                          i32.const 157084
0931                          i32.load
0932                          local.tee 1
0933                          local.get 5
0934                          i32.gt_u
0935                          if  ;; label = @12
116 ------------------------------------------------------------
0936                            i32.const 157084
0937                            local.get 1
0938                            local.get 5
0939                            i32.sub
0940                            local.tee 1
0941                            i32.store
0942                            i32.const 157096
0943                            i32.const 157096
0944                            i32.load
0945                            local.tee 0
0946                            local.get 5
0947                            i32.add
0948                            local.tee 2
0949                            i32.store
0950                            local.get 2
0951                            local.get 1
0952                            i32.const 1
0953                            i32.or
0954                            i32.store offset=4
0955                            local.get 0
0956                            local.get 5
0957                            i32.const 3
0958                            i32.or
0959                            i32.store offset=4
0960                            local.get 0
0961                            i32.const 8
0962                            i32.add
0963                            local.set 0
0964                            br 11 (;@1;)
117 ------------------------------------------------------------
0965                          end
118 ------------------------------------------------------------
0966                          i32.const 0
0967                          local.set 0
0968                          local.get 5
0969                          i32.const 47
0970                          i32.add
0971                          local.tee 4
0972                          block (result i32)  ;; label = @12
119 ------------------------------------------------------------
0973                            i32.const 157544
0974                            i32.load
0975                            if  ;; label = @13
120 ------------------------------------------------------------
0976                              i32.const 157552
0977                              i32.load
0978                              br 1 (;@12;)
121 ------------------------------------------------------------
0979                            end
122 ------------------------------------------------------------
0980                            i32.const 157556
0981                            i64.const -1
0982                            i64.store align=4
0983                            i32.const 157548
0984                            i64.const 17592186048512
0985                            i64.store align=4
0986                            i32.const 157544
0987                            local.get 11
0988                            i32.const 12
0989                            i32.add
0990                            i32.const -16
0991                            i32.and
0992                            i32.const 1431655768
0993                            i32.xor
0994                            i32.store
0995                            i32.const 157564
0996                            i32.const 0
0997                            i32.store
0998                            i32.const 157516
0999                            i32.const 0
1000                            i32.store
1001                            i32.const 4096
1002                          end
123 ------------------------------------------------------------
1003                          local.tee 2
1004                          i32.add
1005                          local.tee 6
1006                          i32.const 0
1007                          local.get 2
1008                          i32.sub
1009                          local.tee 7
1010                          i32.and
1011                          local.tee 2
1012                          local.get 5
1013                          i32.le_u
1014                          br_if 10 (;@1;)
124 ------------------------------------------------------------
1015                          i32.const 157512
1016                          i32.load
1017                          local.tee 3
1018                          if  ;; label = @12
125 ------------------------------------------------------------
1019                            i32.const 157504
1020                            i32.load
1021                            local.tee 8
1022                            local.get 2
1023                            i32.add
1024                            local.tee 9
1025                            local.get 8
1026                            i32.le_u
1027                            local.get 9
1028                            local.get 3
1029                            i32.gt_u
1030                            i32.or
1031                            br_if 11 (;@1;)
126 ------------------------------------------------------------
1032                          end
127 ------------------------------------------------------------
1033                          i32.const 157516
1034                          i32.load8_u
1035                          i32.const 4
1036                          i32.and
1037                          br_if 5 (;@6;)
128 ------------------------------------------------------------
1038                          block  ;; label = @12
129 ------------------------------------------------------------
1039                            i32.const 157096
1040                            i32.load
1041                            local.tee 3
1042                            if  ;; label = @13
130 ------------------------------------------------------------
1043                              i32.const 157520
1044                              local.set 0
1045                              loop  ;; label = @14
131 ------------------------------------------------------------
1046                                local.get 0
1047                                i32.load
1048                                local.tee 8
1049                                local.get 3
1050                                i32.le_u
1051                                if  ;; label = @15
132 ------------------------------------------------------------
1052                                  local.get 8
1053                                  local.get 0
1054                                  i32.load offset=4
1055                                  i32.add
1056                                  local.get 3
1057                                  i32.gt_u
1058                                  br_if 3 (;@12;)
133 ------------------------------------------------------------
1059                                end
134 ------------------------------------------------------------
1060                                local.get 0
1061                                i32.load offset=8
1062                                local.tee 0
1063                                br_if 0 (;@14;)
135 ------------------------------------------------------------
1064                              end
136 ------------------------------------------------------------
1065                            end
137 ------------------------------------------------------------
1066                            memory.size
1067                            local.set 0
1068                            block  ;; label = @13
138 ------------------------------------------------------------
1069                              i32.const 157568
1070                              i32.load
1071                              local.tee 1
1072                              local.get 0
1073                              i32.const 16
1074                              i32.shl
1075                              i32.le_u
1076                              br_if 0 (;@13;)
139 ------------------------------------------------------------
1077                              local.get 1
1078                              call 2
1079                              br_if 0 (;@13;)
140 ------------------------------------------------------------
1080                              i32.const 156988
1081                              i32.const 48
1082                              i32.store
1083                              br 6 (;@7;)
141 ------------------------------------------------------------
1084                            end
142 ------------------------------------------------------------
1085                            i32.const 157568
1086                            local.get 1
1087                            i32.store
1088                            local.get 1
1089                            i32.const -1
1090                            i32.eq
1091                            br_if 5 (;@7;)
143 ------------------------------------------------------------
1092                            local.get 2
1093                            local.set 6
1094                            i32.const 157548
1095                            i32.load
1096                            local.tee 0
1097                            i32.const -1
1098                            i32.add
1099                            local.tee 3
1100                            local.get 1
1101                            i32.and
1102                            if  ;; label = @13
144 ------------------------------------------------------------
1103                              local.get 2
1104                              local.get 1
1105                              i32.sub
1106                              local.get 1
1107                              local.get 3
1108                              i32.add
1109                              i32.const 0
1110                              local.get 0
1111                              i32.sub
1112                              i32.and
1113                              i32.add
1114                              local.set 6
1115                            end
145 ------------------------------------------------------------
1116                            local.get 6
1117                            local.get 5
1118                            i32.le_u
1119                            local.get 6
1120                            i32.const 2147483646
1121                            i32.gt_u
1122                            i32.or
1123                            br_if 5 (;@7;)
146 ------------------------------------------------------------
1124                            i32.const 157512
1125                            i32.load
1126                            local.tee 0
1127                            if  ;; label = @13
147 ------------------------------------------------------------
1128                              i32.const 157504
1129                              i32.load
1130                              local.tee 3
1131                              local.get 6
1132                              i32.add
1133                              local.tee 7
1134                              local.get 3
1135                              i32.le_u
1136                              local.get 7
1137                              local.get 0
1138                              i32.gt_u
1139                              i32.or
1140                              br_if 6 (;@7;)
148 ------------------------------------------------------------
1141                            end
149 ------------------------------------------------------------
1142                            i32.const 157568
1143                            i32.load
1144                            local.tee 0
1145                            local.get 6
1146                            i32.const 3
1147                            i32.add
1148                            i32.const -4
1149                            i32.and
1150                            local.tee 7
1151                            i32.add
1152                            local.set 3
1153                            block  ;; label = @13
150 ------------------------------------------------------------
1154                              block  ;; label = @14
151 ------------------------------------------------------------
1155                                local.get 7
1156                                i32.const 1
1157                                i32.ge_s
1158                                i32.const 0
1159                                local.get 3
1160                                local.get 0
1161                                i32.le_u
1162                                select
1163                                br_if 0 (;@14;)
152 ------------------------------------------------------------
1164                                local.get 3
1165                                memory.size
1166                                i32.const 16
1167                                i32.shl
1168                                i32.gt_u
1169                                if  ;; label = @15
153 ------------------------------------------------------------
1170                                  local.get 3
1171                                  call 2
1172                                  i32.eqz
1173                                  br_if 1 (;@14;)
154 ------------------------------------------------------------
1174                                end
155 ------------------------------------------------------------
1175                                i32.const 157568
1176                                local.get 3
1177                                i32.store
1178                                br 1 (;@13;)
156 ------------------------------------------------------------
1179                              end
157 ------------------------------------------------------------
1180                              i32.const 156988
1181                              i32.const 48
1182                              i32.store
1183                              i32.const -1
1184                              local.set 0
1185                            end
158 ------------------------------------------------------------
1186                            local.get 0
1187                            local.get 1
1188                            i32.eq
1189                            br_if 7 (;@5;)
159 ------------------------------------------------------------
1190                            local.get 0
1191                            local.set 1
1192                            br 4 (;@8;)
160 ------------------------------------------------------------
1193                          end
161 ------------------------------------------------------------
1194                          local.get 6
1195                          local.get 1
1196                          i32.sub
1197                          local.get 7
1198                          i32.and
1199                          local.tee 6
1200                          i32.const 2147483646
1201                          i32.gt_u
1202                          br_if 4 (;@7;)
162 ------------------------------------------------------------
1203                          i32.const 157568
1204                          i32.load
1205                          local.tee 1
1206                          local.get 6
1207                          i32.const 3
1208                          i32.add
1209                          i32.const -4
1210                          i32.and
1211                          local.tee 7
1212                          i32.add
1213                          local.set 3
1214                          local.get 7
1215                          i32.const 1
1216                          i32.ge_s
1217                          i32.const 0
1218                          local.get 3
1219                          local.get 1
1220                          i32.le_u
1221                          select
1222                          br_if 2 (;@9;)
163 ------------------------------------------------------------
1223                          local.get 3
1224                          memory.size
1225                          i32.const 16
1226                          i32.shl
1227                          i32.gt_u
1228                          if  ;; label = @12
164 ------------------------------------------------------------
1229                            local.get 3
1230                            call 2
1231                            i32.eqz
1232                            br_if 3 (;@9;)
165 ------------------------------------------------------------
1233                          end
166 ------------------------------------------------------------
1234                          i32.const 157568
1235                          local.get 3
1236                          i32.store
1237                          local.get 0
1238                          i32.load
1239                          local.get 0
1240                          i32.load offset=4
1241                          i32.add
1242                          local.get 1
1243                          i32.ne
1244                          br_if 3 (;@8;)
167 ------------------------------------------------------------
1245                          local.get 1
1246                          i32.const -1
1247                          i32.eq
1248                          br_if 4 (;@7;)
168 ------------------------------------------------------------
1249                          br 6 (;@5;)
169 ------------------------------------------------------------
1250                        end
170 ------------------------------------------------------------
1251                        i32.const 0
1252                        local.set 4
1253                        br 8 (;@2;)
171 ------------------------------------------------------------
1254                      end
172 ------------------------------------------------------------
1255                      i32.const 0
1256                      local.set 2
1257                      br 6 (;@3;)
173 ------------------------------------------------------------
1258                    end
174 ------------------------------------------------------------
1259                    i32.const 156988
1260                    i32.const 48
1261                    i32.store
1262                    br 1 (;@7;)
175 ------------------------------------------------------------
1263                  end
176 ------------------------------------------------------------
1264                  block  ;; label = @8
177 ------------------------------------------------------------
1265                    local.get 1
1266                    i32.const -1
1267                    i32.eq
1268                    local.get 5
1269                    i32.const 48
1270                    i32.add
1271                    local.get 6
1272                    i32.le_u
1273                    i32.or
1274                    i32.eqz
1275                    if  ;; label = @9
178 ------------------------------------------------------------
1276                      i32.const 157552
1277                      i32.load
1278                      local.tee 0
1279                      local.get 4
1280                      local.get 6
1281                      i32.sub
1282                      i32.add
1283                      i32.const 0
1284                      local.get 0
1285                      i32.sub
1286                      i32.and
1287                      local.tee 3
1288                      i32.const 2147483646
1289                      i32.gt_u
1290                      br_if 4 (;@5;)
179 ------------------------------------------------------------
1291                      i32.const 157568
1292                      i32.load
1293                      local.tee 4
1294                      local.get 3
1295                      i32.const 3
1296                      i32.add
1297                      i32.const -4
1298                      i32.and
1299                      local.tee 7
1300                      i32.add
1301                      local.set 0
1302                      block  ;; label = @10
180 ------------------------------------------------------------
1303                        local.get 7
1304                        i32.const 1
1305                        i32.ge_s
1306                        i32.const 0
1307                        local.get 0
1308                        local.get 4
1309                        i32.le_u
1310                        select
1311                        i32.eqz
1312                        if  ;; label = @11
181 ------------------------------------------------------------
1313                          local.get 0
1314                          memory.size
1315                          i32.const 16
1316                          i32.shl
1317                          i32.le_u
1318                          br_if 1 (;@10;)
182 ------------------------------------------------------------
1319                          local.get 0
1320                          call 2
1321                          br_if 1 (;@10;)
183 ------------------------------------------------------------
1322                        end
184 ------------------------------------------------------------
1323                        i32.const 156988
1324                        i32.const 48
1325                        i32.store
1326                        br 2 (;@8;)
185 ------------------------------------------------------------
1327                      end
186 ------------------------------------------------------------
1328                      i32.const 157568
1329                      local.get 0
1330                      i32.store
1331                      local.get 4
1332                      i32.const -1
1333                      i32.eq
1334                      br_if 1 (;@8;)
187 ------------------------------------------------------------
1335                      local.get 3
1336                      local.get 6
1337                      i32.add
1338                      local.set 6
1339                      br 4 (;@5;)
188 ------------------------------------------------------------
1340                    end
189 ------------------------------------------------------------
1341                    local.get 1
1342                    i32.const -1
1343                    i32.ne
1344                    br_if 3 (;@5;)
190 ------------------------------------------------------------
1345                    br 1 (;@7;)
191 ------------------------------------------------------------
1346                  end
192 ------------------------------------------------------------
1347                  i32.const 157568
1348                  i32.load
1349                  local.tee 1
1350                  i32.const 3
1351                  local.get 6
1352                  i32.sub
1353                  i32.const -4
1354                  i32.and
1355                  local.tee 3
1356                  i32.add
1357                  local.set 0
1358                  block  ;; label = @8
193 ------------------------------------------------------------
1359                    local.get 3
1360                    i32.const 1
1361                    i32.ge_s
1362                    i32.const 0
1363                    local.get 0
1364                    local.get 1
1365                    i32.le_u
1366                    select
1367                    br_if 0 (;@8;)
194 ------------------------------------------------------------
1368                    local.get 0
1369                    memory.size
1370                    i32.const 16
1371                    i32.shl
1372                    i32.gt_u
1373                    if  ;; label = @9
195 ------------------------------------------------------------
1374                      local.get 0
1375                      call 2
1376                      i32.eqz
1377                      br_if 1 (;@8;)
196 ------------------------------------------------------------
1378                    end
197 ------------------------------------------------------------
1379                    i32.const 157568
1380                    local.get 0
1381                    i32.store
1382                    br 1 (;@7;)
198 ------------------------------------------------------------
1383                  end
199 ------------------------------------------------------------
1384                  i32.const 156988
1385                  i32.const 48
1386                  i32.store
1387                end
200 ------------------------------------------------------------
1388                i32.const 157516
1389                i32.const 157516
1390                i32.load
1391                i32.const 4
1392                i32.or
1393                i32.store
1394              end
201 ------------------------------------------------------------
1395              local.get 2
1396              i32.const 2147483646
1397              i32.gt_u
1398              br_if 1 (;@4;)
202 ------------------------------------------------------------
1399              i32.const 157568
1400              i32.load
1401              local.tee 1
1402              local.get 2
1403              i32.const 3
1404              i32.add
1405              i32.const -4
1406              i32.and
1407              local.tee 2
1408              i32.add
1409              local.set 0
1410              block  ;; label = @6
203 ------------------------------------------------------------
1411                block  ;; label = @7
204 ------------------------------------------------------------
1412                  local.get 2
1413                  i32.const 1
1414                  i32.ge_s
1415                  i32.const 0
1416                  local.get 0
1417                  local.get 1
1418                  i32.le_u
1419                  select
1420                  br_if 0 (;@7;)
205 ------------------------------------------------------------
1421                  local.get 0
1422                  memory.size
1423                  i32.const 16
1424                  i32.shl
1425                  i32.gt_u
1426                  if  ;; label = @8
206 ------------------------------------------------------------
1427                    local.get 0
1428                    call 2
1429                    i32.eqz
1430                    br_if 1 (;@7;)
207 ------------------------------------------------------------
1431                  end
208 ------------------------------------------------------------
1432                  i32.const 157568
1433                  local.get 0
1434                  i32.store
1435                  br 1 (;@6;)
209 ------------------------------------------------------------
1436                end
210 ------------------------------------------------------------
1437                i32.const 156988
1438                i32.const 48
1439                i32.store
1440                i32.const -1
1441                local.set 1
1442              end
211 ------------------------------------------------------------
1443              memory.size
1444              local.set 2
1445              block  ;; label = @6
212 ------------------------------------------------------------
1446                i32.const 157568
1447                i32.load
1448                local.tee 0
1449                local.get 2
1450                i32.const 16
1451                i32.shl
1452                i32.le_u
1453                br_if 0 (;@6;)
213 ------------------------------------------------------------
1454                local.get 0
1455                call 2
1456                br_if 0 (;@6;)
214 ------------------------------------------------------------
1457                i32.const 156988
1458                i32.const 48
1459                i32.store
1460                br 2 (;@4;)
215 ------------------------------------------------------------
1461              end
216 ------------------------------------------------------------
1462              i32.const 157568
1463              local.get 0
1464              i32.store
1465              local.get 1
1466              i32.const -1
1467              i32.eq
1468              local.get 1
1469              local.get 0
1470              i32.ge_u
1471              i32.or
1472              local.get 0
1473              i32.const -1
1474              i32.eq
1475              i32.or
1476              br_if 1 (;@4;)
217 ------------------------------------------------------------
1477              local.get 0
1478              local.get 1
1479              i32.sub
1480              local.tee 6
1481              local.get 5
1482              i32.const 40
1483              i32.add
1484              i32.le_u
1485              br_if 1 (;@4;)
218 ------------------------------------------------------------
1486            end
219 ------------------------------------------------------------
1487            i32.const 157504
1488            i32.const 157504
1489            i32.load
1490            local.get 6
1491            i32.add
1492            local.tee 0
1493            i32.store
1494            local.get 0
1495            i32.const 157508
1496            i32.load
1497            i32.gt_u
1498            if  ;; label = @5
220 ------------------------------------------------------------
1499              i32.const 157508
1500              local.get 0
1501              i32.store
1502            end
221 ------------------------------------------------------------
1503            block  ;; label = @5
222 ------------------------------------------------------------
1504              block  ;; label = @6
223 ------------------------------------------------------------
1505                block  ;; label = @7
224 ------------------------------------------------------------
1506                  i32.const 157096
1507                  i32.load
1508                  local.tee 3
1509                  if  ;; label = @8
225 ------------------------------------------------------------
1510                    i32.const 157520
1511                    local.set 0
1512                    loop  ;; label = @9
226 ------------------------------------------------------------
1513                      local.get 1
1514                      local.get 0
1515                      i32.load
1516                      local.tee 2
1517                      local.get 0
1518                      i32.load offset=4
1519                      local.tee 4
1520                      i32.add
1521                      i32.eq
1522                      br_if 2 (;@7;)
227 ------------------------------------------------------------
1523                      local.get 0
1524                      i32.load offset=8
1525                      local.tee 0
1526                      br_if 0 (;@9;)
228 ------------------------------------------------------------
1527                    end
229 ------------------------------------------------------------
1528                    br 2 (;@6;)
230 ------------------------------------------------------------
1529                  end
231 ------------------------------------------------------------
1530                  i32.const 157088
1531                  i32.load
1532                  local.tee 0
1533                  i32.const 0
1534                  local.get 1
1535                  local.get 0
1536                  i32.ge_u
1537                  select
1538                  i32.eqz
1539                  if  ;; label = @8
232 ------------------------------------------------------------
1540                    i32.const 157088
1541                    local.get 1
1542                    i32.store
1543                  end
233 ------------------------------------------------------------
1544                  i32.const 0
1545                  local.set 0
1546                  i32.const 157524
1547                  local.get 6
1548                  i32.store
1549                  i32.const 157520
1550                  local.get 1
1551                  i32.store
1552                  i32.const 157104
1553                  i32.const -1
1554                  i32.store
1555                  i32.const 157108
1556                  i32.const 157544
1557                  i32.load
1558                  i32.store
1559                  i32.const 157532
1560                  i32.const 0
1561                  i32.store
1562                  loop  ;; label = @8
234 ------------------------------------------------------------
1563                    local.get 0
1564                    i32.const 3
1565                    i32.shl
1566                    local.tee 2
1567                    i32.const 157120
1568                    i32.add
1569                    local.get 2
1570                    i32.const 157112
1571                    i32.add
1572                    local.tee 3
1573                    i32.store
1574                    local.get 2
1575                    i32.const 157124
1576                    i32.add
1577                    local.get 3
1578                    i32.store
1579                    local.get 0
1580                    i32.const 1
1581                    i32.add
1582                    local.tee 0
1583                    i32.const 32
1584                    i32.ne
1585                    br_if 0 (;@8;)
235 ------------------------------------------------------------
1586                  end
236 ------------------------------------------------------------
1587                  i32.const 157084
1588                  local.get 6
1589                  i32.const -40
1590                  i32.add
1591                  local.tee 0
1592                  i32.const -8
1593                  local.get 1
1594                  i32.sub
1595                  i32.const 7
1596                  i32.and
1597                  i32.const 0
1598                  local.get 1
1599                  i32.const 8
1600                  i32.add
1601                  i32.const 7
1602                  i32.and
1603                  select
1604                  local.tee 2
1605                  i32.sub
1606                  local.tee 3
1607                  i32.store
1608                  i32.const 157096
1609                  local.get 1
1610                  local.get 2
1611                  i32.add
1612                  local.tee 2
1613                  i32.store
1614                  local.get 2
1615                  local.get 3
1616                  i32.const 1
1617                  i32.or
1618                  i32.store offset=4
1619                  local.get 0
1620                  local.get 1
1621                  i32.add
1622                  i32.const 40
1623                  i32.store offset=4
1624                  i32.const 157100
1625                  i32.const 157560
1626                  i32.load
1627                  i32.store
1628                  br 2 (;@5;)
237 ------------------------------------------------------------
1629                end
238 ------------------------------------------------------------
1630                local.get 0
1631                i32.load8_u offset=12
1632                i32.const 8
1633                i32.and
1634                local.get 1
1635                local.get 3
1636                i32.le_u
1637                i32.or
1638                local.get 2
1639                local.get 3
1640                i32.gt_u
1641                i32.or
1642                br_if 0 (;@6;)
239 ------------------------------------------------------------
1643                local.get 0
1644                local.get 4
1645                local.get 6
1646                i32.add
1647                i32.store offset=4
1648                i32.const 157096
1649                local.get 3
1650                i32.const -8
1651                local.get 3
1652                i32.sub
1653                i32.const 7
1654                i32.and
1655                i32.const 0
1656                local.get 3
1657                i32.const 8
1658                i32.add
1659                i32.const 7
1660                i32.and
1661                select
1662                local.tee 0
1663                i32.add
1664                local.tee 1
1665                i32.store
1666                i32.const 157084
1667                i32.const 157084
1668                i32.load
1669                local.get 6
1670                i32.add
1671                local.tee 2
1672                local.get 0
1673                i32.sub
1674                local.tee 0
1675                i32.store
1676                local.get 1
1677                local.get 0
1678                i32.const 1
1679                i32.or
1680                i32.store offset=4
1681                local.get 2
1682                local.get 3
1683                i32.add
1684                i32.const 40
1685                i32.store offset=4
1686                i32.const 157100
1687                i32.const 157560
1688                i32.load
1689                i32.store
1690                br 1 (;@5;)
240 ------------------------------------------------------------
1691              end
241 ------------------------------------------------------------
1692              local.get 1
1693              i32.const 157088
1694              i32.load
1695              local.tee 4
1696              i32.lt_u
1697              if  ;; label = @6
242 ------------------------------------------------------------
1698                i32.const 157088
1699                local.get 1
1700                i32.store
1701                local.get 1
1702                local.set 4
1703              end
243 ------------------------------------------------------------
1704              local.get 1
1705              local.get 6
1706              i32.add
1707              local.set 2
1708              i32.const 157520
1709              local.set 0
1710              block  ;; label = @6
244 ------------------------------------------------------------
1711                block  ;; label = @7
245 ------------------------------------------------------------
1712                  block  ;; label = @8
246 ------------------------------------------------------------
1713                    block  ;; label = @9
247 ------------------------------------------------------------
1714                      block  ;; label = @10
248 ------------------------------------------------------------
1715                        block  ;; label = @11
249 ------------------------------------------------------------
1716                          loop  ;; label = @12
250 ------------------------------------------------------------
1717                            local.get 2
1718                            local.get 0
1719                            i32.load
1720                            i32.ne
1721                            if  ;; label = @13
251 ------------------------------------------------------------
1722                              local.get 0
1723                              i32.load offset=8
1724                              local.tee 0
1725                              br_if 1 (;@12;)
252 ------------------------------------------------------------
1726                              br 2 (;@11;)
253 ------------------------------------------------------------
1727                            end
254 ------------------------------------------------------------
1728                          end
255 ------------------------------------------------------------
1729                          local.get 0
1730                          i32.load8_u offset=12
1731                          i32.const 8
1732                          i32.and
1733                          i32.eqz
1734                          br_if 1 (;@10;)
256 ------------------------------------------------------------
1735                        end
257 ------------------------------------------------------------
1736                        i32.const 157520
1737                        local.set 0
1738                        loop  ;; label = @11
258 ------------------------------------------------------------
1739                          local.get 0
1740                          i32.load
1741                          local.tee 2
1742                          local.get 3
1743                          i32.le_u
1744                          if  ;; label = @12
259 ------------------------------------------------------------
1745                            local.get 2
1746                            local.get 0
1747                            i32.load offset=4
1748                            i32.add
1749                            local.tee 4
1750                            local.get 3
1751                            i32.gt_u
1752                            br_if 3 (;@9;)
260 ------------------------------------------------------------
1753                          end
261 ------------------------------------------------------------
1754                          local.get 0
1755                          i32.load offset=8
1756                          local.set 0
1757                          br 0 (;@11;)
262 ------------------------------------------------------------
1758                          unreachable
263 ------------------------------------------------------------
1759                        end
264 ------------------------------------------------------------
1760                        unreachable
265 ------------------------------------------------------------
1761                      end
266 ------------------------------------------------------------
1762                      local.get 0
1763                      local.get 1
1764                      i32.store
1765                      local.get 0
1766                      local.get 0
1767                      i32.load offset=4
1768                      local.get 6
1769                      i32.add
1770                      i32.store offset=4
1771                      local.get 1
1772                      i32.const -8
1773                      local.get 1
1774                      i32.sub
1775                      i32.const 7
1776                      i32.and
1777                      i32.const 0
1778                      local.get 1
1779                      i32.const 8
1780                      i32.add
1781                      i32.const 7
1782                      i32.and
1783                      select
1784                      i32.add
1785                      local.tee 9
1786                      local.get 5
1787                      i32.const 3
1788                      i32.or
1789                      i32.store offset=4
1790                      local.get 2
1791                      i32.const -8
1792                      local.get 2
1793                      i32.sub
1794                      i32.const 7
1795                      i32.and
1796                      i32.const 0
1797                      local.get 2
1798                      i32.const 8
1799                      i32.add
1800                      i32.const 7
1801                      i32.and
1802                      select
1803                      i32.add
1804                      local.tee 2
1805                      local.get 9
1806                      i32.sub
1807                      local.get 5
1808                      i32.sub
1809                      local.set 0
1810                      local.get 5
1811                      local.get 9
1812                      i32.add
1813                      local.set 7
1814                      local.get 2
1815                      local.get 3
1816                      i32.eq
1817                      if  ;; label = @10
267 ------------------------------------------------------------
1818                        i32.const 157096
1819                        local.get 7
1820                        i32.store
1821                        i32.const 157084
1822                        i32.const 157084
1823                        i32.load
1824                        local.get 0
1825                        i32.add
1826                        local.tee 0
1827                        i32.store
1828                        local.get 7
1829                        local.get 0
1830                        i32.const 1
1831                        i32.or
1832                        i32.store offset=4
1833                        br 3 (;@7;)
268 ------------------------------------------------------------
1834                      end
269 ------------------------------------------------------------
1835                      local.get 2
1836                      i32.const 157092
1837                      i32.load
1838                      i32.eq
1839                      if  ;; label = @10
270 ------------------------------------------------------------
1840                        i32.const 157092
1841                        local.get 7
1842                        i32.store
1843                        i32.const 157080
1844                        i32.const 157080
1845                        i32.load
1846                        local.get 0
1847                        i32.add
1848                        local.tee 0
1849                        i32.store
1850                        local.get 7
1851                        local.get 0
1852                        i32.const 1
1853                        i32.or
1854                        i32.store offset=4
1855                        local.get 0
1856                        local.get 7
1857                        i32.add
1858                        local.get 0
1859                        i32.store
1860                        br 3 (;@7;)
271 ------------------------------------------------------------
1861                      end
272 ------------------------------------------------------------
1862                      local.get 2
1863                      i32.load offset=4
1864                      local.tee 1
1865                      i32.const 3
1866                      i32.and
1867                      i32.const 1
1868                      i32.eq
1869                      if  ;; label = @10
273 ------------------------------------------------------------
1870                        local.get 1
1871                        i32.const -8
1872                        i32.and
1873                        local.set 10
1874                        block  ;; label = @11
274 ------------------------------------------------------------
1875                          local.get 1
1876                          i32.const 255
1877                          i32.le_u
1878                          if  ;; label = @12
275 ------------------------------------------------------------
1879                            local.get 2
1880                            i32.load offset=8
1881                            local.tee 3
1882                            local.get 1
1883                            i32.const 3
1884                            i32.shr_u
1885                            local.tee 4
1886                            i32.const 3
1887                            i32.shl
1888                            i32.const 157112
1889                            i32.add
1890                            i32.ne
1891                            drop
1892                            local.get 3
1893                            local.get 2
1894                            i32.load offset=12
1895                            local.tee 1
1896                            i32.eq
1897                            if  ;; label = @13
276 ------------------------------------------------------------
1898                              i32.const 157072
1899                              i32.const 157072
1900                              i32.load
1901                              i32.const -2
1902                              local.get 4
1903                              i32.rotl
1904                              i32.and
1905                              i32.store
1906                              br 2 (;@11;)
277 ------------------------------------------------------------
1907                            end
278 ------------------------------------------------------------
1908                            local.get 3
1909                            local.get 1
1910                            i32.store offset=12
1911                            local.get 1
1912                            local.get 3
1913                            i32.store offset=8
1914                            br 1 (;@11;)
279 ------------------------------------------------------------
1915                          end
280 ------------------------------------------------------------
1916                          local.get 2
1917                          i32.load offset=24
1918                          local.set 8
1919                          block  ;; label = @12
281 ------------------------------------------------------------
1920                            local.get 2
1921                            local.get 2
1922                            i32.load offset=12
1923                            local.tee 6
1924                            i32.ne
1925                            if  ;; label = @13
282 ------------------------------------------------------------
1926                              local.get 4
1927                              local.get 2
1928                              i32.load offset=8
1929                              local.tee 1
1930                              i32.le_u
1931                              if  ;; label = @14
283 ------------------------------------------------------------
1932                                local.get 1
1933                                i32.load offset=12
1934                                drop
1935                              end
284 ------------------------------------------------------------
1936                              local.get 1
1937                              local.get 6
1938                              i32.store offset=12
1939                              local.get 6
1940                              local.get 1
1941                              i32.store offset=8
1942                              br 1 (;@12;)
285 ------------------------------------------------------------
1943                            end
286 ------------------------------------------------------------
1944                            block  ;; label = @13
287 ------------------------------------------------------------
1945                              local.get 2
1946                              i32.const 20
1947                              i32.add
1948                              local.tee 3
1949                              i32.load
1950                              local.tee 5
1951                              br_if 0 (;@13;)
288 ------------------------------------------------------------
1952                              local.get 2
1953                              i32.const 16
1954                              i32.add
1955                              local.tee 3
1956                              i32.load
1957                              local.tee 5
1958                              br_if 0 (;@13;)
289 ------------------------------------------------------------
1959                              i32.const 0
1960                              local.set 6
1961                              br 1 (;@12;)
290 ------------------------------------------------------------
1962                            end
291 ------------------------------------------------------------
1963                            loop  ;; label = @13
292 ------------------------------------------------------------
1964                              local.get 3
1965                              local.set 1
1966                              local.get 5
1967                              local.tee 6
1968                              i32.const 20
1969                              i32.add
1970                              local.tee 3
1971                              i32.load
1972                              local.tee 5
1973                              br_if 0 (;@13;)
293 ------------------------------------------------------------
1974                              local.get 6
1975                              i32.const 16
1976                              i32.add
1977                              local.set 3
1978                              local.get 6
1979                              i32.load offset=16
1980                              local.tee 5
1981                              br_if 0 (;@13;)
294 ------------------------------------------------------------
1982                            end
295 ------------------------------------------------------------
1983                            local.get 1
1984                            i32.const 0
1985                            i32.store
1986                          end
296 ------------------------------------------------------------
1987                          local.get 8
1988                          i32.eqz
1989                          br_if 0 (;@11;)
297 ------------------------------------------------------------
1990                          block  ;; label = @12
298 ------------------------------------------------------------
1991                            local.get 2
1992                            local.get 2
1993                            i32.load offset=28
1994                            local.tee 1
1995                            i32.const 2
1996                            i32.shl
1997                            i32.const 157376
1998                            i32.add
1999                            local.tee 3
2000                            i32.load
2001                            i32.eq
2002                            if  ;; label = @13
299 ------------------------------------------------------------
2003                              local.get 3
2004                              local.get 6
2005                              i32.store
2006                              local.get 6
2007                              br_if 1 (;@12;)
300 ------------------------------------------------------------
2008                              i32.const 157076
2009                              i32.const 157076
2010                              i32.load
2011                              i32.const -2
2012                              local.get 1
2013                              i32.rotl
2014                              i32.and
2015                              i32.store
2016                              br 2 (;@11;)
301 ------------------------------------------------------------
2017                            end
302 ------------------------------------------------------------
2018                            local.get 8
2019                            i32.const 16
2020                            i32.const 20
2021                            local.get 8
2022                            i32.load offset=16
2023                            local.get 2
2024                            i32.eq
2025                            select
2026                            i32.add
2027                            local.get 6
2028                            i32.store
2029                            local.get 6
2030                            i32.eqz
2031                            br_if 1 (;@11;)
303 ------------------------------------------------------------
2032                          end
304 ------------------------------------------------------------
2033                          local.get 6
2034                          local.get 8
2035                          i32.store offset=24
2036                          local.get 2
2037                          i32.load offset=16
2038                          local.tee 1
2039                          if  ;; label = @12
305 ------------------------------------------------------------
2040                            local.get 6
2041                            local.get 1
2042                            i32.store offset=16
2043                            local.get 1
2044                            local.get 6
2045                            i32.store offset=24
2046                          end
306 ------------------------------------------------------------
2047                          local.get 2
2048                          i32.load offset=20
2049                          local.tee 1
2050                          i32.eqz
2051                          br_if 0 (;@11;)
307 ------------------------------------------------------------
2052                          local.get 6
2053                          local.get 1
2054                          i32.store offset=20
2055                          local.get 1
2056                          local.get 6
2057                          i32.store offset=24
2058                        end
308 ------------------------------------------------------------
2059                        local.get 2
2060                        local.get 10
2061                        i32.add
2062                        local.set 2
2063                        local.get 0
2064                        local.get 10
2065                        i32.add
2066                        local.set 0
2067                      end
309 ------------------------------------------------------------
2068                      local.get 2
2069                      local.get 2
2070                      i32.load offset=4
2071                      i32.const -2
2072                      i32.and
2073                      i32.store offset=4
2074                      local.get 7
2075                      local.get 0
2076                      i32.const 1
2077                      i32.or
2078                      i32.store offset=4
2079                      local.get 0
2080                      local.get 7
2081                      i32.add
2082                      local.get 0
2083                      i32.store
2084                      local.get 0
2085                      i32.const 255
2086                      i32.le_u
2087                      if  ;; label = @10
310 ------------------------------------------------------------
2088                        local.get 0
2089                        i32.const 3
2090                        i32.shr_u
2091                        local.tee 1
2092                        i32.const 3
2093                        i32.shl
2094                        i32.const 157112
2095                        i32.add
2096                        local.set 0
2097                        block (result i32)  ;; label = @11
311 ------------------------------------------------------------
2098                          i32.const 157072
2099                          i32.load
2100                          local.tee 2
2101                          i32.const 1
2102                          local.get 1
2103                          i32.shl
2104                          local.tee 1
2105                          i32.and
2106                          i32.eqz
2107                          if  ;; label = @12
312 ------------------------------------------------------------
2108                            i32.const 157072
2109                            local.get 1
2110                            local.get 2
2111                            i32.or
2112                            i32.store
2113                            local.get 0
2114                            br 1 (;@11;)
313 ------------------------------------------------------------
2115                          end
314 ------------------------------------------------------------
2116                          local.get 0
2117                          i32.load offset=8
2118                        end
315 ------------------------------------------------------------
2119                        local.set 1
2120                        local.get 0
2121                        local.get 7
2122                        i32.store offset=8
2123                        local.get 1
2124                        local.get 7
2125                        i32.store offset=12
2126                        local.get 7
2127                        local.get 0
2128                        i32.store offset=12
2129                        local.get 7
2130                        local.get 1
2131                        i32.store offset=8
2132                        br 3 (;@7;)
316 ------------------------------------------------------------
2133                      end
317 ------------------------------------------------------------
2134                      i32.const 31
2135                      local.set 3
2136                      local.get 0
2137                      i32.const 16777215
2138                      i32.le_u
2139                      if  ;; label = @10
318 ------------------------------------------------------------
2140                        local.get 0
2141                        i32.const 8
2142                        i32.shr_u
2143                        local.tee 1
2144                        local.get 1
2145                        i32.const 1048320
2146                        i32.add
2147                        i32.const 16
2148                        i32.shr_u
2149                        i32.const 8
2150                        i32.and
2151                        local.tee 1
2152                        i32.shl
2153                        local.tee 2
2154                        local.get 2
2155                        i32.const 520192
2156                        i32.add
2157                        i32.const 16
2158                        i32.shr_u
2159                        i32.const 4
2160                        i32.and
2161                        local.tee 2
2162                        i32.shl
2163                        local.tee 3
2164                        local.get 3
2165                        i32.const 245760
2166                        i32.add
2167                        i32.const 16
2168                        i32.shr_u
2169                        i32.const 2
2170                        i32.and
2171                        local.tee 3
2172                        i32.shl
2173                        i32.const 15
2174                        i32.shr_u
2175                        local.get 1
2176                        local.get 2
2177                        i32.or
2178                        local.get 3
2179                        i32.or
2180                        i32.sub
2181                        local.tee 1
2182                        i32.const 1
2183                        i32.shl
2184                        local.get 0
2185                        local.get 1
2186                        i32.const 21
2187                        i32.add
2188                        i32.shr_u
2189                        i32.const 1
2190                        i32.and
2191                        i32.or
2192                        i32.const 28
2193                        i32.add
2194                        local.set 3
2195                      end
319 ------------------------------------------------------------
2196                      local.get 7
2197                      local.get 3
2198                      i32.store offset=28
2199                      local.get 7
2200                      i64.const 0
2201                      i64.store offset=16 align=4
2202                      local.get 3
2203                      i32.const 2
2204                      i32.shl
2205                      i32.const 157376
2206                      i32.add
2207                      local.set 1
2208                      block  ;; label = @10
320 ------------------------------------------------------------
2209                        i32.const 157076
2210                        i32.load
2211                        local.tee 2
2212                        i32.const 1
2213                        local.get 3
2214                        i32.shl
2215                        local.tee 4
2216                        i32.and
2217                        i32.eqz
2218                        if  ;; label = @11
321 ------------------------------------------------------------
2219                          i32.const 157076
2220                          local.get 2
2221                          local.get 4
2222                          i32.or
2223                          i32.store
2224                          local.get 1
2225                          local.get 7
2226                          i32.store
2227                          br 1 (;@10;)
322 ------------------------------------------------------------
2228                        end
323 ------------------------------------------------------------
2229                        local.get 0
2230                        i32.const 0
2231                        i32.const 25
2232                        local.get 3
2233                        i32.const 1
2234                        i32.shr_u
2235                        i32.sub
2236                        local.get 3
2237                        i32.const 31
2238                        i32.eq
2239                        select
2240                        i32.shl
2241                        local.set 3
2242                        local.get 1
2243                        i32.load
2244                        local.set 2
2245                        loop  ;; label = @11
324 ------------------------------------------------------------
2246                          local.get 2
2247                          local.tee 1
2248                          i32.load offset=4
2249                          i32.const -8
2250                          i32.and
2251                          local.get 0
2252                          i32.eq
2253                          br_if 3 (;@8;)
325 ------------------------------------------------------------
2254                          local.get 3
2255                          i32.const 29
2256                          i32.shr_u
2257                          local.set 2
2258                          local.get 3
2259                          i32.const 1
2260                          i32.shl
2261                          local.set 3
2262                          local.get 1
2263                          local.get 2
2264                          i32.const 4
2265                          i32.and
2266                          i32.add
2267                          local.tee 4
2268                          i32.load offset=16
2269                          local.tee 2
2270                          br_if 0 (;@11;)
326 ------------------------------------------------------------
2271                        end
327 ------------------------------------------------------------
2272                        local.get 4
2273                        local.get 7
2274                        i32.store offset=16
2275                      end
328 ------------------------------------------------------------
2276                      local.get 7
2277                      local.get 1
2278                      i32.store offset=24
2279                      local.get 7
2280                      local.get 7
2281                      i32.store offset=12
2282                      local.get 7
2283                      local.get 7
2284                      i32.store offset=8
2285                      br 2 (;@7;)
329 ------------------------------------------------------------
2286                    end
330 ------------------------------------------------------------
2287                    i32.const 157084
2288                    local.get 6
2289                    i32.const -40
2290                    i32.add
2291                    local.tee 0
2292                    i32.const -8
2293                    local.get 1
2294                    i32.sub
2295                    i32.const 7
2296                    i32.and
2297                    i32.const 0
2298                    local.get 1
2299                    i32.const 8
2300                    i32.add
2301                    i32.const 7
2302                    i32.and
2303                    select
2304                    local.tee 2
2305                    i32.sub
2306                    local.tee 7
2307                    i32.store
2308                    i32.const 157096
2309                    local.get 1
2310                    local.get 2
2311                    i32.add
2312                    local.tee 2
2313                    i32.store
2314                    local.get 2
2315                    local.get 7
2316                    i32.const 1
2317                    i32.or
2318                    i32.store offset=4
2319                    local.get 0
2320                    local.get 1
2321                    i32.add
2322                    i32.const 40
2323                    i32.store offset=4
2324                    i32.const 157100
2325                    i32.const 157560
2326                    i32.load
2327                    i32.store
2328                    local.get 3
2329                    local.get 4
2330                    i32.const 39
2331                    local.get 4
2332                    i32.sub
2333                    i32.const 7
2334                    i32.and
2335                    i32.const 0
2336                    local.get 4
2337                    i32.const -39
2338                    i32.add
2339                    i32.const 7
2340                    i32.and
2341                    select
2342                    i32.add
2343                    i32.const -47
2344                    i32.add
2345                    local.tee 0
2346                    local.get 0
2347                    local.get 3
2348                    i32.const 16
2349                    i32.add
2350                    i32.lt_u
2351                    select
2352                    local.tee 2
2353                    i32.const 27
2354                    i32.store offset=4
2355                    local.get 2
2356                    i32.const 157528
2357                    i64.load align=4
2358                    i64.store offset=16 align=4
2359                    local.get 2
2360                    i32.const 157520
2361                    i64.load align=4
2362                    i64.store offset=8 align=4
2363                    i32.const 157528
2364                    local.get 2
2365                    i32.const 8
2366                    i32.add
2367                    i32.store
2368                    i32.const 157524
2369                    local.get 6
2370                    i32.store
2371                    i32.const 157520
2372                    local.get 1
2373                    i32.store
2374                    i32.const 157532
2375                    i32.const 0
2376                    i32.store
2377                    local.get 2
2378                    i32.const 24
2379                    i32.add
2380                    local.set 0
2381                    loop  ;; label = @9
331 ------------------------------------------------------------
2382                      local.get 0
2383                      i32.const 7
2384                      i32.store offset=4
2385                      local.get 0
2386                      i32.const 8
2387                      i32.add
2388                      local.set 1
2389                      local.get 0
2390                      i32.const 4
2391                      i32.add
2392                      local.set 0
2393                      local.get 4
2394                      local.get 1
2395                      i32.gt_u
2396                      br_if 0 (;@9;)
332 ------------------------------------------------------------
2397                    end
333 ------------------------------------------------------------
2398                    local.get 2
2399                    local.get 3
2400                    i32.eq
2401                    br_if 3 (;@5;)
334 ------------------------------------------------------------
2402                    local.get 2
2403                    local.get 2
2404                    i32.load offset=4
2405                    i32.const -2
2406                    i32.and
2407                    i32.store offset=4
2408                    local.get 3
2409                    local.get 2
2410                    local.get 3
2411                    i32.sub
2412                    local.tee 4
2413                    i32.const 1
2414                    i32.or
2415                    i32.store offset=4
2416                    local.get 2
2417                    local.get 4
2418                    i32.store
2419                    local.get 4
2420                    i32.const 255
2421                    i32.le_u
2422                    if  ;; label = @9
335 ------------------------------------------------------------
2423                      local.get 4
2424                      i32.const 3
2425                      i32.shr_u
2426                      local.tee 1
2427                      i32.const 3
2428                      i32.shl
2429                      i32.const 157112
2430                      i32.add
2431                      local.set 0
2432                      block (result i32)  ;; label = @10
336 ------------------------------------------------------------
2433                        i32.const 157072
2434                        i32.load
2435                        local.tee 2
2436                        i32.const 1
2437                        local.get 1
2438                        i32.shl
2439                        local.tee 1
2440                        i32.and
2441                        i32.eqz
2442                        if  ;; label = @11
337 ------------------------------------------------------------
2443                          i32.const 157072
2444                          local.get 1
2445                          local.get 2
2446                          i32.or
2447                          i32.store
2448                          local.get 0
2449                          br 1 (;@10;)
338 ------------------------------------------------------------
2450                        end
339 ------------------------------------------------------------
2451                        local.get 0
2452                        i32.load offset=8
2453                      end
340 ------------------------------------------------------------
2454                      local.set 1
2455                      local.get 0
2456                      local.get 3
2457                      i32.store offset=8
2458                      local.get 1
2459                      local.get 3
2460                      i32.store offset=12
2461                      local.get 3
2462                      local.get 0
2463                      i32.store offset=12
2464                      local.get 3
2465                      local.get 1
2466                      i32.store offset=8
2467                      br 4 (;@5;)
341 ------------------------------------------------------------
2468                    end
342 ------------------------------------------------------------
2469                    i32.const 31
2470                    local.set 0
2471                    local.get 3
2472                    i64.const 0
2473                    i64.store offset=16 align=4
2474                    local.get 4
2475                    i32.const 16777215
2476                    i32.le_u
2477                    if  ;; label = @9
343 ------------------------------------------------------------
2478                      local.get 4
2479                      i32.const 8
2480                      i32.shr_u
2481                      local.tee 0
2482                      local.get 0
2483                      i32.const 1048320
2484                      i32.add
2485                      i32.const 16
2486                      i32.shr_u
2487                      i32.const 8
2488                      i32.and
2489                      local.tee 0
2490                      i32.shl
2491                      local.tee 1
2492                      local.get 1
2493                      i32.const 520192
2494                      i32.add
2495                      i32.const 16
2496                      i32.shr_u
2497                      i32.const 4
2498                      i32.and
2499                      local.tee 1
2500                      i32.shl
2501                      local.tee 2
2502                      local.get 2
2503                      i32.const 245760
2504                      i32.add
2505                      i32.const 16
2506                      i32.shr_u
2507                      i32.const 2
2508                      i32.and
2509                      local.tee 2
2510                      i32.shl
2511                      i32.const 15
2512                      i32.shr_u
2513                      local.get 0
2514                      local.get 1
2515                      i32.or
2516                      local.get 2
2517                      i32.or
2518                      i32.sub
2519                      local.tee 0
2520                      i32.const 1
2521                      i32.shl
2522                      local.get 4
2523                      local.get 0
2524                      i32.const 21
2525                      i32.add
2526                      i32.shr_u
2527                      i32.const 1
2528                      i32.and
2529                      i32.or
2530                      i32.const 28
2531                      i32.add
2532                      local.set 0
2533                    end
344 ------------------------------------------------------------
2534                    local.get 3
2535                    local.get 0
2536                    i32.store offset=28
2537                    local.get 0
2538                    i32.const 2
2539                    i32.shl
2540                    i32.const 157376
2541                    i32.add
2542                    local.set 1
2543                    block  ;; label = @9
345 ------------------------------------------------------------
2544                      i32.const 157076
2545                      i32.load
2546                      local.tee 2
2547                      i32.const 1
2548                      local.get 0
2549                      i32.shl
2550                      local.tee 6
2551                      i32.and
2552                      i32.eqz
2553                      if  ;; label = @10
346 ------------------------------------------------------------
2554                        i32.const 157076
2555                        local.get 2
2556                        local.get 6
2557                        i32.or
2558                        i32.store
2559                        local.get 1
2560                        local.get 3
2561                        i32.store
2562                        br 1 (;@9;)
347 ------------------------------------------------------------
2563                      end
348 ------------------------------------------------------------
2564                      local.get 4
2565                      i32.const 0
2566                      i32.const 25
2567                      local.get 0
2568                      i32.const 1
2569                      i32.shr_u
2570                      i32.sub
2571                      local.get 0
2572                      i32.const 31
2573                      i32.eq
2574                      select
2575                      i32.shl
2576                      local.set 0
2577                      local.get 1
2578                      i32.load
2579                      local.set 2
2580                      loop  ;; label = @10
349 ------------------------------------------------------------
2581                        local.get 2
2582                        local.tee 1
2583                        i32.load offset=4
2584                        i32.const -8
2585                        i32.and
2586                        local.get 4
2587                        i32.eq
2588                        br_if 4 (;@6;)
350 ------------------------------------------------------------
2589                        local.get 0
2590                        i32.const 29
2591                        i32.shr_u
2592                        local.set 2
2593                        local.get 0
2594                        i32.const 1
2595                        i32.shl
2596                        local.set 0
2597                        local.get 1
2598                        local.get 2
2599                        i32.const 4
2600                        i32.and
2601                        i32.add
2602                        local.tee 6
2603                        i32.load offset=16
2604                        local.tee 2
2605                        br_if 0 (;@10;)
351 ------------------------------------------------------------
2606                      end
352 ------------------------------------------------------------
2607                      local.get 6
2608                      local.get 3
2609                      i32.store offset=16
2610                    end
353 ------------------------------------------------------------
2611                    local.get 3
2612                    local.get 1
2613                    i32.store offset=24
2614                    local.get 3
2615                    local.get 3
2616                    i32.store offset=12
2617                    local.get 3
2618                    local.get 3
2619                    i32.store offset=8
2620                    br 3 (;@5;)
354 ------------------------------------------------------------
2621                  end
355 ------------------------------------------------------------
2622                  local.get 1
2623                  i32.load offset=8
2624                  local.tee 0
2625                  local.get 7
2626                  i32.store offset=12
2627                  local.get 1
2628                  local.get 7
2629                  i32.store offset=8
2630                  local.get 7
2631                  i32.const 0
2632                  i32.store offset=24
2633                  local.get 7
2634                  local.get 1
2635                  i32.store offset=12
2636                  local.get 7
2637                  local.get 0
2638                  i32.store offset=8
2639                end
356 ------------------------------------------------------------
2640                local.get 9
2641                i32.const 8
2642                i32.add
2643                local.set 0
2644                br 5 (;@1;)
357 ------------------------------------------------------------
2645              end
358 ------------------------------------------------------------
2646              local.get 1
2647              i32.load offset=8
2648              local.tee 0
2649              local.get 3
2650              i32.store offset=12
2651              local.get 1
2652              local.get 3
2653              i32.store offset=8
2654              local.get 3
2655              i32.const 0
2656              i32.store offset=24
2657              local.get 3
2658              local.get 1
2659              i32.store offset=12
2660              local.get 3
2661              local.get 0
2662              i32.store offset=8
2663            end
359 ------------------------------------------------------------
2664            i32.const 157084
2665            i32.load
2666            local.tee 0
2667            local.get 5
2668            i32.le_u
2669            br_if 0 (;@4;)
360 ------------------------------------------------------------
2670            i32.const 157084
2671            local.get 0
2672            local.get 5
2673            i32.sub
2674            local.tee 1
2675            i32.store
2676            i32.const 157096
2677            i32.const 157096
2678            i32.load
2679            local.tee 0
2680            local.get 5
2681            i32.add
2682            local.tee 2
2683            i32.store
2684            local.get 2
2685            local.get 1
2686            i32.const 1
2687            i32.or
2688            i32.store offset=4
2689            local.get 0
2690            local.get 5
2691            i32.const 3
2692            i32.or
2693            i32.store offset=4
2694            local.get 0
2695            i32.const 8
2696            i32.add
2697            local.set 0
2698            br 3 (;@1;)
361 ------------------------------------------------------------
2699          end
362 ------------------------------------------------------------
2700          i32.const 0
2701          local.set 0
2702          i32.const 156988
2703          i32.const 48
2704          i32.store
2705          br 2 (;@1;)
363 ------------------------------------------------------------
2706        end
364 ------------------------------------------------------------
2707        block  ;; label = @3
365 ------------------------------------------------------------
2708          local.get 8
2709          i32.eqz
2710          br_if 0 (;@3;)
366 ------------------------------------------------------------
2711          block  ;; label = @4
367 ------------------------------------------------------------
2712            local.get 4
2713            i32.load offset=28
2714            local.tee 0
2715            i32.const 2
2716            i32.shl
2717            i32.const 157376
2718            i32.add
2719            local.tee 3
2720            i32.load
2721            local.get 4
2722            i32.eq
2723            if  ;; label = @5
368 ------------------------------------------------------------
2724              local.get 3
2725              local.get 2
2726              i32.store
2727              local.get 2
2728              br_if 1 (;@4;)
369 ------------------------------------------------------------
2729              i32.const 157076
2730              local.get 7
2731              i32.const -2
2732              local.get 0
2733              i32.rotl
2734              i32.and
2735              local.tee 7
2736              i32.store
2737              br 2 (;@3;)
370 ------------------------------------------------------------
2738            end
371 ------------------------------------------------------------
2739            local.get 8
2740            i32.const 16
2741            i32.const 20
2742            local.get 8
2743            i32.load offset=16
2744            local.get 4
2745            i32.eq
2746            select
2747            i32.add
2748            local.get 2
2749            i32.store
2750            local.get 2
2751            i32.eqz
2752            br_if 1 (;@3;)
372 ------------------------------------------------------------
2753          end
373 ------------------------------------------------------------
2754          local.get 2
2755          local.get 8
2756          i32.store offset=24
2757          local.get 4
2758          i32.load offset=16
2759          local.tee 0
2760          if  ;; label = @4
374 ------------------------------------------------------------
2761            local.get 2
2762            local.get 0
2763            i32.store offset=16
2764            local.get 0
2765            local.get 2
2766            i32.store offset=24
2767          end
375 ------------------------------------------------------------
2768          local.get 4
2769          i32.load offset=20
2770          local.tee 0
2771          i32.eqz
2772          br_if 0 (;@3;)
376 ------------------------------------------------------------
2773          local.get 2
2774          local.get 0
2775          i32.store offset=20
2776          local.get 0
2777          local.get 2
2778          i32.store offset=24
2779        end
377 ------------------------------------------------------------
2780        block  ;; label = @3
378 ------------------------------------------------------------
2781          local.get 1
2782          i32.const 15
2783          i32.le_u
2784          if  ;; label = @4
379 ------------------------------------------------------------
2785            local.get 4
2786            local.get 1
2787            local.get 5
2788            i32.add
2789            local.tee 0
2790            i32.const 3
2791            i32.or
2792            i32.store offset=4
2793            local.get 0
2794            local.get 4
2795            i32.add
2796            local.tee 0
2797            local.get 0
2798            i32.load offset=4
2799            i32.const 1
2800            i32.or
2801            i32.store offset=4
2802            br 1 (;@3;)
380 ------------------------------------------------------------
2803          end
381 ------------------------------------------------------------
2804          local.get 4
2805          local.get 5
2806          i32.const 3
2807          i32.or
2808          i32.store offset=4
2809          local.get 4
2810          local.get 5
2811          i32.add
2812          local.tee 3
2813          local.get 1
2814          i32.const 1
2815          i32.or
2816          i32.store offset=4
2817          local.get 1
2818          local.get 3
2819          i32.add
2820          local.get 1
2821          i32.store
2822          local.get 1
2823          i32.const 255
2824          i32.le_u
2825          if  ;; label = @4
382 ------------------------------------------------------------
2826            local.get 1
2827            i32.const 3
2828            i32.shr_u
2829            local.tee 1
2830            i32.const 3
2831            i32.shl
2832            i32.const 157112
2833            i32.add
2834            local.set 0
2835            block (result i32)  ;; label = @5
383 ------------------------------------------------------------
2836              i32.const 157072
2837              i32.load
2838              local.tee 2
2839              i32.const 1
2840              local.get 1
2841              i32.shl
2842              local.tee 1
2843              i32.and
2844              i32.eqz
2845              if  ;; label = @6
384 ------------------------------------------------------------
2846                i32.const 157072
2847                local.get 1
2848                local.get 2
2849                i32.or
2850                i32.store
2851                local.get 0
2852                br 1 (;@5;)
385 ------------------------------------------------------------
2853              end
386 ------------------------------------------------------------
2854              local.get 0
2855              i32.load offset=8
2856            end
387 ------------------------------------------------------------
2857            local.set 1
2858            local.get 0
2859            local.get 3
2860            i32.store offset=8
2861            local.get 1
2862            local.get 3
2863            i32.store offset=12
2864            local.get 3
2865            local.get 0
2866            i32.store offset=12
2867            local.get 3
2868            local.get 1
2869            i32.store offset=8
2870            br 1 (;@3;)
388 ------------------------------------------------------------
2871          end
389 ------------------------------------------------------------
2872          i32.const 31
2873          local.set 0
2874          local.get 1
2875          i32.const 16777215
2876          i32.le_u
2877          if  ;; label = @4
390 ------------------------------------------------------------
2878            local.get 1
2879            i32.const 8
2880            i32.shr_u
2881            local.tee 0
2882            local.get 0
2883            i32.const 1048320
2884            i32.add
2885            i32.const 16
2886            i32.shr_u
2887            i32.const 8
2888            i32.and
2889            local.tee 0
2890            i32.shl
2891            local.tee 2
2892            local.get 2
2893            i32.const 520192
2894            i32.add
2895            i32.const 16
2896            i32.shr_u
2897            i32.const 4
2898            i32.and
2899            local.tee 2
2900            i32.shl
2901            local.tee 5
2902            local.get 5
2903            i32.const 245760
2904            i32.add
2905            i32.const 16
2906            i32.shr_u
2907            i32.const 2
2908            i32.and
2909            local.tee 5
2910            i32.shl
2911            i32.const 15
2912            i32.shr_u
2913            local.get 0
2914            local.get 2
2915            i32.or
2916            local.get 5
2917            i32.or
2918            i32.sub
2919            local.tee 0
2920            i32.const 1
2921            i32.shl
2922            local.get 1
2923            local.get 0
2924            i32.const 21
2925            i32.add
2926            i32.shr_u
2927            i32.const 1
2928            i32.and
2929            i32.or
2930            i32.const 28
2931            i32.add
2932            local.set 0
2933          end
391 ------------------------------------------------------------
2934          local.get 3
2935          local.get 0
2936          i32.store offset=28
2937          local.get 3
2938          i64.const 0
2939          i64.store offset=16 align=4
2940          local.get 0
2941          i32.const 2
2942          i32.shl
2943          i32.const 157376
2944          i32.add
2945          local.set 2
2946          block  ;; label = @4
392 ------------------------------------------------------------
2947            block  ;; label = @5
393 ------------------------------------------------------------
2948              local.get 7
2949              i32.const 1
2950              local.get 0
2951              i32.shl
2952              local.tee 5
2953              i32.and
2954              i32.eqz
2955              if  ;; label = @6
394 ------------------------------------------------------------
2956                i32.const 157076
2957                local.get 5
2958                local.get 7
2959                i32.or
2960                i32.store
2961                local.get 2
2962                local.get 3
2963                i32.store
2964                br 1 (;@5;)
395 ------------------------------------------------------------
2965              end
396 ------------------------------------------------------------
2966              local.get 1
2967              i32.const 0
2968              i32.const 25
2969              local.get 0
2970              i32.const 1
2971              i32.shr_u
2972              i32.sub
2973              local.get 0
2974              i32.const 31
2975              i32.eq
2976              select
2977              i32.shl
2978              local.set 0
2979              local.get 2
2980              i32.load
2981              local.set 5
2982              loop  ;; label = @6
397 ------------------------------------------------------------
2983                local.get 5
2984                local.tee 2
2985                i32.load offset=4
2986                i32.const -8
2987                i32.and
2988                local.get 1
2989                i32.eq
2990                br_if 2 (;@4;)
398 ------------------------------------------------------------
2991                local.get 0
2992                i32.const 29
2993                i32.shr_u
2994                local.set 5
2995                local.get 0
2996                i32.const 1
2997                i32.shl
2998                local.set 0
2999                local.get 2
3000                local.get 5
3001                i32.const 4
3002                i32.and
3003                i32.add
3004                local.tee 6
3005                i32.load offset=16
3006                local.tee 5
3007                br_if 0 (;@6;)
399 ------------------------------------------------------------
3008              end
400 ------------------------------------------------------------
3009              local.get 6
3010              local.get 3
3011              i32.store offset=16
3012            end
401 ------------------------------------------------------------
3013            local.get 3
3014            local.get 2
3015            i32.store offset=24
3016            local.get 3
3017            local.get 3
3018            i32.store offset=12
3019            local.get 3
3020            local.get 3
3021            i32.store offset=8
3022            br 1 (;@3;)
402 ------------------------------------------------------------
3023          end
403 ------------------------------------------------------------
3024          local.get 2
3025          i32.load offset=8
3026          local.tee 0
3027          local.get 3
3028          i32.store offset=12
3029          local.get 2
3030          local.get 3
3031          i32.store offset=8
3032          local.get 3
3033          i32.const 0
3034          i32.store offset=24
3035          local.get 3
3036          local.get 2
3037          i32.store offset=12
3038          local.get 3
3039          local.get 0
3040          i32.store offset=8
3041        end
404 ------------------------------------------------------------
3042        local.get 4
3043        i32.const 8
3044        i32.add
3045        local.set 0
3046        br 1 (;@1;)
405 ------------------------------------------------------------
3047      end
406 ------------------------------------------------------------
3048      block  ;; label = @2
407 ------------------------------------------------------------
3049        local.get 9
3050        i32.eqz
3051        br_if 0 (;@2;)
408 ------------------------------------------------------------
3052        block  ;; label = @3
409 ------------------------------------------------------------
3053          local.get 2
3054          i32.load offset=28
3055          local.tee 0
3056          i32.const 2
3057          i32.shl
3058          i32.const 157376
3059          i32.add
3060          local.tee 1
3061          i32.load
3062          local.get 2
3063          i32.eq
3064          if  ;; label = @4
410 ------------------------------------------------------------
3065            local.get 1
3066            local.get 4
3067            i32.store
3068            local.get 4
3069            br_if 1 (;@3;)
411 ------------------------------------------------------------
3070            i32.const 157076
3071            local.get 10
3072            i32.const -2
3073            local.get 0
3074            i32.rotl
3075            i32.and
3076            i32.store
3077            br 2 (;@2;)
412 ------------------------------------------------------------
3078          end
413 ------------------------------------------------------------
3079          local.get 9
3080          i32.const 16
3081          i32.const 20
3082          local.get 9
3083          i32.load offset=16
3084          local.get 2
3085          i32.eq
3086          select
3087          i32.add
3088          local.get 4
3089          i32.store
3090          local.get 4
3091          i32.eqz
3092          br_if 1 (;@2;)
414 ------------------------------------------------------------
3093        end
415 ------------------------------------------------------------
3094        local.get 4
3095        local.get 9
3096        i32.store offset=24
3097        local.get 2
3098        i32.load offset=16
3099        local.tee 0
3100        if  ;; label = @3
416 ------------------------------------------------------------
3101          local.get 4
3102          local.get 0
3103          i32.store offset=16
3104          local.get 0
3105          local.get 4
3106          i32.store offset=24
3107        end
417 ------------------------------------------------------------
3108        local.get 2
3109        i32.load offset=20
3110        local.tee 0
3111        i32.eqz
3112        br_if 0 (;@2;)
418 ------------------------------------------------------------
3113        local.get 4
3114        local.get 0
3115        i32.store offset=20
3116        local.get 0
3117        local.get 4
3118        i32.store offset=24
3119      end
419 ------------------------------------------------------------
3120      block  ;; label = @2
420 ------------------------------------------------------------
3121        local.get 3
3122        i32.const 15
3123        i32.le_u
3124        if  ;; label = @3
421 ------------------------------------------------------------
3125          local.get 2
3126          local.get 3
3127          local.get 5
3128          i32.add
3129          local.tee 0
3130          i32.const 3
3131          i32.or
3132          i32.store offset=4
3133          local.get 0
3134          local.get 2
3135          i32.add
3136          local.tee 0
3137          local.get 0
3138          i32.load offset=4
3139          i32.const 1
3140          i32.or
3141          i32.store offset=4
3142          br 1 (;@2;)
422 ------------------------------------------------------------
3143        end
423 ------------------------------------------------------------
3144        local.get 2
3145        local.get 5
3146        i32.const 3
3147        i32.or
3148        i32.store offset=4
3149        local.get 2
3150        local.get 5
3151        i32.add
3152        local.tee 4
3153        local.get 3
3154        i32.const 1
3155        i32.or
3156        i32.store offset=4
3157        local.get 3
3158        local.get 4
3159        i32.add
3160        local.get 3
3161        i32.store
3162        local.get 8
3163        if  ;; label = @3
424 ------------------------------------------------------------
3164          local.get 8
3165          i32.const 3
3166          i32.shr_u
3167          local.tee 5
3168          i32.const 3
3169          i32.shl
3170          i32.const 157112
3171          i32.add
3172          local.set 0
3173          i32.const 157092
3174          i32.load
3175          local.set 1
3176          block (result i32)  ;; label = @4
425 ------------------------------------------------------------
3177            i32.const 1
3178            local.get 5
3179            i32.shl
3180            local.tee 5
3181            local.get 6
3182            i32.and
3183            i32.eqz
3184            if  ;; label = @5
426 ------------------------------------------------------------
3185              i32.const 157072
3186              local.get 5
3187              local.get 6
3188              i32.or
3189              i32.store
3190              local.get 0
3191              br 1 (;@4;)
427 ------------------------------------------------------------
3192            end
428 ------------------------------------------------------------
3193            local.get 0
3194            i32.load offset=8
3195          end
429 ------------------------------------------------------------
3196          local.set 5
3197          local.get 0
3198          local.get 1
3199          i32.store offset=8
3200          local.get 5
3201          local.get 1
3202          i32.store offset=12
3203          local.get 1
3204          local.get 0
3205          i32.store offset=12
3206          local.get 1
3207          local.get 5
3208          i32.store offset=8
3209        end
430 ------------------------------------------------------------
3210        i32.const 157092
3211        local.get 4
3212        i32.store
3213        i32.const 157080
3214        local.get 3
3215        i32.store
3216      end
431 ------------------------------------------------------------
3217      local.get 2
3218      i32.const 8
3219      i32.add
3220      local.set 0
3221    end
432 ------------------------------------------------------------
3222    local.get 11
3223    i32.const 16
3224    i32.add
3225    global.set 0
3226    local.get 0)
