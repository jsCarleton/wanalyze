  (func (;220;) (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 1104
0002    i32.sub
0003    local.tee 6
0004    global.set 0
0005    local.get 3
0006    i32.load8_u offset=3
0007    local.set 5
0008    local.get 3
0009    i32.load8_u offset=2
0010    local.set 7
0011    local.get 6
0012    i32.const 34032
0013    i32.load
0014    local.tee 8
0015    local.get 3
0016    i32.load8_u offset=1
0017    i32.const 1
0018    i32.shl
0019    i32.add
0020    i32.load16_u
0021    i32.store16 offset=8
0022    local.get 6
0023    local.get 8
0024    local.get 7
0025    i32.const 1
0026    i32.shl
0027    i32.add
0028    i32.load16_u
0029    i32.store16 offset=10
0030    local.get 6
0031    local.get 8
0032    local.get 5
0033    i32.const 1
0034    i32.shl
0035    i32.add
0036    i32.load16_u
0037    i32.store16 offset=12
0038    local.get 4
0039    i32.load offset=28
0040    local.tee 7
0041    if  ;; label = @1
1 ------------------------------------------------------------
0042      local.get 6
0043      i32.const 8
0044      i32.add
0045      local.get 7
0046      call_indirect (type 4)
0047    end
2 ------------------------------------------------------------
0048    local.get 1
0049    if  ;; label = @1
3 ------------------------------------------------------------
0050      local.get 6
0051      i32.load16_s offset=12
0052      local.set 18
0053      local.get 6
0054      i32.load16_u offset=10
0055      local.set 11
0056      local.get 6
0057      i32.load16_s offset=8
0058      local.set 12
0059      i32.const 0
0060      local.set 5
0061      i32.const 0
0062      local.set 7
0063      i32.const 0
0064      local.set 8
0065      loop  ;; label = @2
4 ------------------------------------------------------------
0066        local.get 6
0067        local.get 9
0068        local.get 18
0069        i32.const 16
0070        i32.shl
0071        i32.const 16
0072        i32.shr_s
0073        i32.add
0074        local.tee 10
0075        i32.const 32767
0076        local.get 10
0077        i32.const 32767
0078        i32.lt_s
0079        select
0080        local.tee 10
0081        i32.const 0
0082        local.get 10
0083        i32.const 0
0084        i32.gt_s
0085        select
0086        i32.store16 offset=4
0087        local.get 6
0088        local.get 5
0089        local.get 11
0090        i32.const 16
0091        i32.shl
0092        i32.const 16
0093        i32.shr_s
0094        i32.add
0095        local.tee 10
0096        i32.const 32767
0097        local.get 10
0098        i32.const 32767
0099        i32.lt_s
0100        select
0101        local.tee 10
0102        i32.const 0
0103        local.get 10
0104        i32.const 0
0105        i32.gt_s
0106        select
0107        i32.store16 offset=2
0108        local.get 6
0109        local.get 7
0110        local.get 12
0111        i32.const 16
0112        i32.shl
0113        i32.const 16
0114        i32.shr_s
0115        i32.add
0116        local.tee 10
0117        i32.const 32767
0118        local.get 10
0119        i32.const 32767
0120        i32.lt_s
0121        select
0122        local.tee 10
0123        i32.const 0
0124        local.get 10
0125        i32.const 0
0126        i32.gt_s
0127        select
0128        i32.store16
0129        local.get 0
0130        local.get 8
0131        i32.add
0132        local.get 4
0133        local.get 6
0134        i32.const 0
0135        call 85
0136        local.tee 10
0137        i32.store8
0138        local.get 6
0139        i32.load16_s offset=12
0140        local.tee 18
0141        local.get 4
0142        i32.load offset=12
0143        local.get 10
0144        i32.const 255
0145        i32.and
0146        i32.const 6
0147        i32.mul
0148        i32.add
0149        local.tee 10
0150        i32.load16_s offset=4
0151        i32.sub
0152        local.get 9
0153        i32.add
0154        local.set 9
0155        local.get 6
0156        i32.load16_s offset=10
0157        local.tee 11
0158        local.get 10
0159        i32.load16_s offset=2
0160        i32.sub
0161        local.get 5
0162        i32.add
0163        local.set 5
0164        local.get 6
0165        i32.load16_s offset=8
0166        local.tee 12
0167        local.get 10
0168        i32.load16_s
0169        i32.sub
0170        local.get 7
0171        i32.add
0172        local.set 7
0173        local.get 8
0174        i32.const 1
0175        i32.add
0176        local.tee 8
0177        local.get 1
0178        i32.ne
0179        br_if 0 (;@2;)
5 ------------------------------------------------------------
0180      end
6 ------------------------------------------------------------
0181    end
7 ------------------------------------------------------------
0182    local.get 0
0183    local.get 1
0184    i32.const 1
0185    i32.const 23
0186    call 57
0187    block  ;; label = @1
8 ------------------------------------------------------------
0188      block  ;; label = @2
9 ------------------------------------------------------------
0189        local.get 2
0190        local.get 1
0191        i32.ge_s
0192        br_if 0 (;@2;)
10 ------------------------------------------------------------
0193        local.get 0
0194        i32.load8_u
0195        local.tee 8
0196        local.get 0
0197        local.get 1
0198        i32.add
0199        i32.const -1
0200        i32.add
0201        i32.load8_u
0202        i32.eq
0203        br_if 0 (;@2;)
11 ------------------------------------------------------------
0204        i32.const 1
0205        local.set 5
0206        local.get 1
0207        i32.const 1
0208        i32.ne
0209        if  ;; label = @3
12 ------------------------------------------------------------
0210          local.get 8
0211          local.set 7
0212          i32.const 1
0213          local.set 9
0214          loop  ;; label = @4
13 ------------------------------------------------------------
0215            local.get 5
0216            local.get 7
0217            i32.const 255
0218            i32.and
0219            local.get 0
0220            local.get 9
0221            i32.add
0222            i32.load8_u
0223            local.tee 7
0224            i32.ne
0225            i32.add
0226            local.set 5
0227            local.get 9
0228            i32.const 1
0229            i32.add
0230            local.tee 9
0231            local.get 1
0232            i32.ne
0233            br_if 0 (;@4;)
14 ------------------------------------------------------------
0234          end
15 ------------------------------------------------------------
0235        end
16 ------------------------------------------------------------
0236        local.get 5
0237        local.get 2
0238        i32.le_s
0239        br_if 0 (;@2;)
17 ------------------------------------------------------------
0240        local.get 6
0241        i32.const 1
0242        i32.store16 offset=82
0243        local.get 6
0244        local.get 8
0245        i32.store8 offset=80
0246        i32.const 1
0247        local.set 11
0248        block (result i32)  ;; label = @3
18 ------------------------------------------------------------
0249          block  ;; label = @4
19 ------------------------------------------------------------
0250            local.get 1
0251            i32.const 1
0252            i32.eq
0253            br_if 0 (;@4;)
20 ------------------------------------------------------------
0254            i32.const 1
0255            local.set 9
0256            loop  ;; label = @5
21 ------------------------------------------------------------
0257              block  ;; label = @6
22 ------------------------------------------------------------
0258                local.get 8
0259                i32.const 255
0260                i32.and
0261                local.get 0
0262                local.get 9
0263                i32.add
0264                i32.load8_u
0265                local.tee 8
0266                i32.eq
0267                if  ;; label = @7
23 ------------------------------------------------------------
0268                  local.get 11
0269                  i32.const 2
0270                  i32.shl
0271                  local.get 6
0272                  i32.add
0273                  local.tee 7
0274                  i32.const 78
0275                  i32.add
0276                  local.get 7
0277                  i32.load16_u offset=78
0278                  i32.const 1
0279                  i32.add
0280                  i32.store16
0281                  br 1 (;@6;)
24 ------------------------------------------------------------
0282                end
25 ------------------------------------------------------------
0283                local.get 6
0284                i32.const 80
0285                i32.add
0286                local.get 11
0287                i32.const 2
0288                i32.shl
0289                i32.add
0290                local.tee 7
0291                i32.const 1
0292                i32.store16 offset=2
0293                local.get 7
0294                local.get 8
0295                i32.store8
0296                local.get 11
0297                i32.const 1
0298                i32.add
0299                local.set 11
0300              end
26 ------------------------------------------------------------
0301              local.get 9
0302              i32.const 1
0303              i32.add
0304              local.tee 9
0305              local.get 1
0306              i32.ne
0307              br_if 0 (;@5;)
27 ------------------------------------------------------------
0308            end
28 ------------------------------------------------------------
0309            local.get 11
0310            br_if 0 (;@4;)
29 ------------------------------------------------------------
0311            i32.const 0
0312            br 1 (;@3;)
30 ------------------------------------------------------------
0313          end
31 ------------------------------------------------------------
0314          local.get 4
0315          i32.load offset=12
0316          local.set 23
0317          i32.const -1
0318          local.set 8
0319          local.get 6
0320          i32.load16_s offset=12
0321          local.set 24
0322          local.get 6
0323          i32.load16_s offset=10
0324          local.set 25
0325          local.get 6
0326          i32.load16_s offset=8
0327          local.set 26
0328          local.get 2
0329          i32.const 16
0330          local.get 2
0331          i32.const 16
0332          i32.lt_s
0333          select
0334          local.tee 35
0335          i32.const 3
0336          i32.lt_s
0337          local.set 18
0338          i32.const 0
0339          local.set 12
0340          loop  ;; label = @4
32 ------------------------------------------------------------
0341            local.get 23
0342            local.get 6
0343            i32.const 80
0344            i32.add
0345            local.get 12
0346            i32.const 2
0347            i32.shl
0348            i32.add
0349            i32.load8_u
0350            local.tee 4
0351            i32.const 6
0352            i32.mul
0353            i32.add
0354            local.tee 7
0355            i32.load16_s offset=2
0356            local.tee 19
0357            local.get 25
0358            i32.sub
0359            local.tee 2
0360            local.get 2
0361            i32.mul
0362            local.get 7
0363            i32.load16_s
0364            local.tee 20
0365            local.get 26
0366            i32.sub
0367            local.tee 2
0368            local.get 2
0369            i32.mul
0370            i32.add
0371            local.get 7
0372            i32.load16_s offset=4
0373            local.tee 21
0374            local.get 24
0375            i32.sub
0376            local.tee 2
0377            local.get 2
0378            i32.mul
0379            i32.add
0380            local.tee 2
0381            local.get 8
0382            local.get 2
0383            local.get 8
0384            i32.lt_u
0385            local.tee 2
0386            select
0387            local.set 8
0388            i32.const 1
0389            local.get 16
0390            local.get 2
0391            select
0392            local.set 16
0393            local.get 4
0394            local.get 22
0395            local.get 2
0396            select
0397            local.set 22
0398            i32.const -32768
0399            local.get 17
0400            local.get 2
0401            select
0402            local.set 17
0403            local.get 35
0404            i32.const 2
0405            i32.lt_s
0406            local.get 12
0407            i32.const 1
0408            i32.add
0409            local.tee 12
0410            local.get 11
0411            i32.ge_s
0412            i32.or
0413            i32.eqz
0414            if  ;; label = @5
33 ------------------------------------------------------------
0415              local.get 24
0416              local.get 21
0417              i32.sub
0418              local.tee 27
0419              f64.convert_i32_s
0420              local.set 50
0421              local.get 25
0422              local.get 19
0423              i32.sub
0424              local.tee 28
0425              f64.convert_i32_s
0426              local.set 51
0427              local.get 26
0428              local.get 20
0429              i32.sub
0430              local.tee 29
0431              f64.convert_i32_s
0432              local.set 43
0433              local.get 12
0434              local.set 7
0435              loop  ;; label = @6
34 ------------------------------------------------------------
0436                block  ;; label = @7
35 ------------------------------------------------------------
0437                  local.get 23
0438                  local.get 6
0439                  i32.const 80
0440                  i32.add
0441                  local.get 7
0442                  i32.const 2
0443                  i32.shl
0444                  i32.add
0445                  i32.load8_u
0446                  local.tee 2
0447                  i32.const 6
0448                  i32.mul
0449                  i32.add
0450                  local.tee 5
0451                  i32.load16_s offset=2
0452                  local.get 19
0453                  i32.sub
0454                  local.tee 13
0455                  local.get 13
0456                  i32.mul
0457                  local.get 5
0458                  i32.load16_s
0459                  local.get 20
0460                  i32.sub
0461                  local.tee 15
0462                  local.get 15
0463                  i32.mul
0464                  i32.add
0465                  local.get 5
0466                  i32.load16_s offset=4
0467                  local.get 21
0468                  i32.sub
0469                  local.tee 14
0470                  local.get 14
0471                  i32.mul
0472                  i32.add
0473                  local.tee 5
0474                  i32.eqz
0475                  br_if 0 (;@7;)
36 ------------------------------------------------------------
0476                  local.get 43
0477                  local.get 15
0478                  f64.convert_i32_s
0479                  local.tee 37
0480                  f64.mul
0481                  local.get 13
0482                  local.get 28
0483                  i32.mul
0484                  f64.convert_i32_s
0485                  f64.add
0486                  local.get 14
0487                  local.get 27
0488                  i32.mul
0489                  f64.convert_i32_s
0490                  f64.add
0491                  local.get 5
0492                  f64.convert_i32_u
0493                  f64.div
0494                  local.tee 38
0495                  f64.const 0.
0496                  f64.lt
0497                  local.get 38
0498                  f64.const 1.
0499                  f64.gt
0500                  i32.or
0501                  br_if 0 (;@7;)
37 ------------------------------------------------------------
0502                  block (result i32)  ;; label = @8
38 ------------------------------------------------------------
0503                    local.get 38
0504                    local.get 37
0505                    f64.mul
0506                    local.tee 37
0507                    f64.abs
0508                    f64.const 2147483648.
0509                    f64.lt
0510                    if  ;; label = @9
39 ------------------------------------------------------------
0511                      local.get 37
0512                      i32.trunc_f64_s
0513                      br 1 (;@8;)
40 ------------------------------------------------------------
0514                    end
41 ------------------------------------------------------------
0515                    i32.const -2147483648
0516                  end
42 ------------------------------------------------------------
0517                  local.get 20
0518                  i32.add
0519                  local.tee 5
0520                  i32.const 32767
0521                  local.get 5
0522                  i32.const 32767
0523                  i32.lt_s
0524                  select
0525                  local.tee 5
0526                  i32.const 0
0527                  local.get 5
0528                  i32.const 0
0529                  i32.gt_s
0530                  select
0531                  local.get 26
0532                  i32.sub
0533                  local.tee 5
0534                  local.get 5
0535                  i32.mul
0536                  block (result i32)  ;; label = @8
43 ------------------------------------------------------------
0537                    local.get 38
0538                    local.get 13
0539                    f64.convert_i32_s
0540                    f64.mul
0541                    local.tee 37
0542                    f64.abs
0543                    f64.const 2147483648.
0544                    f64.lt
0545                    if  ;; label = @9
44 ------------------------------------------------------------
0546                      local.get 37
0547                      i32.trunc_f64_s
0548                      br 1 (;@8;)
45 ------------------------------------------------------------
0549                    end
46 ------------------------------------------------------------
0550                    i32.const -2147483648
0551                  end
47 ------------------------------------------------------------
0552                  local.get 19
0553                  i32.add
0554                  local.tee 5
0555                  i32.const 32767
0556                  local.get 5
0557                  i32.const 32767
0558                  i32.lt_s
0559                  select
0560                  local.tee 5
0561                  i32.const 0
0562                  local.get 5
0563                  i32.const 0
0564                  i32.gt_s
0565                  select
0566                  local.get 25
0567                  i32.sub
0568                  local.tee 5
0569                  local.get 5
0570                  i32.mul
0571                  i32.add
0572                  local.set 9
0573                  local.get 9
0574                  block (result i32)  ;; label = @8
48 ------------------------------------------------------------
0575                    local.get 38
0576                    local.get 14
0577                    f64.convert_i32_s
0578                    f64.mul
0579                    local.tee 37
0580                    f64.abs
0581                    f64.const 2147483648.
0582                    f64.lt
0583                    if  ;; label = @9
49 ------------------------------------------------------------
0584                      local.get 37
0585                      i32.trunc_f64_s
0586                      br 1 (;@8;)
50 ------------------------------------------------------------
0587                    end
51 ------------------------------------------------------------
0588                    i32.const -2147483648
0589                  end
52 ------------------------------------------------------------
0590                  local.get 21
0591                  i32.add
0592                  local.tee 5
0593                  i32.const 32767
0594                  local.get 5
0595                  i32.const 32767
0596                  i32.lt_s
0597                  select
0598                  local.tee 5
0599                  i32.const 0
0600                  local.get 5
0601                  i32.const 0
0602                  i32.gt_s
0603                  select
0604                  local.get 24
0605                  i32.sub
0606                  local.tee 5
0607                  local.get 5
0608                  i32.mul
0609                  i32.add
0610                  local.tee 5
0611                  local.get 8
0612                  i32.ge_u
0613                  br_if 0 (;@7;)
53 ------------------------------------------------------------
0614                  i32.const -32768
0615                  block (result i32)  ;; label = @8
54 ------------------------------------------------------------
0616                    local.get 38
0617                    f64.const 32768.
0618                    f64.mul
0619                    local.tee 37
0620                    f64.abs
0621                    f64.const 2147483648.
0622                    f64.lt
0623                    if  ;; label = @9
55 ------------------------------------------------------------
0624                      local.get 37
0625                      i32.trunc_f64_s
0626                      br 1 (;@8;)
56 ------------------------------------------------------------
0627                    end
57 ------------------------------------------------------------
0628                    i32.const -2147483648
0629                  end
58 ------------------------------------------------------------
0630                  local.tee 30
0631                  i32.sub
0632                  local.set 17
0633                  i32.const 2
0634                  local.set 16
0635                  local.get 2
0636                  local.set 31
0637                  local.get 4
0638                  local.set 22
0639                  local.get 5
0640                  local.set 8
0641                end
59 ------------------------------------------------------------
0642                local.get 18
0643                local.get 7
0644                i32.const 1
0645                i32.add
0646                local.tee 7
0647                local.get 11
0648                i32.ge_s
0649                i32.or
0650                i32.eqz
0651                if  ;; label = @7
60 ------------------------------------------------------------
0652                  local.get 13
0653                  local.get 29
0654                  i32.mul
0655                  local.get 15
0656                  local.get 28
0657                  i32.mul
0658                  i32.sub
0659                  f64.convert_i32_s
0660                  local.set 44
0661                  local.get 15
0662                  local.get 27
0663                  i32.mul
0664                  local.get 14
0665                  local.get 29
0666                  i32.mul
0667                  i32.sub
0668                  f64.convert_i32_s
0669                  local.set 45
0670                  local.get 14
0671                  local.get 28
0672                  i32.mul
0673                  local.get 13
0674                  local.get 27
0675                  i32.mul
0676                  i32.sub
0677                  f64.convert_i32_s
0678                  local.set 46
0679                  local.get 14
0680                  f64.convert_i32_s
0681                  local.set 52
0682                  local.get 13
0683                  f64.convert_i32_s
0684                  local.set 53
0685                  local.get 15
0686                  f64.convert_i32_s
0687                  local.set 54
0688                  local.get 7
0689                  local.set 9
0690                  loop  ;; label = @8
61 ------------------------------------------------------------
0691                    block  ;; label = @9
62 ------------------------------------------------------------
0692                      local.get 23
0693                      local.get 6
0694                      i32.const 80
0695                      i32.add
0696                      local.get 9
0697                      i32.const 2
0698                      i32.shl
0699                      i32.add
0700                      i32.load8_u
0701                      local.tee 10
0702                      i32.const 6
0703                      i32.mul
0704                      i32.add
0705                      local.tee 5
0706                      i32.load16_s offset=2
0707                      local.get 19
0708                      i32.sub
0709                      local.tee 32
0710                      f64.convert_i32_s
0711                      local.tee 47
0712                      local.get 5
0713                      i32.load16_s offset=4
0714                      local.get 21
0715                      i32.sub
0716                      local.tee 33
0717                      local.get 13
0718                      i32.mul
0719                      local.get 14
0720                      local.get 32
0721                      i32.mul
0722                      i32.sub
0723                      f64.convert_i32_s
0724                      local.tee 40
0725                      f64.mul
0726                      local.get 5
0727                      i32.load16_s
0728                      local.get 20
0729                      i32.sub
0730                      local.tee 5
0731                      f64.convert_i32_s
0732                      local.tee 48
0733                      local.get 5
0734                      local.get 14
0735                      i32.mul
0736                      local.get 15
0737                      local.get 33
0738                      i32.mul
0739                      i32.sub
0740                      f64.convert_i32_s
0741                      local.tee 41
0742                      f64.mul
0743                      f64.sub
0744                      local.tee 55
0745                      local.get 52
0746                      f64.mul
0747                      local.get 33
0748                      f64.convert_i32_s
0749                      local.tee 49
0750                      local.get 41
0751                      f64.mul
0752                      local.get 47
0753                      local.get 15
0754                      local.get 32
0755                      i32.mul
0756                      local.get 5
0757                      local.get 13
0758                      i32.mul
0759                      i32.sub
0760                      f64.convert_i32_s
0761                      local.tee 42
0762                      f64.mul
0763                      f64.sub
0764                      local.tee 39
0765                      local.get 54
0766                      f64.mul
0767                      local.get 48
0768                      local.get 42
0769                      f64.mul
0770                      local.get 49
0771                      local.get 40
0772                      f64.mul
0773                      f64.sub
0774                      local.tee 38
0775                      local.get 53
0776                      f64.mul
0777                      f64.add
0778                      f64.add
0779                      local.tee 37
0780                      f64.abs
0781                      f64.const 0.0001220703125
0782                      f64.le
0783                      br_if 0 (;@9;)
63 ------------------------------------------------------------
0784                      local.get 55
0785                      local.get 50
0786                      f64.mul
0787                      local.get 39
0788                      local.get 43
0789                      f64.mul
0790                      local.get 38
0791                      local.get 51
0792                      f64.mul
0793                      f64.add
0794                      f64.add
0795                      f64.const 1.
0796                      local.get 37
0797                      f64.div
0798                      local.tee 37
0799                      f64.mul
0800                      local.tee 39
0801                      f64.const 0.
0802                      f64.lt
0803                      local.get 39
0804                      f64.const 1.
0805                      f64.gt
0806                      i32.or
0807                      br_if 0 (;@9;)
64 ------------------------------------------------------------
0808                      local.get 44
0809                      local.get 42
0810                      f64.mul
0811                      local.get 46
0812                      local.get 40
0813                      f64.mul
0814                      local.get 45
0815                      local.get 41
0816                      f64.mul
0817                      f64.add
0818                      f64.add
0819                      local.get 37
0820                      f64.mul
0821                      local.tee 38
0822                      f64.const 0.
0823                      f64.lt
0824                      local.get 38
0825                      f64.const 1.
0826                      f64.gt
0827                      i32.or
0828                      local.get 39
0829                      local.get 38
0830                      f64.add
0831                      f64.const 1.
0832                      f64.gt
0833                      i32.or
0834                      br_if 0 (;@9;)
65 ------------------------------------------------------------
0835                      local.get 8
0836                      block (result i32)  ;; label = @10
66 ------------------------------------------------------------
0837                        local.get 42
0838                        local.get 42
0839                        f64.mul
0840                        local.get 40
0841                        local.get 40
0842                        f64.mul
0843                        local.get 41
0844                        local.get 41
0845                        f64.mul
0846                        f64.add
0847                        f64.add
0848                        local.get 44
0849                        local.get 49
0850                        f64.mul
0851                        local.get 46
0852                        local.get 48
0853                        f64.mul
0854                        local.get 45
0855                        local.get 47
0856                        f64.mul
0857                        f64.add
0858                        f64.add
0859                        local.get 37
0860                        f64.mul
0861                        local.tee 37
0862                        local.get 37
0863                        f64.mul
0864                        f64.mul
0865                        f64.const 0.5
0866                        f64.add
0867                        local.tee 37
0868                        f64.const 4294967296.
0869                        f64.lt
0870                        local.get 37
0871                        f64.const 0.
0872                        f64.ge
0873                        i32.and
0874                        if  ;; label = @11
67 ------------------------------------------------------------
0875                          local.get 37
0876                          i32.trunc_f64_u
0877                          br 1 (;@10;)
68 ------------------------------------------------------------
0878                        end
69 ------------------------------------------------------------
0879                        i32.const 0
0880                      end
70 ------------------------------------------------------------
0881                      local.tee 5
0882                      i32.le_u
0883                      br_if 0 (;@9;)
71 ------------------------------------------------------------
0884                      block (result i32)  ;; label = @10
72 ------------------------------------------------------------
0885                        local.get 38
0886                        f64.const 32768.
0887                        f64.mul
0888                        local.tee 37
0889                        f64.abs
0890                        f64.const 2147483648.
0891                        f64.lt
0892                        if  ;; label = @11
73 ------------------------------------------------------------
0893                          local.get 37
0894                          i32.trunc_f64_s
0895                          br 1 (;@10;)
74 ------------------------------------------------------------
0896                        end
75 ------------------------------------------------------------
0897                        i32.const -2147483648
0898                      end
76 ------------------------------------------------------------
0899                      local.set 34
0900                      i32.const 32768
0901                      local.get 34
0902                      block (result i32)  ;; label = @10
77 ------------------------------------------------------------
0903                        local.get 39
0904                        f64.const 32768.
0905                        f64.mul
0906                        local.tee 37
0907                        f64.abs
0908                        f64.const 2147483648.
0909                        f64.lt
0910                        if  ;; label = @11
78 ------------------------------------------------------------
0911                          local.get 37
0912                          i32.trunc_f64_s
0913                          br 1 (;@10;)
79 ------------------------------------------------------------
0914                        end
80 ------------------------------------------------------------
0915                        i32.const -2147483648
0916                      end
81 ------------------------------------------------------------
0917                      local.tee 30
0918                      i32.add
0919                      i32.sub
0920                      local.set 17
0921                      i32.const 3
0922                      local.set 16
0923                      local.get 10
0924                      local.set 36
0925                      local.get 2
0926                      local.set 31
0927                      local.get 4
0928                      local.set 22
0929                      local.get 5
0930                      local.set 8
0931                    end
82 ------------------------------------------------------------
0932                    local.get 9
0933                    i32.const 1
0934                    i32.add
0935                    local.tee 9
0936                    local.get 11
0937                    i32.lt_s
0938                    br_if 0 (;@8;)
83 ------------------------------------------------------------
0939                  end
84 ------------------------------------------------------------
0940                end
85 ------------------------------------------------------------
0941                local.get 7
0942                local.get 11
0943                i32.ne
0944                br_if 0 (;@6;)
86 ------------------------------------------------------------
0945              end
87 ------------------------------------------------------------
0946            end
88 ------------------------------------------------------------
0947            local.get 11
0948            local.get 12
0949            i32.ne
0950            br_if 0 (;@4;)
89 ------------------------------------------------------------
0951          end
90 ------------------------------------------------------------
0952          local.get 6
0953          local.get 34
0954          i32.store16 offset=26
0955          local.get 6
0956          local.get 36
0957          i32.store8 offset=24
0958          local.get 6
0959          local.get 30
0960          i32.store16 offset=22
0961          local.get 6
0962          local.get 31
0963          i32.store8 offset=20
0964          local.get 6
0965          local.get 17
0966          i32.store16 offset=18
0967          local.get 6
0968          local.get 22
0969          i32.store8 offset=16
0970          i32.const 0
0971          local.tee 9
0972          local.get 16
0973          i32.eqz
0974          br_if 0 (;@3;)
91 ------------------------------------------------------------
0975          drop
0976          i32.const 0
0977          local.set 5
0978          i32.const 0
0979          local.set 8
0980          loop (result i32)  ;; label = @4
92 ------------------------------------------------------------
0981            block  ;; label = @5
93 ------------------------------------------------------------
0982              local.get 5
0983              local.get 8
0984              local.get 17
0985              i32.const 65535
0986              i32.and
0987              i32.add
0988              local.tee 8
0989              local.get 1
0990              i32.mul
0991              i32.const 32768
0992              i32.div_s
0993              local.tee 7
0994              i32.eq
0995              if  ;; label = @6
94 ------------------------------------------------------------
0996                local.get 5
0997                local.set 7
0998                br 1 (;@5;)
95 ------------------------------------------------------------
0999              end
96 ------------------------------------------------------------
1000              local.get 0
1001              local.get 5
1002              i32.add
1003              local.get 6
1004              i32.const 16
1005              i32.add
1006              local.get 9
1007              i32.const 2
1008              i32.shl
1009              i32.add
1010              i32.load8_u
1011              local.get 7
1012              local.get 5
1013              i32.sub
1014              call 27
1015              drop
1016            end
97 ------------------------------------------------------------
1017            local.get 16
1018            local.get 9
1019            i32.const 1
1020            i32.add
1021            local.tee 9
1022            i32.eq
1023            if (result i32)  ;; label = @5
98 ------------------------------------------------------------
1024              local.get 7
1025            else
99 ------------------------------------------------------------
1026              local.get 6
1027              i32.const 16
1028              i32.add
1029              local.get 9
1030              i32.const 2
1031              i32.shl
1032              i32.add
1033              i32.load16_u offset=2
1034              local.set 17
1035              local.get 7
1036              local.set 5
1037              br 1 (;@4;)
100 ------------------------------------------------------------
1038            end
101 ------------------------------------------------------------
1039          end
102 ------------------------------------------------------------
1040        end
103 ------------------------------------------------------------
1041        local.get 1
1042        i32.ne
1043        br_if 1 (;@1;)
104 ------------------------------------------------------------
1044      end
105 ------------------------------------------------------------
1045      local.get 3
1046      i32.const 1
1047      i32.store8
1048      local.get 6
1049      i32.const 1104
1050      i32.add
1051      global.set 0
1052      return
106 ------------------------------------------------------------
1053    end
107 ------------------------------------------------------------
1054    i32.const 9176
1055    i32.const 4400
1056    i32.const 1208
1057    i32.const 9193
1058    call 0
1059    unreachable
108 ------------------------------------------------------------)
