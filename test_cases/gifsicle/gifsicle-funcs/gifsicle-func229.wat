  (func (;229;) (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 f64 f64)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 32
0002    i32.sub
0003    local.tee 5
0004    global.set 0
0005    i32.const 0
0006    i32.const 12
0007    local.get 1
0008    i32.load offset=28
0009    local.tee 3
0010    call 23
0011    local.set 14
0012    local.get 3
0013    i32.const 256
0014    call 44
0015    local.set 17
0016    local.get 3
0017    i32.const -2
0018    i32.add
0019    i32.const 255
0020    i32.lt_u
0021    if  ;; label = @1
1 ------------------------------------------------------------
0022      local.get 17
0023      i32.load offset=16
0024      local.set 18
0025      block  ;; label = @2
2 ------------------------------------------------------------
0026        local.get 3
0027        local.get 0
0028        i32.load offset=4
0029        local.tee 2
0030        i32.lt_s
0031        br_if 0 (;@2;)
3 ------------------------------------------------------------
0032        local.get 1
0033        i32.load offset=32
0034        br_if 0 (;@2;)
4 ------------------------------------------------------------
0035        local.get 5
0036        local.get 2
0037        i32.store
0038        local.get 5
0039        i32.const 4552
0040        i32.const 4558
0041        local.get 2
0042        i32.const 1
0043        i32.eq
0044        select
0045        i32.store offset=4
0046        i32.const 1
0047        i32.const 4504
0048        local.get 5
0049        call 25
0050        local.get 0
0051        i32.load offset=4
0052        local.set 2
0053      end
5 ------------------------------------------------------------
0054      local.get 2
0055      i32.const 265
0056      i32.gt_s
0057      local.get 3
0058      local.get 2
0059      i32.ge_s
0060      i32.or
0061      local.get 3
0062      local.get 2
0063      local.get 3
0064      local.get 2
0065      i32.lt_s
0066      select
0067      local.tee 7
0068      i32.const 3
0069      i32.lt_s
0070      i32.or
0071      i32.eqz
0072      if  ;; label = @2
6 ------------------------------------------------------------
0073        local.get 7
0074        local.get 1
0075        i32.load offset=40
0076        i32.const 0
0077        i32.ne
0078        i32.sub
0079        local.set 7
0080      end
7 ------------------------------------------------------------
0081      i32.const 0
0082      local.set 1
0083      local.get 14
0084      i32.const 0
0085      i32.store offset=8
0086      local.get 14
0087      local.get 2
0088      i32.store offset=4
0089      local.get 14
0090      i32.const 0
0091      i32.store
0092      i32.const 1
0093      local.set 15
0094      local.get 2
0095      i32.const 1
0096      i32.ge_s
0097      if  ;; label = @2
8 ------------------------------------------------------------
0098        local.get 0
0099        i32.load
0100        local.set 3
0101        loop  ;; label = @3
9 ------------------------------------------------------------
0102          local.get 1
0103          local.get 3
0104          local.get 4
0105          i32.const 4
0106          i32.shl
0107          i32.add
0108          i32.load offset=8
0109          i32.add
0110          local.set 1
0111          local.get 4
0112          i32.const 1
0113          i32.add
0114          local.tee 4
0115          local.get 2
0116          i32.ne
0117          br_if 0 (;@3;)
10 ------------------------------------------------------------
0118        end
11 ------------------------------------------------------------
0119        local.get 14
0120        local.get 1
0121        i32.store offset=8
0122      end
12 ------------------------------------------------------------
0123      block  ;; label = @2
13 ------------------------------------------------------------
0124        local.get 7
0125        i32.const 2
0126        i32.lt_s
0127        br_if 0 (;@2;)
14 ------------------------------------------------------------
0128        loop  ;; label = @3
15 ------------------------------------------------------------
0129          i32.const 0
0130          local.set 4
0131          i32.const 0
0132          local.set 12
0133          i32.const 0
0134          local.set 2
0135          loop  ;; label = @4
16 ------------------------------------------------------------
0136            local.get 14
0137            local.get 4
0138            i32.const 12
0139            i32.mul
0140            i32.add
0141            local.tee 1
0142            i32.load offset=4
0143            i32.const 2
0144            i32.ge_s
0145            if  ;; label = @5
17 ------------------------------------------------------------
0146              local.get 1
0147              local.get 12
0148              local.get 1
0149              i32.load offset=8
0150              local.tee 3
0151              local.get 2
0152              i32.gt_u
0153              local.tee 1
0154              select
0155              local.set 12
0156              local.get 3
0157              local.get 2
0158              local.get 1
0159              select
0160              local.set 2
0161            end
18 ------------------------------------------------------------
0162            local.get 4
0163            i32.const 1
0164            i32.add
0165            local.tee 4
0166            local.get 15
0167            i32.ne
0168            br_if 0 (;@4;)
19 ------------------------------------------------------------
0169          end
20 ------------------------------------------------------------
0170          local.get 12
0171          i32.eqz
0172          br_if 1 (;@2;)
21 ------------------------------------------------------------
0173          local.get 5
0174          local.get 0
0175          i32.load
0176          local.get 12
0177          i32.load
0178          i32.const 4
0179          i32.shl
0180          i32.add
0181          local.tee 8
0182          i32.load align=2
0183          i32.store offset=16
0184          local.get 5
0185          local.get 8
0186          i32.load16_u offset=4
0187          i32.store16 offset=20
0188          local.get 5
0189          local.get 8
0190          i32.load16_u offset=4
0191          i32.store16 offset=28
0192          local.get 5
0193          local.get 8
0194          i32.load align=2
0195          i32.store offset=24
0196          block  ;; label = @4
22 ------------------------------------------------------------
0197            local.get 12
0198            i32.load offset=4
0199            local.tee 10
0200            i32.const 1
0201            i32.le_s
0202            if  ;; label = @5
23 ------------------------------------------------------------
0203              local.get 5
0204              i32.load16_u offset=28
0205              local.set 2
0206              local.get 5
0207              i32.load16_u offset=20
0208              local.set 3
0209              local.get 5
0210              i32.load16_u offset=26
0211              local.set 16
0212              local.get 5
0213              i32.load16_u offset=18
0214              local.set 9
0215              local.get 5
0216              i32.load16_u offset=24
0217              local.set 11
0218              local.get 5
0219              i32.load16_u offset=16
0220              local.set 13
0221              br 1 (;@4;)
24 ------------------------------------------------------------
0222            end
25 ------------------------------------------------------------
0223            i32.const 1
0224            local.set 1
0225            local.get 5
0226            i32.load16_u offset=20
0227            local.set 3
0228            local.get 5
0229            i32.load16_u offset=28
0230            local.set 2
0231            local.get 5
0232            i32.load16_u offset=18
0233            local.set 9
0234            local.get 5
0235            i32.load16_u offset=26
0236            local.set 16
0237            local.get 5
0238            i32.load16_u offset=16
0239            local.set 13
0240            local.get 5
0241            i32.load16_u offset=24
0242            local.set 11
0243            local.get 8
0244            local.set 4
0245            loop  ;; label = @5
26 ------------------------------------------------------------
0246              local.get 3
0247              local.get 4
0248              i32.load16_s offset=20
0249              local.tee 6
0250              local.get 3
0251              i32.const 16
0252              i32.shl
0253              i32.const 16
0254              i32.shr_s
0255              local.get 6
0256              i32.gt_s
0257              select
0258              local.set 3
0259              local.get 2
0260              local.get 6
0261              local.get 2
0262              i32.const 16
0263              i32.shl
0264              i32.const 16
0265              i32.shr_s
0266              local.get 6
0267              i32.lt_s
0268              select
0269              local.set 2
0270              local.get 9
0271              local.get 4
0272              i32.load16_s offset=18
0273              local.tee 6
0274              local.get 9
0275              i32.const 16
0276              i32.shl
0277              i32.const 16
0278              i32.shr_s
0279              local.get 6
0280              i32.gt_s
0281              select
0282              local.set 9
0283              local.get 16
0284              local.get 6
0285              local.get 16
0286              i32.const 16
0287              i32.shl
0288              i32.const 16
0289              i32.shr_s
0290              local.get 6
0291              i32.lt_s
0292              select
0293              local.set 16
0294              local.get 13
0295              local.get 4
0296              i32.load16_s offset=16
0297              local.tee 6
0298              local.get 13
0299              i32.const 16
0300              i32.shl
0301              i32.const 16
0302              i32.shr_s
0303              local.get 6
0304              i32.gt_s
0305              select
0306              local.set 13
0307              local.get 11
0308              local.get 6
0309              local.get 11
0310              i32.const 16
0311              i32.shl
0312              i32.const 16
0313              i32.shr_s
0314              local.get 6
0315              i32.lt_s
0316              select
0317              local.set 11
0318              local.get 4
0319              i32.const 16
0320              i32.add
0321              local.set 4
0322              local.get 1
0323              i32.const 1
0324              i32.add
0325              local.tee 1
0326              local.get 10
0327              i32.ne
0328              br_if 0 (;@5;)
27 ------------------------------------------------------------
0329            end
28 ------------------------------------------------------------
0330            local.get 5
0331            local.get 13
0332            i32.store16 offset=16
0333            local.get 5
0334            local.get 11
0335            i32.store16 offset=24
0336            local.get 5
0337            local.get 16
0338            i32.store16 offset=26
0339            local.get 5
0340            local.get 9
0341            i32.store16 offset=18
0342            local.get 5
0343            local.get 2
0344            i32.store16 offset=28
0345            local.get 5
0346            local.get 3
0347            i32.store16 offset=20
0348          end
29 ------------------------------------------------------------
0349          local.get 8
0350          local.get 10
0351          i32.const 16
0352          i32.const 16
0353          i32.const 17
0354          i32.const 18
0355          local.get 9
0356          i32.const 16
0357          i32.shl
0358          i32.const 16
0359          i32.shr_s
0360          local.get 16
0361          i32.const 16
0362          i32.shl
0363          i32.const 16
0364          i32.shr_s
0365          i32.sub
0366          f64.convert_i32_s
0367          f64.const 0.587
0368          f64.mul
0369          local.tee 21
0370          local.get 3
0371          i32.const 16
0372          i32.shl
0373          i32.const 16
0374          i32.shr_s
0375          local.get 2
0376          i32.const 16
0377          i32.shl
0378          i32.const 16
0379          i32.shr_s
0380          i32.sub
0381          f64.convert_i32_s
0382          f64.const 0.114
0383          f64.mul
0384          local.tee 20
0385          f64.ge
0386          select
0387          local.tee 1
0388          local.get 13
0389          i32.const 16
0390          i32.shl
0391          i32.const 16
0392          i32.shr_s
0393          local.get 11
0394          i32.const 16
0395          i32.shl
0396          i32.const 16
0397          i32.shr_s
0398          i32.sub
0399          f64.convert_i32_s
0400          f64.const 0.299
0401          f64.mul
0402          local.tee 19
0403          local.get 20
0404          f64.ge
0405          select
0406          local.get 1
0407          local.get 19
0408          local.get 21
0409          f64.ge
0410          select
0411          call 57
0412          i32.const 1
0413          local.set 4
0414          local.get 12
0415          i32.load offset=4
0416          local.set 9
0417          block  ;; label = @4
30 ------------------------------------------------------------
0418            local.get 8
0419            i32.load offset=8
0420            local.tee 2
0421            local.get 12
0422            i32.load offset=8
0423            local.tee 13
0424            i32.const 1
0425            i32.shr_u
0426            local.tee 6
0427            i32.ge_u
0428            if  ;; label = @5
31 ------------------------------------------------------------
0429              local.get 2
0430              local.set 3
0431              br 1 (;@4;)
32 ------------------------------------------------------------
0432            end
33 ------------------------------------------------------------
0433            local.get 9
0434            i32.const 3
0435            i32.lt_s
0436            if  ;; label = @5
34 ------------------------------------------------------------
0437              local.get 2
0438              local.set 3
0439              br 1 (;@4;)
35 ------------------------------------------------------------
0440            end
36 ------------------------------------------------------------
0441            local.get 9
0442            i32.const -1
0443            i32.add
0444            local.set 10
0445            i32.const 1
0446            local.set 1
0447            loop  ;; label = @5
37 ------------------------------------------------------------
0448              local.get 1
0449              i32.const 1
0450              i32.add
0451              local.set 4
0452              local.get 8
0453              local.get 1
0454              i32.const 4
0455              i32.shl
0456              i32.add
0457              i32.load offset=8
0458              local.tee 3
0459              local.get 2
0460              i32.add
0461              local.tee 2
0462              local.get 6
0463              i32.ge_u
0464              br_if 1 (;@4;)
38 ------------------------------------------------------------
0465              local.get 4
0466              local.tee 1
0467              local.get 10
0468              i32.lt_s
0469              br_if 0 (;@5;)
39 ------------------------------------------------------------
0470            end
40 ------------------------------------------------------------
0471          end
41 ------------------------------------------------------------
0472          local.get 12
0473          i32.load
0474          local.set 8
0475          local.get 14
0476          local.get 15
0477          i32.const 12
0478          i32.mul
0479          i32.add
0480          local.tee 10
0481          local.get 9
0482          local.get 4
0483          local.get 3
0484          local.get 2
0485          i32.sub
0486          i32.const 1
0487          i32.shl
0488          local.get 13
0489          i32.add
0490          local.get 2
0491          i32.const 1
0492          i32.shl
0493          local.get 13
0494          i32.sub
0495          i32.lt_u
0496          local.get 4
0497          i32.const 1
0498          i32.gt_u
0499          i32.and
0500          local.tee 1
0501          i32.sub
0502          local.tee 4
0503          i32.sub
0504          i32.store offset=4
0505          local.get 10
0506          local.get 4
0507          local.get 8
0508          i32.add
0509          i32.store
0510          local.get 10
0511          local.get 13
0512          local.get 2
0513          local.get 3
0514          i32.const 0
0515          local.get 1
0516          select
0517          i32.sub
0518          local.tee 1
0519          i32.sub
0520          i32.store offset=8
0521          local.get 12
0522          local.get 1
0523          i32.store offset=8
0524          local.get 12
0525          local.get 4
0526          i32.store offset=4
0527          local.get 15
0528          i32.const 1
0529          i32.add
0530          local.tee 15
0531          local.get 7
0532          i32.ne
0533          br_if 0 (;@3;)
42 ------------------------------------------------------------
0534        end
43 ------------------------------------------------------------
0535        local.get 7
0536        local.set 15
0537      end
44 ------------------------------------------------------------
0538      i32.const 0
0539      local.set 11
0540      loop  ;; label = @2
45 ------------------------------------------------------------
0541        f64.const 0.
0542        local.set 21
0543        block  ;; label = @3
46 ------------------------------------------------------------
0544          local.get 14
0545          local.get 11
0546          i32.const 12
0547          i32.mul
0548          i32.add
0549          local.tee 2
0550          i32.load offset=4
0551          local.tee 4
0552          i32.eqz
0553          if  ;; label = @4
47 ------------------------------------------------------------
0554            f64.const 0.
0555            local.set 22
0556            f64.const 0.
0557            local.set 20
0558            br 1 (;@3;)
48 ------------------------------------------------------------
0559          end
49 ------------------------------------------------------------
0560          local.get 0
0561          i32.load
0562          local.get 2
0563          i32.load
0564          i32.const 4
0565          i32.shl
0566          i32.add
0567          local.set 3
0568          f64.const 0.
0569          local.set 22
0570          f64.const 0.
0571          local.set 20
0572          i32.const 0
0573          local.set 1
0574          loop  ;; label = @4
50 ------------------------------------------------------------
0575            local.get 21
0576            local.get 3
0577            local.get 1
0578            i32.const 4
0579            i32.shl
0580            i32.add
0581            local.tee 7
0582            i32.load16_s offset=4
0583            f64.convert_i32_s
0584            local.get 7
0585            i32.load offset=8
0586            f64.convert_i32_u
0587            local.tee 19
0588            f64.mul
0589            f64.add
0590            local.set 21
0591            local.get 22
0592            local.get 7
0593            i32.load16_s offset=2
0594            f64.convert_i32_s
0595            local.get 19
0596            f64.mul
0597            f64.add
0598            local.set 22
0599            local.get 20
0600            local.get 7
0601            i32.load16_s
0602            f64.convert_i32_s
0603            local.get 19
0604            f64.mul
0605            f64.add
0606            local.set 20
0607            local.get 1
0608            i32.const 1
0609            i32.add
0610            local.tee 1
0611            local.get 4
0612            i32.ne
0613            br_if 0 (;@4;)
51 ------------------------------------------------------------
0614          end
52 ------------------------------------------------------------
0615        end
53 ------------------------------------------------------------
0616        block (result i32)  ;; label = @3
54 ------------------------------------------------------------
0617          local.get 20
0618          local.get 2
0619          i32.load offset=8
0620          f64.convert_i32_u
0621          local.tee 20
0622          f64.div
0623          local.tee 19
0624          f64.abs
0625          f64.const 2147483648.
0626          f64.lt
0627          if  ;; label = @4
55 ------------------------------------------------------------
0628            local.get 19
0629            i32.trunc_f64_s
0630            br 1 (;@3;)
56 ------------------------------------------------------------
0631          end
57 ------------------------------------------------------------
0632          i32.const -2147483648
0633        end
58 ------------------------------------------------------------
0634        local.set 4
0635        block (result i32)  ;; label = @3
59 ------------------------------------------------------------
0636          local.get 21
0637          local.get 20
0638          f64.div
0639          local.tee 19
0640          f64.abs
0641          f64.const 2147483648.
0642          f64.lt
0643          if  ;; label = @4
60 ------------------------------------------------------------
0644            local.get 19
0645            i32.trunc_f64_s
0646            br 1 (;@3;)
61 ------------------------------------------------------------
0647          end
62 ------------------------------------------------------------
0648          i32.const -2147483648
0649        end
63 ------------------------------------------------------------
0650        local.set 9
0651        local.get 4
0652        i32.const 16
0653        i32.shl
0654        local.set 1
0655        block (result i32)  ;; label = @3
64 ------------------------------------------------------------
0656          local.get 22
0657          local.get 20
0658          f64.div
0659          local.tee 19
0660          f64.abs
0661          f64.const 2147483648.
0662          f64.lt
0663          if  ;; label = @4
65 ------------------------------------------------------------
0664            local.get 19
0665            i32.trunc_f64_s
0666            br 1 (;@3;)
66 ------------------------------------------------------------
0667          end
67 ------------------------------------------------------------
0668          i32.const -2147483648
0669        end
68 ------------------------------------------------------------
0670        local.set 16
0671        local.get 1
0672        i32.const 16
0673        i32.shr_s
0674        local.set 3
0675        i32.const 34036
0676        i32.load
0677        local.tee 8
0678        local.get 1
0679        i32.const 23
0680        i32.shr_s
0681        i32.const 1
0682        i32.shl
0683        i32.add
0684        i32.load16_u
0685        local.set 1
0686        i32.const 34032
0687        i32.load
0688        local.set 10
0689        loop  ;; label = @3
69 ------------------------------------------------------------
0690          local.get 1
0691          local.tee 2
0692          i32.const 32639
0693          i32.le_u
0694          if  ;; label = @4
70 ------------------------------------------------------------
0695            local.get 3
0696            local.get 10
0697            local.get 2
0698            i32.const 128
0699            i32.add
0700            local.tee 1
0701            i32.const 6
0702            i32.shr_u
0703            i32.const 67108862
0704            i32.and
0705            i32.add
0706            i32.load16_u
0707            i32.ge_s
0708            br_if 1 (;@3;)
71 ------------------------------------------------------------
0709          end
72 ------------------------------------------------------------
0710        end
73 ------------------------------------------------------------
0711        local.get 16
0712        i32.const 16
0713        i32.shl
0714        local.tee 1
0715        i32.const 16
0716        i32.shr_s
0717        local.set 3
0718        local.get 8
0719        local.get 1
0720        i32.const 23
0721        i32.shr_s
0722        i32.const 1
0723        i32.shl
0724        i32.add
0725        i32.load16_u
0726        local.set 1
0727        loop  ;; label = @3
74 ------------------------------------------------------------
0728          local.get 1
0729          local.tee 4
0730          i32.const 32639
0731          i32.le_u
0732          if  ;; label = @4
75 ------------------------------------------------------------
0733            local.get 3
0734            local.get 10
0735            local.get 4
0736            i32.const 128
0737            i32.add
0738            local.tee 1
0739            i32.const 6
0740            i32.shr_u
0741            i32.const 67108862
0742            i32.and
0743            i32.add
0744            i32.load16_u
0745            i32.ge_s
0746            br_if 1 (;@3;)
76 ------------------------------------------------------------
0747          end
77 ------------------------------------------------------------
0748        end
78 ------------------------------------------------------------
0749        local.get 9
0750        i32.const 16
0751        i32.shl
0752        local.tee 1
0753        i32.const 16
0754        i32.shr_s
0755        local.set 7
0756        local.get 8
0757        local.get 1
0758        i32.const 23
0759        i32.shr_s
0760        i32.const 1
0761        i32.shl
0762        i32.add
0763        i32.load16_u
0764        local.set 1
0765        loop  ;; label = @3
79 ------------------------------------------------------------
0766          local.get 1
0767          local.tee 3
0768          i32.const 32639
0769          i32.le_u
0770          if  ;; label = @4
80 ------------------------------------------------------------
0771            local.get 7
0772            local.get 10
0773            local.get 3
0774            i32.const 128
0775            i32.add
0776            local.tee 1
0777            i32.const 6
0778            i32.shr_u
0779            i32.const 67108862
0780            i32.and
0781            i32.add
0782            i32.load16_u
0783            i32.ge_s
0784            br_if 1 (;@3;)
81 ------------------------------------------------------------
0785          end
82 ------------------------------------------------------------
0786        end
83 ------------------------------------------------------------
0787        local.get 18
0788        local.get 11
0789        i32.const 3
0790        i32.shl
0791        i32.add
0792        local.get 3
0793        i32.const 17
0794        i32.shl
0795        i32.const -16777216
0796        i32.and
0797        local.get 4
0798        i32.const 9
0799        i32.shl
0800        i32.const 16711680
0801        i32.and
0802        local.get 2
0803        i32.const 1
0804        i32.shl
0805        i32.const 65280
0806        i32.and
0807        i32.or
0808        i32.or
0809        i64.extend_i32_u
0810        i64.store align=4
0811        local.get 11
0812        i32.const 1
0813        i32.add
0814        local.tee 11
0815        local.get 15
0816        i32.ne
0817        br_if 0 (;@2;)
84 ------------------------------------------------------------
0818      end
85 ------------------------------------------------------------
0819      local.get 14
0820      call 22
0821      local.get 17
0822      local.get 15
0823      i32.store
0824      local.get 5
0825      i32.const 32
0826      i32.add
0827      global.set 0
0828      local.get 17
0829      return
86 ------------------------------------------------------------
0830    end
87 ------------------------------------------------------------
0831    i32.const 4456
0832    i32.const 0
0833    call 45
0834    unreachable
88 ------------------------------------------------------------)
