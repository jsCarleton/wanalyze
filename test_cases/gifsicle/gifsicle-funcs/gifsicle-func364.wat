  (func (;364;) (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 7
0004    global.set 0
0005    local.get 0
0006    i32.load16_s offset=20
0007    local.set 23
0008    local.get 0
0009    i32.load16_u offset=8
0010    local.set 18
0011    local.get 2
0012    i32.load
0013    i32.const 1
0014    i32.ge_s
0015    if  ;; label = @1
1 ------------------------------------------------------------
0016      loop  ;; label = @2
2 ------------------------------------------------------------
0017        local.get 2
0018        i32.load offset=16
0019        local.get 10
0020        i32.const 3
0021        i32.shl
0022        i32.add
0023        local.tee 12
0024        i32.load8_u offset=3
0025        local.set 19
0026        local.get 12
0027        i32.load8_u offset=2
0028        local.set 8
0029        local.get 7
0030        i32.const 34032
0031        i32.load
0032        local.tee 9
0033        local.get 12
0034        i32.load8_u offset=1
0035        i32.const 1
0036        i32.shl
0037        i32.add
0038        i32.load16_u
0039        i32.store16 offset=8
0040        local.get 7
0041        local.get 9
0042        local.get 8
0043        i32.const 1
0044        i32.shl
0045        i32.add
0046        i32.load16_u
0047        i32.store16 offset=10
0048        local.get 7
0049        local.get 9
0050        local.get 19
0051        i32.const 1
0052        i32.shl
0053        i32.add
0054        i32.load16_u
0055        i32.store16 offset=12
0056        local.get 3
0057        i32.load offset=28
0058        local.tee 9
0059        if  ;; label = @3
3 ------------------------------------------------------------
0060          local.get 7
0061          i32.const 8
0062          i32.add
0063          local.get 9
0064          call_indirect (type 4)
0065        end
4 ------------------------------------------------------------
0066        local.get 3
0067        local.get 7
0068        i32.const 8
0069        i32.add
0070        i32.const 0
0071        call 85
0072        local.set 9
0073        local.get 12
0074        i32.const 1
0075        i32.store8
0076        local.get 12
0077        local.get 9
0078        i32.store offset=4
0079        local.get 10
0080        i32.const 1
0081        i32.add
0082        local.tee 10
0083        local.get 2
0084        i32.load
0085        i32.lt_s
0086        br_if 0 (;@2;)
5 ------------------------------------------------------------
0087      end
6 ------------------------------------------------------------
0088    end
7 ------------------------------------------------------------
0089    i32.const 0
0090    local.set 8
0091    i32.const 0
0092    i32.const 12
0093    local.get 18
0094    i32.const 2
0095    i32.add
0096    local.tee 12
0097    call 23
0098    local.set 19
0099    i32.const 0
0100    i32.const 12
0101    local.get 12
0102    call 23
0103    local.set 12
0104    i32.const 35272
0105    i32.load
0106    local.tee 10
0107    i32.eqz
0108    if  ;; label = @1
8 ------------------------------------------------------------
0109      i32.const 35272
0110      i32.const 0
0111      i32.const 4
0112      i32.const 512
0113      call 23
0114      i32.store
0115      loop  ;; label = @2
9 ------------------------------------------------------------
0116        call 306
0117        local.set 9
0118        i32.const 35272
0119        i32.load
0120        local.tee 10
0121        local.get 16
0122        i32.const 2
0123        i32.shl
0124        i32.add
0125        local.get 9
0126        i32.const 2046
0127        i32.rem_s
0128        i32.const -1023
0129        i32.add
0130        i32.store
0131        local.get 16
0132        i32.const 1
0133        i32.add
0134        local.tee 16
0135        i32.const 512
0136        i32.ne
0137        br_if 0 (;@2;)
10 ------------------------------------------------------------
0138      end
11 ------------------------------------------------------------
0139    end
12 ------------------------------------------------------------
0140    local.get 0
0141    i32.load16_u offset=8
0142    i32.const 1
0143    i32.add
0144    local.set 6
0145    local.get 0
0146    i32.load16_u offset=12
0147    local.set 16
0148    loop  ;; label = @1
13 ------------------------------------------------------------
0149      local.get 19
0150      local.get 8
0151      i32.const 12
0152      i32.mul
0153      i32.add
0154      local.tee 9
0155      local.get 10
0156      local.get 8
0157      local.get 16
0158      i32.add
0159      i32.const 3
0160      i32.mul
0161      local.tee 14
0162      i32.const 511
0163      i32.and
0164      i32.const 2
0165      i32.shl
0166      i32.add
0167      i32.load
0168      i32.store
0169      local.get 9
0170      local.get 10
0171      local.get 14
0172      i32.const 1
0173      i32.add
0174      i32.const 511
0175      i32.and
0176      i32.const 2
0177      i32.shl
0178      i32.add
0179      i32.load
0180      i32.store offset=4
0181      local.get 9
0182      local.get 10
0183      local.get 14
0184      i32.const 2
0185      i32.add
0186      i32.const 511
0187      i32.and
0188      i32.const 2
0189      i32.shl
0190      i32.add
0191      i32.load
0192      i32.store offset=8
0193      local.get 6
0194      local.get 8
0195      i32.ne
0196      local.set 9
0197      local.get 8
0198      i32.const 1
0199      i32.add
0200      local.set 8
0201      local.get 9
0202      br_if 0 (;@1;)
14 ------------------------------------------------------------
0203    end
15 ------------------------------------------------------------
0204    local.get 3
0205    call 369
0206    local.get 0
0207    i32.load16_u offset=10
0208    if  ;; label = @1
16 ------------------------------------------------------------
0209      local.get 18
0210      i32.const -1
0211      i32.add
0212      local.set 24
0213      local.get 18
0214      i32.const 12
0215      i32.mul
0216      i32.const 24
0217      i32.add
0218      local.set 25
0219      i32.const 0
0220      local.set 8
0221      loop  ;; label = @2
17 ------------------------------------------------------------
0222        local.get 19
0223        local.set 9
0224        local.get 0
0225        i32.load
0226        local.get 21
0227        i32.const 2
0228        i32.shl
0229        i32.add
0230        i32.load
0231        local.set 6
0232        local.get 12
0233        local.tee 19
0234        i32.const 0
0235        local.get 25
0236        call 27
0237        local.set 14
0238        local.get 8
0239        i32.eqz
0240        local.set 12
0241        local.get 24
0242        i32.const 0
0243        local.get 8
0244        select
0245        local.tee 10
0246        local.get 18
0247        i32.lt_u
0248        if  ;; label = @3
18 ------------------------------------------------------------
0249          local.get 12
0250          i32.const 1
0251          i32.shl
0252          local.set 26
0253          local.get 8
0254          i32.const 0
0255          i32.ne
0256          i32.const 1
0257          i32.shl
0258          local.set 27
0259          i32.const -1
0260          i32.const 1
0261          local.get 8
0262          select
0263          local.set 22
0264          local.get 6
0265          local.get 10
0266          i32.add
0267          local.set 16
0268          local.get 1
0269          local.get 18
0270          local.get 21
0271          i32.mul
0272          i32.add
0273          local.get 10
0274          i32.add
0275          local.set 8
0276          loop  ;; label = @4
19 ------------------------------------------------------------
0277            block  ;; label = @5
20 ------------------------------------------------------------
0278              local.get 16
0279              i32.load8_u
0280              local.tee 5
0281              local.get 23
0282              i32.eq
0283              br_if 0 (;@5;)
21 ------------------------------------------------------------
0284              local.get 2
0285              i32.load offset=16
0286              local.tee 6
0287              local.get 5
0288              i32.const 3
0289              i32.shl
0290              i32.add
0291              local.tee 5
0292              i32.load8_u offset=3
0293              local.set 15
0294              local.get 5
0295              i32.load8_u offset=2
0296              local.set 11
0297              local.get 7
0298              i32.const 34032
0299              i32.load
0300              local.tee 17
0301              local.get 5
0302              i32.load8_u offset=1
0303              i32.const 1
0304              i32.shl
0305              i32.add
0306              i32.load16_u
0307              local.tee 5
0308              i32.store16
0309              local.get 7
0310              local.get 17
0311              local.get 11
0312              i32.const 1
0313              i32.shl
0314              i32.add
0315              i32.load16_u
0316              local.tee 11
0317              i32.store16 offset=2
0318              local.get 7
0319              local.get 17
0320              local.get 15
0321              i32.const 1
0322              i32.shl
0323              i32.add
0324              i32.load16_u
0325              local.tee 15
0326              i32.store16 offset=4
0327              local.get 3
0328              i32.load offset=28
0329              local.tee 17
0330              if  ;; label = @6
22 ------------------------------------------------------------
0331                local.get 7
0332                local.get 17
0333                call_indirect (type 4)
0334                local.get 7
0335                i32.load16_s offset=4
0336                local.set 15
0337                local.get 7
0338                i32.load16_s offset=2
0339                local.set 11
0340                local.get 7
0341                i32.load16_s
0342                local.set 5
0343                local.get 2
0344                i32.load offset=16
0345                local.set 6
0346              end
23 ------------------------------------------------------------
0347              local.get 7
0348              local.get 9
0349              local.get 10
0350              i32.const 1
0351              i32.add
0352              i32.const 12
0353              i32.mul
0354              local.tee 17
0355              i32.add
0356              local.tee 20
0357              i32.load
0358              i32.const -8
0359              i32.and
0360              i32.const 8
0361              i32.div_s
0362              local.get 5
0363              i32.const 16
0364              i32.shl
0365              i32.const 16
0366              i32.shr_s
0367              i32.add
0368              local.tee 5
0369              i32.const 32767
0370              local.get 5
0371              i32.const 32767
0372              i32.lt_s
0373              select
0374              local.tee 5
0375              i32.const 0
0376              local.get 5
0377              i32.const 0
0378              i32.gt_s
0379              select
0380              local.tee 13
0381              i32.store16
0382              local.get 7
0383              local.get 20
0384              i32.load offset=4
0385              i32.const -8
0386              i32.and
0387              i32.const 8
0388              i32.div_s
0389              local.get 11
0390              i32.const 16
0391              i32.shl
0392              i32.const 16
0393              i32.shr_s
0394              i32.add
0395              local.tee 5
0396              i32.const 32767
0397              local.get 5
0398              i32.const 32767
0399              i32.lt_s
0400              select
0401              local.tee 5
0402              i32.const 0
0403              local.get 5
0404              i32.const 0
0405              i32.gt_s
0406              select
0407              local.tee 11
0408              i32.store16 offset=2
0409              local.get 7
0410              local.get 20
0411              i32.load offset=8
0412              i32.const -8
0413              i32.and
0414              i32.const 8
0415              i32.div_s
0416              local.get 15
0417              i32.const 16
0418              i32.shl
0419              i32.const 16
0420              i32.shr_s
0421              i32.add
0422              local.tee 5
0423              i32.const 32767
0424              local.get 5
0425              i32.const 32767
0426              i32.lt_s
0427              select
0428              local.tee 5
0429              i32.const 0
0430              local.get 5
0431              i32.const 0
0432              i32.gt_s
0433              select
0434              local.tee 15
0435              i32.store16 offset=4
0436              local.get 3
0437              i32.load offset=12
0438              local.get 6
0439              local.get 16
0440              i32.load8_u
0441              i32.const 3
0442              i32.shl
0443              i32.add
0444              i32.load offset=4
0445              local.tee 6
0446              i32.const 6
0447              i32.mul
0448              i32.add
0449              local.tee 5
0450              i32.load16_s offset=2
0451              local.get 11
0452              i32.sub
0453              local.tee 11
0454              local.get 11
0455              i32.mul
0456              local.get 5
0457              i32.load16_s
0458              local.get 13
0459              i32.sub
0460              local.tee 11
0461              local.get 11
0462              i32.mul
0463              i32.add
0464              local.get 5
0465              i32.load16_s offset=4
0466              local.get 15
0467              i32.sub
0468              local.tee 5
0469              local.get 5
0470              i32.mul
0471              i32.add
0472              local.get 3
0473              i32.load offset=32
0474              local.get 6
0475              i32.const 2
0476              i32.shl
0477              i32.add
0478              i32.load
0479              i32.ge_u
0480              if  ;; label = @6
24 ------------------------------------------------------------
0481                local.get 3
0482                local.get 7
0483                i32.const 0
0484                call 85
0485                local.set 6
0486              end
25 ------------------------------------------------------------
0487              local.get 8
0488              local.get 6
0489              i32.store8
0490              local.get 4
0491              local.get 6
0492              i32.const 255
0493              i32.and
0494              i32.const 2
0495              i32.shl
0496              i32.add
0497              local.tee 6
0498              local.get 6
0499              i32.load
0500              i32.const 1
0501              i32.add
0502              i32.store
0503              local.get 10
0504              local.get 27
0505              i32.add
0506              local.set 11
0507              local.get 10
0508              local.get 26
0509              i32.add
0510              local.set 15
0511              local.get 7
0512              i32.load16_s
0513              local.get 3
0514              i32.load offset=12
0515              local.tee 20
0516              local.get 8
0517              i32.load8_u
0518              local.tee 6
0519              i32.const 6
0520              i32.mul
0521              i32.add
0522              i32.load16_s
0523              i32.sub
0524              local.tee 5
0525              if  ;; label = @6
26 ------------------------------------------------------------
0526                local.get 9
0527                local.get 15
0528                i32.const 12
0529                i32.mul
0530                local.tee 6
0531                i32.add
0532                local.tee 13
0533                local.get 13
0534                i32.load
0535                local.get 5
0536                i32.const 56
0537                i32.mul
0538                i32.const -16
0539                i32.and
0540                i32.const 16
0541                i32.div_s
0542                i32.add
0543                i32.store
0544                local.get 14
0545                local.get 11
0546                i32.const 12
0547                i32.mul
0548                i32.add
0549                local.tee 13
0550                local.get 13
0551                i32.load
0552                local.get 5
0553                i32.const 24
0554                i32.mul
0555                i32.const -16
0556                i32.and
0557                i32.const 16
0558                i32.div_s
0559                i32.add
0560                i32.store
0561                local.get 14
0562                local.get 17
0563                i32.add
0564                local.tee 13
0565                local.get 13
0566                i32.load
0567                local.get 5
0568                i32.const 40
0569                i32.mul
0570                i32.const -16
0571                i32.and
0572                i32.const 16
0573                i32.div_s
0574                i32.add
0575                i32.store
0576                local.get 6
0577                local.get 14
0578                i32.add
0579                local.tee 6
0580                local.get 6
0581                i32.load
0582                local.get 5
0583                i32.const 3
0584                i32.shl
0585                i32.const -16
0586                i32.and
0587                i32.const 16
0588                i32.div_s
0589                i32.add
0590                i32.store
0591                local.get 8
0592                i32.load8_u
0593                local.set 6
0594              end
27 ------------------------------------------------------------
0595              local.get 7
0596              i32.load16_s offset=2
0597              local.get 20
0598              local.get 6
0599              i32.const 6
0600              i32.mul
0601              i32.add
0602              i32.load16_s offset=2
0603              i32.sub
0604              local.tee 5
0605              if  ;; label = @6
28 ------------------------------------------------------------
0606                local.get 9
0607                local.get 15
0608                i32.const 12
0609                i32.mul
0610                local.tee 6
0611                i32.add
0612                local.tee 13
0613                local.get 13
0614                i32.load offset=4
0615                local.get 5
0616                i32.const 56
0617                i32.mul
0618                i32.const -16
0619                i32.and
0620                i32.const 16
0621                i32.div_s
0622                i32.add
0623                i32.store offset=4
0624                local.get 14
0625                local.get 11
0626                i32.const 12
0627                i32.mul
0628                i32.add
0629                local.tee 13
0630                local.get 13
0631                i32.load offset=4
0632                local.get 5
0633                i32.const 24
0634                i32.mul
0635                i32.const -16
0636                i32.and
0637                i32.const 16
0638                i32.div_s
0639                i32.add
0640                i32.store offset=4
0641                local.get 14
0642                local.get 17
0643                i32.add
0644                local.tee 13
0645                local.get 13
0646                i32.load offset=4
0647                local.get 5
0648                i32.const 40
0649                i32.mul
0650                i32.const -16
0651                i32.and
0652                i32.const 16
0653                i32.div_s
0654                i32.add
0655                i32.store offset=4
0656                local.get 6
0657                local.get 14
0658                i32.add
0659                local.tee 6
0660                local.get 6
0661                i32.load offset=4
0662                local.get 5
0663                i32.const 3
0664                i32.shl
0665                i32.const -16
0666                i32.and
0667                i32.const 16
0668                i32.div_s
0669                i32.add
0670                i32.store offset=4
0671                local.get 8
0672                i32.load8_u
0673                local.set 6
0674              end
29 ------------------------------------------------------------
0675              local.get 7
0676              i32.load16_s offset=4
0677              local.get 20
0678              local.get 6
0679              i32.const 6
0680              i32.mul
0681              i32.add
0682              i32.load16_s offset=4
0683              i32.sub
0684              local.tee 6
0685              i32.eqz
0686              br_if 0 (;@5;)
30 ------------------------------------------------------------
0687              local.get 9
0688              local.get 15
0689              i32.const 12
0690              i32.mul
0691              local.tee 5
0692              i32.add
0693              local.tee 15
0694              local.get 15
0695              i32.load offset=8
0696              local.get 6
0697              i32.const 56
0698              i32.mul
0699              i32.const -16
0700              i32.and
0701              i32.const 16
0702              i32.div_s
0703              i32.add
0704              i32.store offset=8
0705              local.get 14
0706              local.get 11
0707              i32.const 12
0708              i32.mul
0709              i32.add
0710              local.tee 11
0711              local.get 11
0712              i32.load offset=8
0713              local.get 6
0714              i32.const 24
0715              i32.mul
0716              i32.const -16
0717              i32.and
0718              i32.const 16
0719              i32.div_s
0720              i32.add
0721              i32.store offset=8
0722              local.get 14
0723              local.get 17
0724              i32.add
0725              local.tee 17
0726              local.get 17
0727              i32.load offset=8
0728              local.get 6
0729              i32.const 40
0730              i32.mul
0731              i32.const -16
0732              i32.and
0733              i32.const 16
0734              i32.div_s
0735              i32.add
0736              i32.store offset=8
0737              local.get 5
0738              local.get 14
0739              i32.add
0740              local.tee 5
0741              local.get 5
0742              i32.load offset=8
0743              local.get 6
0744              i32.const 3
0745              i32.shl
0746              i32.const -16
0747              i32.and
0748              i32.const 16
0749              i32.div_s
0750              i32.add
0751              i32.store offset=8
0752            end
31 ------------------------------------------------------------
0753            local.get 8
0754            local.get 22
0755            i32.add
0756            local.set 8
0757            local.get 16
0758            local.get 22
0759            i32.add
0760            local.set 16
0761            local.get 10
0762            local.get 22
0763            i32.add
0764            local.tee 10
0765            local.get 18
0766            i32.lt_u
0767            br_if 0 (;@4;)
32 ------------------------------------------------------------
0768          end
33 ------------------------------------------------------------
0769        end
34 ------------------------------------------------------------
0770        local.get 12
0771        local.set 8
0772        local.get 9
0773        local.set 12
0774        local.get 21
0775        i32.const 1
0776        i32.add
0777        local.tee 21
0778        local.get 0
0779        i32.load16_u offset=10
0780        i32.lt_u
0781        br_if 0 (;@2;)
35 ------------------------------------------------------------
0782      end
36 ------------------------------------------------------------
0783    end
37 ------------------------------------------------------------
0784    local.get 19
0785    call 22
0786    local.get 12
0787    call 22
0788    local.get 7
0789    i32.const 16
0790    i32.add
0791    global.set 0)
