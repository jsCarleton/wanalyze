  (func (;200;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 5152
0002    i32.sub
0003    local.tee 3
0004    global.set 0
0005    local.get 0
0006    i32.load offset=244
0007    i32.const 1
0008    i32.ge_s
0009    if  ;; label = @1
1 ------------------------------------------------------------
0010      local.get 0
0011      i32.load offset=240
0012      i32.const -1
0013      i32.add
0014      local.set 17
0015      local.get 0
0016      i32.load offset=344
0017      local.set 14
0018      loop  ;; label = @2
2 ------------------------------------------------------------
0019        local.get 3
0020        local.get 3
0021        i32.const 3864
0022        i32.add
0023        i32.store offset=3860
0024        local.get 3
0025        local.get 3
0026        i32.const 2576
0027        i32.add
0028        i32.store offset=2572
0029        local.get 0
0030        local.get 16
0031        i32.const 2
0032        i32.shl
0033        i32.add
0034        i32.load offset=248
0035        local.tee 5
0036        i32.load offset=20
0037        local.set 6
0038        block  ;; label = @3
3 ------------------------------------------------------------
0039          local.get 0
0040          i32.load offset=180
0041          if  ;; label = @4
4 ------------------------------------------------------------
0042            local.get 0
0043            local.get 6
0044            local.get 5
0045            i32.load offset=24
0046            local.get 3
0047            call 341
0048            br 1 (;@3;)
5 ------------------------------------------------------------
0049          end
6 ------------------------------------------------------------
0050          local.get 0
0051          i32.const 1
0052          local.get 6
0053          local.get 3
0054          i32.const 3860
0055          i32.add
0056          call 54
0057          local.get 0
0058          i32.const 0
0059          local.get 5
0060          i32.load offset=24
0061          local.get 3
0062          i32.const 2572
0063          i32.add
0064          call 54
0065        end
7 ------------------------------------------------------------
0066        local.get 0
0067        local.get 14
0068        local.get 5
0069        i32.load offset=4
0070        i32.const 2
0071        i32.shl
0072        i32.add
0073        i32.const -64
0074        i32.sub
0075        i32.load
0076        local.get 5
0077        i32.load offset=12
0078        local.tee 6
0079        local.get 14
0080        i32.load offset=8
0081        i32.mul
0082        local.get 6
0083        i32.const 1
0084        local.get 0
0085        i32.load offset=4
0086        i32.load offset=32
0087        call_indirect (type 9)
0088        local.set 15
0089        local.get 0
0090        local.get 14
0091        local.get 5
0092        i32.load offset=4
0093        i32.const 2
0094        i32.shl
0095        i32.add
0096        i32.load offset=104
0097        local.get 5
0098        i32.load offset=12
0099        local.tee 6
0100        local.get 14
0101        i32.load offset=8
0102        i32.mul
0103        local.get 6
0104        i32.const 1
0105        local.get 0
0106        i32.load offset=4
0107        i32.load offset=32
0108        call_indirect (type 9)
0109        local.set 10
0110        block (result i32)  ;; label = @3
8 ------------------------------------------------------------
0111          local.get 14
0112          i32.load offset=8
0113          local.get 17
0114          i32.lt_u
0115          if  ;; label = @4
9 ------------------------------------------------------------
0116            local.get 5
0117            i32.load offset=12
0118            br 1 (;@3;)
10 ------------------------------------------------------------
0119          end
11 ------------------------------------------------------------
0120          local.get 5
0121          i32.load offset=32
0122          local.get 5
0123          i32.load offset=12
0124          local.tee 6
0125          i32.rem_u
0126          local.tee 2
0127          local.get 6
0128          local.get 2
0129          select
0130        end
12 ------------------------------------------------------------
0131        local.set 6
0132        local.get 5
0133        i32.load offset=8
0134        local.set 11
0135        local.get 5
0136        i32.load offset=28
0137        local.set 7
0138        local.get 3
0139        i32.const 0
0140        i32.store16 offset=5150
0141        local.get 11
0142        local.get 7
0143        local.get 11
0144        i32.rem_u
0145        local.tee 2
0146        i32.sub
0147        local.get 2
0148        local.get 2
0149        i32.const 0
0150        i32.gt_s
0151        select
0152        local.set 13
0153        block  ;; label = @3
13 ------------------------------------------------------------
0154          local.get 6
0155          i32.const 1
0156          i32.lt_s
0157          br_if 0 (;@3;)
14 ------------------------------------------------------------
0158          local.get 13
0159          i32.const 0
0160          i32.le_s
0161          if  ;; label = @4
15 ------------------------------------------------------------
0162            local.get 15
0163            i32.load
0164            local.set 2
0165            block  ;; label = @5
16 ------------------------------------------------------------
0166              local.get 0
0167              i32.load offset=180
0168              if  ;; label = @6
17 ------------------------------------------------------------
0169                local.get 0
0170                local.get 3
0171                local.get 2
0172                local.get 10
0173                i32.load
0174                local.get 7
0175                local.get 0
0176                local.get 5
0177                i32.load offset=16
0178                local.tee 2
0179                i32.const 2
0180                i32.shl
0181                i32.add
0182                i32.load offset=72
0183                local.get 0
0184                i32.load offset=332
0185                local.get 2
0186                i32.const 9
0187                i32.shl
0188                i32.add
0189                local.tee 2
0190                i32.const 56
0191                i32.add
0192                local.get 2
0193                i32.const 2104
0194                i32.add
0195                local.get 3
0196                i32.const 5150
0197                i32.add
0198                i32.const 0
0199                local.get 10
0200                i32.const -4
0201                i32.add
0202                i32.load
0203                call 102
0204                br 1 (;@5;)
18 ------------------------------------------------------------
0205              end
19 ------------------------------------------------------------
0206              local.get 0
0207              local.get 3
0208              i32.load offset=3860
0209              local.get 3
0210              i32.load offset=2572
0211              local.get 2
0212              local.get 10
0213              i32.load
0214              local.get 7
0215              local.get 0
0216              local.get 5
0217              i32.load offset=16
0218              local.tee 2
0219              i32.const 2
0220              i32.shl
0221              i32.add
0222              i32.load offset=72
0223              local.get 0
0224              i32.load offset=332
0225              local.get 2
0226              i32.const 9
0227              i32.shl
0228              i32.add
0229              local.tee 2
0230              i32.const 56
0231              i32.add
0232              local.get 2
0233              i32.const 2104
0234              i32.add
0235              local.get 3
0236              i32.const 5150
0237              i32.add
0238              i32.const 0
0239              local.get 10
0240              i32.const -4
0241              i32.add
0242              i32.load
0243              call 104
0244            end
20 ------------------------------------------------------------
0245            i32.const 1
0246            local.set 2
0247            local.get 6
0248            i32.const 1
0249            i32.eq
0250            br_if 1 (;@3;)
21 ------------------------------------------------------------
0251            loop  ;; label = @5
22 ------------------------------------------------------------
0252              local.get 15
0253              local.get 2
0254              i32.const 2
0255              i32.shl
0256              local.tee 8
0257              i32.add
0258              local.tee 9
0259              i32.load
0260              local.set 4
0261              local.get 9
0262              i32.const -4
0263              i32.add
0264              i32.load
0265              local.set 9
0266              block  ;; label = @6
23 ------------------------------------------------------------
0267                local.get 0
0268                i32.load offset=180
0269                if  ;; label = @7
24 ------------------------------------------------------------
0270                  local.get 0
0271                  local.get 3
0272                  local.get 4
0273                  local.get 8
0274                  local.get 10
0275                  i32.add
0276                  local.tee 8
0277                  i32.load
0278                  local.get 7
0279                  local.get 0
0280                  local.get 5
0281                  i32.load offset=16
0282                  local.tee 4
0283                  i32.const 2
0284                  i32.shl
0285                  i32.add
0286                  i32.load offset=72
0287                  local.get 0
0288                  i32.load offset=332
0289                  local.get 4
0290                  i32.const 9
0291                  i32.shl
0292                  i32.add
0293                  local.tee 4
0294                  i32.const 56
0295                  i32.add
0296                  local.get 4
0297                  i32.const 2104
0298                  i32.add
0299                  local.get 3
0300                  i32.const 5150
0301                  i32.add
0302                  local.get 9
0303                  local.get 8
0304                  i32.const -4
0305                  i32.add
0306                  i32.load
0307                  call 102
0308                  br 1 (;@6;)
25 ------------------------------------------------------------
0309                end
26 ------------------------------------------------------------
0310                local.get 0
0311                local.get 3
0312                i32.load offset=3860
0313                local.get 3
0314                i32.load offset=2572
0315                local.get 4
0316                local.get 8
0317                local.get 10
0318                i32.add
0319                local.tee 8
0320                i32.load
0321                local.get 7
0322                local.get 0
0323                local.get 5
0324                i32.load offset=16
0325                local.tee 4
0326                i32.const 2
0327                i32.shl
0328                i32.add
0329                i32.load offset=72
0330                local.get 0
0331                i32.load offset=332
0332                local.get 4
0333                i32.const 9
0334                i32.shl
0335                i32.add
0336                local.tee 4
0337                i32.const 56
0338                i32.add
0339                local.get 4
0340                i32.const 2104
0341                i32.add
0342                local.get 3
0343                i32.const 5150
0344                i32.add
0345                local.get 9
0346                local.get 8
0347                i32.const -4
0348                i32.add
0349                i32.load
0350                call 104
0351              end
27 ------------------------------------------------------------
0352              local.get 2
0353              i32.const 1
0354              i32.add
0355              local.tee 2
0356              local.get 6
0357              i32.ne
0358              br_if 0 (;@5;)
28 ------------------------------------------------------------
0359            end
29 ------------------------------------------------------------
0360            br 1 (;@3;)
30 ------------------------------------------------------------
0361          end
31 ------------------------------------------------------------
0362          local.get 13
0363          i32.const 7
0364          i32.shl
0365          local.set 18
0366          i32.const 0
0367          local.set 8
0368          loop  ;; label = @4
32 ------------------------------------------------------------
0369            local.get 15
0370            local.get 8
0371            i32.const 2
0372            i32.shl
0373            local.tee 9
0374            i32.add
0375            local.tee 12
0376            i32.load
0377            local.set 2
0378            i32.const 0
0379            local.set 4
0380            local.get 8
0381            if  ;; label = @5
33 ------------------------------------------------------------
0382              local.get 12
0383              i32.const -4
0384              i32.add
0385              i32.load
0386              local.set 4
0387            end
34 ------------------------------------------------------------
0388            block  ;; label = @5
35 ------------------------------------------------------------
0389              local.get 0
0390              i32.load offset=180
0391              if  ;; label = @6
36 ------------------------------------------------------------
0392                local.get 0
0393                local.get 3
0394                local.get 2
0395                local.get 9
0396                local.get 10
0397                i32.add
0398                local.tee 9
0399                i32.load
0400                local.get 7
0401                local.get 0
0402                local.get 5
0403                i32.load offset=16
0404                local.tee 12
0405                i32.const 2
0406                i32.shl
0407                i32.add
0408                i32.load offset=72
0409                local.get 0
0410                i32.load offset=332
0411                local.get 12
0412                i32.const 9
0413                i32.shl
0414                i32.add
0415                local.tee 12
0416                i32.const 56
0417                i32.add
0418                local.get 12
0419                i32.const 2104
0420                i32.add
0421                local.get 3
0422                i32.const 5150
0423                i32.add
0424                local.get 4
0425                local.get 9
0426                i32.const -4
0427                i32.add
0428                i32.load
0429                call 102
0430                br 1 (;@5;)
37 ------------------------------------------------------------
0431              end
38 ------------------------------------------------------------
0432              local.get 0
0433              local.get 3
0434              i32.load offset=3860
0435              local.get 3
0436              i32.load offset=2572
0437              local.get 2
0438              local.get 9
0439              local.get 10
0440              i32.add
0441              local.tee 9
0442              i32.load
0443              local.get 7
0444              local.get 0
0445              local.get 5
0446              i32.load offset=16
0447              local.tee 12
0448              i32.const 2
0449              i32.shl
0450              i32.add
0451              i32.load offset=72
0452              local.get 0
0453              i32.load offset=332
0454              local.get 12
0455              i32.const 9
0456              i32.shl
0457              i32.add
0458              local.tee 12
0459              i32.const 56
0460              i32.add
0461              local.get 12
0462              i32.const 2104
0463              i32.add
0464              local.get 3
0465              i32.const 5150
0466              i32.add
0467              local.get 4
0468              local.get 9
0469              i32.const -4
0470              i32.add
0471              i32.load
0472              call 104
0473            end
39 ------------------------------------------------------------
0474            local.get 2
0475            local.get 7
0476            i32.const 7
0477            i32.shl
0478            i32.add
0479            local.tee 4
0480            local.get 18
0481            call 40
0482            local.get 3
0483            local.get 4
0484            i32.const -128
0485            i32.add
0486            i32.load16_u
0487            local.tee 2
0488            i32.store16 offset=5150
0489            local.get 4
0490            local.get 2
0491            i32.store16
0492            i32.const 1
0493            local.set 2
0494            local.get 13
0495            i32.const 1
0496            i32.ne
0497            if  ;; label = @5
40 ------------------------------------------------------------
0498              loop  ;; label = @6
41 ------------------------------------------------------------
0499                local.get 4
0500                local.get 2
0501                i32.const 7
0502                i32.shl
0503                i32.add
0504                local.get 3
0505                i32.load16_u offset=5150
0506                i32.store16
0507                local.get 2
0508                i32.const 1
0509                i32.add
0510                local.tee 2
0511                local.get 13
0512                i32.ne
0513                br_if 0 (;@6;)
42 ------------------------------------------------------------
0514              end
43 ------------------------------------------------------------
0515            end
44 ------------------------------------------------------------
0516            local.get 8
0517            i32.const 1
0518            i32.add
0519            local.tee 8
0520            local.get 6
0521            i32.ne
0522            br_if 0 (;@4;)
45 ------------------------------------------------------------
0523          end
46 ------------------------------------------------------------
0524        end
47 ------------------------------------------------------------
0525        block  ;; label = @3
48 ------------------------------------------------------------
0526          local.get 14
0527          i32.load offset=8
0528          local.get 17
0529          i32.ne
0530          br_if 0 (;@3;)
49 ------------------------------------------------------------
0531          local.get 7
0532          local.get 13
0533          i32.add
0534          local.tee 2
0535          local.get 11
0536          i32.div_u
0537          local.set 7
0538          local.get 6
0539          local.get 5
0540          i32.load offset=12
0541          i32.ge_s
0542          br_if 0 (;@3;)
50 ------------------------------------------------------------
0543          local.get 2
0544          i32.const 7
0545          i32.shl
0546          local.set 10
0547          local.get 11
0548          local.get 2
0549          i32.le_u
0550          if  ;; label = @4
51 ------------------------------------------------------------
0551            local.get 11
0552            i32.const -1
0553            i32.add
0554            local.set 13
0555            local.get 7
0556            i32.const 1
0557            local.get 7
0558            i32.const 1
0559            i32.gt_u
0560            select
0561            local.set 9
0562            loop  ;; label = @5
52 ------------------------------------------------------------
0563              local.get 15
0564              local.get 6
0565              i32.const 2
0566              i32.shl
0567              i32.add
0568              local.tee 2
0569              i32.const -4
0570              i32.add
0571              i32.load
0572              local.set 7
0573              local.get 2
0574              i32.load
0575              local.tee 4
0576              local.get 10
0577              call 40
0578              i32.const 0
0579              local.set 8
0580              block  ;; label = @6
53 ------------------------------------------------------------
0581                local.get 11
0582                i32.const 0
0583                i32.le_s
0584                if  ;; label = @7
54 ------------------------------------------------------------
0585                  loop  ;; label = @8
55 ------------------------------------------------------------
0586                    local.get 3
0587                    local.get 7
0588                    local.get 13
0589                    i32.const 7
0590                    i32.shl
0591                    i32.add
0592                    i32.load16_u
0593                    i32.store16 offset=5150
0594                    local.get 7
0595                    local.get 11
0596                    i32.const 7
0597                    i32.shl
0598                    i32.add
0599                    local.set 7
0600                    local.get 8
0601                    i32.const 1
0602                    i32.add
0603                    local.tee 8
0604                    local.get 9
0605                    i32.ne
0606                    br_if 0 (;@8;)
56 ------------------------------------------------------------
0607                    br 2 (;@6;)
57 ------------------------------------------------------------
0608                    unreachable
58 ------------------------------------------------------------
0609                  end
59 ------------------------------------------------------------
0610                  unreachable
60 ------------------------------------------------------------
0611                end
61 ------------------------------------------------------------
0612                loop  ;; label = @7
62 ------------------------------------------------------------
0613                  local.get 3
0614                  local.get 7
0615                  local.get 13
0616                  i32.const 7
0617                  i32.shl
0618                  i32.add
0619                  i32.load16_u
0620                  local.tee 2
0621                  i32.store16 offset=5150
0622                  local.get 4
0623                  local.get 2
0624                  i32.store16
0625                  i32.const 1
0626                  local.set 2
0627                  local.get 11
0628                  i32.const 1
0629                  i32.ne
0630                  if  ;; label = @8
63 ------------------------------------------------------------
0631                    loop  ;; label = @9
64 ------------------------------------------------------------
0632                      local.get 4
0633                      local.get 2
0634                      i32.const 7
0635                      i32.shl
0636                      i32.add
0637                      local.get 3
0638                      i32.load16_u offset=5150
0639                      i32.store16
0640                      local.get 2
0641                      i32.const 1
0642                      i32.add
0643                      local.tee 2
0644                      local.get 11
0645                      i32.ne
0646                      br_if 0 (;@9;)
65 ------------------------------------------------------------
0647                    end
66 ------------------------------------------------------------
0648                  end
67 ------------------------------------------------------------
0649                  local.get 7
0650                  local.get 11
0651                  i32.const 7
0652                  i32.shl
0653                  local.tee 2
0654                  i32.add
0655                  local.set 7
0656                  local.get 2
0657                  local.get 4
0658                  i32.add
0659                  local.set 4
0660                  local.get 8
0661                  i32.const 1
0662                  i32.add
0663                  local.tee 8
0664                  local.get 9
0665                  i32.ne
0666                  br_if 0 (;@7;)
68 ------------------------------------------------------------
0667                end
69 ------------------------------------------------------------
0668              end
70 ------------------------------------------------------------
0669              local.get 6
0670              i32.const 1
0671              i32.add
0672              local.tee 6
0673              local.get 5
0674              i32.load offset=12
0675              i32.lt_s
0676              br_if 0 (;@5;)
71 ------------------------------------------------------------
0677            end
72 ------------------------------------------------------------
0678            br 1 (;@3;)
73 ------------------------------------------------------------
0679          end
74 ------------------------------------------------------------
0680          loop  ;; label = @4
75 ------------------------------------------------------------
0681            local.get 15
0682            local.get 6
0683            i32.const 2
0684            i32.shl
0685            i32.add
0686            i32.load
0687            local.get 10
0688            call 40
0689            local.get 6
0690            i32.const 1
0691            i32.add
0692            local.tee 6
0693            local.get 5
0694            i32.load offset=12
0695            i32.lt_s
0696            br_if 0 (;@4;)
76 ------------------------------------------------------------
0697          end
77 ------------------------------------------------------------
0698        end
78 ------------------------------------------------------------
0699        local.get 16
0700        i32.const 1
0701        i32.add
0702        local.tee 16
0703        local.get 0
0704        i32.load offset=244
0705        i32.lt_s
0706        br_if 0 (;@2;)
79 ------------------------------------------------------------
0707      end
80 ------------------------------------------------------------
0708    end
81 ------------------------------------------------------------
0709    local.get 0
0710    local.get 1
0711    call 86
0712    local.set 0
0713    local.get 3
0714    i32.const 5152
0715    i32.add
0716    global.set 0
0717    local.get 0)
