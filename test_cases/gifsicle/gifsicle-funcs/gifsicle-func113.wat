  (func (;113;) (type 18) (param i32 i32 i32 f64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64)
0 ------------------------------------------------------------
0000    i32.const 0
0001    i32.const 16
0002    local.get 1
0003    i32.load16_u offset=8
0004    call 23
0005    local.set 12
0006    i32.const 0
0007    i32.const 16
0008    local.get 0
0009    i32.load offset=28
0010    local.get 1
0011    i32.load16_u offset=8
0012    i32.mul
0013    call 23
0014    local.set 13
0015    local.get 0
0016    i32.load offset=128
0017    i32.eqz
0018    if  ;; label = @1
1 ------------------------------------------------------------
0019      local.get 0
0020      i32.const 128
0021      i32.add
0022      local.get 0
0023      i32.load offset=24
0024      local.get 0
0025      i32.load offset=56
0026      local.get 2
0027      local.get 3
0028      call 204
0029      local.get 0
0030      i32.const 136
0031      i32.add
0032      local.get 0
0033      i32.load offset=28
0034      local.get 0
0035      i32.load offset=60
0036      local.get 2
0037      local.get 3
0038      call 204
0039    end
2 ------------------------------------------------------------
0040    local.get 0
0041    call 146
0042    block (result i32)  ;; label = @1
3 ------------------------------------------------------------
0043      local.get 0
0044      f64.load offset=104
0045      local.tee 17
0046      f64.const 1.
0047      local.get 17
0048      f64.const 1.
0049      f64.gt
0050      select
0051      local.get 3
0052      f64.mul
0053      local.tee 3
0054      local.get 17
0055      local.get 1
0056      i32.load16_u offset=14
0057      local.tee 4
0058      local.get 1
0059      i32.load16_u offset=10
0060      i32.add
0061      f64.convert_i32_s
0062      f64.mul
0063      f64.add
0064      f64.const 0.0001
0065      f64.add
0066      f64.ceil
0067      local.tee 18
0068      f64.abs
0069      f64.const 2147483648.
0070      f64.lt
0071      if  ;; label = @2
4 ------------------------------------------------------------
0072        local.get 18
0073        i32.trunc_f64_s
0074        br 1 (;@1;)
5 ------------------------------------------------------------
0075      end
6 ------------------------------------------------------------
0076      i32.const -2147483648
0077    end
7 ------------------------------------------------------------
0078    local.set 2
0079    block (result i32)  ;; label = @1
8 ------------------------------------------------------------
0080      local.get 17
0081      local.get 4
0082      f64.convert_i32_u
0083      f64.mul
0084      local.get 3
0085      f64.sub
0086      f64.const -0.0001
0087      f64.add
0088      f64.floor
0089      local.tee 3
0090      f64.abs
0091      f64.const 2147483648.
0092      f64.lt
0093      if  ;; label = @2
9 ------------------------------------------------------------
0094        local.get 3
0095        i32.trunc_f64_s
0096        br 1 (;@1;)
10 ------------------------------------------------------------
0097      end
11 ------------------------------------------------------------
0098      i32.const -2147483648
0099    end
12 ------------------------------------------------------------
0100    local.set 6
0101    local.get 2
0102    i32.const 1
0103    i32.add
0104    local.set 9
0105    local.get 1
0106    i32.load16_u offset=12
0107    local.set 5
0108    local.get 0
0109    i32.load offset=128
0110    local.set 2
0111    local.get 0
0112    i32.load offset=28
0113    local.set 8
0114    loop  ;; label = @1
13 ------------------------------------------------------------
0115      local.get 2
0116      local.tee 7
0117      i32.const 12
0118      i32.add
0119      local.set 2
0120      local.get 7
0121      i32.load offset=8
0122      local.get 5
0123      i32.lt_s
0124      br_if 0 (;@1;)
14 ------------------------------------------------------------
0125    end
15 ------------------------------------------------------------
0126    local.get 6
0127    i32.const 0
0128    local.get 6
0129    i32.const 0
0130    i32.gt_s
0131    select
0132    local.tee 14
0133    local.get 9
0134    local.get 8
0135    local.get 9
0136    local.get 8
0137    i32.lt_s
0138    select
0139    local.tee 15
0140    i32.ne
0141    if  ;; label = @1
16 ------------------------------------------------------------
0142      local.get 7
0143      i32.const 8
0144      i32.add
0145      local.set 9
0146      local.get 1
0147      i32.load16_u offset=8
0148      local.set 8
0149      local.get 14
0150      local.set 6
0151      loop  ;; label = @2
17 ------------------------------------------------------------
0152        local.get 13
0153        local.get 6
0154        local.get 8
0155        i32.mul
0156        i32.const 4
0157        i32.shl
0158        i32.add
0159        local.set 11
0160        local.get 0
0161        i32.load offset=24
0162        local.set 4
0163        local.get 0
0164        i32.load offset=16
0165        local.set 10
0166        i32.const 0
0167        local.set 2
0168        local.get 8
0169        if  ;; label = @3
18 ------------------------------------------------------------
0170          loop  ;; label = @4
19 ------------------------------------------------------------
0171            local.get 11
0172            local.get 2
0173            i32.const 4
0174            i32.shl
0175            i32.add
0176            local.tee 5
0177            i64.const 0
0178            i64.store align=4
0179            local.get 5
0180            i64.const 0
0181            i64.store offset=8 align=4
0182            local.get 2
0183            i32.const 1
0184            i32.add
0185            local.tee 2
0186            local.get 1
0187            i32.load16_u offset=8
0188            local.tee 8
0189            i32.ne
0190            br_if 0 (;@4;)
20 ------------------------------------------------------------
0191          end
21 ------------------------------------------------------------
0192          local.get 1
0193          i32.load16_u offset=12
0194          local.set 5
0195        end
22 ------------------------------------------------------------
0196        local.get 9
0197        i32.load
0198        local.tee 16
0199        local.get 8
0200        local.get 5
0201        i32.const 65535
0202        i32.and
0203        i32.add
0204        i32.lt_s
0205        if  ;; label = @3
23 ------------------------------------------------------------
0206          local.get 10
0207          local.get 4
0208          local.get 6
0209          i32.mul
0210          i32.const 4
0211          i32.shl
0212          i32.add
0213          local.set 10
0214          local.get 9
0215          local.set 4
0216          local.get 7
0217          local.set 2
0218          loop  ;; label = @4
24 ------------------------------------------------------------
0219            local.get 11
0220            local.get 16
0221            local.get 5
0222            i32.const 65535
0223            i32.and
0224            i32.sub
0225            i32.const 4
0226            i32.shl
0227            i32.add
0228            local.tee 5
0229            local.get 10
0230            local.get 2
0231            i32.load offset=4
0232            i32.const 4
0233            i32.shl
0234            i32.add
0235            f32.load
0236            local.get 2
0237            f32.load
0238            f32.mul
0239            local.get 5
0240            f32.load
0241            f32.add
0242            f32.store
0243            local.get 11
0244            local.get 4
0245            i32.load
0246            local.get 1
0247            i32.load16_u offset=12
0248            i32.sub
0249            i32.const 4
0250            i32.shl
0251            i32.add
0252            local.tee 5
0253            local.get 10
0254            local.get 2
0255            i32.load offset=4
0256            i32.const 4
0257            i32.shl
0258            i32.add
0259            f32.load offset=4
0260            local.get 2
0261            f32.load
0262            f32.mul
0263            local.get 5
0264            f32.load offset=4
0265            f32.add
0266            f32.store offset=4
0267            local.get 11
0268            local.get 4
0269            i32.load
0270            local.get 1
0271            i32.load16_u offset=12
0272            i32.sub
0273            i32.const 4
0274            i32.shl
0275            i32.add
0276            local.tee 5
0277            local.get 10
0278            local.get 2
0279            i32.load offset=4
0280            i32.const 4
0281            i32.shl
0282            i32.add
0283            f32.load offset=8
0284            local.get 2
0285            f32.load
0286            f32.mul
0287            local.get 5
0288            f32.load offset=8
0289            f32.add
0290            f32.store offset=8
0291            local.get 11
0292            local.get 4
0293            i32.load
0294            local.get 1
0295            i32.load16_u offset=12
0296            i32.sub
0297            i32.const 4
0298            i32.shl
0299            i32.add
0300            local.tee 4
0301            local.get 10
0302            local.get 2
0303            i32.load offset=4
0304            i32.const 4
0305            i32.shl
0306            i32.add
0307            f32.load offset=12
0308            local.get 2
0309            f32.load
0310            f32.mul
0311            local.get 4
0312            f32.load offset=12
0313            f32.add
0314            f32.store offset=12
0315            local.get 2
0316            local.tee 5
0317            i32.const 20
0318            i32.add
0319            local.set 4
0320            local.get 2
0321            i32.const 12
0322            i32.add
0323            local.set 2
0324            local.get 5
0325            i32.load offset=20
0326            local.tee 16
0327            local.get 1
0328            i32.load16_u offset=8
0329            local.tee 8
0330            local.get 1
0331            i32.load16_u offset=12
0332            local.tee 5
0333            i32.add
0334            i32.lt_s
0335            br_if 0 (;@4;)
25 ------------------------------------------------------------
0336          end
26 ------------------------------------------------------------
0337        end
27 ------------------------------------------------------------
0338        local.get 6
0339        i32.const 1
0340        i32.add
0341        local.tee 6
0342        local.get 15
0343        i32.ne
0344        br_if 0 (;@2;)
28 ------------------------------------------------------------
0345      end
29 ------------------------------------------------------------
0346      local.get 1
0347      i32.load16_u offset=14
0348      local.set 4
0349    end
30 ------------------------------------------------------------
0350    local.get 0
0351    i32.load offset=136
0352    local.set 2
0353    loop  ;; label = @1
31 ------------------------------------------------------------
0354      local.get 2
0355      local.tee 6
0356      i32.const 12
0357      i32.add
0358      local.set 2
0359      local.get 6
0360      i32.load offset=8
0361      local.get 4
0362      i32.lt_s
0363      br_if 0 (;@1;)
32 ------------------------------------------------------------
0364    end
33 ------------------------------------------------------------
0365    local.get 1
0366    i32.load16_u offset=10
0367    if  ;; label = @1
34 ------------------------------------------------------------
0368      i32.const 0
0369      local.set 5
0370      loop  ;; label = @2
35 ------------------------------------------------------------
0371        i32.const 0
0372        local.set 2
0373        local.get 1
0374        i32.load16_u offset=8
0375        if  ;; label = @3
36 ------------------------------------------------------------
0376          i32.const 0
0377          local.set 4
0378          loop  ;; label = @4
37 ------------------------------------------------------------
0379            local.get 12
0380            local.get 4
0381            i32.const 4
0382            i32.shl
0383            i32.add
0384            local.tee 2
0385            i64.const 0
0386            i64.store align=4
0387            local.get 2
0388            i64.const 0
0389            i64.store offset=8 align=4
0390            local.get 4
0391            i32.const 1
0392            i32.add
0393            local.tee 4
0394            local.get 1
0395            i32.load16_u offset=8
0396            local.tee 2
0397            i32.ne
0398            br_if 0 (;@4;)
38 ------------------------------------------------------------
0399          end
39 ------------------------------------------------------------
0400        end
40 ------------------------------------------------------------
0401        local.get 6
0402        i32.load offset=8
0403        local.get 5
0404        local.get 1
0405        i32.load16_u offset=14
0406        local.tee 4
0407        i32.add
0408        i32.le_s
0409        if  ;; label = @3
41 ------------------------------------------------------------
0410          loop  ;; label = @4
42 ------------------------------------------------------------
0411            block  ;; label = @5
43 ------------------------------------------------------------
0412              block  ;; label = @6
44 ------------------------------------------------------------
0413                local.get 6
0414                i32.load offset=4
0415                local.tee 7
0416                local.get 14
0417                i32.lt_s
0418                local.get 7
0419                local.get 15
0420                i32.ge_s
0421                i32.or
0422                i32.eqz
0423                if  ;; label = @7
45 ------------------------------------------------------------
0424                  local.get 2
0425                  i32.const 65535
0426                  i32.and
0427                  local.tee 2
0428                  br_if 1 (;@6;)
46 ------------------------------------------------------------
0429                  i32.const 0
0430                  local.set 2
0431                  br 2 (;@5;)
47 ------------------------------------------------------------
0432                end
48 ------------------------------------------------------------
0433                i32.const 17660
0434                i32.const 16564
0435                i32.const 1098
0436                i32.const 17692
0437                call 0
0438                unreachable
49 ------------------------------------------------------------
0439              end
50 ------------------------------------------------------------
0440              local.get 13
0441              local.get 2
0442              local.get 7
0443              i32.mul
0444              i32.const 4
0445              i32.shl
0446              i32.add
0447              local.set 9
0448              i32.const 0
0449              local.set 4
0450              loop  ;; label = @6
51 ------------------------------------------------------------
0451                local.get 12
0452                local.get 4
0453                i32.const 4
0454                i32.shl
0455                local.tee 7
0456                i32.add
0457                local.tee 2
0458                local.get 2
0459                f32.load
0460                local.get 7
0461                local.get 9
0462                i32.add
0463                local.tee 7
0464                f32.load
0465                local.get 6
0466                f32.load
0467                f32.mul
0468                f32.add
0469                f32.store
0470                local.get 2
0471                local.get 2
0472                f32.load offset=4
0473                local.get 7
0474                f32.load offset=4
0475                local.get 6
0476                f32.load
0477                f32.mul
0478                f32.add
0479                f32.store offset=4
0480                local.get 2
0481                local.get 2
0482                f32.load offset=8
0483                local.get 7
0484                f32.load offset=8
0485                local.get 6
0486                f32.load
0487                f32.mul
0488                f32.add
0489                f32.store offset=8
0490                local.get 2
0491                local.get 2
0492                f32.load offset=12
0493                local.get 7
0494                f32.load offset=12
0495                local.get 6
0496                f32.load
0497                f32.mul
0498                f32.add
0499                f32.store offset=12
0500                local.get 4
0501                i32.const 1
0502                i32.add
0503                local.tee 4
0504                local.get 1
0505                i32.load16_u offset=8
0506                local.tee 2
0507                i32.ne
0508                br_if 0 (;@6;)
52 ------------------------------------------------------------
0509              end
53 ------------------------------------------------------------
0510              local.get 1
0511              i32.load16_u offset=14
0512              local.set 4
0513            end
54 ------------------------------------------------------------
0514            local.get 6
0515            local.tee 7
0516            i32.const 12
0517            i32.add
0518            local.set 6
0519            local.get 7
0520            i32.load offset=20
0521            local.get 5
0522            local.get 4
0523            i32.const 65535
0524            i32.and
0525            i32.add
0526            i32.le_s
0527            br_if 0 (;@4;)
55 ------------------------------------------------------------
0528          end
56 ------------------------------------------------------------
0529        end
57 ------------------------------------------------------------
0530        local.get 0
0531        local.get 12
0532        local.get 1
0533        local.get 5
0534        call 145
0535        local.get 5
0536        i32.const 1
0537        i32.add
0538        local.tee 5
0539        local.get 1
0540        i32.load16_u offset=10
0541        i32.ne
0542        br_if 0 (;@2;)
58 ------------------------------------------------------------
0543      end
59 ------------------------------------------------------------
0544    end
60 ------------------------------------------------------------
0545    local.get 0
0546    local.get 1
0547    call 144
0548    local.get 12
0549    call 22
0550    local.get 13
0551    call 22)
