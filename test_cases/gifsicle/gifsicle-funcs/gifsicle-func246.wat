  (func (;246;) (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 320
0002    i32.sub
0003    local.tee 4
0004    global.set 0
0005    block  ;; label = @1
1 ------------------------------------------------------------
0006      local.get 0
0007      local.get 0
0008      i32.load offset=24
0009      call_indirect (type 0)
0010      i32.const 71
0011      i32.ne
0012      br_if 0 (;@1;)
2 ------------------------------------------------------------
0013      local.get 0
0014      local.get 0
0015      i32.load offset=24
0016      call_indirect (type 0)
0017      i32.const 73
0018      i32.ne
0019      br_if 0 (;@1;)
3 ------------------------------------------------------------
0020      local.get 0
0021      local.get 0
0022      i32.load offset=24
0023      call_indirect (type 0)
0024      i32.const 70
0025      i32.ne
0026      br_if 0 (;@1;)
4 ------------------------------------------------------------
0027      local.get 0
0028      local.get 0
0029      i32.load offset=24
0030      call_indirect (type 0)
0031      drop
0032      local.get 0
0033      local.get 0
0034      i32.load offset=24
0035      call_indirect (type 0)
0036      drop
0037      local.get 0
0038      local.get 0
0039      i32.load offset=24
0040      call_indirect (type 0)
0041      drop
0042      call 189
0043      local.set 7
0044      call 132
0045      local.set 5
0046      local.get 4
0047      local.get 7
0048      i32.store offset=16
0049      local.get 4
0050      i32.const 0
0051      i32.const 2
0052      i32.const 4096
0053      call 23
0054      local.tee 6
0055      i32.store offset=20
0056      local.get 4
0057      i32.const 0
0058      i32.const 1
0059      i32.const 4096
0060      call 23
0061      local.tee 9
0062      i32.store offset=24
0063      i32.const 0
0064      i32.const 2
0065      i32.const 4096
0066      call 23
0067      local.set 8
0068      local.get 4
0069      local.get 3
0070      i32.store offset=52
0071      local.get 4
0072      local.get 8
0073      i32.store offset=28
0074      local.get 4
0075      local.get 5
0076      i32.store offset=48
0077      local.get 4
0078      i64.const 0
0079      i64.store offset=56
0080      block  ;; label = @2
5 ------------------------------------------------------------
0081        block  ;; label = @3
6 ------------------------------------------------------------
0082          local.get 8
0083          i32.eqz
0084          local.get 6
0085          i32.eqz
0086          local.get 7
0087          i32.eqz
0088          i32.or
0089          local.get 5
0090          i32.eqz
0091          local.get 9
0092          i32.eqz
0093          i32.or
0094          i32.or
0095          i32.or
0096          br_if 0 (;@3;)
7 ------------------------------------------------------------
0097          local.get 7
0098          local.get 2
0099          i32.store offset=44
0100          local.get 7
0101          local.get 0
0102          local.get 0
0103          i32.load offset=24
0104          call_indirect (type 0)
0105          local.get 0
0106          local.get 0
0107          i32.load offset=24
0108          call_indirect (type 0)
0109          i32.const 8
0110          i32.shl
0111          i32.or
0112          i32.store16 offset=18
0113          local.get 7
0114          local.get 0
0115          local.get 0
0116          i32.load offset=24
0117          call_indirect (type 0)
0118          local.get 0
0119          local.get 0
0120          i32.load offset=24
0121          call_indirect (type 0)
0122          i32.const 8
0123          i32.shl
0124          i32.or
0125          i32.store16 offset=20
0126          local.get 0
0127          local.get 0
0128          i32.load offset=24
0129          call_indirect (type 0)
0130          local.set 2
0131          local.get 7
0132          local.get 0
0133          local.get 0
0134          i32.load offset=24
0135          call_indirect (type 0)
0136          i32.store16 offset=16
0137          local.get 0
0138          local.get 0
0139          i32.load offset=24
0140          call_indirect (type 0)
0141          drop
0142          block  ;; label = @4
8 ------------------------------------------------------------
0143            local.get 2
0144            i32.const 128
0145            i32.and
0146            if  ;; label = @5
9 ------------------------------------------------------------
0147              i32.const 2
0148              local.get 2
0149              i32.const 7
0150              i32.and
0151              i32.shl
0152              local.tee 2
0153              local.get 2
0154              call 44
0155              local.tee 8
0156              if  ;; label = @6
10 ------------------------------------------------------------
0157                local.get 8
0158                i32.load offset=16
0159                local.set 3
0160                loop  ;; label = @7
11 ------------------------------------------------------------
0161                  local.get 3
0162                  local.get 0
0163                  local.get 0
0164                  i32.load offset=24
0165                  call_indirect (type 0)
0166                  i32.store8 offset=1
0167                  local.get 3
0168                  local.get 0
0169                  local.get 0
0170                  i32.load offset=24
0171                  call_indirect (type 0)
0172                  i32.store8 offset=2
0173                  local.get 0
0174                  local.get 0
0175                  i32.load offset=24
0176                  call_indirect (type 0)
0177                  local.set 6
0178                  local.get 3
0179                  i32.const 0
0180                  i32.store8
0181                  local.get 3
0182                  local.get 6
0183                  i32.store8 offset=3
0184                  local.get 3
0185                  i32.const 8
0186                  i32.add
0187                  local.set 3
0188                  local.get 2
0189                  i32.const -1
0190                  i32.add
0191                  local.tee 2
0192                  br_if 0 (;@7;)
12 ------------------------------------------------------------
0193                end
13 ------------------------------------------------------------
0194                local.get 7
0195                local.get 8
0196                i32.store offset=12
0197                local.get 8
0198                i32.const 1
0199                i32.store offset=12
0200                br 2 (;@4;)
14 ------------------------------------------------------------
0201              end
15 ------------------------------------------------------------
0202              local.get 7
0203              i32.const 0
0204              i32.store offset=12
0205              br 2 (;@3;)
16 ------------------------------------------------------------
0206            end
17 ------------------------------------------------------------
0207            local.get 7
0208            i32.const 256
0209            i32.store16 offset=16
0210          end
18 ------------------------------------------------------------
0211          local.get 0
0212          local.get 0
0213          i32.load offset=32
0214          call_indirect (type 0)
0215          br_if 0 (;@3;)
19 ------------------------------------------------------------
0216          loop  ;; label = @4
20 ------------------------------------------------------------
0217            block  ;; label = @5
21 ------------------------------------------------------------
0218              block  ;; label = @6
22 ------------------------------------------------------------
0219                block  ;; label = @7
23 ------------------------------------------------------------
0220                  block  ;; label = @8
24 ------------------------------------------------------------
0221                    block  ;; label = @9
25 ------------------------------------------------------------
0222                      local.get 0
0223                      local.get 0
0224                      i32.load offset=24
0225                      call_indirect (type 0)
0226                      local.tee 2
0227                      i32.const -33
0228                      i32.add
0229                      br_table 1 (;@8;) 2 (;@7;) 2 (;@7;) 2 (;@7;) 2 (;@7;) 2 (;@7;) 2 (;@7;) 2 (;@7;) 2 (;@7;) 2 (;@7;) 2 (;@7;) 0 (;@9;) 2 (;@7;) 2 (;@7;) 2 (;@7;) 2 (;@7;) 2 (;@7;) 2 (;@7;) 2 (;@7;) 2 (;@7;) 2 (;@7;) 2 (;@7;) 2 (;@7;) 2 (;@7;) 2 (;@7;) 2 (;@7;) 6 (;@3;) 2 (;@7;)
26 ------------------------------------------------------------
0230                    end
27 ------------------------------------------------------------
0231                    local.get 5
0232                    i32.const 35160
0233                    i32.load
0234                    i32.store offset=28
0235                    i32.const 35160
0236                    i32.const 0
0237                    i32.store
0238                    local.get 7
0239                    local.get 5
0240                    call 171
0241                    i32.eqz
0242                    br_if 5 (;@3;)
28 ------------------------------------------------------------
0243                    local.get 5
0244                    local.get 0
0245                    local.get 0
0246                    i32.load offset=24
0247                    call_indirect (type 0)
0248                    local.get 0
0249                    local.get 0
0250                    i32.load offset=24
0251                    call_indirect (type 0)
0252                    i32.const 8
0253                    i32.shl
0254                    i32.or
0255                    i32.store16 offset=12
0256                    local.get 5
0257                    local.get 0
0258                    local.get 0
0259                    i32.load offset=24
0260                    call_indirect (type 0)
0261                    local.get 0
0262                    local.get 0
0263                    i32.load offset=24
0264                    call_indirect (type 0)
0265                    i32.const 8
0266                    i32.shl
0267                    i32.or
0268                    i32.store16 offset=14
0269                    local.get 5
0270                    local.get 0
0271                    local.get 0
0272                    i32.load offset=24
0273                    call_indirect (type 0)
0274                    local.get 0
0275                    local.get 0
0276                    i32.load offset=24
0277                    call_indirect (type 0)
0278                    i32.const 8
0279                    i32.shl
0280                    i32.or
0281                    i32.store16 offset=8
0282                    local.get 5
0283                    local.get 0
0284                    local.get 0
0285                    i32.load offset=24
0286                    call_indirect (type 0)
0287                    local.get 0
0288                    local.get 0
0289                    i32.load offset=24
0290                    call_indirect (type 0)
0291                    i32.const 8
0292                    i32.shl
0293                    i32.or
0294                    local.tee 2
0295                    i32.store16 offset=10
0296                    local.get 5
0297                    i32.load16_u offset=8
0298                    local.tee 3
0299                    i32.eqz
0300                    if  ;; label = @9
29 ------------------------------------------------------------
0301                      local.get 5
0302                      local.get 4
0303                      i32.load offset=16
0304                      i32.load16_u offset=18
0305                      local.tee 3
0306                      i32.store16 offset=8
0307                    end
30 ------------------------------------------------------------
0308                    local.get 2
0309                    i32.eqz
0310                    if  ;; label = @9
31 ------------------------------------------------------------
0311                      local.get 5
0312                      local.get 4
0313                      i32.load offset=16
0314                      i32.load16_u offset=20
0315                      local.tee 2
0316                      i32.store16 offset=10
0317                    end
32 ------------------------------------------------------------
0318                    block (result i32)  ;; label = @9
33 ------------------------------------------------------------
0319                      local.get 3
0320                      i32.const 65535
0321                      i32.and
0322                      if  ;; label = @10
34 ------------------------------------------------------------
0323                        local.get 1
0324                        local.get 2
0325                        i32.const 65535
0326                        i32.and
0327                        br_if 1 (;@9;)
35 ------------------------------------------------------------
0328                        drop
0329                      end
36 ------------------------------------------------------------
0330                      local.get 4
0331                      local.get 4
0332                      i32.load offset=60
0333                      i32.const 1
0334                      i32.add
0335                      i32.store offset=60
0336                      local.get 4
0337                      i32.load offset=52
0338                      local.tee 2
0339                      i32.const 35156
0340                      i32.load
0341                      local.get 2
0342                      select
0343                      local.tee 2
0344                      if  ;; label = @10
37 ------------------------------------------------------------
0345                        local.get 4
0346                        i32.load offset=16
0347                        local.get 4
0348                        i32.load offset=48
0349                        i32.const 1
0350                        i32.const 2509
0351                        local.get 2
0352                        call_indirect (type 6)
0353                      end
38 ------------------------------------------------------------
0354                      local.get 5
0355                      call 122
0356                      local.get 5
0357                      i32.load16_u offset=8
0358                      local.set 3
0359                      i32.const 0
0360                    end
39 ------------------------------------------------------------
0361                    local.set 8
0362                    block  ;; label = @9
40 ------------------------------------------------------------
0363                      local.get 5
0364                      i32.load16_u offset=12
0365                      local.get 3
0366                      i32.const 65535
0367                      i32.and
0368                      i32.add
0369                      i32.const 65535
0370                      i32.le_u
0371                      if  ;; label = @10
41 ------------------------------------------------------------
0372                        local.get 5
0373                        i32.load16_u offset=10
0374                        local.get 5
0375                        i32.load16_u offset=14
0376                        i32.add
0377                        i32.const 65536
0378                        i32.lt_u
0379                        br_if 1 (;@9;)
42 ------------------------------------------------------------
0380                      end
43 ------------------------------------------------------------
0381                      local.get 4
0382                      local.get 4
0383                      i32.load offset=60
0384                      i32.const 1
0385                      i32.add
0386                      i32.store offset=60
0387                      local.get 4
0388                      i32.load offset=52
0389                      local.tee 2
0390                      i32.const 35156
0391                      i32.load
0392                      local.get 2
0393                      select
0394                      local.tee 2
0395                      if  ;; label = @10
44 ------------------------------------------------------------
0396                        local.get 4
0397                        i32.load offset=16
0398                        local.get 4
0399                        i32.load offset=48
0400                        i32.const 1
0401                        i32.const 2544
0402                        local.get 2
0403                        call_indirect (type 6)
0404                      end
45 ------------------------------------------------------------
0405                      local.get 5
0406                      call 122
0407                      i32.const 0
0408                      local.set 8
0409                    end
46 ------------------------------------------------------------
0410                    block  ;; label = @9
47 ------------------------------------------------------------
0411                      block  ;; label = @10
48 ------------------------------------------------------------
0412                        local.get 0
0413                        local.get 0
0414                        i32.load offset=24
0415                        call_indirect (type 0)
0416                        local.tee 9
0417                        i32.const 128
0418                        i32.and
0419                        if  ;; label = @11
49 ------------------------------------------------------------
0420                          i32.const 2
0421                          local.get 9
0422                          i32.const 7
0423                          i32.and
0424                          i32.shl
0425                          local.tee 2
0426                          local.get 2
0427                          call 44
0428                          local.tee 6
0429                          i32.eqz
0430                          br_if 1 (;@10;)
50 ------------------------------------------------------------
0431                          local.get 6
0432                          i32.load offset=16
0433                          local.set 3
0434                          loop  ;; label = @12
51 ------------------------------------------------------------
0435                            local.get 3
0436                            local.get 0
0437                            local.get 0
0438                            i32.load offset=24
0439                            call_indirect (type 0)
0440                            i32.store8 offset=1
0441                            local.get 3
0442                            local.get 0
0443                            local.get 0
0444                            i32.load offset=24
0445                            call_indirect (type 0)
0446                            i32.store8 offset=2
0447                            local.get 0
0448                            local.get 0
0449                            i32.load offset=24
0450                            call_indirect (type 0)
0451                            local.set 11
0452                            local.get 3
0453                            i32.const 0
0454                            i32.store8
0455                            local.get 3
0456                            local.get 11
0457                            i32.store8 offset=3
0458                            local.get 3
0459                            i32.const 8
0460                            i32.add
0461                            local.set 3
0462                            local.get 2
0463                            i32.const -1
0464                            i32.add
0465                            local.tee 2
0466                            br_if 0 (;@12;)
52 ------------------------------------------------------------
0467                          end
53 ------------------------------------------------------------
0468                          local.get 5
0469                          local.get 6
0470                          i32.store offset=24
0471                          local.get 6
0472                          i32.const 1
0473                          i32.store offset=12
0474                        end
54 ------------------------------------------------------------
0475                        local.get 5
0476                        local.get 9
0477                        i32.const 6
0478                        i32.shr_u
0479                        i32.const 1
0480                        i32.and
0481                        i32.store8 offset=19
0482                        local.get 8
0483                        i32.const 1
0484                        i32.and
0485                        if  ;; label = @11
55 ------------------------------------------------------------
0486                          block  ;; label = @12
56 ------------------------------------------------------------
0487                            local.get 0
0488                            i32.load offset=16
0489                            if  ;; label = @13
57 ------------------------------------------------------------
0490                              local.get 0
0491                              local.get 0
0492                              i32.load offset=8
0493                              local.tee 6
0494                              i32.const 1
0495                              i32.add
0496                              local.tee 3
0497                              i32.store offset=8
0498                              local.get 0
0499                              i32.load offset=12
0500                              local.set 2
0501                              loop  ;; label = @14
58 ------------------------------------------------------------
0502                                local.get 3
0503                                local.get 2
0504                                i32.lt_u
0505                                if  ;; label = @15
59 ------------------------------------------------------------
0506                                  local.get 0
0507                                  local.get 3
0508                                  local.get 0
0509                                  i32.load offset=4
0510                                  local.get 3
0511                                  i32.add
0512                                  i32.load8_u
0513                                  local.tee 9
0514                                  i32.add
0515                                  i32.const 1
0516                                  i32.add
0517                                  local.tee 3
0518                                  i32.store offset=8
0519                                  local.get 9
0520                                  br_if 1 (;@14;)
60 ------------------------------------------------------------
0521                                end
61 ------------------------------------------------------------
0522                              end
62 ------------------------------------------------------------
0523                              local.get 3
0524                              local.get 2
0525                              i32.gt_u
0526                              if  ;; label = @14
63 ------------------------------------------------------------
0527                                local.get 0
0528                                local.get 2
0529                                i32.store offset=8
0530                                local.get 2
0531                                local.set 3
0532                              end
64 ------------------------------------------------------------
0533                              local.get 5
0534                              i32.const 0
0535                              i32.store offset=48
0536                              local.get 5
0537                              local.get 3
0538                              local.get 6
0539                              i32.sub
0540                              local.tee 2
0541                              i32.store offset=44
0542                              local.get 8
0543                              i32.const 4
0544                              i32.and
0545                              if  ;; label = @14
65 ------------------------------------------------------------
0546                                local.get 0
0547                                i32.load offset=4
0548                                local.set 2
0549                                local.get 5
0550                                i32.const 0
0551                                i32.store offset=56
0552                                local.get 5
0553                                local.get 2
0554                                local.get 6
0555                                i32.add
0556                                i32.store offset=52
0557                                br 2 (;@12;)
66 ------------------------------------------------------------
0558                              end
67 ------------------------------------------------------------
0559                              i32.const 0
0560                              i32.const 1
0561                              local.get 2
0562                              call 23
0563                              local.set 2
0564                              local.get 5
0565                              i32.const 6
0566                              i32.store offset=56
0567                              local.get 5
0568                              local.get 2
0569                              i32.store offset=52
0570                              local.get 2
0571                              i32.eqz
0572                              br_if 4 (;@9;)
68 ------------------------------------------------------------
0573                              local.get 2
0574                              local.get 0
0575                              i32.load offset=4
0576                              local.get 6
0577                              i32.add
0578                              local.get 5
0579                              i32.load offset=44
0580                              call 24
0581                              drop
0582                              br 1 (;@12;)
69 ------------------------------------------------------------
0583                            end
70 ------------------------------------------------------------
0584                            i32.const 0
0585                            i32.const 1
0586                            i32.const 1024
0587                            call 23
0588                            local.tee 6
0589                            i32.eqz
0590                            br_if 3 (;@9;)
71 ------------------------------------------------------------
0591                            local.get 6
0592                            local.get 0
0593                            local.get 0
0594                            i32.load offset=24
0595                            call_indirect (type 0)
0596                            i32.store8
0597                            i32.const 1024
0598                            local.set 9
0599                            i32.const 1
0600                            local.set 3
0601                            local.get 0
0602                            local.get 0
0603                            i32.load offset=24
0604                            call_indirect (type 0)
0605                            local.tee 2
0606                            if  ;; label = @13
72 ------------------------------------------------------------
0607                              loop  ;; label = @14
73 ------------------------------------------------------------
0608                                local.get 3
0609                                local.get 2
0610                                i32.const 255
0611                                i32.and
0612                                local.tee 11
0613                                i32.add
0614                                local.tee 12
0615                                i32.const 2
0616                                i32.add
0617                                local.get 9
0618                                i32.gt_u
0619                                if  ;; label = @15
74 ------------------------------------------------------------
0620                                  local.get 6
0621                                  i32.const 1
0622                                  local.get 9
0623                                  i32.const 1
0624                                  i32.shl
0625                                  local.tee 9
0626                                  call 23
0627                                  local.tee 6
0628                                  i32.eqz
0629                                  br_if 6 (;@9;)
75 ------------------------------------------------------------
0630                                end
76 ------------------------------------------------------------
0631                                local.get 3
0632                                local.get 6
0633                                i32.add
0634                                local.tee 3
0635                                local.get 2
0636                                i32.store8
0637                                local.get 3
0638                                i32.const 1
0639                                i32.add
0640                                local.get 11
0641                                local.get 0
0642                                local.get 0
0643                                i32.load offset=28
0644                                call_indirect (type 3)
0645                                drop
0646                                local.get 12
0647                                i32.const 1
0648                                i32.add
0649                                local.set 3
0650                                local.get 0
0651                                local.get 0
0652                                i32.load offset=24
0653                                call_indirect (type 0)
0654                                local.tee 2
0655                                br_if 0 (;@14;)
77 ------------------------------------------------------------
0656                              end
78 ------------------------------------------------------------
0657                            end
79 ------------------------------------------------------------
0658                            local.get 3
0659                            local.get 6
0660                            i32.add
0661                            i32.const 0
0662                            i32.store8
0663                            local.get 5
0664                            i32.const 6
0665                            i32.store offset=56
0666                            local.get 5
0667                            local.get 6
0668                            i32.store offset=52
0669                            local.get 5
0670                            i32.const 0
0671                            i32.store offset=48
0672                            local.get 5
0673                            local.get 3
0674                            i32.const 1
0675                            i32.add
0676                            i32.store offset=44
0677                          end
80 ------------------------------------------------------------
0678                          local.get 8
0679                          i32.const 2
0680                          i32.and
0681                          i32.eqz
0682                          br_if 5 (;@6;)
81 ------------------------------------------------------------
0683                          local.get 5
0684                          i32.load offset=52
0685                          local.set 2
0686                          local.get 5
0687                          i32.load offset=44
0688                          local.set 3
0689                          local.get 4
0690                          i32.const 7
0691                          i32.store offset=96
0692                          local.get 4
0693                          i32.const 8
0694                          i32.store offset=92
0695                          local.get 4
0696                          i32.const 9
0697                          i32.store offset=88
0698                          local.get 4
0699                          i32.const 1
0700                          i32.store offset=80
0701                          local.get 4
0702                          local.get 3
0703                          i32.store offset=76
0704                          local.get 4
0705                          i32.const 0
0706                          i32.store offset=72
0707                          local.get 4
0708                          local.get 2
0709                          i32.store offset=68
0710                          local.get 4
0711                          i32.const 16
0712                          i32.add
0713                          local.get 5
0714                          local.get 4
0715                          i32.const -64
0716                          i32.sub
0717                          call 120
0718                          i32.eqz
0719                          br_if 2 (;@9;)
82 ------------------------------------------------------------
0720                          br 5 (;@6;)
83 ------------------------------------------------------------
0721                        end
84 ------------------------------------------------------------
0722                        local.get 8
0723                        i32.const 2
0724                        i32.and
0725                        if  ;; label = @11
85 ------------------------------------------------------------
0726                          local.get 4
0727                          i32.const 16
0728                          i32.add
0729                          local.get 5
0730                          local.get 0
0731                          call 120
0732                          br_if 5 (;@6;)
86 ------------------------------------------------------------
0733                          br 2 (;@9;)
87 ------------------------------------------------------------
0734                        end
88 ------------------------------------------------------------
0735                        local.get 0
0736                        local.get 0
0737                        i32.load offset=24
0738                        call_indirect (type 0)
0739                        local.tee 3
0740                        i32.eqz
0741                        br_if 4 (;@6;)
89 ------------------------------------------------------------
0742                        loop  ;; label = @11
90 ------------------------------------------------------------
0743                          local.get 4
0744                          i32.const -64
0745                          i32.sub
0746                          local.get 3
0747                          i32.const 255
0748                          i32.and
0749                          local.get 0
0750                          local.get 0
0751                          i32.load offset=28
0752                          call_indirect (type 3)
0753                          drop
0754                          local.get 0
0755                          local.get 0
0756                          i32.load offset=24
0757                          call_indirect (type 0)
0758                          local.tee 3
0759                          br_if 0 (;@11;)
91 ------------------------------------------------------------
0760                        end
92 ------------------------------------------------------------
0761                        br 4 (;@6;)
93 ------------------------------------------------------------
0762                      end
94 ------------------------------------------------------------
0763                      local.get 5
0764                      i32.const 0
0765                      i32.store offset=24
0766                    end
95 ------------------------------------------------------------
0767                    local.get 7
0768                    local.get 7
0769                    i32.load offset=4
0770                    i32.const -1
0771                    i32.add
0772                    call 266
0773                    i32.const 0
0774                    local.set 5
0775                    br 6 (;@2;)
96 ------------------------------------------------------------
0776                  end
97 ------------------------------------------------------------
0777                  block  ;; label = @8
98 ------------------------------------------------------------
0778                    block  ;; label = @9
99 ------------------------------------------------------------
0779                      block  ;; label = @10
100 ------------------------------------------------------------
0780                        block  ;; label = @11
101 ------------------------------------------------------------
0781                          block  ;; label = @12
102 ------------------------------------------------------------
0782                            local.get 0
0783                            local.get 0
0784                            i32.load offset=24
0785                            call_indirect (type 0)
0786                            local.tee 2
0787                            i32.const -249
0788                            i32.add
0789                            br_table 0 (;@12;) 4 (;@8;) 4 (;@8;) 4 (;@8;) 4 (;@8;) 2 (;@10;) 3 (;@9;) 1 (;@11;)
103 ------------------------------------------------------------
0790                          end
104 ------------------------------------------------------------
0791                          block  ;; label = @12
105 ------------------------------------------------------------
0792                            block  ;; label = @13
106 ------------------------------------------------------------
0793                              block  ;; label = @14
107 ------------------------------------------------------------
0794                                local.get 0
0795                                local.get 0
0796                                i32.load offset=24
0797                                call_indirect (type 0)
0798                                local.tee 2
0799                                br_table 2 (;@12;) 1 (;@13;) 1 (;@13;) 1 (;@13;) 0 (;@14;) 1 (;@13;)
108 ------------------------------------------------------------
0800                              end
109 ------------------------------------------------------------
0801                              local.get 5
0802                              local.get 0
0803                              local.get 0
0804                              i32.load offset=24
0805                              call_indirect (type 0)
0806                              local.tee 2
0807                              i32.const 2
0808                              i32.shr_u
0809                              i32.const 7
0810                              i32.and
0811                              i32.store8 offset=18
0812                              local.get 5
0813                              local.get 0
0814                              local.get 0
0815                              i32.load offset=24
0816                              call_indirect (type 0)
0817                              local.get 0
0818                              local.get 0
0819                              i32.load offset=24
0820                              call_indirect (type 0)
0821                              i32.const 8
0822                              i32.shl
0823                              i32.or
0824                              i32.store16 offset=16
0825                              local.get 5
0826                              local.get 0
0827                              local.get 0
0828                              i32.load offset=24
0829                              call_indirect (type 0)
0830                              i32.const -1
0831                              local.get 2
0832                              i32.const 1
0833                              i32.and
0834                              select
0835                              i32.store16 offset=20
0836                              br 1 (;@12;)
110 ------------------------------------------------------------
0837                            end
111 ------------------------------------------------------------
0838                            local.get 4
0839                            local.get 4
0840                            i32.load offset=60
0841                            i32.const 1
0842                            i32.add
0843                            i32.store offset=60
0844                            local.get 4
0845                            i32.load offset=52
0846                            local.tee 3
0847                            i32.const 35156
0848                            i32.load
0849                            local.get 3
0850                            select
0851                            local.tee 3
0852                            if  ;; label = @13
112 ------------------------------------------------------------
0853                              local.get 4
0854                              i32.load offset=16
0855                              local.get 4
0856                              i32.load offset=48
0857                              i32.const 1
0858                              i32.const 2590
0859                              local.get 3
0860                              call_indirect (type 6)
0861                            end
113 ------------------------------------------------------------
0862                            local.get 4
0863                            i32.const -64
0864                            i32.sub
0865                            local.get 2
0866                            local.get 0
0867                            local.get 0
0868                            i32.load offset=28
0869                            call_indirect (type 3)
0870                            drop
0871                          end
114 ------------------------------------------------------------
0872                          local.get 0
0873                          local.get 0
0874                          i32.load offset=24
0875                          call_indirect (type 0)
0876                          local.tee 3
0877                          i32.eqz
0878                          br_if 6 (;@5;)
115 ------------------------------------------------------------
0879                          loop  ;; label = @12
116 ------------------------------------------------------------
0880                            local.get 4
0881                            local.get 4
0882                            i32.load offset=60
0883                            i32.const 1
0884                            i32.add
0885                            i32.store offset=60
0886                            local.get 4
0887                            i32.load offset=52
0888                            local.tee 2
0889                            i32.const 35156
0890                            i32.load
0891                            local.get 2
0892                            select
0893                            local.tee 2
0894                            if  ;; label = @13
117 ------------------------------------------------------------
0895                              local.get 4
0896                              i32.load offset=16
0897                              local.get 4
0898                              i32.load offset=48
0899                              i32.const 1
0900                              i32.const 2590
0901                              local.get 2
0902                              call_indirect (type 6)
0903                            end
118 ------------------------------------------------------------
0904                            local.get 4
0905                            i32.const -64
0906                            i32.sub
0907                            local.get 3
0908                            i32.const 255
0909                            i32.and
0910                            local.get 0
0911                            local.get 0
0912                            i32.load offset=28
0913                            call_indirect (type 3)
0914                            drop
0915                            local.get 0
0916                            local.get 0
0917                            i32.load offset=24
0918                            call_indirect (type 0)
0919                            local.tee 3
0920                            br_if 0 (;@12;)
119 ------------------------------------------------------------
0921                          end
120 ------------------------------------------------------------
0922                          br 6 (;@5;)
121 ------------------------------------------------------------
0923                        end
122 ------------------------------------------------------------
0924                        local.get 2
0925                        i32.const 206
0926                        i32.ne
0927                        br_if 2 (;@8;)
123 ------------------------------------------------------------
0928                        i32.const 35160
0929                        i32.load
0930                        local.set 3
0931                        i32.const 0
0932                        local.set 2
0933                        local.get 0
0934                        local.get 0
0935                        i32.load offset=24
0936                        call_indirect (type 0)
0937                        local.tee 6
0938                        if  ;; label = @11
124 ------------------------------------------------------------
0939                          loop  ;; label = @12
125 ------------------------------------------------------------
0940                            local.get 3
0941                            i32.const 1
0942                            local.get 2
0943                            local.get 6
0944                            i32.const 255
0945                            i32.and
0946                            local.tee 6
0947                            i32.add
0948                            local.tee 8
0949                            i32.const 1
0950                            i32.add
0951                            call 23
0952                            local.tee 3
0953                            i32.eqz
0954                            if  ;; label = @13
126 ------------------------------------------------------------
0955                              i32.const 35160
0956                              i32.const 0
0957                              i32.store
0958                              br 8 (;@5;)
127 ------------------------------------------------------------
0959                            end
128 ------------------------------------------------------------
0960                            local.get 2
0961                            local.get 3
0962                            i32.add
0963                            local.get 6
0964                            local.get 0
0965                            local.get 0
0966                            i32.load offset=28
0967                            call_indirect (type 3)
0968                            drop
0969                            local.get 3
0970                            local.get 8
0971                            i32.add
0972                            i32.const 0
0973                            i32.store8
0974                            local.get 8
0975                            local.set 2
0976                            local.get 0
0977                            local.get 0
0978                            i32.load offset=24
0979                            call_indirect (type 0)
0980                            local.tee 6
0981                            br_if 0 (;@12;)
129 ------------------------------------------------------------
0982                          end
130 ------------------------------------------------------------
0983                        end
131 ------------------------------------------------------------
0984                        i32.const 35160
0985                        local.get 3
0986                        i32.store
0987                        br 5 (;@5;)
132 ------------------------------------------------------------
0988                      end
133 ------------------------------------------------------------
0989                      local.get 5
0990                      i32.load offset=32
0991                      local.set 6
0992                      i32.const 0
0993                      local.set 2
0994                      i32.const 0
0995                      local.set 3
0996                      local.get 0
0997                      local.get 0
0998                      i32.load offset=24
0999                      call_indirect (type 0)
1000                      local.tee 9
1001                      i32.eqz
1002                      br_if 4 (;@5;)
134 ------------------------------------------------------------
1003                      loop  ;; label = @10
135 ------------------------------------------------------------
1004                        local.get 3
1005                        i32.const 1
1006                        local.get 2
1007                        local.get 9
1008                        i32.const 255
1009                        i32.and
1010                        local.tee 9
1011                        i32.add
1012                        local.tee 8
1013                        i32.const 1
1014                        i32.add
1015                        call 23
1016                        local.tee 3
1017                        i32.eqz
1018                        br_if 5 (;@5;)
136 ------------------------------------------------------------
1019                        local.get 2
1020                        local.get 3
1021                        i32.add
1022                        local.get 9
1023                        local.get 0
1024                        local.get 0
1025                        i32.load offset=28
1026                        call_indirect (type 3)
1027                        drop
1028                        local.get 3
1029                        local.get 8
1030                        i32.add
1031                        i32.const 0
1032                        i32.store8
1033                        local.get 8
1034                        local.set 2
1035                        local.get 0
1036                        local.get 0
1037                        i32.load offset=24
1038                        call_indirect (type 0)
1039                        local.tee 9
1040                        br_if 0 (;@10;)
137 ------------------------------------------------------------
1041                      end
138 ------------------------------------------------------------
1042                      local.get 6
1043                      i32.eqz
1044                      if  ;; label = @10
139 ------------------------------------------------------------
1045                        local.get 5
1046                        call 70
1047                        local.tee 6
1048                        i32.store offset=32
1049                        local.get 6
1050                        i32.eqz
1051                        br_if 7 (;@3;)
140 ------------------------------------------------------------
1052                      end
141 ------------------------------------------------------------
1053                      local.get 6
1054                      local.get 3
1055                      local.get 2
1056                      call 125
1057                      br_if 4 (;@5;)
142 ------------------------------------------------------------
1058                      br 6 (;@3;)
143 ------------------------------------------------------------
1059                    end
144 ------------------------------------------------------------
1060                    local.get 4
1061                    i32.load offset=16
1062                    local.set 8
1063                    local.get 4
1064                    i32.const -64
1065                    i32.sub
1066                    local.get 0
1067                    local.get 0
1068                    i32.load offset=24
1069                    call_indirect (type 0)
1070                    local.tee 2
1071                    local.get 0
1072                    local.get 0
1073                    i32.load offset=28
1074                    call_indirect (type 3)
1075                    drop
1076                    block  ;; label = @9
145 ------------------------------------------------------------
1077                      local.get 2
1078                      i32.const 11
1079                      i32.ne
1080                      br_if 0 (;@9;)
146 ------------------------------------------------------------
1081                      local.get 4
1082                      i32.const -64
1083                      i32.sub
1084                      i32.const 2612
1085                      i32.const 11
1086                      call 61
1087                      if  ;; label = @10
147 ------------------------------------------------------------
1088                        local.get 4
1089                        i32.const -64
1090                        i32.sub
1091                        i32.const 2624
1092                        i32.const 11
1093                        call 61
1094                        br_if 1 (;@9;)
148 ------------------------------------------------------------
1095                      end
149 ------------------------------------------------------------
1096                      block  ;; label = @10
150 ------------------------------------------------------------
1097                        local.get 0
1098                        local.get 0
1099                        i32.load offset=24
1100                        call_indirect (type 0)
1101                        local.tee 3
1102                        i32.const 3
1103                        i32.eq
1104                        if  ;; label = @11
151 ------------------------------------------------------------
1105                          local.get 0
1106                          local.get 0
1107                          i32.load offset=24
1108                          call_indirect (type 0)
1109                          drop
1110                          local.get 8
1111                          local.get 0
1112                          local.get 0
1113                          i32.load offset=24
1114                          call_indirect (type 0)
1115                          local.get 0
1116                          local.get 0
1117                          i32.load offset=24
1118                          call_indirect (type 0)
1119                          i32.const 8
1120                          i32.shl
1121                          i32.or
1122                          i32.store offset=24
1123                          local.get 0
1124                          local.get 0
1125                          i32.load offset=24
1126                          call_indirect (type 0)
1127                          local.tee 3
1128                          i32.eqz
1129                          br_if 6 (;@5;)
152 ------------------------------------------------------------
1130                          local.get 4
1131                          local.get 4
1132                          i32.load offset=60
1133                          i32.const 1
1134                          i32.add
1135                          i32.store offset=60
1136                          local.get 4
1137                          i32.load offset=52
1138                          local.tee 2
1139                          i32.const 35156
1140                          i32.load
1141                          local.get 2
1142                          select
1143                          local.tee 2
1144                          i32.eqz
1145                          br_if 1 (;@10;)
153 ------------------------------------------------------------
1146                          local.get 4
1147                          i32.load offset=16
1148                          local.get 4
1149                          i32.load offset=48
1150                          i32.const 1
1151                          i32.const 2636
1152                          local.get 2
1153                          call_indirect (type 6)
1154                          br 1 (;@10;)
154 ------------------------------------------------------------
1155                        end
155 ------------------------------------------------------------
1156                        local.get 4
1157                        local.get 4
1158                        i32.load offset=60
1159                        i32.const 1
1160                        i32.add
1161                        i32.store offset=60
1162                        local.get 4
1163                        i32.load offset=52
1164                        local.tee 2
1165                        i32.const 35156
1166                        i32.load
1167                        local.get 2
1168                        select
1169                        local.tee 2
1170                        if  ;; label = @11
156 ------------------------------------------------------------
1171                          local.get 4
1172                          i32.load offset=16
1173                          local.get 4
1174                          i32.load offset=48
1175                          i32.const 1
1176                          i32.const 2636
1177                          local.get 2
1178                          call_indirect (type 6)
1179                        end
157 ------------------------------------------------------------
1180                        local.get 3
1181                        i32.eqz
1182                        br_if 5 (;@5;)
158 ------------------------------------------------------------
1183                      end
159 ------------------------------------------------------------
1184                      loop  ;; label = @10
160 ------------------------------------------------------------
1185                        local.get 4
1186                        i32.const -64
1187                        i32.sub
1188                        local.get 3
1189                        i32.const 255
1190                        i32.and
1191                        local.get 0
1192                        local.get 0
1193                        i32.load offset=28
1194                        call_indirect (type 3)
1195                        drop
1196                        local.get 0
1197                        local.get 0
1198                        i32.load offset=24
1199                        call_indirect (type 0)
1200                        local.tee 3
1201                        br_if 0 (;@10;)
161 ------------------------------------------------------------
1202                      end
162 ------------------------------------------------------------
1203                      br 4 (;@5;)
163 ------------------------------------------------------------
1204                    end
164 ------------------------------------------------------------
1205                    local.get 4
1206                    i32.const 16
1207                    i32.add
1208                    local.get 0
1209                    i32.const 255
1210                    local.get 4
1211                    i32.const -64
1212                    i32.sub
1213                    local.get 2
1214                    call 161
1215                    br 3 (;@5;)
165 ------------------------------------------------------------
1216                  end
166 ------------------------------------------------------------
1217                  local.get 4
1218                  i32.const 16
1219                  i32.add
1220                  local.get 0
1221                  local.get 2
1222                  i32.const 0
1223                  i32.const 0
1224                  call 161
1225                  br 2 (;@5;)
167 ------------------------------------------------------------
1226                end
168 ------------------------------------------------------------
1227                local.get 10
1228                i32.eqz
1229                if  ;; label = @7
169 ------------------------------------------------------------
1230                  local.get 0
1231                  i32.load offset=8
1232                  local.set 3
1233                  local.get 4
1234                  local.get 2
1235                  i32.store
1236                  local.get 4
1237                  local.get 3
1238                  i32.const -1
1239                  i32.add
1240                  i32.store offset=4
1241                  local.get 4
1242                  i32.const -64
1243                  i32.sub
1244                  i32.const 2434
1245                  local.get 4
1246                  call 62
1247                  local.get 4
1248                  local.get 4
1249                  i32.load offset=60
1250                  i32.const 1
1251                  i32.add
1252                  i32.store offset=60
1253                  local.get 4
1254                  i32.load offset=52
1255                  local.tee 2
1256                  i32.const 35156
1257                  i32.load
1258                  local.get 2
1259                  select
1260                  local.tee 2
1261                  if  ;; label = @8
170 ------------------------------------------------------------
1262                    local.get 4
1263                    i32.load offset=16
1264                    local.get 4
1265                    i32.load offset=48
1266                    i32.const 1
1267                    local.get 4
1268                    i32.const -64
1269                    i32.sub
1270                    local.get 2
1271                    call_indirect (type 6)
1272                  end
171 ------------------------------------------------------------
1273                  i32.const 1
1274                  local.set 10
1275                  br 2 (;@5;)
172 ------------------------------------------------------------
1276                end
173 ------------------------------------------------------------
1277                local.get 10
1278                i32.const 19
1279                i32.gt_s
1280                br_if 3 (;@3;)
174 ------------------------------------------------------------
1281                local.get 10
1282                i32.const 1
1283                i32.add
1284                local.set 10
1285                br 1 (;@5;)
175 ------------------------------------------------------------
1286              end
176 ------------------------------------------------------------
1287              local.get 4
1288              call 132
1289              local.tee 5
1290              i32.store offset=48
1291              local.get 5
1292              br_if 0 (;@5;)
177 ------------------------------------------------------------
1293              i32.const 0
1294              local.set 5
1295              br 3 (;@2;)
178 ------------------------------------------------------------
1296            end
179 ------------------------------------------------------------
1297            local.get 0
1298            local.get 0
1299            i32.load offset=32
1300            call_indirect (type 0)
1301            i32.eqz
1302            br_if 0 (;@4;)
180 ------------------------------------------------------------
1303          end
181 ------------------------------------------------------------
1304        end
182 ------------------------------------------------------------
1305        local.get 7
1306        i32.eqz
1307        local.get 5
1308        i32.eqz
1309        i32.or
1310        br_if 0 (;@2;)
183 ------------------------------------------------------------
1311        local.get 7
1312        local.get 5
1313        i32.load offset=32
1314        i32.store offset=28
1315        local.get 5
1316        i32.const 0
1317        i32.store offset=32
1318        local.get 7
1319        local.get 5
1320        i32.load offset=36
1321        i32.store offset=32
1322        local.get 5
1323        i32.const 0
1324        i32.store offset=36
1325        local.get 7
1326        i32.load offset=32
1327        local.tee 3
1328        i32.eqz
1329        br_if 0 (;@2;)
184 ------------------------------------------------------------
1330        loop  ;; label = @3
185 ------------------------------------------------------------
1331          local.get 3
1332          i32.const 0
1333          i32.store offset=28
1334          local.get 3
1335          i32.load offset=32
1336          local.tee 3
1337          br_if 0 (;@3;)
186 ------------------------------------------------------------
1338        end
187 ------------------------------------------------------------
1339      end
188 ------------------------------------------------------------
1340      local.get 5
1341      call 75
1342      i32.const 35160
1343      i32.load
1344      call 22
1345      local.get 4
1346      i32.load offset=20
1347      call 22
1348      local.get 4
1349      i32.load offset=24
1350      call 22
1351      local.get 4
1352      i32.load offset=28
1353      call 22
1354      i32.const 35160
1355      i32.const 0
1356      i32.store
1357      local.get 4
1358      i32.const 0
1359      i32.store offset=48
1360      block  ;; label = @2
189 ------------------------------------------------------------
1361        local.get 7
1362        i32.eqz
1363        br_if 0 (;@2;)
190 ------------------------------------------------------------
1364        local.get 7
1365        local.get 4
1366        i32.load offset=60
1367        i32.store offset=36
1368        local.get 4
1369        i32.load offset=60
1370        local.get 1
1371        i32.const 8
1372        i32.and
1373        i32.or
1374        br_if 0 (;@2;)
191 ------------------------------------------------------------
1375        local.get 0
1376        local.get 0
1377        i32.load offset=32
1378        call_indirect (type 0)
1379        br_if 0 (;@2;)
192 ------------------------------------------------------------
1380        local.get 4
1381        local.get 4
1382        i32.load offset=56
1383        i32.const 1
1384        i32.add
1385        i32.store offset=56
1386        local.get 4
1387        i32.load offset=52
1388        local.tee 0
1389        i32.const 35156
1390        i32.load
1391        local.get 0
1392        select
1393        local.tee 0
1394        i32.eqz
1395        br_if 0 (;@2;)
193 ------------------------------------------------------------
1396        local.get 4
1397        i32.load offset=16
1398        local.get 4
1399        i32.load offset=48
1400        i32.const 0
1401        i32.const 2474
1402        local.get 0
1403        call_indirect (type 6)
1404      end
194 ------------------------------------------------------------
1405      local.get 4
1406      i32.load offset=52
1407      local.tee 0
1408      i32.const 35156
1409      i32.load
1410      local.get 0
1411      select
1412      local.tee 0
1413      i32.eqz
1414      br_if 0 (;@1;)
195 ------------------------------------------------------------
1415      local.get 4
1416      i32.load offset=16
1417      local.get 4
1418      i32.load offset=48
1419      i32.const -1
1420      i32.const 0
1421      local.get 0
1422      call_indirect (type 6)
1423    end
196 ------------------------------------------------------------
1424    local.get 4
1425    i32.const 320
1426    i32.add
1427    global.set 0
1428    local.get 7)
