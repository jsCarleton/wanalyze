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
0063                                  i32.load
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
0085                                  i32.store
0086                                  local.get 4
0087                                  local.get 3
0088                                  i32.store
0089                                end
19 ------------------------------------------------------------
0090                                local.get 1
0091                                local.get 2
0092                                i32.const 3
0093                                i32.shl
0094                                local.tee 2
0095                                i32.const 3
0096                                i32.or
0097                                i32.store
0098                                local.get 1
0099                                local.get 2
0100                                i32.add
0101                                local.tee 1
0102                                local.get 1
0103                                i32.load
0104                                i32.const 1
0105                                i32.or
0106                                i32.store
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
0195                                  i32.load
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
0218                                  i32.store
0219                                  local.get 3
0220                                  local.get 0
0221                                  i32.store
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
0231                                i32.store
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
0245                                i32.store
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
0283                                    i32.load
0284                                  end
34 ------------------------------------------------------------
0285                                  local.set 4
0286                                  local.get 1
0287                                  local.get 2
0288                                  i32.store
0289                                  local.get 4
0290                                  local.get 2
0291                                  i32.store
0292                                  local.get 2
0293                                  local.get 1
0294                                  i32.store
0295                                  local.get 2
0296                                  local.get 4
0297                                  i32.store
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
0375                              i32.load
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
0386                                  i32.load
0387                                  local.tee 0
0388                                  i32.eqz
0389                                  if  ;; label = @16
41 ------------------------------------------------------------
0390                                    local.get 1
0391                                    i32.load
0392                                    local.tee 0
0393                                    i32.eqz
0394                                    br_if 1 (;@15;)
42 ------------------------------------------------------------
0395                                  end
43 ------------------------------------------------------------
0396                                  local.get 0
0397                                  i32.load
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
0421                              i32.load
0422                              local.set 9
0423                              local.get 2
0424                              local.get 2
0425                              i32.load
0426                              local.tee 4
0427                              i32.ne
0428                              if  ;; label = @14
47 ------------------------------------------------------------
0429                                i32.const 157088
0430                                i32.load
0431                                local.get 2
0432                                i32.load
0433                                local.tee 0
0434                                i32.le_u
0435                                if  ;; label = @15
48 ------------------------------------------------------------
0436                                  local.get 0
0437                                  i32.load
0438                                  drop
0439                                end
49 ------------------------------------------------------------
0440                                local.get 0
0441                                local.get 4
0442                                i32.store
0443                                local.get 4
0444                                local.get 0
0445                                i32.store
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
0457                                i32.load
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
0482                                i32.load
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
0609                                      i32.load
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
0631                                    i32.load
0632                                    local.tee 6
0633                                    local.get 6
0634                                    local.get 3
0635                                    local.get 2
0636                                    i32.const 29
0637                                    i32.shr_u
0638                                    i32.const 4
0639                                    i32.and
0640                                    i32.add
0641                                    i32.load
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
0747                                i32.load
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
0767                                i32.load
0768                                local.tee 2
0769                                if (result i32)  ;; label = @15
86 ------------------------------------------------------------
0770                                  local.get 2
0771                                else
87 ------------------------------------------------------------
0772                                  local.get 0
0773                                  i32.load
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
0790                            i32.load
0791                            local.set 8
0792                            local.get 4
0793                            local.get 4
0794                            i32.load
0795                            local.tee 2
0796                            i32.ne
0797                            if  ;; label = @13
94 ------------------------------------------------------------
0798                              i32.const 157088
0799                              i32.load
0800                              local.get 4
0801                              i32.load
0802                              local.tee 0
0803                              i32.le_u
0804                              if  ;; label = @14
95 ------------------------------------------------------------
0805                                local.get 0
0806                                i32.load
0807                                drop
0808                              end
96 ------------------------------------------------------------
0809                              local.get 0
0810                              local.get 2
0811                              i32.store
0812                              local.get 2
0813                              local.get 0
0814                              i32.store
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
0826                              i32.load
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
0851                              i32.load
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
0890                                i32.store
0891                                local.get 0
0892                                local.get 1
0893                                i32.add
0894                                local.get 2
0895                                i32.store
0896                                local.get 0
0897                                local.get 5
0898                                i32.const 3
0899                                i32.or
0900                                i32.store
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
0913                              i32.store
0914                              local.get 0
0915                              local.get 1
0916                              i32.add
0917                              local.tee 1
0918                              local.get 1
0919                              i32.load
0920                              i32.const 1
0921                              i32.or
0922                              i32.store
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
0954                            i32.store
0955                            local.get 0
0956                            local.get 5
0957                            i32.const 3
0958                            i32.or
0959                            i32.store
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
1054                                  i32.load
1055                                  i32.add
1056                                  local.get 3
1057                                  i32.gt_u
1058                                  br_if 3 (;@12;)
133 ------------------------------------------------------------
1059                                end
134 ------------------------------------------------------------
1060                                local.get 0
1061                                i32.load
1062                                local.tee 0
1063                                br_if 0 (;@14;)
135 ------------------------------------------------------------
1064                              end
136 ------------------------------------------------------------
1065                            end
137 ------------------------------------------------------------
1066                            memory.size
1067                            unreachable
138 ------------------------------------------------------------
1068                            local.set 0
1069                            block  ;; label = @13
139 ------------------------------------------------------------
1070                              i32.const 157568
1071                              i32.load
1072                              local.tee 1
1073                              local.get 0
1074                              i32.const 16
1075                              i32.shl
1076                              i32.le_u
1077                              br_if 0 (;@13;)
140 ------------------------------------------------------------
1078                              local.get 1
1079                              call 2
1080                              br_if 0 (;@13;)
141 ------------------------------------------------------------
1081                              i32.const 156988
1082                              i32.const 48
1083                              i32.store
1084                              br 6 (;@7;)
142 ------------------------------------------------------------
1085                            end
143 ------------------------------------------------------------
1086                            i32.const 157568
1087                            local.get 1
1088                            i32.store
1089                            local.get 1
1090                            i32.const -1
1091                            i32.eq
1092                            br_if 5 (;@7;)
144 ------------------------------------------------------------
1093                            local.get 2
1094                            local.set 6
1095                            i32.const 157548
1096                            i32.load
1097                            local.tee 0
1098                            i32.const -1
1099                            i32.add
1100                            local.tee 3
1101                            local.get 1
1102                            i32.and
1103                            if  ;; label = @13
145 ------------------------------------------------------------
1104                              local.get 2
1105                              local.get 1
1106                              i32.sub
1107                              local.get 1
1108                              local.get 3
1109                              i32.add
1110                              i32.const 0
1111                              local.get 0
1112                              i32.sub
1113                              i32.and
1114                              i32.add
1115                              local.set 6
1116                            end
146 ------------------------------------------------------------
1117                            local.get 6
1118                            local.get 5
1119                            i32.le_u
1120                            local.get 6
1121                            i32.const 2147483646
1122                            i32.gt_u
1123                            i32.or
1124                            br_if 5 (;@7;)
147 ------------------------------------------------------------
1125                            i32.const 157512
1126                            i32.load
1127                            local.tee 0
1128                            if  ;; label = @13
148 ------------------------------------------------------------
1129                              i32.const 157504
1130                              i32.load
1131                              local.tee 3
1132                              local.get 6
1133                              i32.add
1134                              local.tee 7
1135                              local.get 3
1136                              i32.le_u
1137                              local.get 7
1138                              local.get 0
1139                              i32.gt_u
1140                              i32.or
1141                              br_if 6 (;@7;)
149 ------------------------------------------------------------
1142                            end
150 ------------------------------------------------------------
1143                            i32.const 157568
1144                            i32.load
1145                            local.tee 0
1146                            local.get 6
1147                            i32.const 3
1148                            i32.add
1149                            i32.const -4
1150                            i32.and
1151                            local.tee 7
1152                            i32.add
1153                            local.set 3
1154                            block  ;; label = @13
151 ------------------------------------------------------------
1155                              block  ;; label = @14
152 ------------------------------------------------------------
1156                                local.get 7
1157                                i32.const 1
1158                                i32.ge_s
1159                                i32.const 0
1160                                local.get 3
1161                                local.get 0
1162                                i32.le_u
1163                                select
1164                                br_if 0 (;@14;)
153 ------------------------------------------------------------
1165                                local.get 3
1166                                memory.size
1167                                unreachable
154 ------------------------------------------------------------
1168                                i32.const 16
1169                                i32.shl
1170                                i32.gt_u
1171                                if  ;; label = @15
155 ------------------------------------------------------------
1172                                  local.get 3
1173                                  call 2
1174                                  i32.eqz
1175                                  br_if 1 (;@14;)
156 ------------------------------------------------------------
1176                                end
157 ------------------------------------------------------------
1177                                i32.const 157568
1178                                local.get 3
1179                                i32.store
1180                                br 1 (;@13;)
158 ------------------------------------------------------------
1181                              end
159 ------------------------------------------------------------
1182                              i32.const 156988
1183                              i32.const 48
1184                              i32.store
1185                              i32.const -1
1186                              local.set 0
1187                            end
160 ------------------------------------------------------------
1188                            local.get 0
1189                            local.get 1
1190                            i32.eq
1191                            br_if 7 (;@5;)
161 ------------------------------------------------------------
1192                            local.get 0
1193                            local.set 1
1194                            br 4 (;@8;)
162 ------------------------------------------------------------
1195                          end
163 ------------------------------------------------------------
1196                          local.get 6
1197                          local.get 1
1198                          i32.sub
1199                          local.get 7
1200                          i32.and
1201                          local.tee 6
1202                          i32.const 2147483646
1203                          i32.gt_u
1204                          br_if 4 (;@7;)
164 ------------------------------------------------------------
1205                          i32.const 157568
1206                          i32.load
1207                          local.tee 1
1208                          local.get 6
1209                          i32.const 3
1210                          i32.add
1211                          i32.const -4
1212                          i32.and
1213                          local.tee 7
1214                          i32.add
1215                          local.set 3
1216                          local.get 7
1217                          i32.const 1
1218                          i32.ge_s
1219                          i32.const 0
1220                          local.get 3
1221                          local.get 1
1222                          i32.le_u
1223                          select
1224                          br_if 2 (;@9;)
165 ------------------------------------------------------------
1225                          local.get 3
1226                          memory.size
1227                          unreachable
166 ------------------------------------------------------------
1228                          i32.const 16
1229                          i32.shl
1230                          i32.gt_u
1231                          if  ;; label = @12
167 ------------------------------------------------------------
1232                            local.get 3
1233                            call 2
1234                            i32.eqz
1235                            br_if 3 (;@9;)
168 ------------------------------------------------------------
1236                          end
169 ------------------------------------------------------------
1237                          i32.const 157568
1238                          local.get 3
1239                          i32.store
1240                          local.get 0
1241                          i32.load
1242                          local.get 0
1243                          i32.load
1244                          i32.add
1245                          local.get 1
1246                          i32.ne
1247                          br_if 3 (;@8;)
170 ------------------------------------------------------------
1248                          local.get 1
1249                          i32.const -1
1250                          i32.eq
1251                          br_if 4 (;@7;)
171 ------------------------------------------------------------
1252                          br 6 (;@5;)
172 ------------------------------------------------------------
1253                        end
173 ------------------------------------------------------------
1254                        i32.const 0
1255                        local.set 4
1256                        br 8 (;@2;)
174 ------------------------------------------------------------
1257                      end
175 ------------------------------------------------------------
1258                      i32.const 0
1259                      local.set 2
1260                      br 6 (;@3;)
176 ------------------------------------------------------------
1261                    end
177 ------------------------------------------------------------
1262                    i32.const 156988
1263                    i32.const 48
1264                    i32.store
1265                    br 1 (;@7;)
178 ------------------------------------------------------------
1266                  end
179 ------------------------------------------------------------
1267                  block  ;; label = @8
180 ------------------------------------------------------------
1268                    local.get 1
1269                    i32.const -1
1270                    i32.eq
1271                    local.get 5
1272                    i32.const 48
1273                    i32.add
1274                    local.get 6
1275                    i32.le_u
1276                    i32.or
1277                    i32.eqz
1278                    if  ;; label = @9
181 ------------------------------------------------------------
1279                      i32.const 157552
1280                      i32.load
1281                      local.tee 0
1282                      local.get 4
1283                      local.get 6
1284                      i32.sub
1285                      i32.add
1286                      i32.const 0
1287                      local.get 0
1288                      i32.sub
1289                      i32.and
1290                      local.tee 3
1291                      i32.const 2147483646
1292                      i32.gt_u
1293                      br_if 4 (;@5;)
182 ------------------------------------------------------------
1294                      i32.const 157568
1295                      i32.load
1296                      local.tee 4
1297                      local.get 3
1298                      i32.const 3
1299                      i32.add
1300                      i32.const -4
1301                      i32.and
1302                      local.tee 7
1303                      i32.add
1304                      local.set 0
1305                      block  ;; label = @10
183 ------------------------------------------------------------
1306                        local.get 7
1307                        i32.const 1
1308                        i32.ge_s
1309                        i32.const 0
1310                        local.get 0
1311                        local.get 4
1312                        i32.le_u
1313                        select
1314                        i32.eqz
1315                        if  ;; label = @11
184 ------------------------------------------------------------
1316                          local.get 0
1317                          memory.size
1318                          unreachable
185 ------------------------------------------------------------
1319                          i32.const 16
1320                          i32.shl
1321                          i32.le_u
1322                          br_if 1 (;@10;)
186 ------------------------------------------------------------
1323                          local.get 0
1324                          call 2
1325                          br_if 1 (;@10;)
187 ------------------------------------------------------------
1326                        end
188 ------------------------------------------------------------
1327                        i32.const 156988
1328                        i32.const 48
1329                        i32.store
1330                        br 2 (;@8;)
189 ------------------------------------------------------------
1331                      end
190 ------------------------------------------------------------
1332                      i32.const 157568
1333                      local.get 0
1334                      i32.store
1335                      local.get 4
1336                      i32.const -1
1337                      i32.eq
1338                      br_if 1 (;@8;)
191 ------------------------------------------------------------
1339                      local.get 3
1340                      local.get 6
1341                      i32.add
1342                      local.set 6
1343                      br 4 (;@5;)
192 ------------------------------------------------------------
1344                    end
193 ------------------------------------------------------------
1345                    local.get 1
1346                    i32.const -1
1347                    i32.ne
1348                    br_if 3 (;@5;)
194 ------------------------------------------------------------
1349                    br 1 (;@7;)
195 ------------------------------------------------------------
1350                  end
196 ------------------------------------------------------------
1351                  i32.const 157568
1352                  i32.load
1353                  local.tee 1
1354                  i32.const 3
1355                  local.get 6
1356                  i32.sub
1357                  i32.const -4
1358                  i32.and
1359                  local.tee 3
1360                  i32.add
1361                  local.set 0
1362                  block  ;; label = @8
197 ------------------------------------------------------------
1363                    local.get 3
1364                    i32.const 1
1365                    i32.ge_s
1366                    i32.const 0
1367                    local.get 0
1368                    local.get 1
1369                    i32.le_u
1370                    select
1371                    br_if 0 (;@8;)
198 ------------------------------------------------------------
1372                    local.get 0
1373                    memory.size
1374                    unreachable
199 ------------------------------------------------------------
1375                    i32.const 16
1376                    i32.shl
1377                    i32.gt_u
1378                    if  ;; label = @9
200 ------------------------------------------------------------
1379                      local.get 0
1380                      call 2
1381                      i32.eqz
1382                      br_if 1 (;@8;)
201 ------------------------------------------------------------
1383                    end
202 ------------------------------------------------------------
1384                    i32.const 157568
1385                    local.get 0
1386                    i32.store
1387                    br 1 (;@7;)
203 ------------------------------------------------------------
1388                  end
204 ------------------------------------------------------------
1389                  i32.const 156988
1390                  i32.const 48
1391                  i32.store
1392                end
205 ------------------------------------------------------------
1393                i32.const 157516
1394                i32.const 157516
1395                i32.load
1396                i32.const 4
1397                i32.or
1398                i32.store
1399              end
206 ------------------------------------------------------------
1400              local.get 2
1401              i32.const 2147483646
1402              i32.gt_u
1403              br_if 1 (;@4;)
207 ------------------------------------------------------------
1404              i32.const 157568
1405              i32.load
1406              local.tee 1
1407              local.get 2
1408              i32.const 3
1409              i32.add
1410              i32.const -4
1411              i32.and
1412              local.tee 2
1413              i32.add
1414              local.set 0
1415              block  ;; label = @6
208 ------------------------------------------------------------
1416                block  ;; label = @7
209 ------------------------------------------------------------
1417                  local.get 2
1418                  i32.const 1
1419                  i32.ge_s
1420                  i32.const 0
1421                  local.get 0
1422                  local.get 1
1423                  i32.le_u
1424                  select
1425                  br_if 0 (;@7;)
210 ------------------------------------------------------------
1426                  local.get 0
1427                  memory.size
1428                  unreachable
211 ------------------------------------------------------------
1429                  i32.const 16
1430                  i32.shl
1431                  i32.gt_u
1432                  if  ;; label = @8
212 ------------------------------------------------------------
1433                    local.get 0
1434                    call 2
1435                    i32.eqz
1436                    br_if 1 (;@7;)
213 ------------------------------------------------------------
1437                  end
214 ------------------------------------------------------------
1438                  i32.const 157568
1439                  local.get 0
1440                  i32.store
1441                  br 1 (;@6;)
215 ------------------------------------------------------------
1442                end
216 ------------------------------------------------------------
1443                i32.const 156988
1444                i32.const 48
1445                i32.store
1446                i32.const -1
1447                local.set 1
1448              end
217 ------------------------------------------------------------
1449              memory.size
1450              unreachable
218 ------------------------------------------------------------
1451              local.set 2
1452              block  ;; label = @6
219 ------------------------------------------------------------
1453                i32.const 157568
1454                i32.load
1455                local.tee 0
1456                local.get 2
1457                i32.const 16
1458                i32.shl
1459                i32.le_u
1460                br_if 0 (;@6;)
220 ------------------------------------------------------------
1461                local.get 0
1462                call 2
1463                br_if 0 (;@6;)
221 ------------------------------------------------------------
1464                i32.const 156988
1465                i32.const 48
1466                i32.store
1467                br 2 (;@4;)
222 ------------------------------------------------------------
1468              end
223 ------------------------------------------------------------
1469              i32.const 157568
1470              local.get 0
1471              i32.store
1472              local.get 1
1473              i32.const -1
1474              i32.eq
1475              local.get 1
1476              local.get 0
1477              i32.ge_u
1478              i32.or
1479              local.get 0
1480              i32.const -1
1481              i32.eq
1482              i32.or
1483              br_if 1 (;@4;)
224 ------------------------------------------------------------
1484              local.get 0
1485              local.get 1
1486              i32.sub
1487              local.tee 6
1488              local.get 5
1489              i32.const 40
1490              i32.add
1491              i32.le_u
1492              br_if 1 (;@4;)
225 ------------------------------------------------------------
1493            end
226 ------------------------------------------------------------
1494            i32.const 157504
1495            i32.const 157504
1496            i32.load
1497            local.get 6
1498            i32.add
1499            local.tee 0
1500            i32.store
1501            local.get 0
1502            i32.const 157508
1503            i32.load
1504            i32.gt_u
1505            if  ;; label = @5
227 ------------------------------------------------------------
1506              i32.const 157508
1507              local.get 0
1508              i32.store
1509            end
228 ------------------------------------------------------------
1510            block  ;; label = @5
229 ------------------------------------------------------------
1511              block  ;; label = @6
230 ------------------------------------------------------------
1512                block  ;; label = @7
231 ------------------------------------------------------------
1513                  i32.const 157096
1514                  i32.load
1515                  local.tee 3
1516                  if  ;; label = @8
232 ------------------------------------------------------------
1517                    i32.const 157520
1518                    local.set 0
1519                    loop  ;; label = @9
233 ------------------------------------------------------------
1520                      local.get 1
1521                      local.get 0
1522                      i32.load
1523                      local.tee 2
1524                      local.get 0
1525                      i32.load
1526                      local.tee 4
1527                      i32.add
1528                      i32.eq
1529                      br_if 2 (;@7;)
234 ------------------------------------------------------------
1530                      local.get 0
1531                      i32.load
1532                      local.tee 0
1533                      br_if 0 (;@9;)
235 ------------------------------------------------------------
1534                    end
236 ------------------------------------------------------------
1535                    br 2 (;@6;)
237 ------------------------------------------------------------
1536                  end
238 ------------------------------------------------------------
1537                  i32.const 157088
1538                  i32.load
1539                  local.tee 0
1540                  i32.const 0
1541                  local.get 1
1542                  local.get 0
1543                  i32.ge_u
1544                  select
1545                  i32.eqz
1546                  if  ;; label = @8
239 ------------------------------------------------------------
1547                    i32.const 157088
1548                    local.get 1
1549                    i32.store
1550                  end
240 ------------------------------------------------------------
1551                  i32.const 0
1552                  local.set 0
1553                  i32.const 157524
1554                  local.get 6
1555                  i32.store
1556                  i32.const 157520
1557                  local.get 1
1558                  i32.store
1559                  i32.const 157104
1560                  i32.const -1
1561                  i32.store
1562                  i32.const 157108
1563                  i32.const 157544
1564                  i32.load
1565                  i32.store
1566                  i32.const 157532
1567                  i32.const 0
1568                  i32.store
1569                  loop  ;; label = @8
241 ------------------------------------------------------------
1570                    local.get 0
1571                    i32.const 3
1572                    i32.shl
1573                    local.tee 2
1574                    i32.const 157120
1575                    i32.add
1576                    local.get 2
1577                    i32.const 157112
1578                    i32.add
1579                    local.tee 3
1580                    i32.store
1581                    local.get 2
1582                    i32.const 157124
1583                    i32.add
1584                    local.get 3
1585                    i32.store
1586                    local.get 0
1587                    i32.const 1
1588                    i32.add
1589                    local.tee 0
1590                    i32.const 32
1591                    i32.ne
1592                    br_if 0 (;@8;)
242 ------------------------------------------------------------
1593                  end
243 ------------------------------------------------------------
1594                  i32.const 157084
1595                  local.get 6
1596                  i32.const -40
1597                  i32.add
1598                  local.tee 0
1599                  i32.const -8
1600                  local.get 1
1601                  i32.sub
1602                  i32.const 7
1603                  i32.and
1604                  i32.const 0
1605                  local.get 1
1606                  i32.const 8
1607                  i32.add
1608                  i32.const 7
1609                  i32.and
1610                  select
1611                  local.tee 2
1612                  i32.sub
1613                  local.tee 3
1614                  i32.store
1615                  i32.const 157096
1616                  local.get 1
1617                  local.get 2
1618                  i32.add
1619                  local.tee 2
1620                  i32.store
1621                  local.get 2
1622                  local.get 3
1623                  i32.const 1
1624                  i32.or
1625                  i32.store
1626                  local.get 0
1627                  local.get 1
1628                  i32.add
1629                  i32.const 40
1630                  i32.store
1631                  i32.const 157100
1632                  i32.const 157560
1633                  i32.load
1634                  i32.store
1635                  br 2 (;@5;)
244 ------------------------------------------------------------
1636                end
245 ------------------------------------------------------------
1637                local.get 0
1638                i32.load8_u
1639                i32.const 8
1640                i32.and
1641                local.get 1
1642                local.get 3
1643                i32.le_u
1644                i32.or
1645                local.get 2
1646                local.get 3
1647                i32.gt_u
1648                i32.or
1649                br_if 0 (;@6;)
246 ------------------------------------------------------------
1650                local.get 0
1651                local.get 4
1652                local.get 6
1653                i32.add
1654                i32.store
1655                i32.const 157096
1656                local.get 3
1657                i32.const -8
1658                local.get 3
1659                i32.sub
1660                i32.const 7
1661                i32.and
1662                i32.const 0
1663                local.get 3
1664                i32.const 8
1665                i32.add
1666                i32.const 7
1667                i32.and
1668                select
1669                local.tee 0
1670                i32.add
1671                local.tee 1
1672                i32.store
1673                i32.const 157084
1674                i32.const 157084
1675                i32.load
1676                local.get 6
1677                i32.add
1678                local.tee 2
1679                local.get 0
1680                i32.sub
1681                local.tee 0
1682                i32.store
1683                local.get 1
1684                local.get 0
1685                i32.const 1
1686                i32.or
1687                i32.store
1688                local.get 2
1689                local.get 3
1690                i32.add
1691                i32.const 40
1692                i32.store
1693                i32.const 157100
1694                i32.const 157560
1695                i32.load
1696                i32.store
1697                br 1 (;@5;)
247 ------------------------------------------------------------
1698              end
248 ------------------------------------------------------------
1699              local.get 1
1700              i32.const 157088
1701              i32.load
1702              local.tee 4
1703              i32.lt_u
1704              if  ;; label = @6
249 ------------------------------------------------------------
1705                i32.const 157088
1706                local.get 1
1707                i32.store
1708                local.get 1
1709                local.set 4
1710              end
250 ------------------------------------------------------------
1711              local.get 1
1712              local.get 6
1713              i32.add
1714              local.set 2
1715              i32.const 157520
1716              local.set 0
1717              block  ;; label = @6
251 ------------------------------------------------------------
1718                block  ;; label = @7
252 ------------------------------------------------------------
1719                  block  ;; label = @8
253 ------------------------------------------------------------
1720                    block  ;; label = @9
254 ------------------------------------------------------------
1721                      block  ;; label = @10
255 ------------------------------------------------------------
1722                        block  ;; label = @11
256 ------------------------------------------------------------
1723                          loop  ;; label = @12
257 ------------------------------------------------------------
1724                            local.get 2
1725                            local.get 0
1726                            i32.load
1727                            i32.ne
1728                            if  ;; label = @13
258 ------------------------------------------------------------
1729                              local.get 0
1730                              i32.load
1731                              local.tee 0
1732                              br_if 1 (;@12;)
259 ------------------------------------------------------------
1733                              br 2 (;@11;)
260 ------------------------------------------------------------
1734                            end
261 ------------------------------------------------------------
1735                          end
262 ------------------------------------------------------------
1736                          local.get 0
1737                          i32.load8_u
1738                          i32.const 8
1739                          i32.and
1740                          i32.eqz
1741                          br_if 1 (;@10;)
263 ------------------------------------------------------------
1742                        end
264 ------------------------------------------------------------
1743                        i32.const 157520
1744                        local.set 0
1745                        loop  ;; label = @11
265 ------------------------------------------------------------
1746                          local.get 0
1747                          i32.load
1748                          local.tee 2
1749                          local.get 3
1750                          i32.le_u
1751                          if  ;; label = @12
266 ------------------------------------------------------------
1752                            local.get 2
1753                            local.get 0
1754                            i32.load
1755                            i32.add
1756                            local.tee 4
1757                            local.get 3
1758                            i32.gt_u
1759                            br_if 3 (;@9;)
267 ------------------------------------------------------------
1760                          end
268 ------------------------------------------------------------
1761                          local.get 0
1762                          i32.load
1763                          local.set 0
1764                          br 0 (;@11;)
269 ------------------------------------------------------------
1765                          unreachable
270 ------------------------------------------------------------
1766                        end
271 ------------------------------------------------------------
1767                        unreachable
272 ------------------------------------------------------------
1768                      end
273 ------------------------------------------------------------
1769                      local.get 0
1770                      local.get 1
1771                      i32.store
1772                      local.get 0
1773                      local.get 0
1774                      i32.load
1775                      local.get 6
1776                      i32.add
1777                      i32.store
1778                      local.get 1
1779                      i32.const -8
1780                      local.get 1
1781                      i32.sub
1782                      i32.const 7
1783                      i32.and
1784                      i32.const 0
1785                      local.get 1
1786                      i32.const 8
1787                      i32.add
1788                      i32.const 7
1789                      i32.and
1790                      select
1791                      i32.add
1792                      local.tee 9
1793                      local.get 5
1794                      i32.const 3
1795                      i32.or
1796                      i32.store
1797                      local.get 2
1798                      i32.const -8
1799                      local.get 2
1800                      i32.sub
1801                      i32.const 7
1802                      i32.and
1803                      i32.const 0
1804                      local.get 2
1805                      i32.const 8
1806                      i32.add
1807                      i32.const 7
1808                      i32.and
1809                      select
1810                      i32.add
1811                      local.tee 2
1812                      local.get 9
1813                      i32.sub
1814                      local.get 5
1815                      i32.sub
1816                      local.set 0
1817                      local.get 5
1818                      local.get 9
1819                      i32.add
1820                      local.set 7
1821                      local.get 2
1822                      local.get 3
1823                      i32.eq
1824                      if  ;; label = @10
274 ------------------------------------------------------------
1825                        i32.const 157096
1826                        local.get 7
1827                        i32.store
1828                        i32.const 157084
1829                        i32.const 157084
1830                        i32.load
1831                        local.get 0
1832                        i32.add
1833                        local.tee 0
1834                        i32.store
1835                        local.get 7
1836                        local.get 0
1837                        i32.const 1
1838                        i32.or
1839                        i32.store
1840                        br 3 (;@7;)
275 ------------------------------------------------------------
1841                      end
276 ------------------------------------------------------------
1842                      local.get 2
1843                      i32.const 157092
1844                      i32.load
1845                      i32.eq
1846                      if  ;; label = @10
277 ------------------------------------------------------------
1847                        i32.const 157092
1848                        local.get 7
1849                        i32.store
1850                        i32.const 157080
1851                        i32.const 157080
1852                        i32.load
1853                        local.get 0
1854                        i32.add
1855                        local.tee 0
1856                        i32.store
1857                        local.get 7
1858                        local.get 0
1859                        i32.const 1
1860                        i32.or
1861                        i32.store
1862                        local.get 0
1863                        local.get 7
1864                        i32.add
1865                        local.get 0
1866                        i32.store
1867                        br 3 (;@7;)
278 ------------------------------------------------------------
1868                      end
279 ------------------------------------------------------------
1869                      local.get 2
1870                      i32.load
1871                      local.tee 1
1872                      i32.const 3
1873                      i32.and
1874                      i32.const 1
1875                      i32.eq
1876                      if  ;; label = @10
280 ------------------------------------------------------------
1877                        local.get 1
1878                        i32.const -8
1879                        i32.and
1880                        local.set 10
1881                        block  ;; label = @11
281 ------------------------------------------------------------
1882                          local.get 1
1883                          i32.const 255
1884                          i32.le_u
1885                          if  ;; label = @12
282 ------------------------------------------------------------
1886                            local.get 2
1887                            i32.load
1888                            local.tee 3
1889                            local.get 1
1890                            i32.const 3
1891                            i32.shr_u
1892                            local.tee 4
1893                            i32.const 3
1894                            i32.shl
1895                            i32.const 157112
1896                            i32.add
1897                            i32.ne
1898                            drop
1899                            local.get 3
1900                            local.get 2
1901                            i32.load
1902                            local.tee 1
1903                            i32.eq
1904                            if  ;; label = @13
283 ------------------------------------------------------------
1905                              i32.const 157072
1906                              i32.const 157072
1907                              i32.load
1908                              i32.const -2
1909                              local.get 4
1910                              i32.rotl
1911                              i32.and
1912                              i32.store
1913                              br 2 (;@11;)
284 ------------------------------------------------------------
1914                            end
285 ------------------------------------------------------------
1915                            local.get 3
1916                            local.get 1
1917                            i32.store
1918                            local.get 1
1919                            local.get 3
1920                            i32.store
1921                            br 1 (;@11;)
286 ------------------------------------------------------------
1922                          end
287 ------------------------------------------------------------
1923                          local.get 2
1924                          i32.load
1925                          local.set 8
1926                          block  ;; label = @12
288 ------------------------------------------------------------
1927                            local.get 2
1928                            local.get 2
1929                            i32.load
1930                            local.tee 6
1931                            i32.ne
1932                            if  ;; label = @13
289 ------------------------------------------------------------
1933                              local.get 4
1934                              local.get 2
1935                              i32.load
1936                              local.tee 1
1937                              i32.le_u
1938                              if  ;; label = @14
290 ------------------------------------------------------------
1939                                local.get 1
1940                                i32.load
1941                                drop
1942                              end
291 ------------------------------------------------------------
1943                              local.get 1
1944                              local.get 6
1945                              i32.store
1946                              local.get 6
1947                              local.get 1
1948                              i32.store
1949                              br 1 (;@12;)
292 ------------------------------------------------------------
1950                            end
293 ------------------------------------------------------------
1951                            block  ;; label = @13
294 ------------------------------------------------------------
1952                              local.get 2
1953                              i32.const 20
1954                              i32.add
1955                              local.tee 3
1956                              i32.load
1957                              local.tee 5
1958                              br_if 0 (;@13;)
295 ------------------------------------------------------------
1959                              local.get 2
1960                              i32.const 16
1961                              i32.add
1962                              local.tee 3
1963                              i32.load
1964                              local.tee 5
1965                              br_if 0 (;@13;)
296 ------------------------------------------------------------
1966                              i32.const 0
1967                              local.set 6
1968                              br 1 (;@12;)
297 ------------------------------------------------------------
1969                            end
298 ------------------------------------------------------------
1970                            loop  ;; label = @13
299 ------------------------------------------------------------
1971                              local.get 3
1972                              local.set 1
1973                              local.get 5
1974                              local.tee 6
1975                              i32.const 20
1976                              i32.add
1977                              local.tee 3
1978                              i32.load
1979                              local.tee 5
1980                              br_if 0 (;@13;)
300 ------------------------------------------------------------
1981                              local.get 6
1982                              i32.const 16
1983                              i32.add
1984                              local.set 3
1985                              local.get 6
1986                              i32.load
1987                              local.tee 5
1988                              br_if 0 (;@13;)
301 ------------------------------------------------------------
1989                            end
302 ------------------------------------------------------------
1990                            local.get 1
1991                            i32.const 0
1992                            i32.store
1993                          end
303 ------------------------------------------------------------
1994                          local.get 8
1995                          i32.eqz
1996                          br_if 0 (;@11;)
304 ------------------------------------------------------------
1997                          block  ;; label = @12
305 ------------------------------------------------------------
1998                            local.get 2
1999                            local.get 2
2000                            i32.load
2001                            local.tee 1
2002                            i32.const 2
2003                            i32.shl
2004                            i32.const 157376
2005                            i32.add
2006                            local.tee 3
2007                            i32.load
2008                            i32.eq
2009                            if  ;; label = @13
306 ------------------------------------------------------------
2010                              local.get 3
2011                              local.get 6
2012                              i32.store
2013                              local.get 6
2014                              br_if 1 (;@12;)
307 ------------------------------------------------------------
2015                              i32.const 157076
2016                              i32.const 157076
2017                              i32.load
2018                              i32.const -2
2019                              local.get 1
2020                              i32.rotl
2021                              i32.and
2022                              i32.store
2023                              br 2 (;@11;)
308 ------------------------------------------------------------
2024                            end
309 ------------------------------------------------------------
2025                            local.get 8
2026                            i32.const 16
2027                            i32.const 20
2028                            local.get 8
2029                            i32.load
2030                            local.get 2
2031                            i32.eq
2032                            select
2033                            i32.add
2034                            local.get 6
2035                            i32.store
2036                            local.get 6
2037                            i32.eqz
2038                            br_if 1 (;@11;)
310 ------------------------------------------------------------
2039                          end
311 ------------------------------------------------------------
2040                          local.get 6
2041                          local.get 8
2042                          i32.store
2043                          local.get 2
2044                          i32.load
2045                          local.tee 1
2046                          if  ;; label = @12
312 ------------------------------------------------------------
2047                            local.get 6
2048                            local.get 1
2049                            i32.store
2050                            local.get 1
2051                            local.get 6
2052                            i32.store
2053                          end
313 ------------------------------------------------------------
2054                          local.get 2
2055                          i32.load
2056                          local.tee 1
2057                          i32.eqz
2058                          br_if 0 (;@11;)
314 ------------------------------------------------------------
2059                          local.get 6
2060                          local.get 1
2061                          i32.store
2062                          local.get 1
2063                          local.get 6
2064                          i32.store
2065                        end
315 ------------------------------------------------------------
2066                        local.get 2
2067                        local.get 10
2068                        i32.add
2069                        local.set 2
2070                        local.get 0
2071                        local.get 10
2072                        i32.add
2073                        local.set 0
2074                      end
316 ------------------------------------------------------------
2075                      local.get 2
2076                      local.get 2
2077                      i32.load
2078                      i32.const -2
2079                      i32.and
2080                      i32.store
2081                      local.get 7
2082                      local.get 0
2083                      i32.const 1
2084                      i32.or
2085                      i32.store
2086                      local.get 0
2087                      local.get 7
2088                      i32.add
2089                      local.get 0
2090                      i32.store
2091                      local.get 0
2092                      i32.const 255
2093                      i32.le_u
2094                      if  ;; label = @10
317 ------------------------------------------------------------
2095                        local.get 0
2096                        i32.const 3
2097                        i32.shr_u
2098                        local.tee 1
2099                        i32.const 3
2100                        i32.shl
2101                        i32.const 157112
2102                        i32.add
2103                        local.set 0
2104                        block (result i32)  ;; label = @11
318 ------------------------------------------------------------
2105                          i32.const 157072
2106                          i32.load
2107                          local.tee 2
2108                          i32.const 1
2109                          local.get 1
2110                          i32.shl
2111                          local.tee 1
2112                          i32.and
2113                          i32.eqz
2114                          if  ;; label = @12
319 ------------------------------------------------------------
2115                            i32.const 157072
2116                            local.get 1
2117                            local.get 2
2118                            i32.or
2119                            i32.store
2120                            local.get 0
2121                            br 1 (;@11;)
320 ------------------------------------------------------------
2122                          end
321 ------------------------------------------------------------
2123                          local.get 0
2124                          i32.load
2125                        end
322 ------------------------------------------------------------
2126                        local.set 1
2127                        local.get 0
2128                        local.get 7
2129                        i32.store
2130                        local.get 1
2131                        local.get 7
2132                        i32.store
2133                        local.get 7
2134                        local.get 0
2135                        i32.store
2136                        local.get 7
2137                        local.get 1
2138                        i32.store
2139                        br 3 (;@7;)
323 ------------------------------------------------------------
2140                      end
324 ------------------------------------------------------------
2141                      i32.const 31
2142                      local.set 3
2143                      local.get 0
2144                      i32.const 16777215
2145                      i32.le_u
2146                      if  ;; label = @10
325 ------------------------------------------------------------
2147                        local.get 0
2148                        i32.const 8
2149                        i32.shr_u
2150                        local.tee 1
2151                        local.get 1
2152                        i32.const 1048320
2153                        i32.add
2154                        i32.const 16
2155                        i32.shr_u
2156                        i32.const 8
2157                        i32.and
2158                        local.tee 1
2159                        i32.shl
2160                        local.tee 2
2161                        local.get 2
2162                        i32.const 520192
2163                        i32.add
2164                        i32.const 16
2165                        i32.shr_u
2166                        i32.const 4
2167                        i32.and
2168                        local.tee 2
2169                        i32.shl
2170                        local.tee 3
2171                        local.get 3
2172                        i32.const 245760
2173                        i32.add
2174                        i32.const 16
2175                        i32.shr_u
2176                        i32.const 2
2177                        i32.and
2178                        local.tee 3
2179                        i32.shl
2180                        i32.const 15
2181                        i32.shr_u
2182                        local.get 1
2183                        local.get 2
2184                        i32.or
2185                        local.get 3
2186                        i32.or
2187                        i32.sub
2188                        local.tee 1
2189                        i32.const 1
2190                        i32.shl
2191                        local.get 0
2192                        local.get 1
2193                        i32.const 21
2194                        i32.add
2195                        i32.shr_u
2196                        i32.const 1
2197                        i32.and
2198                        i32.or
2199                        i32.const 28
2200                        i32.add
2201                        local.set 3
2202                      end
326 ------------------------------------------------------------
2203                      local.get 7
2204                      local.get 3
2205                      i32.store
2206                      local.get 7
2207                      i64.const 0
2208                      i64.store align=4
2209                      local.get 3
2210                      i32.const 2
2211                      i32.shl
2212                      i32.const 157376
2213                      i32.add
2214                      local.set 1
2215                      block  ;; label = @10
327 ------------------------------------------------------------
2216                        i32.const 157076
2217                        i32.load
2218                        local.tee 2
2219                        i32.const 1
2220                        local.get 3
2221                        i32.shl
2222                        local.tee 4
2223                        i32.and
2224                        i32.eqz
2225                        if  ;; label = @11
328 ------------------------------------------------------------
2226                          i32.const 157076
2227                          local.get 2
2228                          local.get 4
2229                          i32.or
2230                          i32.store
2231                          local.get 1
2232                          local.get 7
2233                          i32.store
2234                          br 1 (;@10;)
329 ------------------------------------------------------------
2235                        end
330 ------------------------------------------------------------
2236                        local.get 0
2237                        i32.const 0
2238                        i32.const 25
2239                        local.get 3
2240                        i32.const 1
2241                        i32.shr_u
2242                        i32.sub
2243                        local.get 3
2244                        i32.const 31
2245                        i32.eq
2246                        select
2247                        i32.shl
2248                        local.set 3
2249                        local.get 1
2250                        i32.load
2251                        local.set 2
2252                        loop  ;; label = @11
331 ------------------------------------------------------------
2253                          local.get 2
2254                          local.tee 1
2255                          i32.load
2256                          i32.const -8
2257                          i32.and
2258                          local.get 0
2259                          i32.eq
2260                          br_if 3 (;@8;)
332 ------------------------------------------------------------
2261                          local.get 3
2262                          i32.const 29
2263                          i32.shr_u
2264                          local.set 2
2265                          local.get 3
2266                          i32.const 1
2267                          i32.shl
2268                          local.set 3
2269                          local.get 1
2270                          local.get 2
2271                          i32.const 4
2272                          i32.and
2273                          i32.add
2274                          local.tee 4
2275                          i32.load
2276                          local.tee 2
2277                          br_if 0 (;@11;)
333 ------------------------------------------------------------
2278                        end
334 ------------------------------------------------------------
2279                        local.get 4
2280                        local.get 7
2281                        i32.store
2282                      end
335 ------------------------------------------------------------
2283                      local.get 7
2284                      local.get 1
2285                      i32.store
2286                      local.get 7
2287                      local.get 7
2288                      i32.store
2289                      local.get 7
2290                      local.get 7
2291                      i32.store
2292                      br 2 (;@7;)
336 ------------------------------------------------------------
2293                    end
337 ------------------------------------------------------------
2294                    i32.const 157084
2295                    local.get 6
2296                    i32.const -40
2297                    i32.add
2298                    local.tee 0
2299                    i32.const -8
2300                    local.get 1
2301                    i32.sub
2302                    i32.const 7
2303                    i32.and
2304                    i32.const 0
2305                    local.get 1
2306                    i32.const 8
2307                    i32.add
2308                    i32.const 7
2309                    i32.and
2310                    select
2311                    local.tee 2
2312                    i32.sub
2313                    local.tee 7
2314                    i32.store
2315                    i32.const 157096
2316                    local.get 1
2317                    local.get 2
2318                    i32.add
2319                    local.tee 2
2320                    i32.store
2321                    local.get 2
2322                    local.get 7
2323                    i32.const 1
2324                    i32.or
2325                    i32.store
2326                    local.get 0
2327                    local.get 1
2328                    i32.add
2329                    i32.const 40
2330                    i32.store
2331                    i32.const 157100
2332                    i32.const 157560
2333                    i32.load
2334                    i32.store
2335                    local.get 3
2336                    local.get 4
2337                    i32.const 39
2338                    local.get 4
2339                    i32.sub
2340                    i32.const 7
2341                    i32.and
2342                    i32.const 0
2343                    local.get 4
2344                    i32.const -39
2345                    i32.add
2346                    i32.const 7
2347                    i32.and
2348                    select
2349                    i32.add
2350                    i32.const -47
2351                    i32.add
2352                    local.tee 0
2353                    local.get 0
2354                    local.get 3
2355                    i32.const 16
2356                    i32.add
2357                    i32.lt_u
2358                    select
2359                    local.tee 2
2360                    i32.const 27
2361                    i32.store
2362                    local.get 2
2363                    i32.const 157528
2364                    i64.load align=4
2365                    i64.store align=4
2366                    local.get 2
2367                    i32.const 157520
2368                    i64.load align=4
2369                    i64.store align=4
2370                    i32.const 157528
2371                    local.get 2
2372                    i32.const 8
2373                    i32.add
2374                    i32.store
2375                    i32.const 157524
2376                    local.get 6
2377                    i32.store
2378                    i32.const 157520
2379                    local.get 1
2380                    i32.store
2381                    i32.const 157532
2382                    i32.const 0
2383                    i32.store
2384                    local.get 2
2385                    i32.const 24
2386                    i32.add
2387                    local.set 0
2388                    loop  ;; label = @9
338 ------------------------------------------------------------
2389                      local.get 0
2390                      i32.const 7
2391                      i32.store
2392                      local.get 0
2393                      i32.const 8
2394                      i32.add
2395                      local.set 1
2396                      local.get 0
2397                      i32.const 4
2398                      i32.add
2399                      local.set 0
2400                      local.get 4
2401                      local.get 1
2402                      i32.gt_u
2403                      br_if 0 (;@9;)
339 ------------------------------------------------------------
2404                    end
340 ------------------------------------------------------------
2405                    local.get 2
2406                    local.get 3
2407                    i32.eq
2408                    br_if 3 (;@5;)
341 ------------------------------------------------------------
2409                    local.get 2
2410                    local.get 2
2411                    i32.load
2412                    i32.const -2
2413                    i32.and
2414                    i32.store
2415                    local.get 3
2416                    local.get 2
2417                    local.get 3
2418                    i32.sub
2419                    local.tee 4
2420                    i32.const 1
2421                    i32.or
2422                    i32.store
2423                    local.get 2
2424                    local.get 4
2425                    i32.store
2426                    local.get 4
2427                    i32.const 255
2428                    i32.le_u
2429                    if  ;; label = @9
342 ------------------------------------------------------------
2430                      local.get 4
2431                      i32.const 3
2432                      i32.shr_u
2433                      local.tee 1
2434                      i32.const 3
2435                      i32.shl
2436                      i32.const 157112
2437                      i32.add
2438                      local.set 0
2439                      block (result i32)  ;; label = @10
343 ------------------------------------------------------------
2440                        i32.const 157072
2441                        i32.load
2442                        local.tee 2
2443                        i32.const 1
2444                        local.get 1
2445                        i32.shl
2446                        local.tee 1
2447                        i32.and
2448                        i32.eqz
2449                        if  ;; label = @11
344 ------------------------------------------------------------
2450                          i32.const 157072
2451                          local.get 1
2452                          local.get 2
2453                          i32.or
2454                          i32.store
2455                          local.get 0
2456                          br 1 (;@10;)
345 ------------------------------------------------------------
2457                        end
346 ------------------------------------------------------------
2458                        local.get 0
2459                        i32.load
2460                      end
347 ------------------------------------------------------------
2461                      local.set 1
2462                      local.get 0
2463                      local.get 3
2464                      i32.store
2465                      local.get 1
2466                      local.get 3
2467                      i32.store
2468                      local.get 3
2469                      local.get 0
2470                      i32.store
2471                      local.get 3
2472                      local.get 1
2473                      i32.store
2474                      br 4 (;@5;)
348 ------------------------------------------------------------
2475                    end
349 ------------------------------------------------------------
2476                    i32.const 31
2477                    local.set 0
2478                    local.get 3
2479                    i64.const 0
2480                    i64.store align=4
2481                    local.get 4
2482                    i32.const 16777215
2483                    i32.le_u
2484                    if  ;; label = @9
350 ------------------------------------------------------------
2485                      local.get 4
2486                      i32.const 8
2487                      i32.shr_u
2488                      local.tee 0
2489                      local.get 0
2490                      i32.const 1048320
2491                      i32.add
2492                      i32.const 16
2493                      i32.shr_u
2494                      i32.const 8
2495                      i32.and
2496                      local.tee 0
2497                      i32.shl
2498                      local.tee 1
2499                      local.get 1
2500                      i32.const 520192
2501                      i32.add
2502                      i32.const 16
2503                      i32.shr_u
2504                      i32.const 4
2505                      i32.and
2506                      local.tee 1
2507                      i32.shl
2508                      local.tee 2
2509                      local.get 2
2510                      i32.const 245760
2511                      i32.add
2512                      i32.const 16
2513                      i32.shr_u
2514                      i32.const 2
2515                      i32.and
2516                      local.tee 2
2517                      i32.shl
2518                      i32.const 15
2519                      i32.shr_u
2520                      local.get 0
2521                      local.get 1
2522                      i32.or
2523                      local.get 2
2524                      i32.or
2525                      i32.sub
2526                      local.tee 0
2527                      i32.const 1
2528                      i32.shl
2529                      local.get 4
2530                      local.get 0
2531                      i32.const 21
2532                      i32.add
2533                      i32.shr_u
2534                      i32.const 1
2535                      i32.and
2536                      i32.or
2537                      i32.const 28
2538                      i32.add
2539                      local.set 0
2540                    end
351 ------------------------------------------------------------
2541                    local.get 3
2542                    local.get 0
2543                    i32.store
2544                    local.get 0
2545                    i32.const 2
2546                    i32.shl
2547                    i32.const 157376
2548                    i32.add
2549                    local.set 1
2550                    block  ;; label = @9
352 ------------------------------------------------------------
2551                      i32.const 157076
2552                      i32.load
2553                      local.tee 2
2554                      i32.const 1
2555                      local.get 0
2556                      i32.shl
2557                      local.tee 6
2558                      i32.and
2559                      i32.eqz
2560                      if  ;; label = @10
353 ------------------------------------------------------------
2561                        i32.const 157076
2562                        local.get 2
2563                        local.get 6
2564                        i32.or
2565                        i32.store
2566                        local.get 1
2567                        local.get 3
2568                        i32.store
2569                        br 1 (;@9;)
354 ------------------------------------------------------------
2570                      end
355 ------------------------------------------------------------
2571                      local.get 4
2572                      i32.const 0
2573                      i32.const 25
2574                      local.get 0
2575                      i32.const 1
2576                      i32.shr_u
2577                      i32.sub
2578                      local.get 0
2579                      i32.const 31
2580                      i32.eq
2581                      select
2582                      i32.shl
2583                      local.set 0
2584                      local.get 1
2585                      i32.load
2586                      local.set 2
2587                      loop  ;; label = @10
356 ------------------------------------------------------------
2588                        local.get 2
2589                        local.tee 1
2590                        i32.load
2591                        i32.const -8
2592                        i32.and
2593                        local.get 4
2594                        i32.eq
2595                        br_if 4 (;@6;)
357 ------------------------------------------------------------
2596                        local.get 0
2597                        i32.const 29
2598                        i32.shr_u
2599                        local.set 2
2600                        local.get 0
2601                        i32.const 1
2602                        i32.shl
2603                        local.set 0
2604                        local.get 1
2605                        local.get 2
2606                        i32.const 4
2607                        i32.and
2608                        i32.add
2609                        local.tee 6
2610                        i32.load
2611                        local.tee 2
2612                        br_if 0 (;@10;)
358 ------------------------------------------------------------
2613                      end
359 ------------------------------------------------------------
2614                      local.get 6
2615                      local.get 3
2616                      i32.store
2617                    end
360 ------------------------------------------------------------
2618                    local.get 3
2619                    local.get 1
2620                    i32.store
2621                    local.get 3
2622                    local.get 3
2623                    i32.store
2624                    local.get 3
2625                    local.get 3
2626                    i32.store
2627                    br 3 (;@5;)
361 ------------------------------------------------------------
2628                  end
362 ------------------------------------------------------------
2629                  local.get 1
2630                  i32.load
2631                  local.tee 0
2632                  local.get 7
2633                  i32.store
2634                  local.get 1
2635                  local.get 7
2636                  i32.store
2637                  local.get 7
2638                  i32.const 0
2639                  i32.store
2640                  local.get 7
2641                  local.get 1
2642                  i32.store
2643                  local.get 7
2644                  local.get 0
2645                  i32.store
2646                end
363 ------------------------------------------------------------
2647                local.get 9
2648                i32.const 8
2649                i32.add
2650                local.set 0
2651                br 5 (;@1;)
364 ------------------------------------------------------------
2652              end
365 ------------------------------------------------------------
2653              local.get 1
2654              i32.load
2655              local.tee 0
2656              local.get 3
2657              i32.store
2658              local.get 1
2659              local.get 3
2660              i32.store
2661              local.get 3
2662              i32.const 0
2663              i32.store
2664              local.get 3
2665              local.get 1
2666              i32.store
2667              local.get 3
2668              local.get 0
2669              i32.store
2670            end
366 ------------------------------------------------------------
2671            i32.const 157084
2672            i32.load
2673            local.tee 0
2674            local.get 5
2675            i32.le_u
2676            br_if 0 (;@4;)
367 ------------------------------------------------------------
2677            i32.const 157084
2678            local.get 0
2679            local.get 5
2680            i32.sub
2681            local.tee 1
2682            i32.store
2683            i32.const 157096
2684            i32.const 157096
2685            i32.load
2686            local.tee 0
2687            local.get 5
2688            i32.add
2689            local.tee 2
2690            i32.store
2691            local.get 2
2692            local.get 1
2693            i32.const 1
2694            i32.or
2695            i32.store
2696            local.get 0
2697            local.get 5
2698            i32.const 3
2699            i32.or
2700            i32.store
2701            local.get 0
2702            i32.const 8
2703            i32.add
2704            local.set 0
2705            br 3 (;@1;)
368 ------------------------------------------------------------
2706          end
369 ------------------------------------------------------------
2707          i32.const 0
2708          local.set 0
2709          i32.const 156988
2710          i32.const 48
2711          i32.store
2712          br 2 (;@1;)
370 ------------------------------------------------------------
2713        end
371 ------------------------------------------------------------
2714        block  ;; label = @3
372 ------------------------------------------------------------
2715          local.get 8
2716          i32.eqz
2717          br_if 0 (;@3;)
373 ------------------------------------------------------------
2718          block  ;; label = @4
374 ------------------------------------------------------------
2719            local.get 4
2720            i32.load
2721            local.tee 0
2722            i32.const 2
2723            i32.shl
2724            i32.const 157376
2725            i32.add
2726            local.tee 3
2727            i32.load
2728            local.get 4
2729            i32.eq
2730            if  ;; label = @5
375 ------------------------------------------------------------
2731              local.get 3
2732              local.get 2
2733              i32.store
2734              local.get 2
2735              br_if 1 (;@4;)
376 ------------------------------------------------------------
2736              i32.const 157076
2737              local.get 7
2738              i32.const -2
2739              local.get 0
2740              i32.rotl
2741              i32.and
2742              local.tee 7
2743              i32.store
2744              br 2 (;@3;)
377 ------------------------------------------------------------
2745            end
378 ------------------------------------------------------------
2746            local.get 8
2747            i32.const 16
2748            i32.const 20
2749            local.get 8
2750            i32.load
2751            local.get 4
2752            i32.eq
2753            select
2754            i32.add
2755            local.get 2
2756            i32.store
2757            local.get 2
2758            i32.eqz
2759            br_if 1 (;@3;)
379 ------------------------------------------------------------
2760          end
380 ------------------------------------------------------------
2761          local.get 2
2762          local.get 8
2763          i32.store
2764          local.get 4
2765          i32.load
2766          local.tee 0
2767          if  ;; label = @4
381 ------------------------------------------------------------
2768            local.get 2
2769            local.get 0
2770            i32.store
2771            local.get 0
2772            local.get 2
2773            i32.store
2774          end
382 ------------------------------------------------------------
2775          local.get 4
2776          i32.load
2777          local.tee 0
2778          i32.eqz
2779          br_if 0 (;@3;)
383 ------------------------------------------------------------
2780          local.get 2
2781          local.get 0
2782          i32.store
2783          local.get 0
2784          local.get 2
2785          i32.store
2786        end
384 ------------------------------------------------------------
2787        block  ;; label = @3
385 ------------------------------------------------------------
2788          local.get 1
2789          i32.const 15
2790          i32.le_u
2791          if  ;; label = @4
386 ------------------------------------------------------------
2792            local.get 4
2793            local.get 1
2794            local.get 5
2795            i32.add
2796            local.tee 0
2797            i32.const 3
2798            i32.or
2799            i32.store
2800            local.get 0
2801            local.get 4
2802            i32.add
2803            local.tee 0
2804            local.get 0
2805            i32.load
2806            i32.const 1
2807            i32.or
2808            i32.store
2809            br 1 (;@3;)
387 ------------------------------------------------------------
2810          end
388 ------------------------------------------------------------
2811          local.get 4
2812          local.get 5
2813          i32.const 3
2814          i32.or
2815          i32.store
2816          local.get 4
2817          local.get 5
2818          i32.add
2819          local.tee 3
2820          local.get 1
2821          i32.const 1
2822          i32.or
2823          i32.store
2824          local.get 1
2825          local.get 3
2826          i32.add
2827          local.get 1
2828          i32.store
2829          local.get 1
2830          i32.const 255
2831          i32.le_u
2832          if  ;; label = @4
389 ------------------------------------------------------------
2833            local.get 1
2834            i32.const 3
2835            i32.shr_u
2836            local.tee 1
2837            i32.const 3
2838            i32.shl
2839            i32.const 157112
2840            i32.add
2841            local.set 0
2842            block (result i32)  ;; label = @5
390 ------------------------------------------------------------
2843              i32.const 157072
2844              i32.load
2845              local.tee 2
2846              i32.const 1
2847              local.get 1
2848              i32.shl
2849              local.tee 1
2850              i32.and
2851              i32.eqz
2852              if  ;; label = @6
391 ------------------------------------------------------------
2853                i32.const 157072
2854                local.get 1
2855                local.get 2
2856                i32.or
2857                i32.store
2858                local.get 0
2859                br 1 (;@5;)
392 ------------------------------------------------------------
2860              end
393 ------------------------------------------------------------
2861              local.get 0
2862              i32.load
2863            end
394 ------------------------------------------------------------
2864            local.set 1
2865            local.get 0
2866            local.get 3
2867            i32.store
2868            local.get 1
2869            local.get 3
2870            i32.store
2871            local.get 3
2872            local.get 0
2873            i32.store
2874            local.get 3
2875            local.get 1
2876            i32.store
2877            br 1 (;@3;)
395 ------------------------------------------------------------
2878          end
396 ------------------------------------------------------------
2879          i32.const 31
2880          local.set 0
2881          local.get 1
2882          i32.const 16777215
2883          i32.le_u
2884          if  ;; label = @4
397 ------------------------------------------------------------
2885            local.get 1
2886            i32.const 8
2887            i32.shr_u
2888            local.tee 0
2889            local.get 0
2890            i32.const 1048320
2891            i32.add
2892            i32.const 16
2893            i32.shr_u
2894            i32.const 8
2895            i32.and
2896            local.tee 0
2897            i32.shl
2898            local.tee 2
2899            local.get 2
2900            i32.const 520192
2901            i32.add
2902            i32.const 16
2903            i32.shr_u
2904            i32.const 4
2905            i32.and
2906            local.tee 2
2907            i32.shl
2908            local.tee 5
2909            local.get 5
2910            i32.const 245760
2911            i32.add
2912            i32.const 16
2913            i32.shr_u
2914            i32.const 2
2915            i32.and
2916            local.tee 5
2917            i32.shl
2918            i32.const 15
2919            i32.shr_u
2920            local.get 0
2921            local.get 2
2922            i32.or
2923            local.get 5
2924            i32.or
2925            i32.sub
2926            local.tee 0
2927            i32.const 1
2928            i32.shl
2929            local.get 1
2930            local.get 0
2931            i32.const 21
2932            i32.add
2933            i32.shr_u
2934            i32.const 1
2935            i32.and
2936            i32.or
2937            i32.const 28
2938            i32.add
2939            local.set 0
2940          end
398 ------------------------------------------------------------
2941          local.get 3
2942          local.get 0
2943          i32.store
2944          local.get 3
2945          i64.const 0
2946          i64.store align=4
2947          local.get 0
2948          i32.const 2
2949          i32.shl
2950          i32.const 157376
2951          i32.add
2952          local.set 2
2953          block  ;; label = @4
399 ------------------------------------------------------------
2954            block  ;; label = @5
400 ------------------------------------------------------------
2955              local.get 7
2956              i32.const 1
2957              local.get 0
2958              i32.shl
2959              local.tee 5
2960              i32.and
2961              i32.eqz
2962              if  ;; label = @6
401 ------------------------------------------------------------
2963                i32.const 157076
2964                local.get 5
2965                local.get 7
2966                i32.or
2967                i32.store
2968                local.get 2
2969                local.get 3
2970                i32.store
2971                br 1 (;@5;)
402 ------------------------------------------------------------
2972              end
403 ------------------------------------------------------------
2973              local.get 1
2974              i32.const 0
2975              i32.const 25
2976              local.get 0
2977              i32.const 1
2978              i32.shr_u
2979              i32.sub
2980              local.get 0
2981              i32.const 31
2982              i32.eq
2983              select
2984              i32.shl
2985              local.set 0
2986              local.get 2
2987              i32.load
2988              local.set 5
2989              loop  ;; label = @6
404 ------------------------------------------------------------
2990                local.get 5
2991                local.tee 2
2992                i32.load
2993                i32.const -8
2994                i32.and
2995                local.get 1
2996                i32.eq
2997                br_if 2 (;@4;)
405 ------------------------------------------------------------
2998                local.get 0
2999                i32.const 29
3000                i32.shr_u
3001                local.set 5
3002                local.get 0
3003                i32.const 1
3004                i32.shl
3005                local.set 0
3006                local.get 2
3007                local.get 5
3008                i32.const 4
3009                i32.and
3010                i32.add
3011                local.tee 6
3012                i32.load
3013                local.tee 5
3014                br_if 0 (;@6;)
406 ------------------------------------------------------------
3015              end
407 ------------------------------------------------------------
3016              local.get 6
3017              local.get 3
3018              i32.store
3019            end
408 ------------------------------------------------------------
3020            local.get 3
3021            local.get 2
3022            i32.store
3023            local.get 3
3024            local.get 3
3025            i32.store
3026            local.get 3
3027            local.get 3
3028            i32.store
3029            br 1 (;@3;)
409 ------------------------------------------------------------
3030          end
410 ------------------------------------------------------------
3031          local.get 2
3032          i32.load
3033          local.tee 0
3034          local.get 3
3035          i32.store
3036          local.get 2
3037          local.get 3
3038          i32.store
3039          local.get 3
3040          i32.const 0
3041          i32.store
3042          local.get 3
3043          local.get 2
3044          i32.store
3045          local.get 3
3046          local.get 0
3047          i32.store
3048        end
411 ------------------------------------------------------------
3049        local.get 4
3050        i32.const 8
3051        i32.add
3052        local.set 0
3053        br 1 (;@1;)
412 ------------------------------------------------------------
3054      end
413 ------------------------------------------------------------
3055      block  ;; label = @2
414 ------------------------------------------------------------
3056        local.get 9
3057        i32.eqz
3058        br_if 0 (;@2;)
415 ------------------------------------------------------------
3059        block  ;; label = @3
416 ------------------------------------------------------------
3060          local.get 2
3061          i32.load
3062          local.tee 0
3063          i32.const 2
3064          i32.shl
3065          i32.const 157376
3066          i32.add
3067          local.tee 1
3068          i32.load
3069          local.get 2
3070          i32.eq
3071          if  ;; label = @4
417 ------------------------------------------------------------
3072            local.get 1
3073            local.get 4
3074            i32.store
3075            local.get 4
3076            br_if 1 (;@3;)
418 ------------------------------------------------------------
3077            i32.const 157076
3078            local.get 10
3079            i32.const -2
3080            local.get 0
3081            i32.rotl
3082            i32.and
3083            i32.store
3084            br 2 (;@2;)
419 ------------------------------------------------------------
3085          end
420 ------------------------------------------------------------
3086          local.get 9
3087          i32.const 16
3088          i32.const 20
3089          local.get 9
3090          i32.load
3091          local.get 2
3092          i32.eq
3093          select
3094          i32.add
3095          local.get 4
3096          i32.store
3097          local.get 4
3098          i32.eqz
3099          br_if 1 (;@2;)
421 ------------------------------------------------------------
3100        end
422 ------------------------------------------------------------
3101        local.get 4
3102        local.get 9
3103        i32.store
3104        local.get 2
3105        i32.load
3106        local.tee 0
3107        if  ;; label = @3
423 ------------------------------------------------------------
3108          local.get 4
3109          local.get 0
3110          i32.store
3111          local.get 0
3112          local.get 4
3113          i32.store
3114        end
424 ------------------------------------------------------------
3115        local.get 2
3116        i32.load
3117        local.tee 0
3118        i32.eqz
3119        br_if 0 (;@2;)
425 ------------------------------------------------------------
3120        local.get 4
3121        local.get 0
3122        i32.store
3123        local.get 0
3124        local.get 4
3125        i32.store
3126      end
426 ------------------------------------------------------------
3127      block  ;; label = @2
427 ------------------------------------------------------------
3128        local.get 3
3129        i32.const 15
3130        i32.le_u
3131        if  ;; label = @3
428 ------------------------------------------------------------
3132          local.get 2
3133          local.get 3
3134          local.get 5
3135          i32.add
3136          local.tee 0
3137          i32.const 3
3138          i32.or
3139          i32.store
3140          local.get 0
3141          local.get 2
3142          i32.add
3143          local.tee 0
3144          local.get 0
3145          i32.load
3146          i32.const 1
3147          i32.or
3148          i32.store
3149          br 1 (;@2;)
429 ------------------------------------------------------------
3150        end
430 ------------------------------------------------------------
3151        local.get 2
3152        local.get 5
3153        i32.const 3
3154        i32.or
3155        i32.store
3156        local.get 2
3157        local.get 5
3158        i32.add
3159        local.tee 4
3160        local.get 3
3161        i32.const 1
3162        i32.or
3163        i32.store
3164        local.get 3
3165        local.get 4
3166        i32.add
3167        local.get 3
3168        i32.store
3169        local.get 8
3170        if  ;; label = @3
431 ------------------------------------------------------------
3171          local.get 8
3172          i32.const 3
3173          i32.shr_u
3174          local.tee 5
3175          i32.const 3
3176          i32.shl
3177          i32.const 157112
3178          i32.add
3179          local.set 0
3180          i32.const 157092
3181          i32.load
3182          local.set 1
3183          block (result i32)  ;; label = @4
432 ------------------------------------------------------------
3184            i32.const 1
3185            local.get 5
3186            i32.shl
3187            local.tee 5
3188            local.get 6
3189            i32.and
3190            i32.eqz
3191            if  ;; label = @5
433 ------------------------------------------------------------
3192              i32.const 157072
3193              local.get 5
3194              local.get 6
3195              i32.or
3196              i32.store
3197              local.get 0
3198              br 1 (;@4;)
434 ------------------------------------------------------------
3199            end
435 ------------------------------------------------------------
3200            local.get 0
3201            i32.load
3202          end
436 ------------------------------------------------------------
3203          local.set 5
3204          local.get 0
3205          local.get 1
3206          i32.store
3207          local.get 5
3208          local.get 1
3209          i32.store
3210          local.get 1
3211          local.get 0
3212          i32.store
3213          local.get 1
3214          local.get 5
3215          i32.store
3216        end
437 ------------------------------------------------------------
3217        i32.const 157092
3218        local.get 4
3219        i32.store
3220        i32.const 157080
3221        local.get 3
3222        i32.store
3223      end
438 ------------------------------------------------------------
3224      local.get 2
3225      i32.const 8
3226      i32.add
3227      local.set 0
3228    end
439 ------------------------------------------------------------
3229    local.get 11
3230    i32.const 16
3231    i32.add
3232    global.set 0
3233    local.get 0)
