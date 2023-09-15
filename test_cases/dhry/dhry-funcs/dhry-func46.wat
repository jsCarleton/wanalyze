  (func (;46;) (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 f64 f64 f64)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 448
0002    i32.sub
0003    local.tee 2
0004    global.set 0
0005    i32.const 3444
0006    i32.const 48
0007    call 16
0008    local.tee 0
0009    i32.store
0010    i32.const 3448
0011    i32.const 48
0012    call 16
0013    local.tee 1
0014    i32.store
0015    local.get 1
0016    i32.const 40
0017    i32.store offset=12
0018    local.get 1
0019    i64.const 8589934592
0020    i64.store offset=4 align=4
0021    local.get 1
0022    local.get 0
0023    i32.store
0024    local.get 1
0025    i32.const 1260
0026    i64.load align=1
0027    i64.store offset=16 align=1
0028    local.get 1
0029    i32.const 1268
0030    i64.load align=1
0031    i64.store offset=24 align=1
0032    local.get 1
0033    i32.const 1276
0034    i64.load align=1
0035    i64.store offset=32 align=1
0036    local.get 1
0037    i32.const 1283
0038    i64.load align=1
0039    i64.store offset=39 align=1
0040    i32.const 5084
0041    i32.const 10
0042    i32.store
0043    local.get 2
0044    i32.const 1245
0045    i64.load align=1
0046    i64.store offset=416
0047    local.get 2
0048    i32.const 1252
0049    i64.load align=1
0050    i64.store offset=423 align=1
0051    local.get 2
0052    i32.const 1229
0053    i64.load align=1
0054    i64.store offset=400
0055    local.get 2
0056    i32.const 1237
0057    i64.load align=1
0058    i64.store offset=408
0059    i32.const 1446
0060    call 10
0061    call 14
0062    local.get 2
0063    i32.const 1206
0064    i32.store offset=352
0065    i32.const 1878
0066    local.get 2
0067    i32.const 352
0068    i32.add
0069    call 7
0070    i32.const 2045
0071    call 10
0072    i32.const 3191
0073    i32.const 1431
0074    i64.load align=1
0075    i64.store align=1
0076    i32.const 3184
0077    i32.const 1424
0078    i64.load align=1
0079    i64.store
0080    i32.const 3176
0081    i32.const 1416
0082    i64.load align=1
0083    i64.store
0084    i32.const 3168
0085    i32.const 1408
0086    i64.load align=1
0087    i64.store
0088    i32.const 5000
0089    local.set 1
0090    i32.const 10
0091    local.set 6
0092    loop  ;; label = @1
1 ------------------------------------------------------------
0093      i32.const 5084
0094      i32.const 10
0095      i32.store
0096      local.get 1
0097      i32.const 1
0098      i32.shl
0099      local.set 3
0100      i32.const 3424
0101      call 24
0102      i32.const 3376
0103      i32.const 3428
0104      i32.load
0105      f64.convert_i32_s
0106      f64.const 1000000000.
0107      f64.div
0108      i32.const 3424
0109      i32.load
0110      f64.convert_i32_s
0111      f64.add
0112      local.tee 21
0113      f64.store
0114      i32.const 3384
0115      local.get 21
0116      f64.store
0117      local.get 1
0118      i32.const 0
0119      i32.gt_s
0120      if  ;; label = @2
2 ------------------------------------------------------------
0121        i32.const 1
0122        local.set 0
0123        local.get 3
0124        i32.const 1
0125        local.get 3
0126        i32.const 1
0127        i32.gt_s
0128        select
0129        local.set 7
0130        loop  ;; label = @3
3 ------------------------------------------------------------
0131          i32.const 13456
0132          i32.const 1
0133          i32.store
0134          i32.const 13688
0135          i32.const 65
0136          i32.store8
0137          i32.const 13672
0138          i32.const 66
0139          i32.store8
0140          local.get 2
0141          i32.const 1338
0142          i64.load align=1
0143          i64.store offset=384
0144          local.get 2
0145          i32.const 1345
0146          i64.load align=1
0147          i64.store offset=391 align=1
0148          local.get 2
0149          i32.const 1
0150          i32.store offset=440
0151          local.get 2
0152          i32.const 1322
0153          i64.load align=1
0154          i64.store offset=368
0155          local.get 2
0156          i32.const 1330
0157          i64.load align=1
0158          i64.store offset=376
0159          local.get 2
0160          i32.const 400
0161          i32.add
0162          local.tee 4
0163          i32.load8_u offset=2
0164          local.tee 5
0165          local.get 2
0166          i32.const 368
0167          i32.add
0168          local.tee 8
0169          i32.load8_u offset=3
0170          i32.eq
0171          if  ;; label = @4
4 ------------------------------------------------------------
0172            i32.const 13688
0173            local.get 5
0174            i32.store8
0175            loop  ;; label = @5
5 ------------------------------------------------------------
0176              br 0 (;@5;)
6 ------------------------------------------------------------
0177            end
7 ------------------------------------------------------------
0178            unreachable
8 ------------------------------------------------------------
0179          end
9 ------------------------------------------------------------
0180          i32.const 13456
0181          local.get 4
0182          local.get 8
0183          call 18
0184          i32.const 0
0185          i32.gt_s
0186          if (result i32)  ;; label = @4
10 ------------------------------------------------------------
0187            i32.const 13676
0188            i32.const 10
0189            i32.store
0190            i32.const 1
0191          else
11 ------------------------------------------------------------
0192            i32.const 0
0193          end
12 ------------------------------------------------------------
0194          i32.eqz
0195          i32.store
0196          local.get 2
0197          i32.const 7
0198          i32.store offset=444
0199          local.get 2
0200          i32.const 7
0201          i32.store offset=444
0202          i32.const 13504
0203          local.get 2
0204          i32.load offset=444
0205          local.tee 4
0206          i32.store
0207          i32.const 13508
0208          local.get 4
0209          i32.store
0210          i32.const 13624
0211          i32.const 8
0212          i32.store
0213          i32.const 5088
0214          i32.const 8
0215          i32.store
0216          i32.const 5092
0217          i32.const 8
0218          i32.store
0219          i32.const 5084
0220          i32.const 5084
0221          i32.load
0222          i32.const 1
0223          i32.add
0224          i32.store
0225          i32.const 9088
0226          i32.const 13504
0227          i32.load
0228          i32.store
0229          i32.const 13676
0230          i32.const 5
0231          i32.store
0232          i32.const 3448
0233          i32.load
0234          local.tee 4
0235          i32.load
0236          local.tee 5
0237          local.get 4
0238          i64.load align=4
0239          i64.store align=4
0240          local.get 5
0241          local.get 4
0242          i64.load offset=40 align=4
0243          i64.store offset=40 align=4
0244          local.get 5
0245          local.get 4
0246          i64.load offset=32 align=4
0247          i64.store offset=32 align=4
0248          local.get 5
0249          local.get 4
0250          i64.load offset=24 align=4
0251          i64.store offset=24 align=4
0252          local.get 5
0253          local.get 4
0254          i64.load offset=16 align=4
0255          i64.store offset=16 align=4
0256          local.get 5
0257          i32.const 8
0258          i32.add
0259          local.tee 8
0260          local.get 4
0261          i64.load offset=8 align=4
0262          i64.store align=4
0263          local.get 4
0264          i32.const 5
0265          i32.store offset=12
0266          local.get 5
0267          i32.const 5
0268          i32.store offset=12
0269          local.get 5
0270          local.get 4
0271          i32.load
0272          i32.store
0273          i32.const 3448
0274          i32.load
0275          local.tee 10
0276          if (result i32)  ;; label = @4
13 ------------------------------------------------------------
0277            local.get 5
0278            local.get 10
0279            i32.load
0280            i32.store
0281            i32.const 3448
0282            i32.load
0283          else
14 ------------------------------------------------------------
0284            i32.const 0
0285          end
15 ------------------------------------------------------------
0286          i32.const 13676
0287          i32.load
0288          i32.const 12
0289          i32.add
0290          i32.store offset=12
0291          block  ;; label = @4
16 ------------------------------------------------------------
0292            local.get 5
0293            i32.load offset=4
0294            i32.eqz
0295            if  ;; label = @5
17 ------------------------------------------------------------
0296              local.get 5
0297              i32.const 6
0298              i32.store offset=12
0299              local.get 4
0300              i32.load offset=8
0301              local.get 8
0302              call 40
0303              local.get 5
0304              i32.const 3448
0305              i32.load
0306              i32.load
0307              i32.store
0308              local.get 5
0309              local.get 5
0310              i32.load offset=12
0311              i32.const 12
0312              i32.add
0313              i32.store offset=12
0314              br 1 (;@4;)
18 ------------------------------------------------------------
0315            end
19 ------------------------------------------------------------
0316            local.get 4
0317            local.get 4
0318            i32.load
0319            local.tee 5
0320            i64.load align=4
0321            i64.store align=4
0322            local.get 4
0323            local.get 5
0324            i64.load offset=8 align=4
0325            i64.store offset=8 align=4
0326            local.get 4
0327            local.get 5
0328            i64.load offset=16 align=4
0329            i64.store offset=16 align=4
0330            local.get 4
0331            local.get 5
0332            i64.load offset=24 align=4
0333            i64.store offset=24 align=4
0334            local.get 4
0335            local.get 5
0336            i64.load offset=32 align=4
0337            i64.store offset=32 align=4
0338            local.get 4
0339            local.get 5
0340            i64.load offset=40 align=4
0341            i64.store offset=40 align=4
0342          end
20 ------------------------------------------------------------
0343          i32.const 65
0344          local.set 5
0345          i32.const 3
0346          local.set 4
0347          i32.const 13672
0348          i32.load8_s
0349          i32.const 65
0350          i32.ge_s
0351          if  ;; label = @4
21 ------------------------------------------------------------
0352            loop  ;; label = @5
22 ------------------------------------------------------------
0353              local.get 2
0354              i32.load offset=440
0355              local.get 5
0356              i32.const 24
0357              i32.shl
0358              local.tee 5
0359              i32.const 24
0360              i32.shr_s
0361              local.tee 8
0362              i32.const 67
0363              i32.eq
0364              if (result i32)  ;; label = @6
23 ------------------------------------------------------------
0365                i32.const 13688
0366                local.get 8
0367                i32.store8
0368                i32.const 1
0369              else
24 ------------------------------------------------------------
0370                i32.const 0
0371              end
25 ------------------------------------------------------------
0372              i32.eq
0373              if  ;; label = @6
26 ------------------------------------------------------------
0374                i32.const 0
0375                local.get 2
0376                i32.const 440
0377                i32.add
0378                call 40
0379                i32.const 13676
0380                local.get 0
0381                i32.store
0382                local.get 2
0383                i32.const 1314
0384                i64.load align=1
0385                i64.store offset=391 align=1
0386                local.get 2
0387                i32.const 1307
0388                i64.load align=1
0389                i64.store offset=384
0390                local.get 2
0391                i32.const 1299
0392                i64.load align=1
0393                i64.store offset=376
0394                local.get 2
0395                i32.const 1291
0396                i64.load align=1
0397                i64.store offset=368
0398                local.get 0
0399                local.set 4
0400              end
27 ------------------------------------------------------------
0401              local.get 5
0402              i32.const 16777216
0403              i32.add
0404              i32.const 24
0405              i32.shr_s
0406              local.tee 5
0407              i32.const 13672
0408              i32.load8_s
0409              i32.le_s
0410              br_if 0 (;@5;)
28 ------------------------------------------------------------
0411            end
29 ------------------------------------------------------------
0412          end
30 ------------------------------------------------------------
0413          local.get 0
0414          local.get 7
0415          i32.ne
0416          local.set 5
0417          local.get 0
0418          i32.const 1
0419          i32.add
0420          local.set 0
0421          local.get 5
0422          br_if 0 (;@3;)
31 ------------------------------------------------------------
0423        end
32 ------------------------------------------------------------
0424        local.get 4
0425        i32.const 3
0426        i32.mul
0427        local.tee 5
0428        local.get 2
0429        i32.load offset=444
0430        local.tee 7
0431        i32.div_s
0432        local.tee 0
0433        i32.const 13676
0434        i32.load
0435        i32.sub
0436        i32.const 9
0437        i32.add
0438        local.get 0
0439        i32.const 13688
0440        i32.load8_u
0441        i32.const 65
0442        i32.eq
0443        select
0444        local.set 4
0445        local.get 5
0446        local.get 7
0447        i32.sub
0448        i32.const 7
0449        i32.mul
0450        local.get 0
0451        i32.sub
0452        local.set 0
0453      end
33 ------------------------------------------------------------
0454      i32.const 3424
0455      call 24
0456      i32.const 3376
0457      i32.const 3428
0458      i32.load
0459      f64.convert_i32_s
0460      f64.const 1000000000.
0461      f64.div
0462      i32.const 3424
0463      i32.load
0464      f64.convert_i32_s
0465      f64.add
0466      local.tee 21
0467      f64.store
0468      i32.const 3432
0469      local.get 21
0470      i32.const 3384
0471      f64.load
0472      f64.sub
0473      local.tee 21
0474      f64.store
0475      block  ;; label = @2
34 ------------------------------------------------------------
0476        local.get 21
0477        f64.const 1000.
0478        f64.mul
0479        local.tee 21
0480        f64.abs
0481        f64.const 2147483648.
0482        f64.lt
0483        if  ;; label = @3
35 ------------------------------------------------------------
0484          i32.const 3440
0485          local.get 21
0486          i32.trunc_f64_s
0487          i32.store
0488          br 1 (;@2;)
36 ------------------------------------------------------------
0489        end
37 ------------------------------------------------------------
0490        i32.const 3440
0491        i32.const -2147483648
0492        i32.store
0493      end
38 ------------------------------------------------------------
0494      i32.const 13680
0495      i32.const 3432
0496      f64.load
0497      local.tee 21
0498      f64.store
0499      local.get 2
0500      local.get 3
0501      f64.convert_i32_s
0502      f64.store offset=336
0503      local.get 2
0504      local.get 21
0505      f64.store offset=344
0506      i32.const 2117
0507      local.get 2
0508      i32.const 336
0509      i32.add
0510      call 21
0511      block  ;; label = @2
39 ------------------------------------------------------------
0512        i32.const 13680
0513        f64.load
0514        local.tee 21
0515        f64.const 2.
0516        f64.gt
0517        if  ;; label = @3
40 ------------------------------------------------------------
0518          local.get 3
0519          local.set 1
0520          br 1 (;@2;)
41 ------------------------------------------------------------
0521        end
42 ------------------------------------------------------------
0522        local.get 1
0523        i32.const 10
0524        i32.mul
0525        local.get 3
0526        local.get 21
0527        f64.const 0.05
0528        f64.lt
0529        select
0530        local.set 1
0531        local.get 6
0532        i32.const 1
0533        i32.gt_u
0534        local.set 3
0535        local.get 6
0536        i32.const 1
0537        i32.sub
0538        local.set 6
0539        local.get 3
0540        br_if 1 (;@1;)
43 ------------------------------------------------------------
0541      end
44 ------------------------------------------------------------
0542    end
45 ------------------------------------------------------------
0543    call 14
0544    i32.const 1359
0545    call 10
0546    call 14
0547    i32.const 1720
0548    i32.const 0
0549    call 7
0550    i32.const 1553
0551    i32.const 1504
0552    i32.const 13676
0553    i32.load
0554    i32.const 5
0555    i32.eq
0556    select
0557    i32.const 0
0558    call 7
0559    local.get 2
0560    i32.const 13676
0561    i32.load
0562    i32.store offset=320
0563    i32.const 1543
0564    local.get 2
0565    i32.const 320
0566    i32.add
0567    call 7
0568    i32.const 1640
0569    i32.const 0
0570    call 7
0571    i32.const 1553
0572    i32.const 1504
0573    i32.const 13456
0574    i32.load
0575    i32.const 1
0576    i32.eq
0577    select
0578    i32.const 0
0579    call 7
0580    local.get 2
0581    i32.const 13456
0582    i32.load
0583    i32.store offset=304
0584    i32.const 2109
0585    local.get 2
0586    i32.const 304
0587    i32.add
0588    call 7
0589    i32.const 1672
0590    i32.const 0
0591    call 7
0592    i32.const 1553
0593    i32.const 1504
0594    i32.const 13688
0595    i32.load8_u
0596    i32.const 65
0597    i32.eq
0598    select
0599    i32.const 0
0600    call 7
0601    local.get 2
0602    i32.const 13688
0603    i32.load8_s
0604    i32.store offset=288
0605    i32.const 1548
0606    local.get 2
0607    i32.const 288
0608    i32.add
0609    call 7
0610    i32.const 1656
0611    i32.const 0
0612    call 7
0613    i32.const 1553
0614    i32.const 1504
0615    i32.const 13672
0616    i32.load8_u
0617    i32.const 66
0618    i32.eq
0619    select
0620    i32.const 0
0621    call 7
0622    local.get 2
0623    i32.const 13672
0624    i32.load8_s
0625    i32.store offset=272
0626    i32.const 2113
0627    local.get 2
0628    i32.const 272
0629    i32.add
0630    call 7
0631    i32.const 1511
0632    i32.const 0
0633    call 7
0634    i32.const 1553
0635    i32.const 1504
0636    i32.const 13504
0637    i32.load
0638    i32.const 7
0639    i32.eq
0640    select
0641    i32.const 0
0642    call 7
0643    local.get 2
0644    i32.const 13504
0645    i32.load
0646    i32.store offset=256
0647    i32.const 1543
0648    local.get 2
0649    i32.const 256
0650    i32.add
0651    call 7
0652    i32.const 1527
0653    i32.const 0
0654    call 7
0655    i32.const 1553
0656    i32.const 1504
0657    i32.const 5084
0658    i32.load
0659    local.get 1
0660    i32.const 10
0661    i32.add
0662    i32.eq
0663    select
0664    i32.const 0
0665    call 7
0666    local.get 2
0667    i32.const 5084
0668    i32.load
0669    i32.store offset=240
0670    i32.const 2075
0671    local.get 2
0672    i32.const 240
0673    i32.add
0674    call 7
0675    i32.const 1775
0676    i32.const 0
0677    call 7
0678    local.get 2
0679    i32.const 3448
0680    i32.load
0681    i32.load
0682    i32.store offset=224
0683    i32.const 1898
0684    local.get 2
0685    i32.const 224
0686    i32.add
0687    call 7
0688    i32.const 1759
0689    i32.const 0
0690    call 7
0691    i32.const 1504
0692    i32.const 1553
0693    i32.const 3448
0694    i32.load
0695    i32.load offset=4
0696    select
0697    i32.const 0
0698    call 7
0699    local.get 2
0700    i32.const 3448
0701    i32.load
0702    i32.load offset=4
0703    i32.store offset=208
0704    i32.const 1543
0705    local.get 2
0706    i32.const 208
0707    i32.add
0708    call 7
0709    i32.const 1576
0710    i32.const 0
0711    call 7
0712    i32.const 1553
0713    i32.const 1504
0714    i32.const 3448
0715    i32.load
0716    i32.load offset=8
0717    i32.const 2
0718    i32.eq
0719    select
0720    i32.const 0
0721    call 7
0722    local.get 2
0723    i32.const 3448
0724    i32.load
0725    i32.load offset=8
0726    i32.store offset=192
0727    i32.const 2109
0728    local.get 2
0729    i32.const 192
0730    i32.add
0731    call 7
0732    i32.const 1560
0733    i32.const 0
0734    call 7
0735    i32.const 1553
0736    i32.const 1504
0737    i32.const 3448
0738    i32.load
0739    i32.load offset=12
0740    i32.const 17
0741    i32.eq
0742    select
0743    i32.const 0
0744    call 7
0745    local.get 2
0746    i32.const 3448
0747    i32.load
0748    i32.load offset=12
0749    i32.store offset=176
0750    i32.const 1500
0751    local.get 2
0752    i32.const 176
0753    i32.add
0754    call 7
0755    i32.const 1688
0756    i32.const 0
0757    call 7
0758    i32.const 1504
0759    i32.const 1553
0760    i32.const 3448
0761    i32.load
0762    i32.const 16
0763    i32.add
0764    i32.const 1260
0765    call 18
0766    select
0767    i32.const 0
0768    call 7
0769    i32.const 3448
0770    i32.load
0771    i32.const 16
0772    i32.add
0773    call 10
0774    i32.const 1736
0775    i32.const 0
0776    call 7
0777    local.get 2
0778    i32.const 3444
0779    i32.load
0780    i32.load
0781    i32.store offset=160
0782    i32.const 1137
0783    local.get 2
0784    i32.const 160
0785    i32.add
0786    call 7
0787    i32.const 1176
0788    call 10
0789    i32.const 1759
0790    i32.const 0
0791    call 7
0792    i32.const 1504
0793    i32.const 1553
0794    i32.const 3444
0795    i32.load
0796    i32.load offset=4
0797    select
0798    i32.const 0
0799    call 7
0800    local.get 2
0801    i32.const 3444
0802    i32.load
0803    i32.load offset=4
0804    i32.store offset=144
0805    i32.const 1543
0806    local.get 2
0807    i32.const 144
0808    i32.add
0809    call 7
0810    i32.const 1576
0811    i32.const 0
0812    call 7
0813    i32.const 1553
0814    i32.const 1504
0815    i32.const 3444
0816    i32.load
0817    i32.load offset=8
0818    i32.const 1
0819    i32.eq
0820    select
0821    i32.const 0
0822    call 7
0823    local.get 2
0824    i32.const 3444
0825    i32.load
0826    i32.load offset=8
0827    i32.store offset=128
0828    i32.const 2109
0829    local.get 2
0830    i32.const 128
0831    i32.add
0832    call 7
0833    i32.const 1560
0834    i32.const 0
0835    call 7
0836    i32.const 1553
0837    i32.const 1504
0838    i32.const 3444
0839    i32.load
0840    i32.load offset=12
0841    i32.const 18
0842    i32.eq
0843    select
0844    i32.const 0
0845    call 7
0846    local.get 2
0847    i32.const 3444
0848    i32.load
0849    i32.load offset=12
0850    i32.store offset=112
0851    i32.const 1500
0852    local.get 2
0853    i32.const 112
0854    i32.add
0855    call 7
0856    i32.const 1688
0857    i32.const 0
0858    call 7
0859    i32.const 1504
0860    i32.const 1553
0861    i32.const 3444
0862    i32.load
0863    i32.const 16
0864    i32.add
0865    i32.const 1260
0866    call 18
0867    select
0868    i32.const 0
0869    call 7
0870    i32.const 3444
0871    i32.load
0872    i32.const 16
0873    i32.add
0874    call 10
0875    i32.const 1624
0876    i32.const 0
0877    call 7
0878    i32.const 1553
0879    i32.const 1504
0880    local.get 4
0881    i32.const 5
0882    i32.eq
0883    select
0884    i32.const 0
0885    call 7
0886    local.get 2
0887    local.get 4
0888    i32.store offset=96
0889    i32.const 1543
0890    local.get 2
0891    i32.const 96
0892    i32.add
0893    call 7
0894    i32.const 1608
0895    i32.const 0
0896    call 7
0897    i32.const 1553
0898    i32.const 1504
0899    local.get 0
0900    i32.const 13
0901    i32.eq
0902    select
0903    i32.const 0
0904    call 7
0905    local.get 2
0906    local.get 0
0907    i32.store offset=80
0908    i32.const 2109
0909    local.get 2
0910    i32.const 80
0911    i32.add
0912    call 7
0913    i32.const 1592
0914    i32.const 0
0915    call 7
0916    i32.const 1553
0917    i32.const 1504
0918    local.get 2
0919    i32.load offset=444
0920    i32.const 7
0921    i32.eq
0922    select
0923    i32.const 0
0924    call 7
0925    local.get 2
0926    local.get 2
0927    i32.load offset=444
0928    i32.store offset=64
0929    i32.const 1543
0930    local.get 2
0931    i32.const -64
0932    i32.sub
0933    call 7
0934    i32.const 1704
0935    i32.const 0
0936    call 7
0937    i32.const 1553
0938    i32.const 1504
0939    local.get 2
0940    i32.load offset=440
0941    i32.const 1
0942    i32.eq
0943    select
0944    i32.const 0
0945    call 7
0946    local.get 2
0947    local.get 2
0948    i32.load offset=440
0949    i32.store offset=48
0950    i32.const 2145
0951    local.get 2
0952    i32.const 48
0953    i32.add
0954    call 7
0955    i32.const 1838
0956    i32.const 0
0957    call 7
0958    i32.const 1504
0959    i32.const 1553
0960    local.get 2
0961    i32.const 400
0962    i32.add
0963    local.tee 0
0964    i32.const 1229
0965    i32.const 31
0966    call 41
0967    select
0968    i32.const 0
0969    call 7
0970    local.get 0
0971    call 10
0972    i32.const 1798
0973    i32.const 0
0974    call 7
0975    i32.const 1504
0976    i32.const 1553
0977    local.get 2
0978    i32.const 368
0979    i32.add
0980    local.tee 0
0981    i32.const 1322
0982    i32.const 31
0983    call 41
0984    select
0985    i32.const 0
0986    call 7
0987    local.get 0
0988    call 10
0989    call 14
0990    block  ;; label = @1
46 ------------------------------------------------------------
0991      i32.const 13680
0992      f64.load
0993      local.tee 21
0994      f64.const 2.
0995      f64.lt
0996      if  ;; label = @2
47 ------------------------------------------------------------
0997        i32.const 1053
0998        call 10
0999        i32.const 1106
1000        call 10
1001        call 14
1002        br 1 (;@1;)
48 ------------------------------------------------------------
1003      end
49 ------------------------------------------------------------
1004      i32.const 13704
1005      local.get 1
1006      f64.convert_i32_s
1007      local.tee 22
1008      local.get 21
1009      f64.div
1010      local.tee 23
1011      f64.store
1012      i32.const 13696
1013      local.get 21
1014      f64.const 1000000.
1015      f64.mul
1016      local.get 22
1017      f64.div
1018      local.tee 21
1019      f64.store
1020      i32.const 13712
1021      local.get 23
1022      f64.const 1757.
1023      f64.div
1024      f64.store
1025      local.get 2
1026      local.get 21
1027      f64.const 1000.
1028      f64.mul
1029      f64.store offset=32
1030      i32.const 1925
1031      local.get 2
1032      i32.const 32
1033      i32.add
1034      call 21
1035      local.get 2
1036      i32.const 13704
1037      f64.load
1038      f64.store offset=16
1039      i32.const 2005
1040      local.get 2
1041      i32.const 16
1042      i32.add
1043      call 21
1044      local.get 2
1045      i32.const 13712
1046      f64.load
1047      f64.store
1048      i32.const 1965
1049      local.get 2
1050      call 21
1051      call 14
1052      i32.const 0
1053      local.set 3
1054      i32.const 0
1055      local.set 10
1056      global.get 0
1057      i32.const 16
1058      i32.sub
1059      local.tee 13
1060      global.set 0
1061      global.get 0
1062      i32.const 16
1063      i32.sub
1064      local.tee 0
1065      global.set 0
1066      local.get 0
1067      i32.const 8
1068      i32.add
1069      call 24
1070      local.get 0
1071      i32.load offset=8
1072      local.set 1
1073      local.get 0
1074      i32.const 16
1075      i32.add
1076      global.set 0
1077      local.get 13
1078      local.get 1
1079      i32.store offset=12
1080      i32.const 3392
1081      local.set 8
1082      local.get 13
1083      i64.load32_s offset=12
1084      local.set 18
1085      global.get 0
1086      i32.const 16
1087      i32.sub
1088      local.tee 15
1089      global.set 0
1090      global.get 0
1091      i32.const 304
1092      i32.sub
1093      local.tee 6
1094      global.set 0
1095      local.get 6
1096      i32.const 1216
1097      i32.const 61
1098      call 38
1099      local.tee 0
1100      i32.const 1216
1101      i32.eq
1102      if (result i32)  ;; label = @2
50 ------------------------------------------------------------
1103        i32.const 0
1104      else
51 ------------------------------------------------------------
1105        block  ;; label = @3
52 ------------------------------------------------------------
1106          local.get 0
1107          i32.const 1216
1108          i32.sub
1109          local.tee 1
1110          i32.const 1216
1111          i32.add
1112          i32.load8_u
1113          br_if 0 (;@3;)
53 ------------------------------------------------------------
1114          i32.const 13756
1115          i32.load
1116          local.tee 9
1117          i32.eqz
1118          br_if 0 (;@3;)
54 ------------------------------------------------------------
1119          local.get 9
1120          i32.load
1121          local.tee 7
1122          i32.eqz
1123          br_if 0 (;@3;)
55 ------------------------------------------------------------
1124          loop  ;; label = @4
56 ------------------------------------------------------------
1125            block  ;; label = @5
57 ------------------------------------------------------------
1126              block (result i32)  ;; label = @6
58 ------------------------------------------------------------
1127                i32.const 0
1128                local.set 4
1129                i32.const 1216
1130                local.set 11
1131                i32.const 0
1132                local.get 1
1133                local.tee 5
1134                i32.eqz
1135                br_if 0 (;@6;)
59 ------------------------------------------------------------
1136                drop
1137                block  ;; label = @7
60 ------------------------------------------------------------
1138                  i32.const 1216
1139                  i32.load8_u
1140                  local.tee 0
1141                  i32.eqz
1142                  br_if 0 (;@7;)
61 ------------------------------------------------------------
1143                  loop  ;; label = @8
62 ------------------------------------------------------------
1144                    block  ;; label = @9
63 ------------------------------------------------------------
1145                      local.get 7
1146                      i32.load8_u
1147                      local.tee 14
1148                      i32.eqz
1149                      br_if 0 (;@9;)
64 ------------------------------------------------------------
1150                      local.get 5
1151                      i32.const 1
1152                      i32.sub
1153                      local.tee 5
1154                      i32.eqz
1155                      br_if 0 (;@9;)
65 ------------------------------------------------------------
1156                      local.get 0
1157                      local.get 14
1158                      i32.ne
1159                      br_if 0 (;@9;)
66 ------------------------------------------------------------
1160                      local.get 7
1161                      i32.const 1
1162                      i32.add
1163                      local.set 7
1164                      local.get 11
1165                      i32.load8_u offset=1
1166                      local.set 0
1167                      local.get 11
1168                      i32.const 1
1169                      i32.add
1170                      local.set 11
1171                      local.get 0
1172                      br_if 1 (;@8;)
67 ------------------------------------------------------------
1173                      br 2 (;@7;)
68 ------------------------------------------------------------
1174                    end
69 ------------------------------------------------------------
1175                  end
70 ------------------------------------------------------------
1176                  local.get 0
1177                  local.set 4
1178                end
71 ------------------------------------------------------------
1179                local.get 4
1180                i32.const 255
1181                i32.and
1182                local.get 7
1183                i32.load8_u
1184                i32.sub
1185              end
72 ------------------------------------------------------------
1186              i32.eqz
1187              if  ;; label = @6
73 ------------------------------------------------------------
1188                local.get 9
1189                i32.load
1190                local.get 1
1191                i32.add
1192                local.tee 0
1193                i32.load8_u
1194                i32.const 61
1195                i32.eq
1196                br_if 1 (;@5;)
74 ------------------------------------------------------------
1197              end
75 ------------------------------------------------------------
1198              local.get 9
1199              i32.load offset=4
1200              local.set 7
1201              local.get 9
1202              i32.const 4
1203              i32.add
1204              local.set 9
1205              local.get 7
1206              br_if 1 (;@4;)
76 ------------------------------------------------------------
1207              br 2 (;@3;)
77 ------------------------------------------------------------
1208            end
78 ------------------------------------------------------------
1209          end
79 ------------------------------------------------------------
1210          local.get 0
1211          i32.const 1
1212          i32.add
1213          local.set 12
1214        end
80 ------------------------------------------------------------
1215        local.get 12
1216      end
81 ------------------------------------------------------------
1217      local.tee 0
1218      i32.const 1191
1219      local.get 0
1220      select
1221      local.tee 0
1222      i32.store offset=12
1223      local.get 6
1224      local.get 0
1225      i32.const 2592
1226      local.get 0
1227      i32.load8_u
1228      select
1229      local.tee 0
1230      i32.store offset=12
1231      block  ;; label = @2
82 ------------------------------------------------------------
1232        i32.const 3208
1233        i32.load
1234        local.tee 1
1235        if  ;; label = @3
83 ------------------------------------------------------------
1236          local.get 0
1237          local.get 1
1238          call 18
1239          i32.eqz
1240          br_if 1 (;@2;)
84 ------------------------------------------------------------
1241        end
85 ------------------------------------------------------------
1242        loop  ;; label = @3
86 ------------------------------------------------------------
1243          local.get 3
1244          i32.const 2
1245          i32.shl
1246          local.tee 1
1247          i32.const 13888
1248          i32.add
1249          i32.const 0
1250          i32.store
1251          local.get 1
1252          i32.const 13856
1253          i32.add
1254          i32.const 0
1255          i32.store
1256          local.get 3
1257          i32.const 1
1258          i32.add
1259          local.tee 3
1260          i32.const 5
1261          i32.ne
1262          br_if 0 (;@3;)
87 ------------------------------------------------------------
1263        end
88 ------------------------------------------------------------
1264        i32.const 13836
1265        i32.load
1266        local.tee 7
1267        if  ;; label = @3
89 ------------------------------------------------------------
1268          i32.const 13916
1269          i32.load
1270          local.set 1
1271          global.get 0
1272          i32.const 16
1273          i32.sub
1274          local.tee 4
1275          global.set 0
1276          local.get 4
1277          i32.const 0
1278          i32.store offset=12
1279          block  ;; label = @4
90 ------------------------------------------------------------
1280            local.get 1
1281            i32.const 0
1282            block (result i32)  ;; label = @5
91 ------------------------------------------------------------
1283              local.get 4
1284              i32.const 12
1285              i32.add
1286              local.set 5
1287              i32.const 14032
1288              i32.load
1289              local.tee 3
1290              if  ;; label = @6
92 ------------------------------------------------------------
1291                loop  ;; label = @7
93 ------------------------------------------------------------
1292                  local.get 3
1293                  local.get 7
1294                  local.get 3
1295                  i32.load
1296                  i32.eq
1297                  br_if 2 (;@5;)
94 ------------------------------------------------------------
1298                  drop
1299                  local.get 5
1300                  if  ;; label = @8
95 ------------------------------------------------------------
1301                    local.get 5
1302                    local.get 3
1303                    i32.store
1304                  end
96 ------------------------------------------------------------
1305                  local.get 3
1306                  i32.load offset=36
1307                  local.tee 3
1308                  br_if 0 (;@7;)
97 ------------------------------------------------------------
1309                end
98 ------------------------------------------------------------
1310              end
99 ------------------------------------------------------------
1311              i32.const 0
1312            end
100 ------------------------------------------------------------
1313            local.tee 3
1314            select
1315            i32.eqz
1316            if  ;; label = @5
101 ------------------------------------------------------------
1317              i32.const -28
1318              local.set 1
1319              br 1 (;@4;)
102 ------------------------------------------------------------
1320            end
103 ------------------------------------------------------------
1321            local.get 1
1322            local.get 3
1323            i32.load offset=4
1324            i32.ne
1325            if  ;; label = @5
104 ------------------------------------------------------------
1326              i32.const -28
1327              local.set 1
1328              br 1 (;@4;)
105 ------------------------------------------------------------
1329            end
106 ------------------------------------------------------------
1330            local.get 4
1331            i32.load offset=12
1332            local.tee 1
1333            i32.const 36
1334            i32.add
1335            i32.const 14032
1336            local.get 1
1337            select
1338            local.get 3
1339            i32.load offset=36
1340            i32.store
1341            local.get 3
1342            i32.load offset=16
1343            i32.const 32
1344            i32.and
1345            i32.eqz
1346            if  ;; label = @5
107 ------------------------------------------------------------
1347              local.get 3
1348              i32.load offset=32
1349              drop
1350              local.get 3
1351              i32.load offset=12
1352              drop
1353              local.get 3
1354              i32.load offset=24
1355              drop
1356              i32.const -52
1357              local.tee 1
1358              br_if 1 (;@4;)
108 ------------------------------------------------------------
1359            end
109 ------------------------------------------------------------
1360            local.get 3
1361            i32.load offset=8
1362            if  ;; label = @5
110 ------------------------------------------------------------
1363              local.get 3
1364              i32.load
1365              call 32
1366            end
111 ------------------------------------------------------------
1367            i32.const 0
1368            local.set 1
1369            local.get 3
1370            i32.load8_u offset=16
1371            i32.const 32
1372            i32.and
1373            br_if 0 (;@4;)
112 ------------------------------------------------------------
1374            local.get 3
1375            call 32
1376          end
113 ------------------------------------------------------------
1377          local.get 4
1378          i32.const 16
1379          i32.add
1380          global.set 0
1381          local.get 1
1382          i32.const -4095
1383          i32.ge_u
1384          if (result i32)  ;; label = @4
114 ------------------------------------------------------------
1385            i32.const 13720
1386            i32.const 0
1387            local.get 1
1388            i32.sub
1389            i32.store
1390            i32.const 0
1391          else
115 ------------------------------------------------------------
1392            local.get 1
1393          end
116 ------------------------------------------------------------
1394          drop
1395        end
117 ------------------------------------------------------------
1396        local.get 0
1397        call 17
1398        local.tee 3
1399        i32.const 4098
1400        i32.ge_u
1401        if  ;; label = @3
118 ------------------------------------------------------------
1402          local.get 6
1403          i32.const 2592
1404          i32.store offset=12
1405          i32.const 3
1406          local.set 3
1407          i32.const 2592
1408          local.set 0
1409        end
119 ------------------------------------------------------------
1410        block  ;; label = @3
120 ------------------------------------------------------------
1411          i32.const 3212
1412          i32.load
1413          local.tee 1
1414          local.get 3
1415          i32.le_u
1416          if  ;; label = @4
121 ------------------------------------------------------------
1417            i32.const 3212
1418            local.get 1
1419            i32.const 1
1420            i32.shl
1421            local.tee 1
1422            local.get 3
1423            i32.const 1
1424            i32.add
1425            local.get 1
1426            local.get 3
1427            i32.gt_u
1428            select
1429            local.tee 1
1430            i32.const 4098
1431            local.get 1
1432            i32.const 4098
1433            i32.lt_u
1434            select
1435            local.tee 1
1436            i32.store
1437            i32.const 3208
1438            local.get 1
1439            call 16
1440            local.tee 1
1441            i32.store
1442            br 1 (;@3;)
122 ------------------------------------------------------------
1443          end
123 ------------------------------------------------------------
1444          i32.const 3208
1445          i32.load
1446          local.set 1
1447        end
124 ------------------------------------------------------------
1448        local.get 1
1449        if  ;; label = @3
125 ------------------------------------------------------------
1450          local.get 1
1451          local.get 0
1452          local.get 3
1453          i32.const 1
1454          i32.add
1455          call 12
1456        end
126 ------------------------------------------------------------
1457        local.get 6
1458        i32.const 40
1459        i32.add
1460        local.set 4
1461        block  ;; label = @3
127 ------------------------------------------------------------
1462          block  ;; label = @4
128 ------------------------------------------------------------
1463            block  ;; label = @5
129 ------------------------------------------------------------
1464              local.get 0
1465              i32.load8_u
1466              i32.const 58
1467              i32.eq
1468              br_if 0 (;@5;)
130 ------------------------------------------------------------
1469              local.get 0
1470              i32.const 47
1471              call 39
1472              local.tee 1
1473              i32.eqz
1474              br_if 2 (;@3;)
131 ------------------------------------------------------------
1475              local.get 0
1476              i32.const 44
1477              local.get 1
1478              local.get 0
1479              i32.sub
1480              call 42
1481              br_if 2 (;@3;)
132 ------------------------------------------------------------
1482              local.get 0
1483              i32.load8_u
1484              local.tee 1
1485              i32.const 58
1486              i32.eq
1487              br_if 0 (;@5;)
133 ------------------------------------------------------------
1488              local.get 0
1489              local.set 3
1490              br 1 (;@4;)
134 ------------------------------------------------------------
1491            end
135 ------------------------------------------------------------
1492            local.get 6
1493            local.get 0
1494            i32.const 1
1495            i32.add
1496            local.tee 3
1497            i32.store offset=12
1498            local.get 0
1499            i32.load8_u offset=1
1500            local.set 1
1501          end
136 ------------------------------------------------------------
1502          block  ;; label = @4
137 ------------------------------------------------------------
1503            local.get 1
1504            i32.const 254
1505            i32.and
1506            i32.const 46
1507            i32.eq
1508            if  ;; label = @5
138 ------------------------------------------------------------
1509              i32.const 13762
1510              i32.load8_u
1511              if  ;; label = @6
139 ------------------------------------------------------------
1512                local.get 3
1513                i32.const 1191
1514                call 18
1515                br_if 2 (;@4;)
140 ------------------------------------------------------------
1516              end
141 ------------------------------------------------------------
1517              i32.const 13720
1518              i32.const 52
1519              i32.store
1520              br 1 (;@4;)
142 ------------------------------------------------------------
1521            end
143 ------------------------------------------------------------
1522            local.get 3
1523            call 17
1524            local.tee 0
1525            i32.const 255
1526            i32.gt_u
1527            br_if 0 (;@4;)
144 ------------------------------------------------------------
1528            local.get 3
1529            i32.const 46
1530            call 39
1531            br_if 0 (;@4;)
145 ------------------------------------------------------------
1532            local.get 4
1533            local.get 3
1534            local.get 0
1535            i32.const 1
1536            i32.add
1537            call 12
1538            local.get 0
1539            local.get 4
1540            i32.add
1541            i32.const 0
1542            i32.store8
1543            i32.const 2608
1544            local.set 3
1545            loop  ;; label = @5
146 ------------------------------------------------------------
1546              local.get 3
1547              i32.load8_u
1548              i32.eqz
1549              br_if 1 (;@4;)
147 ------------------------------------------------------------
1550              local.get 4
1551              local.get 3
1552              call 17
1553              local.tee 0
1554              i32.sub
1555              local.get 3
1556              local.get 0
1557              call 12
1558              local.get 0
1559              local.get 3
1560              i32.add
1561              i32.const 1
1562              i32.add
1563              local.set 3
1564              i32.const 13720
1565              i32.const 52
1566              i32.store
1567              br 0 (;@5;)
148 ------------------------------------------------------------
1568            end
149 ------------------------------------------------------------
1569            unreachable
150 ------------------------------------------------------------
1570          end
151 ------------------------------------------------------------
1571          i32.const 2592
1572          local.set 0
1573          local.get 6
1574          i32.const 2592
1575          i32.store offset=12
1576        end
152 ------------------------------------------------------------
1577        i32.const 13836
1578        i32.const 0
1579        i32.store
1580        local.get 0
1581        i32.eqz
1582        if  ;; label = @3
153 ------------------------------------------------------------
1583          local.get 6
1584          i32.const 2592
1585          i32.store offset=12
1586        end
154 ------------------------------------------------------------
1587        i32.const 13928
1588        local.get 6
1589        i32.const 12
1590        i32.add
1591        local.tee 0
1592        call 44
1593        i32.const 13824
1594        i32.const 13928
1595        i32.store
1596        i32.const 13816
1597        local.get 0
1598        call 30
1599        i32.store
1600        i32.const 13935
1601        local.get 0
1602        call 44
1603        i32.const 13828
1604        i32.const 13935
1605        i32.store
1606        i32.const 13908
1607        block (result i32)  ;; label = @3
155 ------------------------------------------------------------
1608          i32.const 13935
1609          i32.load8_u
1610          if  ;; label = @4
156 ------------------------------------------------------------
1611            i32.const 13820
1612            i32.const 1
1613            i32.store
1614            block  ;; label = @5
157 ------------------------------------------------------------
1615              block  ;; label = @6
158 ------------------------------------------------------------
1616                block  ;; label = @7
159 ------------------------------------------------------------
1617                  local.get 6
1618                  i32.load offset=12
1619                  i32.load8_u
1620                  local.tee 0
1621                  i32.const 43
1622                  i32.sub
1623                  br_table 1 (;@6;) 0 (;@7;) 1 (;@6;) 0 (;@7;)
160 ------------------------------------------------------------
1624                end
161 ------------------------------------------------------------
1625                local.get 0
1626                i32.const 24
1627                i32.shl
1628                i32.const 24
1629                i32.shr_s
1630                i32.const 48
1631                i32.sub
1632                i32.const 9
1633                i32.gt_u
1634                br_if 1 (;@5;)
162 ------------------------------------------------------------
1635              end
163 ------------------------------------------------------------
1636              local.get 6
1637              i32.const 12
1638              i32.add
1639              call 30
1640              br 2 (;@3;)
164 ------------------------------------------------------------
1641            end
165 ------------------------------------------------------------
1642            i32.const 13816
1643            i32.load
1644            i32.const 3600
1645            i32.sub
1646            br 1 (;@3;)
166 ------------------------------------------------------------
1647          end
167 ------------------------------------------------------------
1648          i32.const 13820
1649          i32.const 0
1650          i32.store
1651          i32.const 13816
1652          i32.load
1653        end
168 ------------------------------------------------------------
1654        i32.store
1655        local.get 6
1656        i32.load offset=12
1657        local.tee 0
1658        i32.load8_u
1659        i32.const 44
1660        i32.ne
1661        br_if 0 (;@2;)
169 ------------------------------------------------------------
1662        local.get 6
1663        local.get 0
1664        i32.const 1
1665        i32.add
1666        i32.store offset=12
1667        local.get 6
1668        i32.const 12
1669        i32.add
1670        i32.const 13856
1671        call 43
1672        local.get 6
1673        i32.load offset=12
1674        local.tee 0
1675        i32.load8_u
1676        i32.const 44
1677        i32.ne
1678        br_if 0 (;@2;)
170 ------------------------------------------------------------
1679        local.get 6
1680        local.get 0
1681        i32.const 1
1682        i32.add
1683        i32.store offset=12
1684        local.get 6
1685        i32.const 12
1686        i32.add
1687        i32.const 13888
1688        call 43
1689      end
171 ------------------------------------------------------------
1690      local.get 6
1691      i32.const 304
1692      i32.add
1693      global.set 0
1694      block  ;; label = @2
172 ------------------------------------------------------------
1695        block  ;; label = @3
173 ------------------------------------------------------------
1696          i32.const 13836
1697          i32.load
1698          i32.eqz
1699          br_if 0 (;@3;)
174 ------------------------------------------------------------
1700          block (result i32)  ;; label = @4
175 ------------------------------------------------------------
1701            local.get 15
1702            i32.const 12
1703            i32.add
1704            local.set 4
1705            i32.const 0
1706            local.set 1
1707            i32.const -1
1708            local.set 0
1709            block  ;; label = @5
176 ------------------------------------------------------------
1710              block  ;; label = @6
177 ------------------------------------------------------------
1711                block  ;; label = @7
178 ------------------------------------------------------------
1712                  i32.const 13924
1713                  i32.load
1714                  local.tee 5
1715                  i32.const 13920
1716                  i32.load
1717                  local.tee 6
1718                  i32.sub
1719                  i32.const 2
1720                  i32.const 3
1721                  local.get 6
1722                  i32.const 13836
1723                  i32.load
1724                  i32.const 44
1725                  i32.add
1726                  i32.eq
1727                  local.tee 7
1728                  select
1729                  local.tee 12
1730                  i32.shr_s
1731                  local.tee 3
1732                  br_table 0 (;@7;) 2 (;@5;) 1 (;@6;)
179 ------------------------------------------------------------
1733                end
180 ------------------------------------------------------------
1734                i32.const 0
1735                local.set 0
1736                local.get 4
1737                i32.eqz
1738                br_if 1 (;@5;)
181 ------------------------------------------------------------
1739                local.get 4
1740                i32.const 0
1741                i32.store
1742                i32.const 0
1743                br 2 (;@4;)
182 ------------------------------------------------------------
1744              end
183 ------------------------------------------------------------
1745              i32.const 13840
1746              i32.load
1747              drop
1748              local.get 3
1749              local.set 0
1750              loop  ;; label = @6
184 ------------------------------------------------------------
1751                local.get 6
1752                local.get 0
1753                i32.const 1
1754                i32.shr_u
1755                local.tee 9
1756                local.get 1
1757                i32.add
1758                local.tee 14
1759                local.get 12
1760                i32.shl
1761                i32.add
1762                local.tee 16
1763                call 19
1764                local.set 11
1765                local.get 1
1766                local.get 14
1767                block (result i64)  ;; label = @7
185 ------------------------------------------------------------
1768                  local.get 7
1769                  i32.eqz
1770                  if  ;; label = @8
186 ------------------------------------------------------------
1771                    local.get 16
1772                    i32.const 4
1773                    i32.add
1774                    call 19
1775                    i64.extend_i32_u
1776                    local.get 11
1777                    i64.extend_i32_u
1778                    i64.const 32
1779                    i64.shl
1780                    i64.or
1781                    br 1 (;@7;)
187 ------------------------------------------------------------
1782                  end
188 ------------------------------------------------------------
1783                  local.get 11
1784                  i64.extend_i32_s
1785                end
189 ------------------------------------------------------------
1786                local.get 18
1787                i64.gt_s
1788                local.tee 11
1789                select
1790                local.set 1
1791                local.get 9
1792                local.get 0
1793                local.get 9
1794                i32.sub
1795                local.get 11
1796                select
1797                local.tee 0
1798                i32.const 1
1799                i32.gt_u
1800                br_if 0 (;@6;)
190 ------------------------------------------------------------
1801              end
191 ------------------------------------------------------------
1802              i32.const -1
1803              local.set 0
1804              local.get 1
1805              local.get 3
1806              i32.const 1
1807              i32.sub
1808              i32.eq
1809              br_if 0 (;@5;)
192 ------------------------------------------------------------
1810              block  ;; label = @6
193 ------------------------------------------------------------
1811                block  ;; label = @7
194 ------------------------------------------------------------
1812                  block  ;; label = @8
195 ------------------------------------------------------------
1813                    local.get 1
1814                    i32.eqz
1815                    if  ;; label = @9
196 ------------------------------------------------------------
1816                      local.get 6
1817                      call 19
1818                      local.set 0
1819                      block (result i64)  ;; label = @10
197 ------------------------------------------------------------
1820                        local.get 7
1821                        i32.eqz
1822                        if  ;; label = @11
198 ------------------------------------------------------------
1823                          local.get 6
1824                          i32.const 4
1825                          i32.add
1826                          call 19
1827                          i64.extend_i32_u
1828                          local.get 0
1829                          i64.extend_i32_u
1830                          i64.const 32
1831                          i64.shl
1832                          i64.or
1833                          br 1 (;@10;)
199 ------------------------------------------------------------
1834                        end
200 ------------------------------------------------------------
1835                        local.get 0
1836                        i64.extend_i32_s
1837                      end
201 ------------------------------------------------------------
1838                      local.get 18
1839                      i64.gt_s
1840                      if  ;; label = @10
202 ------------------------------------------------------------
1841                        i32.const 13844
1842                        i32.load
1843                        i32.const 13840
1844                        i32.load
1845                        local.tee 3
1846                        i32.sub
1847                        local.tee 0
1848                        i32.const 6
1849                        i32.div_s
1850                        local.set 5
1851                        i32.const 0
1852                        local.set 1
1853                        block  ;; label = @11
203 ------------------------------------------------------------
1854                          local.get 0
1855                          i32.const 5
1856                          i32.add
1857                          i32.const 11
1858                          i32.lt_u
1859                          br_if 0 (;@11;)
204 ------------------------------------------------------------
1860                          local.get 5
1861                          i32.const 1
1862                          local.get 5
1863                          i32.const 1
1864                          i32.gt_u
1865                          select
1866                          local.set 0
1867                          local.get 3
1868                          i32.load8_u offset=4
1869                          local.set 6
1870                          loop  ;; label = @12
205 ------------------------------------------------------------
1871                            local.get 1
1872                            i32.const 6
1873                            i32.mul
1874                            local.get 3
1875                            i32.add
1876                            i32.load8_u offset=4
1877                            local.get 6
1878                            i32.ne
1879                            br_if 1 (;@11;)
206 ------------------------------------------------------------
1880                            local.get 1
1881                            i32.const 1
1882                            i32.add
1883                            local.tee 1
1884                            local.get 0
1885                            i32.ne
1886                            br_if 0 (;@12;)
207 ------------------------------------------------------------
1887                          end
208 ------------------------------------------------------------
1888                          local.get 0
1889                          local.set 1
1890                        end
209 ------------------------------------------------------------
1891                        i32.const 0
1892                        local.get 1
1893                        local.get 1
1894                        local.get 5
1895                        i32.eq
1896                        select
1897                        local.tee 0
1898                        i32.const 6
1899                        i32.mul
1900                        local.get 3
1901                        i32.add
1902                        i32.load8_u offset=4
1903                        if  ;; label = @11
210 ------------------------------------------------------------
1904                          local.get 4
1905                          local.get 0
1906                          i32.store
1907                          i32.const 0
1908                          br 7 (;@4;)
211 ------------------------------------------------------------
1909                        end
212 ------------------------------------------------------------
1910                        local.get 4
1911                        i32.const 0
1912                        i32.store
1913                        local.get 0
1914                        br 6 (;@4;)
213 ------------------------------------------------------------
1915                      end
214 ------------------------------------------------------------
1916                      i32.const 0
1917                      local.set 1
1918                      local.get 4
1919                      br_if 1 (;@8;)
215 ------------------------------------------------------------
1920                      br 3 (;@6;)
216 ------------------------------------------------------------
1921                    end
217 ------------------------------------------------------------
1922                    local.get 4
1923                    i32.eqz
1924                    br_if 2 (;@6;)
218 ------------------------------------------------------------
1925                    i32.const 13840
1926                    i32.load
1927                    local.tee 6
1928                    local.get 1
1929                    local.get 5
1930                    i32.add
1931                    local.tee 7
1932                    i32.const 1
1933                    i32.sub
1934                    i32.load8_u
1935                    local.tee 0
1936                    i32.const 6
1937                    i32.mul
1938                    i32.add
1939                    i32.load8_u offset=4
1940                    local.get 7
1941                    i32.load8_u
1942                    i32.const 6
1943                    i32.mul
1944                    local.get 6
1945                    i32.add
1946                    i32.load8_u offset=4
1947                    i32.ne
1948                    br_if 1 (;@7;)
219 ------------------------------------------------------------
1949                  end
220 ------------------------------------------------------------
1950                  local.get 3
1951                  local.get 1
1952                  i32.const 1
1953                  i32.add
1954                  local.tee 0
1955                  i32.le_u
1956                  if  ;; label = @8
221 ------------------------------------------------------------
1957                    local.get 1
1958                    local.get 5
1959                    i32.add
1960                    i32.load8_u
1961                    local.set 0
1962                    br 1 (;@7;)
222 ------------------------------------------------------------
1963                  end
223 ------------------------------------------------------------
1964                  i32.const 13840
1965                  i32.load
1966                  local.tee 6
1967                  local.get 0
1968                  local.get 5
1969                  i32.add
1970                  i32.load8_u
1971                  local.tee 3
1972                  i32.const 6
1973                  i32.mul
1974                  i32.add
1975                  i32.load8_u offset=4
1976                  local.get 6
1977                  local.get 1
1978                  local.get 5
1979                  i32.add
1980                  i32.load8_u
1981                  local.tee 0
1982                  i32.const 6
1983                  i32.mul
1984                  i32.add
1985                  i32.load8_u offset=4
1986                  i32.eq
1987                  br_if 0 (;@7;)
224 ------------------------------------------------------------
1988                  local.get 3
1989                  local.set 0
1990                end
225 ------------------------------------------------------------
1991                local.get 4
1992                local.get 0
1993                i32.store
1994              end
226 ------------------------------------------------------------
1995              local.get 1
1996              local.get 5
1997              i32.add
1998              i32.load8_u
1999              local.set 0
2000            end
227 ------------------------------------------------------------
2001            local.get 0
2002          end
228 ------------------------------------------------------------
2003          local.tee 0
2004          i32.const -1
2005          i32.eq
2006          br_if 0 (;@3;)
229 ------------------------------------------------------------
2007          i32.const 14016
2008          i32.const 13840
2009          i32.load
2010          local.get 0
2011          i32.const 6
2012          i32.mul
2013          i32.add
2014          local.tee 0
2015          i32.load8_u offset=4
2016          i32.store
2017          i32.const 14020
2018          local.get 0
2019          call 19
2020          i32.store
2021          i32.const 14024
2022          i32.const 13844
2023          i32.load
2024          local.get 0
2025          i32.load8_u offset=5
2026          i32.add
2027          i32.store
2028          br 1 (;@2;)
230 ------------------------------------------------------------
2029        end
231 ------------------------------------------------------------
2030        block  ;; label = @3
232 ------------------------------------------------------------
2031          block  ;; label = @4
233 ------------------------------------------------------------
2032            i32.const 13820
2033            i32.load
2034            i32.eqz
2035            if  ;; label = @5
234 ------------------------------------------------------------
2036              i32.const 13816
2037              i32.load
2038              local.set 0
2039              br 1 (;@4;)
235 ------------------------------------------------------------
2040            end
236 ------------------------------------------------------------
2041            local.get 18
2042            i64.const 31556952
2043            i64.div_s
2044            i64.const 70
2045            i64.add
2046            local.set 19
2047            loop  ;; label = @5
237 ------------------------------------------------------------
2048              local.get 19
2049              local.tee 17
2050              i64.const 1
2051              i64.sub
2052              local.set 19
2053              local.get 17
2054              i32.const 0
2055              call 23
2056              local.get 18
2057              i64.gt_s
2058              br_if 0 (;@5;)
238 ------------------------------------------------------------
2059            end
239 ------------------------------------------------------------
2060            loop  ;; label = @5
240 ------------------------------------------------------------
2061              local.get 17
2062              local.tee 19
2063              i64.const 1
2064              i64.add
2065              local.tee 17
2066              i32.const 0
2067              call 23
2068              local.get 18
2069              i64.lt_s
2070              br_if 0 (;@5;)
241 ------------------------------------------------------------
2071            end
242 ------------------------------------------------------------
2072            i32.const 13856
2073            local.get 19
2074            i32.wrap_i64
2075            local.tee 0
2076            call 45
2077            local.set 17
2078            i32.const 13888
2079            local.get 0
2080            call 45
2081            local.set 19
2082            local.get 17
2083            i32.const 13816
2084            i32.load
2085            local.tee 0
2086            i64.extend_i32_s
2087            i64.add
2088            local.tee 17
2089            local.get 19
2090            i32.const 13908
2091            i32.load
2092            local.tee 1
2093            i64.extend_i32_s
2094            i64.add
2095            local.tee 19
2096            i64.lt_s
2097            if  ;; label = @5
243 ------------------------------------------------------------
2098              local.get 17
2099              local.get 18
2100              i64.gt_s
2101              br_if 1 (;@4;)
244 ------------------------------------------------------------
2102              local.get 18
2103              local.get 19
2104              i64.ge_s
2105              br_if 1 (;@4;)
245 ------------------------------------------------------------
2106              br 2 (;@3;)
246 ------------------------------------------------------------
2107            end
247 ------------------------------------------------------------
2108            local.get 18
2109            local.get 19
2110            i64.lt_s
2111            br_if 1 (;@3;)
248 ------------------------------------------------------------
2112            local.get 17
2113            local.get 18
2114            i64.le_s
2115            br_if 1 (;@3;)
249 ------------------------------------------------------------
2116          end
250 ------------------------------------------------------------
2117          i32.const 14016
2118          i32.const 0
2119          i32.store
2120          i32.const 14020
2121          i32.const 0
2122          local.get 0
2123          i32.sub
2124          i32.store
2125          i32.const 14024
2126          i32.const 13824
2127          i32.load
2128          i32.store
2129          br 1 (;@2;)
251 ------------------------------------------------------------
2130        end
252 ------------------------------------------------------------
2131        i32.const 14016
2132        i32.const 1
2133        i32.store
2134        i32.const 14020
2135        i32.const 0
2136        local.get 1
2137        i32.sub
2138        i32.store
2139        i32.const 14024
2140        i32.const 13828
2141        i32.load
2142        i32.store
2143      end
253 ------------------------------------------------------------
2144      local.get 15
2145      i32.const 16
2146      i32.add
2147      global.set 0
2148      i32.const -1
2149      local.set 3
2150      block  ;; label = @2
254 ------------------------------------------------------------
2151        local.get 18
2152        i32.const 14020
2153        i64.load32_s
2154        i64.add
2155        local.tee 17
2156        i64.const 67908586878892801
2157        i64.sub
2158        i64.const -135817173789408001
2159        i64.lt_u
2160        br_if 0 (;@2;)
255 ------------------------------------------------------------
2161        local.get 17
2162        i64.const 951868800
2163        i64.sub
2164        local.tee 17
2165        local.get 17
2166        i64.const 86400
2167        i64.div_s
2168        local.tee 17
2169        i64.const 86400
2170        i64.mul
2171        i64.sub
2172        local.tee 19
2173        i64.const 31
2174        i64.shr_s
2175        local.get 17
2176        i64.add
2177        local.tee 17
2178        local.get 17
2179        i64.const 146097
2180        i64.div_s
2181        local.tee 18
2182        i64.const 146097
2183        i64.mul
2184        i64.sub
2185        local.tee 20
2186        i64.const 31
2187        i64.shr_s
2188        local.get 18
2189        i64.add
2190        i64.const 400
2191        i64.mul
2192        i32.const 24
2193        i32.const 3
2194        local.get 20
2195        i32.wrap_i64
2196        local.tee 0
2197        i32.const 146097
2198        i32.add
2199        local.get 0
2200        local.get 0
2201        i32.const 0
2202        i32.lt_s
2203        select
2204        local.tee 0
2205        i32.const 36524
2206        i32.div_u
2207        local.get 0
2208        i32.const 146096
2209        i32.sub
2210        i32.const 36524
2211        i32.lt_u
2212        select
2213        local.tee 4
2214        i32.const -36524
2215        i32.mul
2216        local.get 0
2217        i32.add
2218        local.tee 0
2219        i32.const 1461
2220        i32.div_s
2221        local.get 0
2222        i32.const 36525
2223        i32.sub
2224        i32.const 1461
2225        i32.lt_u
2226        select
2227        local.tee 5
2228        i32.const 2
2229        i32.shl
2230        local.get 4
2231        i32.const 100
2232        i32.mul
2233        i32.add
2234        i32.const 3
2235        local.get 5
2236        i32.const -1461
2237        i32.mul
2238        local.get 0
2239        i32.add
2240        local.tee 0
2241        i32.const 365
2242        i32.div_s
2243        local.get 0
2244        i32.const 1460
2245        i32.sub
2246        i32.const 365
2247        i32.lt_u
2248        select
2249        local.tee 6
2250        i32.add
2251        i64.extend_i32_s
2252        i64.add
2253        local.set 18
2254        i32.const 31
2255        local.set 7
2256        local.get 6
2257        i32.const -365
2258        i32.mul
2259        local.get 0
2260        i32.add
2261        local.tee 1
2262        local.set 0
2263        local.get 1
2264        i32.const 31
2265        i32.ge_s
2266        if  ;; label = @3
256 ------------------------------------------------------------
2267          local.get 1
2268          local.set 0
2269          loop  ;; label = @4
257 ------------------------------------------------------------
2270            local.get 10
2271            i32.const 2663
2272            i32.add
2273            local.set 9
2274            local.get 10
2275            i32.const 1
2276            i32.add
2277            local.set 10
2278            local.get 0
2279            local.get 7
2280            i32.sub
2281            local.tee 0
2282            local.get 9
2283            i32.load8_s
2284            local.tee 7
2285            i32.ge_s
2286            br_if 0 (;@4;)
258 ------------------------------------------------------------
2287          end
259 ------------------------------------------------------------
2288        end
260 ------------------------------------------------------------
2289        local.get 18
2290        local.get 10
2291        i32.const 9
2292        i32.gt_u
2293        local.tee 7
2294        i64.extend_i32_u
2295        i64.add
2296        local.tee 18
2297        i64.const 2147483548
2298        i64.sub
2299        i64.const -4294967296
2300        i64.lt_u
2301        br_if 0 (;@2;)
261 ------------------------------------------------------------
2302        i32.const 14012
2303        local.get 1
2304        local.get 6
2305        i32.eqz
2306        local.get 4
2307        i32.eqz
2308        local.get 5
2309        i32.const 0
2310        i32.ne
2311        i32.or
2312        i32.and
2313        local.tee 3
2314        i32.add
2315        i32.const 0
2316        i32.const -366
2317        i32.const -365
2318        local.get 3
2319        select
2320        local.get 1
2321        i32.const 306
2322        i32.lt_s
2323        select
2324        i32.add
2325        i32.const 59
2326        i32.add
2327        i32.store
2328        i32.const 14008
2329        local.get 17
2330        i64.const 3
2331        i64.add
2332        i64.const 7
2333        i64.rem_s
2334        i32.wrap_i64
2335        local.tee 1
2336        i32.const 7
2337        i32.add
2338        local.get 1
2339        local.get 1
2340        i32.const 0
2341        i32.lt_s
2342        select
2343        i32.store
2344        i32.const 13996
2345        local.get 0
2346        i32.const 1
2347        i32.add
2348        i32.store
2349        i32.const 13992
2350        local.get 19
2351        i32.wrap_i64
2352        local.tee 0
2353        i32.const 86400
2354        i32.add
2355        local.get 0
2356        local.get 0
2357        i32.const 0
2358        i32.lt_s
2359        select
2360        local.tee 0
2361        i32.const 3600
2362        i32.div_s
2363        i32.store
2364        i32.const 14004
2365        local.get 18
2366        i32.wrap_i64
2367        i32.const 100
2368        i32.add
2369        i32.store
2370        i32.const 14000
2371        local.get 10
2372        i32.const 12
2373        i32.sub
2374        local.get 10
2375        local.get 7
2376        select
2377        i32.const 2
2378        i32.add
2379        i32.store
2380        i32.const 13988
2381        local.get 0
2382        i32.const 60
2383        i32.div_s
2384        local.tee 1
2385        i32.const 60
2386        i32.rem_s
2387        i32.store
2388        i32.const 13984
2389        local.get 0
2390        local.get 1
2391        i32.const 60
2392        i32.mul
2393        i32.sub
2394        i32.store
2395        i32.const 0
2396        local.set 3
2397      end
262 ------------------------------------------------------------
2398      local.get 3
2399      i32.const 0
2400      i32.lt_s
2401      if (result i32)  ;; label = @2
263 ------------------------------------------------------------
2402        i32.const 13720
2403        i32.const 61
2404        i32.store
2405        i32.const 0
2406      else
264 ------------------------------------------------------------
2407        i32.const 13984
2408      end
265 ------------------------------------------------------------
2409      local.set 1
2410      global.get 0
2411      i32.const 32
2412      i32.sub
2413      local.tee 0
2414      global.set 0
2415      local.get 1
2416      i32.load offset=24
2417      i32.const 131072
2418      i32.add
2419      call 31
2420      local.set 3
2421      local.get 1
2422      i32.load offset=16
2423      i32.const 131086
2424      i32.add
2425      call 31
2426      local.set 4
2427      local.get 1
2428      i64.load offset=8 align=4
2429      local.set 17
2430      local.get 1
2431      i32.load offset=20
2432      local.set 5
2433      local.get 0
2434      local.get 1
2435      i64.load align=4
2436      i64.const 32
2437      i64.rotl
2438      i64.store offset=16
2439      local.get 0
2440      local.get 5
2441      i32.const 1900
2442      i32.add
2443      i32.store offset=24
2444      local.get 0
2445      local.get 4
2446      i32.store offset=4
2447      local.get 0
2448      local.get 3
2449      i32.store
2450      local.get 0
2451      local.get 17
2452      i64.const 32
2453      i64.rotl
2454      i64.store offset=8
2455      global.get 0
2456      i32.const 16
2457      i32.sub
2458      local.tee 3
2459      global.set 0
2460      local.get 3
2461      local.get 0
2462      i32.store offset=12
2463      global.get 0
2464      i32.const 160
2465      i32.sub
2466      local.tee 1
2467      global.set 0
2468      local.get 1
2469      i32.const 25
2470      i32.store offset=148
2471      local.get 1
2472      i32.const 13728
2473      i32.store offset=144
2474      local.get 1
2475      i32.const 0
2476      i32.const 144
2477      call 29
2478      local.tee 1
2479      i32.const -1
2480      i32.store offset=76
2481      local.get 1
2482      i32.const 7
2483      i32.store offset=36
2484      local.get 1
2485      i32.const -1
2486      i32.store offset=80
2487      local.get 1
2488      local.get 1
2489      i32.const 159
2490      i32.add
2491      i32.store offset=44
2492      local.get 1
2493      local.get 1
2494      i32.const 144
2495      i32.add
2496      i32.store offset=84
2497      i32.const 13728
2498      i32.const 0
2499      i32.store8
2500      local.get 1
2501      i32.const 2081
2502      local.get 0
2503      i32.const 5
2504      i32.const 6
2505      call 25
2506      local.set 4
2507      local.get 1
2508      i32.const 160
2509      i32.add
2510      global.set 0
2511      local.get 3
2512      i32.const 16
2513      i32.add
2514      global.set 0
2515      local.get 4
2516      i32.const 26
2517      i32.ge_s
2518      if  ;; label = @2
266 ------------------------------------------------------------
2519        unreachable
267 ------------------------------------------------------------
2520      end
268 ------------------------------------------------------------
2521      local.get 0
2522      i32.const 32
2523      i32.add
2524      global.set 0
2525      i32.const 13728
2526      local.tee 0
2527      i32.load
2528      local.tee 1
2529      i32.const -1
2530      i32.xor
2531      local.get 1
2532      i32.const 16843009
2533      i32.sub
2534      i32.and
2535      i32.const -2139062144
2536      i32.and
2537      i32.eqz
2538      if  ;; label = @2
269 ------------------------------------------------------------
2539        loop  ;; label = @3
270 ------------------------------------------------------------
2540          local.get 8
2541          local.get 1
2542          i32.store
2543          local.get 0
2544          i32.load offset=4
2545          local.set 1
2546          local.get 8
2547          i32.const 4
2548          i32.add
2549          local.set 8
2550          local.get 0
2551          i32.const 4
2552          i32.add
2553          local.set 0
2554          local.get 1
2555          i32.const 16843009
2556          i32.sub
2557          local.get 1
2558          i32.const -1
2559          i32.xor
2560          i32.and
2561          i32.const -2139062144
2562          i32.and
2563          i32.eqz
2564          br_if 0 (;@3;)
271 ------------------------------------------------------------
2565        end
272 ------------------------------------------------------------
2566      end
273 ------------------------------------------------------------
2567      local.get 8
2568      local.get 1
2569      i32.store8
2570      local.get 1
2571      i32.const 255
2572      i32.and
2573      if  ;; label = @2
274 ------------------------------------------------------------
2574        loop  ;; label = @3
275 ------------------------------------------------------------
2575          local.get 8
2576          local.get 0
2577          i32.load8_u offset=1
2578          local.tee 1
2579          i32.store8 offset=1
2580          local.get 8
2581          i32.const 1
2582          i32.add
2583          local.set 8
2584          local.get 0
2585          i32.const 1
2586          i32.add
2587          local.set 0
2588          local.get 1
2589          br_if 0 (;@3;)
276 ------------------------------------------------------------
2590        end
277 ------------------------------------------------------------
2591      end
278 ------------------------------------------------------------
2592      local.get 13
2593      i32.const 16
2594      i32.add
2595      global.set 0
2596    end
279 ------------------------------------------------------------
2597    local.get 2
2598    i32.const 448
2599    i32.add
2600    global.set 0
2601    i32.const 0)
