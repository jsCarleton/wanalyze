  (func (;16;) (type 1) (param i32) (result i32)
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
0016                          local.get 0
0017                          i32.const 244
0018                          i32.le_u
0019                          if  ;; label = @12
12 ------------------------------------------------------------
0020                            i32.const 15192
0021                            i32.load
0022                            local.tee 6
0023                            i32.const 16
0024                            local.get 0
0025                            i32.const 11
0026                            i32.add
0027                            i32.const -8
0028                            i32.and
0029                            local.get 0
0030                            i32.const 11
0031                            i32.lt_u
0032                            select
0033                            local.tee 7
0034                            i32.const 3
0035                            i32.shr_u
0036                            local.tee 2
0037                            i32.shr_u
0038                            local.tee 1
0039                            i32.const 3
0040                            i32.and
0041                            if  ;; label = @13
13 ------------------------------------------------------------
0042                              block  ;; label = @14
14 ------------------------------------------------------------
0043                                local.get 1
0044                                i32.const -1
0045                                i32.xor
0046                                i32.const 1
0047                                i32.and
0048                                local.get 2
0049                                i32.add
0050                                local.tee 2
0051                                i32.const 3
0052                                i32.shl
0053                                local.tee 0
0054                                i32.const 15232
0055                                i32.add
0056                                local.tee 1
0057                                local.get 0
0058                                i32.const 15240
0059                                i32.add
0060                                i32.load
0061                                local.tee 3
0062                                i32.load offset=8
0063                                local.tee 0
0064                                i32.eq
0065                                if  ;; label = @15
15 ------------------------------------------------------------
0066                                  i32.const 15192
0067                                  local.get 6
0068                                  i32.const -2
0069                                  local.get 2
0070                                  i32.rotl
0071                                  i32.and
0072                                  i32.store
0073                                  br 1 (;@14;)
16 ------------------------------------------------------------
0074                                end
17 ------------------------------------------------------------
0075                                local.get 0
0076                                local.get 1
0077                                i32.store offset=12
0078                                local.get 1
0079                                local.get 0
0080                                i32.store offset=8
0081                              end
18 ------------------------------------------------------------
0082                              local.get 3
0083                              i32.const 8
0084                              i32.add
0085                              local.set 0
0086                              local.get 3
0087                              local.get 2
0088                              i32.const 3
0089                              i32.shl
0090                              local.tee 1
0091                              i32.const 3
0092                              i32.or
0093                              i32.store offset=4
0094                              local.get 1
0095                              local.get 3
0096                              i32.add
0097                              local.tee 1
0098                              local.get 1
0099                              i32.load offset=4
0100                              i32.const 1
0101                              i32.or
0102                              i32.store offset=4
0103                              br 12 (;@1;)
19 ------------------------------------------------------------
0104                            end
20 ------------------------------------------------------------
0105                            local.get 7
0106                            i32.const 15200
0107                            i32.load
0108                            local.tee 10
0109                            i32.le_u
0110                            br_if 1 (;@11;)
21 ------------------------------------------------------------
0111                            local.get 1
0112                            if  ;; label = @13
22 ------------------------------------------------------------
0113                              block  ;; label = @14
23 ------------------------------------------------------------
0114                                i32.const 2
0115                                local.get 2
0116                                i32.shl
0117                                local.tee 0
0118                                i32.const 0
0119                                local.get 0
0120                                i32.sub
0121                                i32.or
0122                                local.get 1
0123                                local.get 2
0124                                i32.shl
0125                                i32.and
0126                                local.tee 0
0127                                i32.const 0
0128                                local.get 0
0129                                i32.sub
0130                                i32.and
0131                                i32.const 1
0132                                i32.sub
0133                                local.tee 0
0134                                local.get 0
0135                                i32.const 12
0136                                i32.shr_u
0137                                i32.const 16
0138                                i32.and
0139                                local.tee 2
0140                                i32.shr_u
0141                                local.tee 1
0142                                i32.const 5
0143                                i32.shr_u
0144                                i32.const 8
0145                                i32.and
0146                                local.tee 0
0147                                local.get 2
0148                                i32.or
0149                                local.get 1
0150                                local.get 0
0151                                i32.shr_u
0152                                local.tee 1
0153                                i32.const 2
0154                                i32.shr_u
0155                                i32.const 4
0156                                i32.and
0157                                local.tee 0
0158                                i32.or
0159                                local.get 1
0160                                local.get 0
0161                                i32.shr_u
0162                                local.tee 1
0163                                i32.const 1
0164                                i32.shr_u
0165                                i32.const 2
0166                                i32.and
0167                                local.tee 0
0168                                i32.or
0169                                local.get 1
0170                                local.get 0
0171                                i32.shr_u
0172                                local.tee 1
0173                                i32.const 1
0174                                i32.shr_u
0175                                i32.const 1
0176                                i32.and
0177                                local.tee 0
0178                                i32.or
0179                                local.get 1
0180                                local.get 0
0181                                i32.shr_u
0182                                i32.add
0183                                local.tee 2
0184                                i32.const 3
0185                                i32.shl
0186                                local.tee 0
0187                                i32.const 15232
0188                                i32.add
0189                                local.tee 1
0190                                local.get 0
0191                                i32.const 15240
0192                                i32.add
0193                                i32.load
0194                                local.tee 4
0195                                i32.load offset=8
0196                                local.tee 0
0197                                i32.eq
0198                                if  ;; label = @15
24 ------------------------------------------------------------
0199                                  i32.const 15192
0200                                  local.get 6
0201                                  i32.const -2
0202                                  local.get 2
0203                                  i32.rotl
0204                                  i32.and
0205                                  local.tee 6
0206                                  i32.store
0207                                  br 1 (;@14;)
25 ------------------------------------------------------------
0208                                end
26 ------------------------------------------------------------
0209                                local.get 0
0210                                local.get 1
0211                                i32.store offset=12
0212                                local.get 1
0213                                local.get 0
0214                                i32.store offset=8
0215                              end
27 ------------------------------------------------------------
0216                              local.get 4
0217                              local.get 7
0218                              i32.const 3
0219                              i32.or
0220                              i32.store offset=4
0221                              local.get 4
0222                              local.get 7
0223                              i32.add
0224                              local.tee 1
0225                              local.get 2
0226                              i32.const 3
0227                              i32.shl
0228                              local.tee 0
0229                              local.get 7
0230                              i32.sub
0231                              local.tee 2
0232                              i32.const 1
0233                              i32.or
0234                              i32.store offset=4
0235                              local.get 0
0236                              local.get 4
0237                              i32.add
0238                              local.get 2
0239                              i32.store
0240                              local.get 10
0241                              if  ;; label = @14
28 ------------------------------------------------------------
0242                                local.get 10
0243                                i32.const 3
0244                                i32.shr_u
0245                                local.tee 0
0246                                i32.const 3
0247                                i32.shl
0248                                i32.const 15232
0249                                i32.add
0250                                local.set 5
0251                                i32.const 15212
0252                                i32.load
0253                                local.set 3
0254                                block (result i32)  ;; label = @15
29 ------------------------------------------------------------
0255                                  local.get 6
0256                                  i32.const 1
0257                                  local.get 0
0258                                  i32.shl
0259                                  local.tee 0
0260                                  i32.and
0261                                  i32.eqz
0262                                  if  ;; label = @16
30 ------------------------------------------------------------
0263                                    i32.const 15192
0264                                    local.get 0
0265                                    local.get 6
0266                                    i32.or
0267                                    i32.store
0268                                    local.get 5
0269                                    br 1 (;@15;)
31 ------------------------------------------------------------
0270                                  end
32 ------------------------------------------------------------
0271                                  local.get 5
0272                                  i32.load offset=8
0273                                end
33 ------------------------------------------------------------
0274                                local.set 0
0275                                local.get 5
0276                                local.get 3
0277                                i32.store offset=8
0278                                local.get 0
0279                                local.get 3
0280                                i32.store offset=12
0281                                local.get 3
0282                                local.get 5
0283                                i32.store offset=12
0284                                local.get 3
0285                                local.get 0
0286                                i32.store offset=8
0287                              end
34 ------------------------------------------------------------
0288                              local.get 4
0289                              i32.const 8
0290                              i32.add
0291                              local.set 0
0292                              i32.const 15212
0293                              local.get 1
0294                              i32.store
0295                              i32.const 15200
0296                              local.get 2
0297                              i32.store
0298                              br 12 (;@1;)
35 ------------------------------------------------------------
0299                            end
36 ------------------------------------------------------------
0300                            i32.const 15196
0301                            i32.load
0302                            local.tee 9
0303                            i32.eqz
0304                            br_if 1 (;@11;)
37 ------------------------------------------------------------
0305                            local.get 9
0306                            i32.const 0
0307                            local.get 9
0308                            i32.sub
0309                            i32.and
0310                            i32.const 1
0311                            i32.sub
0312                            local.tee 0
0313                            local.get 0
0314                            i32.const 12
0315                            i32.shr_u
0316                            i32.const 16
0317                            i32.and
0318                            local.tee 2
0319                            i32.shr_u
0320                            local.tee 1
0321                            i32.const 5
0322                            i32.shr_u
0323                            i32.const 8
0324                            i32.and
0325                            local.tee 0
0326                            local.get 2
0327                            i32.or
0328                            local.get 1
0329                            local.get 0
0330                            i32.shr_u
0331                            local.tee 1
0332                            i32.const 2
0333                            i32.shr_u
0334                            i32.const 4
0335                            i32.and
0336                            local.tee 0
0337                            i32.or
0338                            local.get 1
0339                            local.get 0
0340                            i32.shr_u
0341                            local.tee 1
0342                            i32.const 1
0343                            i32.shr_u
0344                            i32.const 2
0345                            i32.and
0346                            local.tee 0
0347                            i32.or
0348                            local.get 1
0349                            local.get 0
0350                            i32.shr_u
0351                            local.tee 1
0352                            i32.const 1
0353                            i32.shr_u
0354                            i32.const 1
0355                            i32.and
0356                            local.tee 0
0357                            i32.or
0358                            local.get 1
0359                            local.get 0
0360                            i32.shr_u
0361                            i32.add
0362                            i32.const 2
0363                            i32.shl
0364                            i32.const 15496
0365                            i32.add
0366                            i32.load
0367                            local.tee 1
0368                            i32.load offset=4
0369                            i32.const -8
0370                            i32.and
0371                            local.get 7
0372                            i32.sub
0373                            local.set 3
0374                            local.get 1
0375                            local.set 2
0376                            loop  ;; label = @13
38 ------------------------------------------------------------
0377                              block  ;; label = @14
39 ------------------------------------------------------------
0378                                local.get 2
0379                                i32.load offset=16
0380                                local.tee 0
0381                                i32.eqz
0382                                if  ;; label = @15
40 ------------------------------------------------------------
0383                                  local.get 2
0384                                  i32.load offset=20
0385                                  local.tee 0
0386                                  i32.eqz
0387                                  br_if 1 (;@14;)
41 ------------------------------------------------------------
0388                                end
42 ------------------------------------------------------------
0389                                local.get 0
0390                                i32.load offset=4
0391                                i32.const -8
0392                                i32.and
0393                                local.get 7
0394                                i32.sub
0395                                local.tee 2
0396                                local.get 3
0397                                local.get 2
0398                                local.get 3
0399                                i32.lt_u
0400                                local.tee 2
0401                                select
0402                                local.set 3
0403                                local.get 0
0404                                local.get 1
0405                                local.get 2
0406                                select
0407                                local.set 1
0408                                local.get 0
0409                                local.set 2
0410                                br 1 (;@13;)
43 ------------------------------------------------------------
0411                              end
44 ------------------------------------------------------------
0412                            end
45 ------------------------------------------------------------
0413                            local.get 1
0414                            i32.load offset=24
0415                            local.set 8
0416                            local.get 1
0417                            local.get 1
0418                            i32.load offset=12
0419                            local.tee 5
0420                            i32.ne
0421                            if  ;; label = @13
46 ------------------------------------------------------------
0422                              local.get 1
0423                              i32.load offset=8
0424                              local.tee 0
0425                              i32.const 15208
0426                              i32.load
0427                              i32.lt_u
0428                              drop
0429                              local.get 0
0430                              local.get 5
0431                              i32.store offset=12
0432                              local.get 5
0433                              local.get 0
0434                              i32.store offset=8
0435                              br 11 (;@2;)
47 ------------------------------------------------------------
0436                            end
48 ------------------------------------------------------------
0437                            local.get 1
0438                            i32.const 20
0439                            i32.add
0440                            local.tee 2
0441                            i32.load
0442                            local.tee 0
0443                            i32.eqz
0444                            if  ;; label = @13
49 ------------------------------------------------------------
0445                              local.get 1
0446                              i32.load offset=16
0447                              local.tee 0
0448                              i32.eqz
0449                              br_if 3 (;@10;)
50 ------------------------------------------------------------
0450                              local.get 1
0451                              i32.const 16
0452                              i32.add
0453                              local.set 2
0454                            end
51 ------------------------------------------------------------
0455                            loop  ;; label = @13
52 ------------------------------------------------------------
0456                              local.get 2
0457                              local.set 4
0458                              local.get 0
0459                              local.tee 5
0460                              i32.const 20
0461                              i32.add
0462                              local.tee 2
0463                              i32.load
0464                              local.tee 0
0465                              br_if 0 (;@13;)
53 ------------------------------------------------------------
0466                              local.get 5
0467                              i32.const 16
0468                              i32.add
0469                              local.set 2
0470                              local.get 5
0471                              i32.load offset=16
0472                              local.tee 0
0473                              br_if 0 (;@13;)
54 ------------------------------------------------------------
0474                            end
55 ------------------------------------------------------------
0475                            local.get 4
0476                            i32.const 0
0477                            i32.store
0478                            br 10 (;@2;)
56 ------------------------------------------------------------
0479                          end
57 ------------------------------------------------------------
0480                          i32.const -1
0481                          local.set 7
0482                          local.get 0
0483                          i32.const -65
0484                          i32.gt_u
0485                          br_if 0 (;@11;)
58 ------------------------------------------------------------
0486                          local.get 0
0487                          i32.const 11
0488                          i32.add
0489                          local.tee 0
0490                          i32.const -8
0491                          i32.and
0492                          local.set 7
0493                          i32.const 15196
0494                          i32.load
0495                          local.tee 9
0496                          i32.eqz
0497                          br_if 0 (;@11;)
59 ------------------------------------------------------------
0498                          i32.const 0
0499                          local.get 7
0500                          i32.sub
0501                          local.set 3
0502                          block  ;; label = @12
60 ------------------------------------------------------------
0503                            block  ;; label = @13
61 ------------------------------------------------------------
0504                              block  ;; label = @14
62 ------------------------------------------------------------
0505                                block (result i32)  ;; label = @15
63 ------------------------------------------------------------
0506                                  i32.const 0
0507                                  local.get 7
0508                                  i32.const 256
0509                                  i32.lt_u
0510                                  br_if 0 (;@15;)
64 ------------------------------------------------------------
0511                                  drop
0512                                  i32.const 31
0513                                  local.get 7
0514                                  i32.const 16777215
0515                                  i32.gt_u
0516                                  br_if 0 (;@15;)
65 ------------------------------------------------------------
0517                                  drop
0518                                  local.get 0
0519                                  i32.const 8
0520                                  i32.shr_u
0521                                  local.tee 0
0522                                  local.get 0
0523                                  i32.const 1048320
0524                                  i32.add
0525                                  i32.const 16
0526                                  i32.shr_u
0527                                  i32.const 8
0528                                  i32.and
0529                                  local.tee 2
0530                                  i32.shl
0531                                  local.tee 0
0532                                  local.get 0
0533                                  i32.const 520192
0534                                  i32.add
0535                                  i32.const 16
0536                                  i32.shr_u
0537                                  i32.const 4
0538                                  i32.and
0539                                  local.tee 1
0540                                  i32.shl
0541                                  local.tee 0
0542                                  local.get 0
0543                                  i32.const 245760
0544                                  i32.add
0545                                  i32.const 16
0546                                  i32.shr_u
0547                                  i32.const 2
0548                                  i32.and
0549                                  local.tee 0
0550                                  i32.shl
0551                                  i32.const 15
0552                                  i32.shr_u
0553                                  local.get 1
0554                                  local.get 2
0555                                  i32.or
0556                                  local.get 0
0557                                  i32.or
0558                                  i32.sub
0559                                  local.tee 0
0560                                  i32.const 1
0561                                  i32.shl
0562                                  local.get 7
0563                                  local.get 0
0564                                  i32.const 21
0565                                  i32.add
0566                                  i32.shr_u
0567                                  i32.const 1
0568                                  i32.and
0569                                  i32.or
0570                                  i32.const 28
0571                                  i32.add
0572                                end
66 ------------------------------------------------------------
0573                                local.tee 6
0574                                i32.const 2
0575                                i32.shl
0576                                i32.const 15496
0577                                i32.add
0578                                i32.load
0579                                local.tee 2
0580                                i32.eqz
0581                                if  ;; label = @15
67 ------------------------------------------------------------
0582                                  i32.const 0
0583                                  local.set 0
0584                                  br 1 (;@14;)
68 ------------------------------------------------------------
0585                                end
69 ------------------------------------------------------------
0586                                i32.const 0
0587                                local.set 0
0588                                local.get 7
0589                                i32.const 0
0590                                i32.const 25
0591                                local.get 6
0592                                i32.const 1
0593                                i32.shr_u
0594                                i32.sub
0595                                local.get 6
0596                                i32.const 31
0597                                i32.eq
0598                                select
0599                                i32.shl
0600                                local.set 1
0601                                loop  ;; label = @15
70 ------------------------------------------------------------
0602                                  block  ;; label = @16
71 ------------------------------------------------------------
0603                                    local.get 2
0604                                    i32.load offset=4
0605                                    i32.const -8
0606                                    i32.and
0607                                    local.get 7
0608                                    i32.sub
0609                                    local.tee 4
0610                                    local.get 3
0611                                    i32.ge_u
0612                                    br_if 0 (;@16;)
72 ------------------------------------------------------------
0613                                    local.get 2
0614                                    local.set 5
0615                                    local.get 4
0616                                    local.tee 3
0617                                    br_if 0 (;@16;)
73 ------------------------------------------------------------
0618                                    i32.const 0
0619                                    local.set 3
0620                                    local.get 2
0621                                    local.set 0
0622                                    br 3 (;@13;)
74 ------------------------------------------------------------
0623                                  end
75 ------------------------------------------------------------
0624                                  local.get 0
0625                                  local.get 2
0626                                  i32.load offset=20
0627                                  local.tee 4
0628                                  local.get 4
0629                                  local.get 2
0630                                  local.get 1
0631                                  i32.const 29
0632                                  i32.shr_u
0633                                  i32.const 4
0634                                  i32.and
0635                                  i32.add
0636                                  i32.load offset=16
0637                                  local.tee 2
0638                                  i32.eq
0639                                  select
0640                                  local.get 0
0641                                  local.get 4
0642                                  select
0643                                  local.set 0
0644                                  local.get 1
0645                                  i32.const 1
0646                                  i32.shl
0647                                  local.set 1
0648                                  local.get 2
0649                                  br_if 0 (;@15;)
76 ------------------------------------------------------------
0650                                end
77 ------------------------------------------------------------
0651                              end
78 ------------------------------------------------------------
0652                              local.get 0
0653                              local.get 5
0654                              i32.or
0655                              i32.eqz
0656                              if  ;; label = @14
79 ------------------------------------------------------------
0657                                i32.const 0
0658                                local.set 5
0659                                i32.const 2
0660                                local.get 6
0661                                i32.shl
0662                                local.tee 0
0663                                i32.const 0
0664                                local.get 0
0665                                i32.sub
0666                                i32.or
0667                                local.get 9
0668                                i32.and
0669                                local.tee 0
0670                                i32.eqz
0671                                br_if 3 (;@11;)
80 ------------------------------------------------------------
0672                                local.get 0
0673                                i32.const 0
0674                                local.get 0
0675                                i32.sub
0676                                i32.and
0677                                i32.const 1
0678                                i32.sub
0679                                local.tee 0
0680                                local.get 0
0681                                i32.const 12
0682                                i32.shr_u
0683                                i32.const 16
0684                                i32.and
0685                                local.tee 2
0686                                i32.shr_u
0687                                local.tee 1
0688                                i32.const 5
0689                                i32.shr_u
0690                                i32.const 8
0691                                i32.and
0692                                local.tee 0
0693                                local.get 2
0694                                i32.or
0695                                local.get 1
0696                                local.get 0
0697                                i32.shr_u
0698                                local.tee 1
0699                                i32.const 2
0700                                i32.shr_u
0701                                i32.const 4
0702                                i32.and
0703                                local.tee 0
0704                                i32.or
0705                                local.get 1
0706                                local.get 0
0707                                i32.shr_u
0708                                local.tee 1
0709                                i32.const 1
0710                                i32.shr_u
0711                                i32.const 2
0712                                i32.and
0713                                local.tee 0
0714                                i32.or
0715                                local.get 1
0716                                local.get 0
0717                                i32.shr_u
0718                                local.tee 1
0719                                i32.const 1
0720                                i32.shr_u
0721                                i32.const 1
0722                                i32.and
0723                                local.tee 0
0724                                i32.or
0725                                local.get 1
0726                                local.get 0
0727                                i32.shr_u
0728                                i32.add
0729                                i32.const 2
0730                                i32.shl
0731                                i32.const 15496
0732                                i32.add
0733                                i32.load
0734                                local.set 0
0735                              end
81 ------------------------------------------------------------
0736                              local.get 0
0737                              i32.eqz
0738                              br_if 1 (;@12;)
82 ------------------------------------------------------------
0739                            end
83 ------------------------------------------------------------
0740                            loop  ;; label = @13
84 ------------------------------------------------------------
0741                              local.get 0
0742                              i32.load offset=4
0743                              i32.const -8
0744                              i32.and
0745                              local.get 7
0746                              i32.sub
0747                              local.tee 1
0748                              local.get 3
0749                              i32.lt_u
0750                              local.set 2
0751                              local.get 1
0752                              local.get 3
0753                              local.get 2
0754                              select
0755                              local.set 3
0756                              local.get 0
0757                              local.get 5
0758                              local.get 2
0759                              select
0760                              local.set 5
0761                              local.get 0
0762                              i32.load offset=16
0763                              local.tee 1
0764                              if (result i32)  ;; label = @14
85 ------------------------------------------------------------
0765                                local.get 1
0766                              else
86 ------------------------------------------------------------
0767                                local.get 0
0768                                i32.load offset=20
0769                              end
87 ------------------------------------------------------------
0770                              local.tee 0
0771                              br_if 0 (;@13;)
88 ------------------------------------------------------------
0772                            end
89 ------------------------------------------------------------
0773                          end
90 ------------------------------------------------------------
0774                          local.get 5
0775                          i32.eqz
0776                          br_if 0 (;@11;)
91 ------------------------------------------------------------
0777                          local.get 3
0778                          i32.const 15200
0779                          i32.load
0780                          local.get 7
0781                          i32.sub
0782                          i32.ge_u
0783                          br_if 0 (;@11;)
92 ------------------------------------------------------------
0784                          local.get 5
0785                          i32.load offset=24
0786                          local.set 6
0787                          local.get 5
0788                          local.get 5
0789                          i32.load offset=12
0790                          local.tee 1
0791                          i32.ne
0792                          if  ;; label = @12
93 ------------------------------------------------------------
0793                            local.get 5
0794                            i32.load offset=8
0795                            local.tee 0
0796                            i32.const 15208
0797                            i32.load
0798                            i32.lt_u
0799                            drop
0800                            local.get 0
0801                            local.get 1
0802                            i32.store offset=12
0803                            local.get 1
0804                            local.get 0
0805                            i32.store offset=8
0806                            br 9 (;@3;)
94 ------------------------------------------------------------
0807                          end
95 ------------------------------------------------------------
0808                          local.get 5
0809                          i32.const 20
0810                          i32.add
0811                          local.tee 2
0812                          i32.load
0813                          local.tee 0
0814                          i32.eqz
0815                          if  ;; label = @12
96 ------------------------------------------------------------
0816                            local.get 5
0817                            i32.load offset=16
0818                            local.tee 0
0819                            i32.eqz
0820                            br_if 3 (;@9;)
97 ------------------------------------------------------------
0821                            local.get 5
0822                            i32.const 16
0823                            i32.add
0824                            local.set 2
0825                          end
98 ------------------------------------------------------------
0826                          loop  ;; label = @12
99 ------------------------------------------------------------
0827                            local.get 2
0828                            local.set 4
0829                            local.get 0
0830                            local.tee 1
0831                            i32.const 20
0832                            i32.add
0833                            local.tee 2
0834                            i32.load
0835                            local.tee 0
0836                            br_if 0 (;@12;)
100 ------------------------------------------------------------
0837                            local.get 1
0838                            i32.const 16
0839                            i32.add
0840                            local.set 2
0841                            local.get 1
0842                            i32.load offset=16
0843                            local.tee 0
0844                            br_if 0 (;@12;)
101 ------------------------------------------------------------
0845                          end
102 ------------------------------------------------------------
0846                          local.get 4
0847                          i32.const 0
0848                          i32.store
0849                          br 8 (;@3;)
103 ------------------------------------------------------------
0850                        end
104 ------------------------------------------------------------
0851                        local.get 7
0852                        i32.const 15200
0853                        i32.load
0854                        local.tee 2
0855                        i32.le_u
0856                        if  ;; label = @11
105 ------------------------------------------------------------
0857                          i32.const 15212
0858                          i32.load
0859                          local.set 3
0860                          block  ;; label = @12
106 ------------------------------------------------------------
0861                            local.get 2
0862                            local.get 7
0863                            i32.sub
0864                            local.tee 1
0865                            i32.const 16
0866                            i32.ge_u
0867                            if  ;; label = @13
107 ------------------------------------------------------------
0868                              i32.const 15200
0869                              local.get 1
0870                              i32.store
0871                              i32.const 15212
0872                              local.get 3
0873                              local.get 7
0874                              i32.add
0875                              local.tee 0
0876                              i32.store
0877                              local.get 0
0878                              local.get 1
0879                              i32.const 1
0880                              i32.or
0881                              i32.store offset=4
0882                              local.get 2
0883                              local.get 3
0884                              i32.add
0885                              local.get 1
0886                              i32.store
0887                              local.get 3
0888                              local.get 7
0889                              i32.const 3
0890                              i32.or
0891                              i32.store offset=4
0892                              br 1 (;@12;)
108 ------------------------------------------------------------
0893                            end
109 ------------------------------------------------------------
0894                            i32.const 15212
0895                            i32.const 0
0896                            i32.store
0897                            i32.const 15200
0898                            i32.const 0
0899                            i32.store
0900                            local.get 3
0901                            local.get 2
0902                            i32.const 3
0903                            i32.or
0904                            i32.store offset=4
0905                            local.get 2
0906                            local.get 3
0907                            i32.add
0908                            local.tee 0
0909                            local.get 0
0910                            i32.load offset=4
0911                            i32.const 1
0912                            i32.or
0913                            i32.store offset=4
0914                          end
110 ------------------------------------------------------------
0915                          local.get 3
0916                          i32.const 8
0917                          i32.add
0918                          local.set 0
0919                          br 10 (;@1;)
111 ------------------------------------------------------------
0920                        end
112 ------------------------------------------------------------
0921                        local.get 7
0922                        i32.const 15204
0923                        i32.load
0924                        local.tee 8
0925                        i32.lt_u
0926                        if  ;; label = @11
113 ------------------------------------------------------------
0927                          i32.const 15204
0928                          local.get 8
0929                          local.get 7
0930                          i32.sub
0931                          local.tee 1
0932                          i32.store
0933                          i32.const 15216
0934                          i32.const 15216
0935                          i32.load
0936                          local.tee 2
0937                          local.get 7
0938                          i32.add
0939                          local.tee 0
0940                          i32.store
0941                          local.get 0
0942                          local.get 1
0943                          i32.const 1
0944                          i32.or
0945                          i32.store offset=4
0946                          local.get 2
0947                          local.get 7
0948                          i32.const 3
0949                          i32.or
0950                          i32.store offset=4
0951                          local.get 2
0952                          i32.const 8
0953                          i32.add
0954                          local.set 0
0955                          br 10 (;@1;)
114 ------------------------------------------------------------
0956                        end
115 ------------------------------------------------------------
0957                        i32.const 0
0958                        local.set 0
0959                        local.get 7
0960                        i32.const 47
0961                        i32.add
0962                        local.tee 9
0963                        block (result i32)  ;; label = @11
116 ------------------------------------------------------------
0964                          i32.const 15664
0965                          i32.load
0966                          if  ;; label = @12
117 ------------------------------------------------------------
0967                            i32.const 15672
0968                            i32.load
0969                            br 1 (;@11;)
118 ------------------------------------------------------------
0970                          end
119 ------------------------------------------------------------
0971                          i32.const 15676
0972                          i64.const -1
0973                          i64.store align=4
0974                          i32.const 15668
0975                          i64.const 17592186048512
0976                          i64.store align=4
0977                          i32.const 15664
0978                          local.get 11
0979                          i32.const 12
0980                          i32.add
0981                          i32.const -16
0982                          i32.and
0983                          i32.const 1431655768
0984                          i32.xor
0985                          i32.store
0986                          i32.const 15684
0987                          i32.const 0
0988                          i32.store
0989                          i32.const 15636
0990                          i32.const 0
0991                          i32.store
0992                          i32.const 4096
0993                        end
120 ------------------------------------------------------------
0994                        local.tee 1
0995                        i32.add
0996                        local.tee 6
0997                        i32.const 0
0998                        local.get 1
0999                        i32.sub
1000                        local.tee 4
1001                        i32.and
1002                        local.tee 2
1003                        local.get 7
1004                        i32.le_u
1005                        br_if 9 (;@1;)
121 ------------------------------------------------------------
1006                        i32.const 15632
1007                        i32.load
1008                        local.tee 5
1009                        if  ;; label = @11
122 ------------------------------------------------------------
1010                          i32.const 15624
1011                          i32.load
1012                          local.tee 3
1013                          local.get 2
1014                          i32.add
1015                          local.tee 1
1016                          local.get 3
1017                          i32.le_u
1018                          br_if 10 (;@1;)
123 ------------------------------------------------------------
1019                          local.get 1
1020                          local.get 5
1021                          i32.gt_u
1022                          br_if 10 (;@1;)
124 ------------------------------------------------------------
1023                        end
125 ------------------------------------------------------------
1024                        i32.const 15636
1025                        i32.load8_u
1026                        i32.const 4
1027                        i32.and
1028                        br_if 4 (;@6;)
126 ------------------------------------------------------------
1029                        block  ;; label = @11
127 ------------------------------------------------------------
1030                          block  ;; label = @12
128 ------------------------------------------------------------
1031                            i32.const 15216
1032                            i32.load
1033                            local.tee 3
1034                            if  ;; label = @13
129 ------------------------------------------------------------
1035                              i32.const 15640
1036                              local.set 0
1037                              loop  ;; label = @14
130 ------------------------------------------------------------
1038                                local.get 3
1039                                local.get 0
1040                                i32.load
1041                                local.tee 1
1042                                i32.ge_u
1043                                if  ;; label = @15
131 ------------------------------------------------------------
1044                                  local.get 1
1045                                  local.get 0
1046                                  i32.load offset=4
1047                                  i32.add
1048                                  local.get 3
1049                                  i32.gt_u
1050                                  br_if 3 (;@12;)
132 ------------------------------------------------------------
1051                                end
133 ------------------------------------------------------------
1052                                local.get 0
1053                                i32.load offset=8
1054                                local.tee 0
1055                                br_if 0 (;@14;)
134 ------------------------------------------------------------
1056                              end
135 ------------------------------------------------------------
1057                            end
136 ------------------------------------------------------------
1058                            i32.const 0
1059                            call 11
1060                            local.tee 1
1061                            i32.const -1
1062                            i32.eq
1063                            br_if 5 (;@7;)
137 ------------------------------------------------------------
1064                            local.get 2
1065                            local.set 6
1066                            i32.const 15668
1067                            i32.load
1068                            local.tee 3
1069                            i32.const 1
1070                            i32.sub
1071                            local.tee 0
1072                            local.get 1
1073                            i32.and
1074                            if  ;; label = @13
138 ------------------------------------------------------------
1075                              local.get 2
1076                              local.get 1
1077                              i32.sub
1078                              local.get 0
1079                              local.get 1
1080                              i32.add
1081                              i32.const 0
1082                              local.get 3
1083                              i32.sub
1084                              i32.and
1085                              i32.add
1086                              local.set 6
1087                            end
139 ------------------------------------------------------------
1088                            local.get 6
1089                            local.get 7
1090                            i32.le_u
1091                            br_if 5 (;@7;)
140 ------------------------------------------------------------
1092                            local.get 6
1093                            i32.const 2147483646
1094                            i32.gt_u
1095                            br_if 5 (;@7;)
141 ------------------------------------------------------------
1096                            i32.const 15632
1097                            i32.load
1098                            local.tee 5
1099                            if  ;; label = @13
142 ------------------------------------------------------------
1100                              i32.const 15624
1101                              i32.load
1102                              local.tee 3
1103                              local.get 6
1104                              i32.add
1105                              local.tee 0
1106                              local.get 3
1107                              i32.le_u
1108                              br_if 6 (;@7;)
143 ------------------------------------------------------------
1109                              local.get 0
1110                              local.get 5
1111                              i32.gt_u
1112                              br_if 6 (;@7;)
144 ------------------------------------------------------------
1113                            end
145 ------------------------------------------------------------
1114                            local.get 6
1115                            call 11
1116                            local.tee 0
1117                            local.get 1
1118                            i32.ne
1119                            br_if 1 (;@11;)
146 ------------------------------------------------------------
1120                            br 7 (;@5;)
147 ------------------------------------------------------------
1121                          end
148 ------------------------------------------------------------
1122                          local.get 6
1123                          local.get 8
1124                          i32.sub
1125                          local.get 4
1126                          i32.and
1127                          local.tee 6
1128                          i32.const 2147483646
1129                          i32.gt_u
1130                          br_if 4 (;@7;)
149 ------------------------------------------------------------
1131                          local.get 6
1132                          call 11
1133                          local.tee 1
1134                          local.get 0
1135                          i32.load
1136                          local.get 0
1137                          i32.load offset=4
1138                          i32.add
1139                          i32.eq
1140                          br_if 3 (;@8;)
150 ------------------------------------------------------------
1141                          local.get 1
1142                          local.set 0
1143                        end
151 ------------------------------------------------------------
1144                        block  ;; label = @11
152 ------------------------------------------------------------
1145                          local.get 0
1146                          i32.const -1
1147                          i32.eq
1148                          br_if 0 (;@11;)
153 ------------------------------------------------------------
1149                          local.get 7
1150                          i32.const 48
1151                          i32.add
1152                          local.get 6
1153                          i32.le_u
1154                          br_if 0 (;@11;)
154 ------------------------------------------------------------
1155                          i32.const 15672
1156                          i32.load
1157                          local.tee 1
1158                          local.get 9
1159                          local.get 6
1160                          i32.sub
1161                          i32.add
1162                          i32.const 0
1163                          local.get 1
1164                          i32.sub
1165                          i32.and
1166                          local.tee 1
1167                          i32.const 2147483646
1168                          i32.gt_u
1169                          if  ;; label = @12
155 ------------------------------------------------------------
1170                            local.get 0
1171                            local.set 1
1172                            br 7 (;@5;)
156 ------------------------------------------------------------
1173                          end
157 ------------------------------------------------------------
1174                          local.get 1
1175                          call 11
1176                          i32.const -1
1177                          i32.ne
1178                          if  ;; label = @12
158 ------------------------------------------------------------
1179                            local.get 1
1180                            local.get 6
1181                            i32.add
1182                            local.set 6
1183                            local.get 0
1184                            local.set 1
1185                            br 7 (;@5;)
159 ------------------------------------------------------------
1186                          end
160 ------------------------------------------------------------
1187                          i32.const 0
1188                          local.get 6
1189                          i32.sub
1190                          call 11
1191                          drop
1192                          br 4 (;@7;)
161 ------------------------------------------------------------
1193                        end
162 ------------------------------------------------------------
1194                        local.get 0
1195                        local.tee 1
1196                        i32.const -1
1197                        i32.ne
1198                        br_if 5 (;@5;)
163 ------------------------------------------------------------
1199                        br 3 (;@7;)
164 ------------------------------------------------------------
1200                      end
165 ------------------------------------------------------------
1201                      i32.const 0
1202                      local.set 5
1203                      br 7 (;@2;)
166 ------------------------------------------------------------
1204                    end
167 ------------------------------------------------------------
1205                    i32.const 0
1206                    local.set 1
1207                    br 5 (;@3;)
168 ------------------------------------------------------------
1208                  end
169 ------------------------------------------------------------
1209                  local.get 1
1210                  i32.const -1
1211                  i32.ne
1212                  br_if 2 (;@5;)
170 ------------------------------------------------------------
1213                end
171 ------------------------------------------------------------
1214                i32.const 15636
1215                i32.const 15636
1216                i32.load
1217                i32.const 4
1218                i32.or
1219                i32.store
1220              end
172 ------------------------------------------------------------
1221              local.get 2
1222              i32.const 2147483646
1223              i32.gt_u
1224              br_if 1 (;@4;)
173 ------------------------------------------------------------
1225              local.get 2
1226              call 11
1227              local.set 1
1228              i32.const 0
1229              call 11
1230              local.set 0
1231              local.get 1
1232              i32.const -1
1233              i32.eq
1234              br_if 1 (;@4;)
174 ------------------------------------------------------------
1235              local.get 0
1236              i32.const -1
1237              i32.eq
1238              br_if 1 (;@4;)
175 ------------------------------------------------------------
1239              local.get 0
1240              local.get 1
1241              i32.le_u
1242              br_if 1 (;@4;)
176 ------------------------------------------------------------
1243              local.get 0
1244              local.get 1
1245              i32.sub
1246              local.tee 6
1247              local.get 7
1248              i32.const 40
1249              i32.add
1250              i32.le_u
1251              br_if 1 (;@4;)
177 ------------------------------------------------------------
1252            end
178 ------------------------------------------------------------
1253            i32.const 15624
1254            i32.const 15624
1255            i32.load
1256            local.get 6
1257            i32.add
1258            local.tee 0
1259            i32.store
1260            i32.const 15628
1261            i32.load
1262            local.get 0
1263            i32.lt_u
1264            if  ;; label = @5
179 ------------------------------------------------------------
1265              i32.const 15628
1266              local.get 0
1267              i32.store
1268            end
180 ------------------------------------------------------------
1269            block  ;; label = @5
181 ------------------------------------------------------------
1270              block  ;; label = @6
182 ------------------------------------------------------------
1271                block  ;; label = @7
183 ------------------------------------------------------------
1272                  i32.const 15216
1273                  i32.load
1274                  local.tee 4
1275                  if  ;; label = @8
184 ------------------------------------------------------------
1276                    i32.const 15640
1277                    local.set 0
1278                    loop  ;; label = @9
185 ------------------------------------------------------------
1279                      local.get 1
1280                      local.get 0
1281                      i32.load
1282                      local.tee 3
1283                      local.get 0
1284                      i32.load offset=4
1285                      local.tee 2
1286                      i32.add
1287                      i32.eq
1288                      br_if 2 (;@7;)
186 ------------------------------------------------------------
1289                      local.get 0
1290                      i32.load offset=8
1291                      local.tee 0
1292                      br_if 0 (;@9;)
187 ------------------------------------------------------------
1293                    end
188 ------------------------------------------------------------
1294                    br 2 (;@6;)
189 ------------------------------------------------------------
1295                  end
190 ------------------------------------------------------------
1296                  i32.const 15208
1297                  i32.load
1298                  local.tee 0
1299                  i32.const 0
1300                  local.get 0
1301                  local.get 1
1302                  i32.le_u
1303                  select
1304                  i32.eqz
1305                  if  ;; label = @8
191 ------------------------------------------------------------
1306                    i32.const 15208
1307                    local.get 1
1308                    i32.store
1309                  end
192 ------------------------------------------------------------
1310                  i32.const 0
1311                  local.set 0
1312                  i32.const 15644
1313                  local.get 6
1314                  i32.store
1315                  i32.const 15640
1316                  local.get 1
1317                  i32.store
1318                  i32.const 15224
1319                  i32.const -1
1320                  i32.store
1321                  i32.const 15228
1322                  i32.const 15664
1323                  i32.load
1324                  i32.store
1325                  i32.const 15652
1326                  i32.const 0
1327                  i32.store
1328                  loop  ;; label = @8
193 ------------------------------------------------------------
1329                    local.get 0
1330                    i32.const 3
1331                    i32.shl
1332                    local.tee 3
1333                    i32.const 15240
1334                    i32.add
1335                    local.get 3
1336                    i32.const 15232
1337                    i32.add
1338                    local.tee 2
1339                    i32.store
1340                    local.get 3
1341                    i32.const 15244
1342                    i32.add
1343                    local.get 2
1344                    i32.store
1345                    local.get 0
1346                    i32.const 1
1347                    i32.add
1348                    local.tee 0
1349                    i32.const 32
1350                    i32.ne
1351                    br_if 0 (;@8;)
194 ------------------------------------------------------------
1352                  end
195 ------------------------------------------------------------
1353                  i32.const 15204
1354                  local.get 6
1355                  i32.const 40
1356                  i32.sub
1357                  local.tee 3
1358                  i32.const -8
1359                  local.get 1
1360                  i32.sub
1361                  i32.const 7
1362                  i32.and
1363                  i32.const 0
1364                  local.get 1
1365                  i32.const 8
1366                  i32.add
1367                  i32.const 7
1368                  i32.and
1369                  select
1370                  local.tee 0
1371                  i32.sub
1372                  local.tee 2
1373                  i32.store
1374                  i32.const 15216
1375                  local.get 0
1376                  local.get 1
1377                  i32.add
1378                  local.tee 0
1379                  i32.store
1380                  local.get 0
1381                  local.get 2
1382                  i32.const 1
1383                  i32.or
1384                  i32.store offset=4
1385                  local.get 1
1386                  local.get 3
1387                  i32.add
1388                  i32.const 40
1389                  i32.store offset=4
1390                  i32.const 15220
1391                  i32.const 15680
1392                  i32.load
1393                  i32.store
1394                  br 2 (;@5;)
196 ------------------------------------------------------------
1395                end
197 ------------------------------------------------------------
1396                local.get 0
1397                i32.load8_u offset=12
1398                i32.const 8
1399                i32.and
1400                br_if 0 (;@6;)
198 ------------------------------------------------------------
1401                local.get 3
1402                local.get 4
1403                i32.gt_u
1404                br_if 0 (;@6;)
199 ------------------------------------------------------------
1405                local.get 1
1406                local.get 4
1407                i32.le_u
1408                br_if 0 (;@6;)
200 ------------------------------------------------------------
1409                local.get 0
1410                local.get 2
1411                local.get 6
1412                i32.add
1413                i32.store offset=4
1414                i32.const 15216
1415                local.get 4
1416                i32.const -8
1417                local.get 4
1418                i32.sub
1419                i32.const 7
1420                i32.and
1421                i32.const 0
1422                local.get 4
1423                i32.const 8
1424                i32.add
1425                i32.const 7
1426                i32.and
1427                select
1428                local.tee 0
1429                i32.add
1430                local.tee 2
1431                i32.store
1432                i32.const 15204
1433                i32.const 15204
1434                i32.load
1435                local.get 6
1436                i32.add
1437                local.tee 1
1438                local.get 0
1439                i32.sub
1440                local.tee 0
1441                i32.store
1442                local.get 2
1443                local.get 0
1444                i32.const 1
1445                i32.or
1446                i32.store offset=4
1447                local.get 1
1448                local.get 4
1449                i32.add
1450                i32.const 40
1451                i32.store offset=4
1452                i32.const 15220
1453                i32.const 15680
1454                i32.load
1455                i32.store
1456                br 1 (;@5;)
201 ------------------------------------------------------------
1457              end
202 ------------------------------------------------------------
1458              i32.const 15208
1459              i32.load
1460              local.get 1
1461              i32.gt_u
1462              if  ;; label = @6
203 ------------------------------------------------------------
1463                i32.const 15208
1464                local.get 1
1465                i32.store
1466              end
204 ------------------------------------------------------------
1467              local.get 1
1468              local.get 6
1469              i32.add
1470              local.set 2
1471              i32.const 15640
1472              local.set 0
1473              block  ;; label = @6
205 ------------------------------------------------------------
1474                block  ;; label = @7
206 ------------------------------------------------------------
1475                  block  ;; label = @8
207 ------------------------------------------------------------
1476                    block  ;; label = @9
208 ------------------------------------------------------------
1477                      block  ;; label = @10
209 ------------------------------------------------------------
1478                        block  ;; label = @11
210 ------------------------------------------------------------
1479                          loop  ;; label = @12
211 ------------------------------------------------------------
1480                            local.get 2
1481                            local.get 0
1482                            i32.load
1483                            i32.ne
1484                            if  ;; label = @13
212 ------------------------------------------------------------
1485                              local.get 0
1486                              i32.load offset=8
1487                              local.tee 0
1488                              br_if 1 (;@12;)
213 ------------------------------------------------------------
1489                              br 2 (;@11;)
214 ------------------------------------------------------------
1490                            end
215 ------------------------------------------------------------
1491                          end
216 ------------------------------------------------------------
1492                          local.get 0
1493                          i32.load8_u offset=12
1494                          i32.const 8
1495                          i32.and
1496                          i32.eqz
1497                          br_if 1 (;@10;)
217 ------------------------------------------------------------
1498                        end
218 ------------------------------------------------------------
1499                        i32.const 15640
1500                        local.set 0
1501                        loop  ;; label = @11
219 ------------------------------------------------------------
1502                          local.get 4
1503                          local.get 0
1504                          i32.load
1505                          local.tee 2
1506                          i32.ge_u
1507                          if  ;; label = @12
220 ------------------------------------------------------------
1508                            local.get 2
1509                            local.get 0
1510                            i32.load offset=4
1511                            i32.add
1512                            local.tee 5
1513                            local.get 4
1514                            i32.gt_u
1515                            br_if 3 (;@9;)
221 ------------------------------------------------------------
1516                          end
222 ------------------------------------------------------------
1517                          local.get 0
1518                          i32.load offset=8
1519                          local.set 0
1520                          br 0 (;@11;)
223 ------------------------------------------------------------
1521                        end
224 ------------------------------------------------------------
1522                        unreachable
225 ------------------------------------------------------------
1523                      end
226 ------------------------------------------------------------
1524                      local.get 0
1525                      local.get 1
1526                      i32.store
1527                      local.get 0
1528                      local.get 0
1529                      i32.load offset=4
1530                      local.get 6
1531                      i32.add
1532                      i32.store offset=4
1533                      local.get 1
1534                      i32.const -8
1535                      local.get 1
1536                      i32.sub
1537                      i32.const 7
1538                      i32.and
1539                      i32.const 0
1540                      local.get 1
1541                      i32.const 8
1542                      i32.add
1543                      i32.const 7
1544                      i32.and
1545                      select
1546                      i32.add
1547                      local.tee 9
1548                      local.get 7
1549                      i32.const 3
1550                      i32.or
1551                      i32.store offset=4
1552                      local.get 2
1553                      i32.const -8
1554                      local.get 2
1555                      i32.sub
1556                      i32.const 7
1557                      i32.and
1558                      i32.const 0
1559                      local.get 2
1560                      i32.const 8
1561                      i32.add
1562                      i32.const 7
1563                      i32.and
1564                      select
1565                      i32.add
1566                      local.tee 6
1567                      local.get 7
1568                      local.get 9
1569                      i32.add
1570                      local.tee 8
1571                      i32.sub
1572                      local.set 2
1573                      local.get 4
1574                      local.get 6
1575                      i32.eq
1576                      if  ;; label = @10
227 ------------------------------------------------------------
1577                        i32.const 15216
1578                        local.get 8
1579                        i32.store
1580                        i32.const 15204
1581                        i32.const 15204
1582                        i32.load
1583                        local.get 2
1584                        i32.add
1585                        local.tee 0
1586                        i32.store
1587                        local.get 8
1588                        local.get 0
1589                        i32.const 1
1590                        i32.or
1591                        i32.store offset=4
1592                        br 3 (;@7;)
228 ------------------------------------------------------------
1593                      end
229 ------------------------------------------------------------
1594                      i32.const 15212
1595                      i32.load
1596                      local.get 6
1597                      i32.eq
1598                      if  ;; label = @10
230 ------------------------------------------------------------
1599                        i32.const 15212
1600                        local.get 8
1601                        i32.store
1602                        i32.const 15200
1603                        i32.const 15200
1604                        i32.load
1605                        local.get 2
1606                        i32.add
1607                        local.tee 0
1608                        i32.store
1609                        local.get 8
1610                        local.get 0
1611                        i32.const 1
1612                        i32.or
1613                        i32.store offset=4
1614                        local.get 0
1615                        local.get 8
1616                        i32.add
1617                        local.get 0
1618                        i32.store
1619                        br 3 (;@7;)
231 ------------------------------------------------------------
1620                      end
232 ------------------------------------------------------------
1621                      local.get 6
1622                      i32.load offset=4
1623                      local.tee 0
1624                      i32.const 3
1625                      i32.and
1626                      i32.const 1
1627                      i32.eq
1628                      if  ;; label = @10
233 ------------------------------------------------------------
1629                        local.get 0
1630                        i32.const -8
1631                        i32.and
1632                        local.set 4
1633                        block  ;; label = @11
234 ------------------------------------------------------------
1634                          local.get 0
1635                          i32.const 255
1636                          i32.le_u
1637                          if  ;; label = @12
235 ------------------------------------------------------------
1638                            local.get 6
1639                            i32.load offset=8
1640                            local.tee 3
1641                            local.get 0
1642                            i32.const 3
1643                            i32.shr_u
1644                            local.tee 0
1645                            i32.const 3
1646                            i32.shl
1647                            i32.const 15232
1648                            i32.add
1649                            i32.eq
1650                            drop
1651                            local.get 3
1652                            local.get 6
1653                            i32.load offset=12
1654                            local.tee 1
1655                            i32.eq
1656                            if  ;; label = @13
236 ------------------------------------------------------------
1657                              i32.const 15192
1658                              i32.const 15192
1659                              i32.load
1660                              i32.const -2
1661                              local.get 0
1662                              i32.rotl
1663                              i32.and
1664                              i32.store
1665                              br 2 (;@11;)
237 ------------------------------------------------------------
1666                            end
238 ------------------------------------------------------------
1667                            local.get 3
1668                            local.get 1
1669                            i32.store offset=12
1670                            local.get 1
1671                            local.get 3
1672                            i32.store offset=8
1673                            br 1 (;@11;)
239 ------------------------------------------------------------
1674                          end
240 ------------------------------------------------------------
1675                          local.get 6
1676                          i32.load offset=24
1677                          local.set 7
1678                          block  ;; label = @12
241 ------------------------------------------------------------
1679                            local.get 6
1680                            local.get 6
1681                            i32.load offset=12
1682                            local.tee 1
1683                            i32.ne
1684                            if  ;; label = @13
242 ------------------------------------------------------------
1685                              local.get 6
1686                              i32.load offset=8
1687                              local.tee 0
1688                              local.get 1
1689                              i32.store offset=12
1690                              local.get 1
1691                              local.get 0
1692                              i32.store offset=8
1693                              br 1 (;@12;)
243 ------------------------------------------------------------
1694                            end
244 ------------------------------------------------------------
1695                            block  ;; label = @13
245 ------------------------------------------------------------
1696                              local.get 6
1697                              i32.const 20
1698                              i32.add
1699                              local.tee 0
1700                              i32.load
1701                              local.tee 3
1702                              br_if 0 (;@13;)
246 ------------------------------------------------------------
1703                              local.get 6
1704                              i32.const 16
1705                              i32.add
1706                              local.tee 0
1707                              i32.load
1708                              local.tee 3
1709                              br_if 0 (;@13;)
247 ------------------------------------------------------------
1710                              i32.const 0
1711                              local.set 1
1712                              br 1 (;@12;)
248 ------------------------------------------------------------
1713                            end
249 ------------------------------------------------------------
1714                            loop  ;; label = @13
250 ------------------------------------------------------------
1715                              local.get 0
1716                              local.set 5
1717                              local.get 3
1718                              local.tee 1
1719                              i32.const 20
1720                              i32.add
1721                              local.tee 0
1722                              i32.load
1723                              local.tee 3
1724                              br_if 0 (;@13;)
251 ------------------------------------------------------------
1725                              local.get 1
1726                              i32.const 16
1727                              i32.add
1728                              local.set 0
1729                              local.get 1
1730                              i32.load offset=16
1731                              local.tee 3
1732                              br_if 0 (;@13;)
252 ------------------------------------------------------------
1733                            end
253 ------------------------------------------------------------
1734                            local.get 5
1735                            i32.const 0
1736                            i32.store
1737                          end
254 ------------------------------------------------------------
1738                          local.get 7
1739                          i32.eqz
1740                          br_if 0 (;@11;)
255 ------------------------------------------------------------
1741                          block  ;; label = @12
256 ------------------------------------------------------------
1742                            local.get 6
1743                            i32.load offset=28
1744                            local.tee 3
1745                            i32.const 2
1746                            i32.shl
1747                            i32.const 15496
1748                            i32.add
1749                            local.tee 0
1750                            i32.load
1751                            local.get 6
1752                            i32.eq
1753                            if  ;; label = @13
257 ------------------------------------------------------------
1754                              local.get 0
1755                              local.get 1
1756                              i32.store
1757                              local.get 1
1758                              br_if 1 (;@12;)
258 ------------------------------------------------------------
1759                              i32.const 15196
1760                              i32.const 15196
1761                              i32.load
1762                              i32.const -2
1763                              local.get 3
1764                              i32.rotl
1765                              i32.and
1766                              i32.store
1767                              br 2 (;@11;)
259 ------------------------------------------------------------
1768                            end
260 ------------------------------------------------------------
1769                            local.get 7
1770                            i32.const 16
1771                            i32.const 20
1772                            local.get 7
1773                            i32.load offset=16
1774                            local.get 6
1775                            i32.eq
1776                            select
1777                            i32.add
1778                            local.get 1
1779                            i32.store
1780                            local.get 1
1781                            i32.eqz
1782                            br_if 1 (;@11;)
261 ------------------------------------------------------------
1783                          end
262 ------------------------------------------------------------
1784                          local.get 1
1785                          local.get 7
1786                          i32.store offset=24
1787                          local.get 6
1788                          i32.load offset=16
1789                          local.tee 0
1790                          if  ;; label = @12
263 ------------------------------------------------------------
1791                            local.get 1
1792                            local.get 0
1793                            i32.store offset=16
1794                            local.get 0
1795                            local.get 1
1796                            i32.store offset=24
1797                          end
264 ------------------------------------------------------------
1798                          local.get 6
1799                          i32.load offset=20
1800                          local.tee 0
1801                          i32.eqz
1802                          br_if 0 (;@11;)
265 ------------------------------------------------------------
1803                          local.get 1
1804                          local.get 0
1805                          i32.store offset=20
1806                          local.get 0
1807                          local.get 1
1808                          i32.store offset=24
1809                        end
266 ------------------------------------------------------------
1810                        local.get 2
1811                        local.get 4
1812                        i32.add
1813                        local.set 2
1814                        local.get 4
1815                        local.get 6
1816                        i32.add
1817                        local.tee 6
1818                        i32.load offset=4
1819                        local.set 0
1820                      end
267 ------------------------------------------------------------
1821                      local.get 6
1822                      local.get 0
1823                      i32.const -2
1824                      i32.and
1825                      i32.store offset=4
1826                      local.get 8
1827                      local.get 2
1828                      i32.const 1
1829                      i32.or
1830                      i32.store offset=4
1831                      local.get 2
1832                      local.get 8
1833                      i32.add
1834                      local.get 2
1835                      i32.store
1836                      local.get 2
1837                      i32.const 255
1838                      i32.le_u
1839                      if  ;; label = @10
268 ------------------------------------------------------------
1840                        local.get 2
1841                        i32.const 3
1842                        i32.shr_u
1843                        local.tee 0
1844                        i32.const 3
1845                        i32.shl
1846                        i32.const 15232
1847                        i32.add
1848                        local.set 2
1849                        block (result i32)  ;; label = @11
269 ------------------------------------------------------------
1850                          i32.const 15192
1851                          i32.load
1852                          local.tee 1
1853                          i32.const 1
1854                          local.get 0
1855                          i32.shl
1856                          local.tee 0
1857                          i32.and
1858                          i32.eqz
1859                          if  ;; label = @12
270 ------------------------------------------------------------
1860                            i32.const 15192
1861                            local.get 0
1862                            local.get 1
1863                            i32.or
1864                            i32.store
1865                            local.get 2
1866                            br 1 (;@11;)
271 ------------------------------------------------------------
1867                          end
272 ------------------------------------------------------------
1868                          local.get 2
1869                          i32.load offset=8
1870                        end
273 ------------------------------------------------------------
1871                        local.set 0
1872                        local.get 2
1873                        local.get 8
1874                        i32.store offset=8
1875                        local.get 0
1876                        local.get 8
1877                        i32.store offset=12
1878                        local.get 8
1879                        local.get 2
1880                        i32.store offset=12
1881                        local.get 8
1882                        local.get 0
1883                        i32.store offset=8
1884                        br 3 (;@7;)
274 ------------------------------------------------------------
1885                      end
275 ------------------------------------------------------------
1886                      i32.const 31
1887                      local.set 0
1888                      local.get 2
1889                      i32.const 16777215
1890                      i32.le_u
1891                      if  ;; label = @10
276 ------------------------------------------------------------
1892                        local.get 2
1893                        i32.const 8
1894                        i32.shr_u
1895                        local.tee 0
1896                        local.get 0
1897                        i32.const 1048320
1898                        i32.add
1899                        i32.const 16
1900                        i32.shr_u
1901                        i32.const 8
1902                        i32.and
1903                        local.tee 3
1904                        i32.shl
1905                        local.tee 0
1906                        local.get 0
1907                        i32.const 520192
1908                        i32.add
1909                        i32.const 16
1910                        i32.shr_u
1911                        i32.const 4
1912                        i32.and
1913                        local.tee 1
1914                        i32.shl
1915                        local.tee 0
1916                        local.get 0
1917                        i32.const 245760
1918                        i32.add
1919                        i32.const 16
1920                        i32.shr_u
1921                        i32.const 2
1922                        i32.and
1923                        local.tee 0
1924                        i32.shl
1925                        i32.const 15
1926                        i32.shr_u
1927                        local.get 1
1928                        local.get 3
1929                        i32.or
1930                        local.get 0
1931                        i32.or
1932                        i32.sub
1933                        local.tee 0
1934                        i32.const 1
1935                        i32.shl
1936                        local.get 2
1937                        local.get 0
1938                        i32.const 21
1939                        i32.add
1940                        i32.shr_u
1941                        i32.const 1
1942                        i32.and
1943                        i32.or
1944                        i32.const 28
1945                        i32.add
1946                        local.set 0
1947                      end
277 ------------------------------------------------------------
1948                      local.get 8
1949                      local.get 0
1950                      i32.store offset=28
1951                      local.get 8
1952                      i64.const 0
1953                      i64.store offset=16 align=4
1954                      local.get 0
1955                      i32.const 2
1956                      i32.shl
1957                      i32.const 15496
1958                      i32.add
1959                      local.set 5
1960                      block  ;; label = @10
278 ------------------------------------------------------------
1961                        i32.const 15196
1962                        i32.load
1963                        local.tee 3
1964                        i32.const 1
1965                        local.get 0
1966                        i32.shl
1967                        local.tee 1
1968                        i32.and
1969                        i32.eqz
1970                        if  ;; label = @11
279 ------------------------------------------------------------
1971                          i32.const 15196
1972                          local.get 1
1973                          local.get 3
1974                          i32.or
1975                          i32.store
1976                          local.get 5
1977                          local.get 8
1978                          i32.store
1979                          local.get 8
1980                          local.get 5
1981                          i32.store offset=24
1982                          br 1 (;@10;)
280 ------------------------------------------------------------
1983                        end
281 ------------------------------------------------------------
1984                        local.get 2
1985                        i32.const 0
1986                        i32.const 25
1987                        local.get 0
1988                        i32.const 1
1989                        i32.shr_u
1990                        i32.sub
1991                        local.get 0
1992                        i32.const 31
1993                        i32.eq
1994                        select
1995                        i32.shl
1996                        local.set 0
1997                        local.get 5
1998                        i32.load
1999                        local.set 1
2000                        loop  ;; label = @11
282 ------------------------------------------------------------
2001                          local.get 1
2002                          local.tee 3
2003                          i32.load offset=4
2004                          i32.const -8
2005                          i32.and
2006                          local.get 2
2007                          i32.eq
2008                          br_if 3 (;@8;)
283 ------------------------------------------------------------
2009                          local.get 0
2010                          i32.const 29
2011                          i32.shr_u
2012                          local.set 1
2013                          local.get 0
2014                          i32.const 1
2015                          i32.shl
2016                          local.set 0
2017                          local.get 3
2018                          local.get 1
2019                          i32.const 4
2020                          i32.and
2021                          i32.add
2022                          local.tee 5
2023                          i32.load offset=16
2024                          local.tee 1
2025                          br_if 0 (;@11;)
284 ------------------------------------------------------------
2026                        end
285 ------------------------------------------------------------
2027                        local.get 5
2028                        local.get 8
2029                        i32.store offset=16
2030                        local.get 8
2031                        local.get 3
2032                        i32.store offset=24
2033                      end
286 ------------------------------------------------------------
2034                      local.get 8
2035                      local.get 8
2036                      i32.store offset=12
2037                      local.get 8
2038                      local.get 8
2039                      i32.store offset=8
2040                      br 2 (;@7;)
287 ------------------------------------------------------------
2041                    end
288 ------------------------------------------------------------
2042                    i32.const 15204
2043                    local.get 6
2044                    i32.const 40
2045                    i32.sub
2046                    local.tee 3
2047                    i32.const -8
2048                    local.get 1
2049                    i32.sub
2050                    i32.const 7
2051                    i32.and
2052                    i32.const 0
2053                    local.get 1
2054                    i32.const 8
2055                    i32.add
2056                    i32.const 7
2057                    i32.and
2058                    select
2059                    local.tee 0
2060                    i32.sub
2061                    local.tee 2
2062                    i32.store
2063                    i32.const 15216
2064                    local.get 0
2065                    local.get 1
2066                    i32.add
2067                    local.tee 0
2068                    i32.store
2069                    local.get 0
2070                    local.get 2
2071                    i32.const 1
2072                    i32.or
2073                    i32.store offset=4
2074                    local.get 1
2075                    local.get 3
2076                    i32.add
2077                    i32.const 40
2078                    i32.store offset=4
2079                    i32.const 15220
2080                    i32.const 15680
2081                    i32.load
2082                    i32.store
2083                    local.get 4
2084                    local.get 5
2085                    i32.const 39
2086                    local.get 5
2087                    i32.sub
2088                    i32.const 7
2089                    i32.and
2090                    i32.const 0
2091                    local.get 5
2092                    i32.const 39
2093                    i32.sub
2094                    i32.const 7
2095                    i32.and
2096                    select
2097                    i32.add
2098                    i32.const 47
2099                    i32.sub
2100                    local.tee 0
2101                    local.get 0
2102                    local.get 4
2103                    i32.const 16
2104                    i32.add
2105                    i32.lt_u
2106                    select
2107                    local.tee 2
2108                    i32.const 27
2109                    i32.store offset=4
2110                    local.get 2
2111                    i32.const 15648
2112                    i64.load align=4
2113                    i64.store offset=16 align=4
2114                    local.get 2
2115                    i32.const 15640
2116                    i64.load align=4
2117                    i64.store offset=8 align=4
2118                    i32.const 15648
2119                    local.get 2
2120                    i32.const 8
2121                    i32.add
2122                    i32.store
2123                    i32.const 15644
2124                    local.get 6
2125                    i32.store
2126                    i32.const 15640
2127                    local.get 1
2128                    i32.store
2129                    i32.const 15652
2130                    i32.const 0
2131                    i32.store
2132                    local.get 2
2133                    i32.const 24
2134                    i32.add
2135                    local.set 0
2136                    loop  ;; label = @9
289 ------------------------------------------------------------
2137                      local.get 0
2138                      i32.const 7
2139                      i32.store offset=4
2140                      local.get 0
2141                      i32.const 8
2142                      i32.add
2143                      local.set 1
2144                      local.get 0
2145                      i32.const 4
2146                      i32.add
2147                      local.set 0
2148                      local.get 1
2149                      local.get 5
2150                      i32.lt_u
2151                      br_if 0 (;@9;)
290 ------------------------------------------------------------
2152                    end
291 ------------------------------------------------------------
2153                    local.get 2
2154                    local.get 4
2155                    i32.eq
2156                    br_if 3 (;@5;)
292 ------------------------------------------------------------
2157                    local.get 2
2158                    local.get 2
2159                    i32.load offset=4
2160                    i32.const -2
2161                    i32.and
2162                    i32.store offset=4
2163                    local.get 4
2164                    local.get 2
2165                    local.get 4
2166                    i32.sub
2167                    local.tee 5
2168                    i32.const 1
2169                    i32.or
2170                    i32.store offset=4
2171                    local.get 2
2172                    local.get 5
2173                    i32.store
2174                    local.get 5
2175                    i32.const 255
2176                    i32.le_u
2177                    if  ;; label = @9
293 ------------------------------------------------------------
2178                      local.get 5
2179                      i32.const 3
2180                      i32.shr_u
2181                      local.tee 0
2182                      i32.const 3
2183                      i32.shl
2184                      i32.const 15232
2185                      i32.add
2186                      local.set 2
2187                      block (result i32)  ;; label = @10
294 ------------------------------------------------------------
2188                        i32.const 15192
2189                        i32.load
2190                        local.tee 1
2191                        i32.const 1
2192                        local.get 0
2193                        i32.shl
2194                        local.tee 0
2195                        i32.and
2196                        i32.eqz
2197                        if  ;; label = @11
295 ------------------------------------------------------------
2198                          i32.const 15192
2199                          local.get 0
2200                          local.get 1
2201                          i32.or
2202                          i32.store
2203                          local.get 2
2204                          br 1 (;@10;)
296 ------------------------------------------------------------
2205                        end
297 ------------------------------------------------------------
2206                        local.get 2
2207                        i32.load offset=8
2208                      end
298 ------------------------------------------------------------
2209                      local.set 0
2210                      local.get 2
2211                      local.get 4
2212                      i32.store offset=8
2213                      local.get 0
2214                      local.get 4
2215                      i32.store offset=12
2216                      local.get 4
2217                      local.get 2
2218                      i32.store offset=12
2219                      local.get 4
2220                      local.get 0
2221                      i32.store offset=8
2222                      br 4 (;@5;)
299 ------------------------------------------------------------
2223                    end
300 ------------------------------------------------------------
2224                    i32.const 31
2225                    local.set 0
2226                    local.get 5
2227                    i32.const 16777215
2228                    i32.le_u
2229                    if  ;; label = @9
301 ------------------------------------------------------------
2230                      local.get 5
2231                      i32.const 8
2232                      i32.shr_u
2233                      local.tee 0
2234                      local.get 0
2235                      i32.const 1048320
2236                      i32.add
2237                      i32.const 16
2238                      i32.shr_u
2239                      i32.const 8
2240                      i32.and
2241                      local.tee 2
2242                      i32.shl
2243                      local.tee 0
2244                      local.get 0
2245                      i32.const 520192
2246                      i32.add
2247                      i32.const 16
2248                      i32.shr_u
2249                      i32.const 4
2250                      i32.and
2251                      local.tee 1
2252                      i32.shl
2253                      local.tee 0
2254                      local.get 0
2255                      i32.const 245760
2256                      i32.add
2257                      i32.const 16
2258                      i32.shr_u
2259                      i32.const 2
2260                      i32.and
2261                      local.tee 0
2262                      i32.shl
2263                      i32.const 15
2264                      i32.shr_u
2265                      local.get 1
2266                      local.get 2
2267                      i32.or
2268                      local.get 0
2269                      i32.or
2270                      i32.sub
2271                      local.tee 0
2272                      i32.const 1
2273                      i32.shl
2274                      local.get 5
2275                      local.get 0
2276                      i32.const 21
2277                      i32.add
2278                      i32.shr_u
2279                      i32.const 1
2280                      i32.and
2281                      i32.or
2282                      i32.const 28
2283                      i32.add
2284                      local.set 0
2285                    end
302 ------------------------------------------------------------
2286                    local.get 4
2287                    local.get 0
2288                    i32.store offset=28
2289                    local.get 4
2290                    i64.const 0
2291                    i64.store offset=16 align=4
2292                    local.get 0
2293                    i32.const 2
2294                    i32.shl
2295                    i32.const 15496
2296                    i32.add
2297                    local.set 3
2298                    block  ;; label = @9
303 ------------------------------------------------------------
2299                      i32.const 15196
2300                      i32.load
2301                      local.tee 2
2302                      i32.const 1
2303                      local.get 0
2304                      i32.shl
2305                      local.tee 1
2306                      i32.and
2307                      i32.eqz
2308                      if  ;; label = @10
304 ------------------------------------------------------------
2309                        i32.const 15196
2310                        local.get 1
2311                        local.get 2
2312                        i32.or
2313                        i32.store
2314                        local.get 3
2315                        local.get 4
2316                        i32.store
2317                        local.get 4
2318                        local.get 3
2319                        i32.store offset=24
2320                        br 1 (;@9;)
305 ------------------------------------------------------------
2321                      end
306 ------------------------------------------------------------
2322                      local.get 5
2323                      i32.const 0
2324                      i32.const 25
2325                      local.get 0
2326                      i32.const 1
2327                      i32.shr_u
2328                      i32.sub
2329                      local.get 0
2330                      i32.const 31
2331                      i32.eq
2332                      select
2333                      i32.shl
2334                      local.set 0
2335                      local.get 3
2336                      i32.load
2337                      local.set 1
2338                      loop  ;; label = @10
307 ------------------------------------------------------------
2339                        local.get 1
2340                        local.tee 2
2341                        i32.load offset=4
2342                        i32.const -8
2343                        i32.and
2344                        local.get 5
2345                        i32.eq
2346                        br_if 4 (;@6;)
308 ------------------------------------------------------------
2347                        local.get 0
2348                        i32.const 29
2349                        i32.shr_u
2350                        local.set 1
2351                        local.get 0
2352                        i32.const 1
2353                        i32.shl
2354                        local.set 0
2355                        local.get 2
2356                        local.get 1
2357                        i32.const 4
2358                        i32.and
2359                        i32.add
2360                        local.tee 3
2361                        i32.load offset=16
2362                        local.tee 1
2363                        br_if 0 (;@10;)
309 ------------------------------------------------------------
2364                      end
310 ------------------------------------------------------------
2365                      local.get 3
2366                      local.get 4
2367                      i32.store offset=16
2368                      local.get 4
2369                      local.get 2
2370                      i32.store offset=24
2371                    end
311 ------------------------------------------------------------
2372                    local.get 4
2373                    local.get 4
2374                    i32.store offset=12
2375                    local.get 4
2376                    local.get 4
2377                    i32.store offset=8
2378                    br 3 (;@5;)
312 ------------------------------------------------------------
2379                  end
313 ------------------------------------------------------------
2380                  local.get 3
2381                  i32.load offset=8
2382                  local.tee 0
2383                  local.get 8
2384                  i32.store offset=12
2385                  local.get 3
2386                  local.get 8
2387                  i32.store offset=8
2388                  local.get 8
2389                  i32.const 0
2390                  i32.store offset=24
2391                  local.get 8
2392                  local.get 3
2393                  i32.store offset=12
2394                  local.get 8
2395                  local.get 0
2396                  i32.store offset=8
2397                end
314 ------------------------------------------------------------
2398                local.get 9
2399                i32.const 8
2400                i32.add
2401                local.set 0
2402                br 5 (;@1;)
315 ------------------------------------------------------------
2403              end
316 ------------------------------------------------------------
2404              local.get 2
2405              i32.load offset=8
2406              local.tee 0
2407              local.get 4
2408              i32.store offset=12
2409              local.get 2
2410              local.get 4
2411              i32.store offset=8
2412              local.get 4
2413              i32.const 0
2414              i32.store offset=24
2415              local.get 4
2416              local.get 2
2417              i32.store offset=12
2418              local.get 4
2419              local.get 0
2420              i32.store offset=8
2421            end
317 ------------------------------------------------------------
2422            i32.const 15204
2423            i32.load
2424            local.tee 0
2425            local.get 7
2426            i32.le_u
2427            br_if 0 (;@4;)
318 ------------------------------------------------------------
2428            i32.const 15204
2429            local.get 0
2430            local.get 7
2431            i32.sub
2432            local.tee 1
2433            i32.store
2434            i32.const 15216
2435            i32.const 15216
2436            i32.load
2437            local.tee 2
2438            local.get 7
2439            i32.add
2440            local.tee 0
2441            i32.store
2442            local.get 0
2443            local.get 1
2444            i32.const 1
2445            i32.or
2446            i32.store offset=4
2447            local.get 2
2448            local.get 7
2449            i32.const 3
2450            i32.or
2451            i32.store offset=4
2452            local.get 2
2453            i32.const 8
2454            i32.add
2455            local.set 0
2456            br 3 (;@1;)
319 ------------------------------------------------------------
2457          end
320 ------------------------------------------------------------
2458          i32.const 13720
2459          i32.const 48
2460          i32.store
2461          i32.const 0
2462          local.set 0
2463          br 2 (;@1;)
321 ------------------------------------------------------------
2464        end
322 ------------------------------------------------------------
2465        block  ;; label = @3
323 ------------------------------------------------------------
2466          local.get 6
2467          i32.eqz
2468          br_if 0 (;@3;)
324 ------------------------------------------------------------
2469          block  ;; label = @4
325 ------------------------------------------------------------
2470            local.get 5
2471            i32.load offset=28
2472            local.tee 2
2473            i32.const 2
2474            i32.shl
2475            i32.const 15496
2476            i32.add
2477            local.tee 0
2478            i32.load
2479            local.get 5
2480            i32.eq
2481            if  ;; label = @5
326 ------------------------------------------------------------
2482              local.get 0
2483              local.get 1
2484              i32.store
2485              local.get 1
2486              br_if 1 (;@4;)
327 ------------------------------------------------------------
2487              i32.const 15196
2488              local.get 9
2489              i32.const -2
2490              local.get 2
2491              i32.rotl
2492              i32.and
2493              local.tee 9
2494              i32.store
2495              br 2 (;@3;)
328 ------------------------------------------------------------
2496            end
329 ------------------------------------------------------------
2497            local.get 6
2498            i32.const 16
2499            i32.const 20
2500            local.get 6
2501            i32.load offset=16
2502            local.get 5
2503            i32.eq
2504            select
2505            i32.add
2506            local.get 1
2507            i32.store
2508            local.get 1
2509            i32.eqz
2510            br_if 1 (;@3;)
330 ------------------------------------------------------------
2511          end
331 ------------------------------------------------------------
2512          local.get 1
2513          local.get 6
2514          i32.store offset=24
2515          local.get 5
2516          i32.load offset=16
2517          local.tee 0
2518          if  ;; label = @4
332 ------------------------------------------------------------
2519            local.get 1
2520            local.get 0
2521            i32.store offset=16
2522            local.get 0
2523            local.get 1
2524            i32.store offset=24
2525          end
333 ------------------------------------------------------------
2526          local.get 5
2527          i32.load offset=20
2528          local.tee 0
2529          i32.eqz
2530          br_if 0 (;@3;)
334 ------------------------------------------------------------
2531          local.get 1
2532          local.get 0
2533          i32.store offset=20
2534          local.get 0
2535          local.get 1
2536          i32.store offset=24
2537        end
335 ------------------------------------------------------------
2538        block  ;; label = @3
336 ------------------------------------------------------------
2539          local.get 3
2540          i32.const 15
2541          i32.le_u
2542          if  ;; label = @4
337 ------------------------------------------------------------
2543            local.get 5
2544            local.get 3
2545            local.get 7
2546            i32.add
2547            local.tee 0
2548            i32.const 3
2549            i32.or
2550            i32.store offset=4
2551            local.get 0
2552            local.get 5
2553            i32.add
2554            local.tee 0
2555            local.get 0
2556            i32.load offset=4
2557            i32.const 1
2558            i32.or
2559            i32.store offset=4
2560            br 1 (;@3;)
338 ------------------------------------------------------------
2561          end
339 ------------------------------------------------------------
2562          local.get 5
2563          local.get 7
2564          i32.const 3
2565          i32.or
2566          i32.store offset=4
2567          local.get 5
2568          local.get 7
2569          i32.add
2570          local.tee 4
2571          local.get 3
2572          i32.const 1
2573          i32.or
2574          i32.store offset=4
2575          local.get 3
2576          local.get 4
2577          i32.add
2578          local.get 3
2579          i32.store
2580          local.get 3
2581          i32.const 255
2582          i32.le_u
2583          if  ;; label = @4
340 ------------------------------------------------------------
2584            local.get 3
2585            i32.const 3
2586            i32.shr_u
2587            local.tee 0
2588            i32.const 3
2589            i32.shl
2590            i32.const 15232
2591            i32.add
2592            local.set 2
2593            block (result i32)  ;; label = @5
341 ------------------------------------------------------------
2594              i32.const 15192
2595              i32.load
2596              local.tee 1
2597              i32.const 1
2598              local.get 0
2599              i32.shl
2600              local.tee 0
2601              i32.and
2602              i32.eqz
2603              if  ;; label = @6
342 ------------------------------------------------------------
2604                i32.const 15192
2605                local.get 0
2606                local.get 1
2607                i32.or
2608                i32.store
2609                local.get 2
2610                br 1 (;@5;)
343 ------------------------------------------------------------
2611              end
344 ------------------------------------------------------------
2612              local.get 2
2613              i32.load offset=8
2614            end
345 ------------------------------------------------------------
2615            local.set 0
2616            local.get 2
2617            local.get 4
2618            i32.store offset=8
2619            local.get 0
2620            local.get 4
2621            i32.store offset=12
2622            local.get 4
2623            local.get 2
2624            i32.store offset=12
2625            local.get 4
2626            local.get 0
2627            i32.store offset=8
2628            br 1 (;@3;)
346 ------------------------------------------------------------
2629          end
347 ------------------------------------------------------------
2630          i32.const 31
2631          local.set 0
2632          local.get 3
2633          i32.const 16777215
2634          i32.le_u
2635          if  ;; label = @4
348 ------------------------------------------------------------
2636            local.get 3
2637            i32.const 8
2638            i32.shr_u
2639            local.tee 0
2640            local.get 0
2641            i32.const 1048320
2642            i32.add
2643            i32.const 16
2644            i32.shr_u
2645            i32.const 8
2646            i32.and
2647            local.tee 2
2648            i32.shl
2649            local.tee 0
2650            local.get 0
2651            i32.const 520192
2652            i32.add
2653            i32.const 16
2654            i32.shr_u
2655            i32.const 4
2656            i32.and
2657            local.tee 1
2658            i32.shl
2659            local.tee 0
2660            local.get 0
2661            i32.const 245760
2662            i32.add
2663            i32.const 16
2664            i32.shr_u
2665            i32.const 2
2666            i32.and
2667            local.tee 0
2668            i32.shl
2669            i32.const 15
2670            i32.shr_u
2671            local.get 1
2672            local.get 2
2673            i32.or
2674            local.get 0
2675            i32.or
2676            i32.sub
2677            local.tee 0
2678            i32.const 1
2679            i32.shl
2680            local.get 3
2681            local.get 0
2682            i32.const 21
2683            i32.add
2684            i32.shr_u
2685            i32.const 1
2686            i32.and
2687            i32.or
2688            i32.const 28
2689            i32.add
2690            local.set 0
2691          end
349 ------------------------------------------------------------
2692          local.get 4
2693          local.get 0
2694          i32.store offset=28
2695          local.get 4
2696          i64.const 0
2697          i64.store offset=16 align=4
2698          local.get 0
2699          i32.const 2
2700          i32.shl
2701          i32.const 15496
2702          i32.add
2703          local.set 1
2704          block  ;; label = @4
350 ------------------------------------------------------------
2705            block  ;; label = @5
351 ------------------------------------------------------------
2706              local.get 9
2707              i32.const 1
2708              local.get 0
2709              i32.shl
2710              local.tee 2
2711              i32.and
2712              i32.eqz
2713              if  ;; label = @6
352 ------------------------------------------------------------
2714                i32.const 15196
2715                local.get 2
2716                local.get 9
2717                i32.or
2718                i32.store
2719                local.get 1
2720                local.get 4
2721                i32.store
2722                br 1 (;@5;)
353 ------------------------------------------------------------
2723              end
354 ------------------------------------------------------------
2724              local.get 3
2725              i32.const 0
2726              i32.const 25
2727              local.get 0
2728              i32.const 1
2729              i32.shr_u
2730              i32.sub
2731              local.get 0
2732              i32.const 31
2733              i32.eq
2734              select
2735              i32.shl
2736              local.set 0
2737              local.get 1
2738              i32.load
2739              local.set 7
2740              loop  ;; label = @6
355 ------------------------------------------------------------
2741                local.get 7
2742                local.tee 1
2743                i32.load offset=4
2744                i32.const -8
2745                i32.and
2746                local.get 3
2747                i32.eq
2748                br_if 2 (;@4;)
356 ------------------------------------------------------------
2749                local.get 0
2750                i32.const 29
2751                i32.shr_u
2752                local.set 2
2753                local.get 0
2754                i32.const 1
2755                i32.shl
2756                local.set 0
2757                local.get 1
2758                local.get 2
2759                i32.const 4
2760                i32.and
2761                i32.add
2762                local.tee 2
2763                i32.load offset=16
2764                local.tee 7
2765                br_if 0 (;@6;)
357 ------------------------------------------------------------
2766              end
358 ------------------------------------------------------------
2767              local.get 2
2768              local.get 4
2769              i32.store offset=16
2770            end
359 ------------------------------------------------------------
2771            local.get 4
2772            local.get 1
2773            i32.store offset=24
2774            local.get 4
2775            local.get 4
2776            i32.store offset=12
2777            local.get 4
2778            local.get 4
2779            i32.store offset=8
2780            br 1 (;@3;)
360 ------------------------------------------------------------
2781          end
361 ------------------------------------------------------------
2782          local.get 1
2783          i32.load offset=8
2784          local.tee 0
2785          local.get 4
2786          i32.store offset=12
2787          local.get 1
2788          local.get 4
2789          i32.store offset=8
2790          local.get 4
2791          i32.const 0
2792          i32.store offset=24
2793          local.get 4
2794          local.get 1
2795          i32.store offset=12
2796          local.get 4
2797          local.get 0
2798          i32.store offset=8
2799        end
362 ------------------------------------------------------------
2800        local.get 5
2801        i32.const 8
2802        i32.add
2803        local.set 0
2804        br 1 (;@1;)
363 ------------------------------------------------------------
2805      end
364 ------------------------------------------------------------
2806      block  ;; label = @2
365 ------------------------------------------------------------
2807        local.get 8
2808        i32.eqz
2809        br_if 0 (;@2;)
366 ------------------------------------------------------------
2810        block  ;; label = @3
367 ------------------------------------------------------------
2811          local.get 1
2812          i32.load offset=28
2813          local.tee 2
2814          i32.const 2
2815          i32.shl
2816          i32.const 15496
2817          i32.add
2818          local.tee 0
2819          i32.load
2820          local.get 1
2821          i32.eq
2822          if  ;; label = @4
368 ------------------------------------------------------------
2823            local.get 0
2824            local.get 5
2825            i32.store
2826            local.get 5
2827            br_if 1 (;@3;)
369 ------------------------------------------------------------
2828            i32.const 15196
2829            local.get 9
2830            i32.const -2
2831            local.get 2
2832            i32.rotl
2833            i32.and
2834            i32.store
2835            br 2 (;@2;)
370 ------------------------------------------------------------
2836          end
371 ------------------------------------------------------------
2837          local.get 8
2838          i32.const 16
2839          i32.const 20
2840          local.get 8
2841          i32.load offset=16
2842          local.get 1
2843          i32.eq
2844          select
2845          i32.add
2846          local.get 5
2847          i32.store
2848          local.get 5
2849          i32.eqz
2850          br_if 1 (;@2;)
372 ------------------------------------------------------------
2851        end
373 ------------------------------------------------------------
2852        local.get 5
2853        local.get 8
2854        i32.store offset=24
2855        local.get 1
2856        i32.load offset=16
2857        local.tee 0
2858        if  ;; label = @3
374 ------------------------------------------------------------
2859          local.get 5
2860          local.get 0
2861          i32.store offset=16
2862          local.get 0
2863          local.get 5
2864          i32.store offset=24
2865        end
375 ------------------------------------------------------------
2866        local.get 1
2867        i32.load offset=20
2868        local.tee 0
2869        i32.eqz
2870        br_if 0 (;@2;)
376 ------------------------------------------------------------
2871        local.get 5
2872        local.get 0
2873        i32.store offset=20
2874        local.get 0
2875        local.get 5
2876        i32.store offset=24
2877      end
377 ------------------------------------------------------------
2878      block  ;; label = @2
378 ------------------------------------------------------------
2879        local.get 3
2880        i32.const 15
2881        i32.le_u
2882        if  ;; label = @3
379 ------------------------------------------------------------
2883          local.get 1
2884          local.get 3
2885          local.get 7
2886          i32.add
2887          local.tee 0
2888          i32.const 3
2889          i32.or
2890          i32.store offset=4
2891          local.get 0
2892          local.get 1
2893          i32.add
2894          local.tee 0
2895          local.get 0
2896          i32.load offset=4
2897          i32.const 1
2898          i32.or
2899          i32.store offset=4
2900          br 1 (;@2;)
380 ------------------------------------------------------------
2901        end
381 ------------------------------------------------------------
2902        local.get 1
2903        local.get 7
2904        i32.const 3
2905        i32.or
2906        i32.store offset=4
2907        local.get 1
2908        local.get 7
2909        i32.add
2910        local.tee 2
2911        local.get 3
2912        i32.const 1
2913        i32.or
2914        i32.store offset=4
2915        local.get 2
2916        local.get 3
2917        i32.add
2918        local.get 3
2919        i32.store
2920        local.get 10
2921        if  ;; label = @3
382 ------------------------------------------------------------
2922          local.get 10
2923          i32.const 3
2924          i32.shr_u
2925          local.tee 0
2926          i32.const 3
2927          i32.shl
2928          i32.const 15232
2929          i32.add
2930          local.set 4
2931          i32.const 15212
2932          i32.load
2933          local.set 5
2934          block (result i32)  ;; label = @4
383 ------------------------------------------------------------
2935            i32.const 1
2936            local.get 0
2937            i32.shl
2938            local.tee 0
2939            local.get 6
2940            i32.and
2941            i32.eqz
2942            if  ;; label = @5
384 ------------------------------------------------------------
2943              i32.const 15192
2944              local.get 0
2945              local.get 6
2946              i32.or
2947              i32.store
2948              local.get 4
2949              br 1 (;@4;)
385 ------------------------------------------------------------
2950            end
386 ------------------------------------------------------------
2951            local.get 4
2952            i32.load offset=8
2953          end
387 ------------------------------------------------------------
2954          local.set 0
2955          local.get 4
2956          local.get 5
2957          i32.store offset=8
2958          local.get 0
2959          local.get 5
2960          i32.store offset=12
2961          local.get 5
2962          local.get 4
2963          i32.store offset=12
2964          local.get 5
2965          local.get 0
2966          i32.store offset=8
2967        end
388 ------------------------------------------------------------
2968        i32.const 15212
2969        local.get 2
2970        i32.store
2971        i32.const 15200
2972        local.get 3
2973        i32.store
2974      end
389 ------------------------------------------------------------
2975      local.get 1
2976      i32.const 8
2977      i32.add
2978      local.set 0
2979    end
390 ------------------------------------------------------------
2980    local.get 11
2981    i32.const 16
2982    i32.add
2983    global.set 0
2984    local.get 0)
