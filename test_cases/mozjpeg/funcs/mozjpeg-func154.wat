  (func (;154;) (type 0) (param i32)
    (local i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load offset=364
0002    local.tee 3
0003    local.get 3
0004    i32.load offset=12
0005    local.tee 2
0006    local.get 3
0007    i32.load offset=16
0008    i32.add
0009    i32.const -1
0010    i32.add
0011    i32.const -65536
0012    i32.and
0013    local.tee 1
0014    i32.const 32768
0015    i32.or
0016    local.get 1
0017    local.get 1
0018    local.get 2
0019    i32.lt_s
0020    select
0021    local.get 3
0022    i32.load offset=28
0023    i32.shl
0024    local.tee 2
0025    i32.store offset=12
0026    local.get 3
0027    i32.load offset=32
0028    local.set 1
0029    block  ;; label = @1
1 ------------------------------------------------------------
0030      local.get 2
0031      i32.const 134217728
0032      i32.ge_u
0033      if  ;; label = @2
2 ------------------------------------------------------------
0034        block  ;; label = @3
3 ------------------------------------------------------------
0035          local.get 1
0036          i32.const 0
0037          i32.lt_s
0038          br_if 0 (;@3;)
4 ------------------------------------------------------------
0039          local.get 3
0040          i32.load offset=24
0041          if  ;; label = @4
5 ------------------------------------------------------------
0042            loop  ;; label = @5
6 ------------------------------------------------------------
0043              block  ;; label = @6
7 ------------------------------------------------------------
0044                local.get 0
0045                i32.load offset=332
0046                i32.load offset=44
0047                br_if 0 (;@6;)
8 ------------------------------------------------------------
0048                local.get 0
0049                i32.load offset=24
0050                local.tee 1
0051                local.get 1
0052                i32.load
0053                local.tee 2
0054                i32.const 1
0055                i32.add
0056                i32.store
0057                local.get 2
0058                i32.const 0
0059                i32.store8
0060                local.get 1
0061                local.get 1
0062                i32.load offset=4
0063                i32.const -1
0064                i32.add
0065                local.tee 2
0066                i32.store offset=4
0067                local.get 2
0068                br_if 0 (;@6;)
9 ------------------------------------------------------------
0069                local.get 0
0070                local.get 1
0071                i32.load offset=12
0072                call_indirect (type 1)
0073                br_if 0 (;@6;)
10 ------------------------------------------------------------
0074                local.get 0
0075                i32.load
0076                local.tee 1
0077                i32.const 24
0078                i32.store offset=20
0079                local.get 0
0080                local.get 1
0081                i32.load
0082                call_indirect (type 0)
0083              end
11 ------------------------------------------------------------
0084              local.get 3
0085              local.get 3
0086              i32.load offset=24
0087              i32.const -1
0088              i32.add
0089              local.tee 1
0090              i32.store offset=24
0091              local.get 1
0092              br_if 0 (;@5;)
12 ------------------------------------------------------------
0093            end
13 ------------------------------------------------------------
0094          end
14 ------------------------------------------------------------
0095          block  ;; label = @4
15 ------------------------------------------------------------
0096            local.get 0
0097            i32.load offset=332
0098            i32.load offset=44
0099            br_if 0 (;@4;)
16 ------------------------------------------------------------
0100            local.get 3
0101            i32.load8_u offset=32
0102            local.set 2
0103            local.get 0
0104            i32.load offset=24
0105            local.tee 1
0106            local.get 1
0107            i32.load
0108            local.tee 4
0109            i32.const 1
0110            i32.add
0111            i32.store
0112            local.get 4
0113            local.get 2
0114            i32.const 1
0115            i32.add
0116            i32.store8
0117            local.get 1
0118            local.get 1
0119            i32.load offset=4
0120            i32.const -1
0121            i32.add
0122            local.tee 2
0123            i32.store offset=4
0124            local.get 2
0125            br_if 0 (;@4;)
17 ------------------------------------------------------------
0126            local.get 0
0127            local.get 1
0128            i32.load offset=12
0129            call_indirect (type 1)
0130            br_if 0 (;@4;)
18 ------------------------------------------------------------
0131            local.get 0
0132            i32.load
0133            local.tee 1
0134            i32.const 24
0135            i32.store offset=20
0136            local.get 0
0137            local.get 1
0138            i32.load
0139            call_indirect (type 0)
0140          end
19 ------------------------------------------------------------
0141          local.get 3
0142          i32.load offset=32
0143          i32.const 254
0144          i32.ne
0145          br_if 0 (;@3;)
20 ------------------------------------------------------------
0146          local.get 0
0147          i32.load offset=332
0148          i32.load offset=44
0149          br_if 0 (;@3;)
21 ------------------------------------------------------------
0150          local.get 0
0151          i32.load offset=24
0152          local.tee 1
0153          local.get 1
0154          i32.load
0155          local.tee 2
0156          i32.const 1
0157          i32.add
0158          i32.store
0159          local.get 2
0160          i32.const 0
0161          i32.store8
0162          local.get 1
0163          local.get 1
0164          i32.load offset=4
0165          i32.const -1
0166          i32.add
0167          local.tee 2
0168          i32.store offset=4
0169          local.get 2
0170          br_if 0 (;@3;)
22 ------------------------------------------------------------
0171          local.get 0
0172          local.get 1
0173          i32.load offset=12
0174          call_indirect (type 1)
0175          br_if 0 (;@3;)
23 ------------------------------------------------------------
0176          local.get 0
0177          i32.load
0178          local.tee 1
0179          i32.const 24
0180          i32.store offset=20
0181          local.get 0
0182          local.get 1
0183          i32.load
0184          call_indirect (type 0)
0185        end
24 ------------------------------------------------------------
0186        local.get 3
0187        i32.load offset=20
0188        local.set 1
0189        local.get 3
0190        i32.const 0
0191        i32.store offset=20
0192        local.get 3
0193        local.get 1
0194        local.get 3
0195        i32.load offset=24
0196        i32.add
0197        i32.store offset=24
0198        br 1 (;@1;)
25 ------------------------------------------------------------
0199      end
26 ------------------------------------------------------------
0200      block  ;; label = @2
27 ------------------------------------------------------------
0201        local.get 1
0202        i32.eqz
0203        if  ;; label = @3
28 ------------------------------------------------------------
0204          local.get 3
0205          local.get 3
0206          i32.load offset=24
0207          i32.const 1
0208          i32.add
0209          i32.store offset=24
0210          br 1 (;@2;)
29 ------------------------------------------------------------
0211        end
30 ------------------------------------------------------------
0212        local.get 1
0213        i32.const 0
0214        i32.lt_s
0215        br_if 0 (;@2;)
31 ------------------------------------------------------------
0216        local.get 3
0217        i32.load offset=24
0218        if  ;; label = @3
32 ------------------------------------------------------------
0219          loop  ;; label = @4
33 ------------------------------------------------------------
0220            block  ;; label = @5
34 ------------------------------------------------------------
0221              local.get 0
0222              i32.load offset=332
0223              i32.load offset=44
0224              br_if 0 (;@5;)
35 ------------------------------------------------------------
0225              local.get 0
0226              i32.load offset=24
0227              local.tee 1
0228              local.get 1
0229              i32.load
0230              local.tee 2
0231              i32.const 1
0232              i32.add
0233              i32.store
0234              local.get 2
0235              i32.const 0
0236              i32.store8
0237              local.get 1
0238              local.get 1
0239              i32.load offset=4
0240              i32.const -1
0241              i32.add
0242              local.tee 2
0243              i32.store offset=4
0244              local.get 2
0245              br_if 0 (;@5;)
36 ------------------------------------------------------------
0246              local.get 0
0247              local.get 1
0248              i32.load offset=12
0249              call_indirect (type 1)
0250              br_if 0 (;@5;)
37 ------------------------------------------------------------
0251              local.get 0
0252              i32.load
0253              local.tee 1
0254              i32.const 24
0255              i32.store offset=20
0256              local.get 0
0257              local.get 1
0258              i32.load
0259              call_indirect (type 0)
0260            end
38 ------------------------------------------------------------
0261            local.get 3
0262            local.get 3
0263            i32.load offset=24
0264            i32.const -1
0265            i32.add
0266            local.tee 1
0267            i32.store offset=24
0268            local.get 1
0269            br_if 0 (;@4;)
39 ------------------------------------------------------------
0270          end
40 ------------------------------------------------------------
0271        end
41 ------------------------------------------------------------
0272        local.get 0
0273        i32.load offset=332
0274        i32.load offset=44
0275        br_if 0 (;@2;)
42 ------------------------------------------------------------
0276        local.get 3
0277        i32.load offset=32
0278        local.set 2
0279        local.get 0
0280        i32.load offset=24
0281        local.tee 1
0282        local.get 1
0283        i32.load
0284        local.tee 4
0285        i32.const 1
0286        i32.add
0287        i32.store
0288        local.get 4
0289        local.get 2
0290        i32.store8
0291        local.get 1
0292        local.get 1
0293        i32.load offset=4
0294        i32.const -1
0295        i32.add
0296        local.tee 2
0297        i32.store offset=4
0298        local.get 2
0299        br_if 0 (;@2;)
43 ------------------------------------------------------------
0300        local.get 0
0301        local.get 1
0302        i32.load offset=12
0303        call_indirect (type 1)
0304        br_if 0 (;@2;)
44 ------------------------------------------------------------
0305        local.get 0
0306        i32.load
0307        local.tee 1
0308        i32.const 24
0309        i32.store offset=20
0310        local.get 0
0311        local.get 1
0312        i32.load
0313        call_indirect (type 0)
0314      end
45 ------------------------------------------------------------
0315      local.get 3
0316      i32.load offset=20
0317      i32.eqz
0318      br_if 0 (;@1;)
46 ------------------------------------------------------------
0319      local.get 3
0320      i32.load offset=24
0321      if  ;; label = @2
47 ------------------------------------------------------------
0322        loop  ;; label = @3
48 ------------------------------------------------------------
0323          block  ;; label = @4
49 ------------------------------------------------------------
0324            local.get 0
0325            i32.load offset=332
0326            i32.load offset=44
0327            br_if 0 (;@4;)
50 ------------------------------------------------------------
0328            local.get 0
0329            i32.load offset=24
0330            local.tee 1
0331            local.get 1
0332            i32.load
0333            local.tee 2
0334            i32.const 1
0335            i32.add
0336            i32.store
0337            local.get 2
0338            i32.const 0
0339            i32.store8
0340            local.get 1
0341            local.get 1
0342            i32.load offset=4
0343            i32.const -1
0344            i32.add
0345            local.tee 2
0346            i32.store offset=4
0347            local.get 2
0348            br_if 0 (;@4;)
51 ------------------------------------------------------------
0349            local.get 0
0350            local.get 1
0351            i32.load offset=12
0352            call_indirect (type 1)
0353            br_if 0 (;@4;)
52 ------------------------------------------------------------
0354            local.get 0
0355            i32.load
0356            local.tee 1
0357            i32.const 24
0358            i32.store offset=20
0359            local.get 0
0360            local.get 1
0361            i32.load
0362            call_indirect (type 0)
0363          end
53 ------------------------------------------------------------
0364          local.get 3
0365          local.get 3
0366          i32.load offset=24
0367          i32.const -1
0368          i32.add
0369          local.tee 1
0370          i32.store offset=24
0371          local.get 1
0372          br_if 0 (;@3;)
54 ------------------------------------------------------------
0373        end
55 ------------------------------------------------------------
0374      end
56 ------------------------------------------------------------
0375      loop  ;; label = @2
57 ------------------------------------------------------------
0376        block  ;; label = @3
58 ------------------------------------------------------------
0377          local.get 0
0378          i32.load offset=332
0379          i32.load offset=44
0380          br_if 0 (;@3;)
59 ------------------------------------------------------------
0381          local.get 0
0382          i32.load offset=24
0383          local.tee 1
0384          local.get 1
0385          i32.load
0386          local.tee 2
0387          i32.const 1
0388          i32.add
0389          i32.store
0390          local.get 2
0391          i32.const 255
0392          i32.store8
0393          local.get 1
0394          local.get 1
0395          i32.load offset=4
0396          i32.const -1
0397          i32.add
0398          local.tee 2
0399          i32.store offset=4
0400          local.get 2
0401          br_if 0 (;@3;)
60 ------------------------------------------------------------
0402          local.get 0
0403          local.get 1
0404          i32.load offset=12
0405          call_indirect (type 1)
0406          br_if 0 (;@3;)
61 ------------------------------------------------------------
0407          local.get 0
0408          i32.load
0409          local.tee 1
0410          i32.const 24
0411          i32.store offset=20
0412          local.get 0
0413          local.get 1
0414          i32.load
0415          call_indirect (type 0)
0416        end
62 ------------------------------------------------------------
0417        block  ;; label = @3
63 ------------------------------------------------------------
0418          local.get 0
0419          i32.load offset=332
0420          i32.load offset=44
0421          br_if 0 (;@3;)
64 ------------------------------------------------------------
0422          local.get 0
0423          i32.load offset=24
0424          local.tee 1
0425          local.get 1
0426          i32.load
0427          local.tee 2
0428          i32.const 1
0429          i32.add
0430          i32.store
0431          local.get 2
0432          i32.const 0
0433          i32.store8
0434          local.get 1
0435          local.get 1
0436          i32.load offset=4
0437          i32.const -1
0438          i32.add
0439          local.tee 2
0440          i32.store offset=4
0441          local.get 2
0442          br_if 0 (;@3;)
65 ------------------------------------------------------------
0443          local.get 0
0444          local.get 1
0445          i32.load offset=12
0446          call_indirect (type 1)
0447          br_if 0 (;@3;)
66 ------------------------------------------------------------
0448          local.get 0
0449          i32.load
0450          local.tee 1
0451          i32.const 24
0452          i32.store offset=20
0453          local.get 0
0454          local.get 1
0455          i32.load
0456          call_indirect (type 0)
0457        end
67 ------------------------------------------------------------
0458        local.get 3
0459        local.get 3
0460        i32.load offset=20
0461        i32.const -1
0462        i32.add
0463        local.tee 1
0464        i32.store offset=20
0465        local.get 1
0466        br_if 0 (;@2;)
68 ------------------------------------------------------------
0467      end
69 ------------------------------------------------------------
0468    end
70 ------------------------------------------------------------
0469    block  ;; label = @1
71 ------------------------------------------------------------
0470      local.get 3
0471      i32.load offset=12
0472      i32.const 134215680
0473      i32.and
0474      i32.eqz
0475      br_if 0 (;@1;)
72 ------------------------------------------------------------
0476      local.get 3
0477      i32.load offset=24
0478      if  ;; label = @2
73 ------------------------------------------------------------
0479        loop  ;; label = @3
74 ------------------------------------------------------------
0480          block  ;; label = @4
75 ------------------------------------------------------------
0481            local.get 0
0482            i32.load offset=332
0483            i32.load offset=44
0484            br_if 0 (;@4;)
76 ------------------------------------------------------------
0485            local.get 0
0486            i32.load offset=24
0487            local.tee 1
0488            local.get 1
0489            i32.load
0490            local.tee 2
0491            i32.const 1
0492            i32.add
0493            i32.store
0494            local.get 2
0495            i32.const 0
0496            i32.store8
0497            local.get 1
0498            local.get 1
0499            i32.load offset=4
0500            i32.const -1
0501            i32.add
0502            local.tee 2
0503            i32.store offset=4
0504            local.get 2
0505            br_if 0 (;@4;)
77 ------------------------------------------------------------
0506            local.get 0
0507            local.get 1
0508            i32.load offset=12
0509            call_indirect (type 1)
0510            br_if 0 (;@4;)
78 ------------------------------------------------------------
0511            local.get 0
0512            i32.load
0513            local.tee 1
0514            i32.const 24
0515            i32.store offset=20
0516            local.get 0
0517            local.get 1
0518            i32.load
0519            call_indirect (type 0)
0520          end
79 ------------------------------------------------------------
0521          local.get 3
0522          local.get 3
0523          i32.load offset=24
0524          i32.const -1
0525          i32.add
0526          local.tee 1
0527          i32.store offset=24
0528          local.get 1
0529          br_if 0 (;@3;)
80 ------------------------------------------------------------
0530        end
81 ------------------------------------------------------------
0531      end
82 ------------------------------------------------------------
0532      block  ;; label = @2
83 ------------------------------------------------------------
0533        local.get 0
0534        i32.load offset=332
0535        i32.load offset=44
0536        br_if 0 (;@2;)
84 ------------------------------------------------------------
0537        local.get 3
0538        i32.load offset=12
0539        local.set 2
0540        local.get 0
0541        i32.load offset=24
0542        local.tee 1
0543        local.get 1
0544        i32.load
0545        local.tee 4
0546        i32.const 1
0547        i32.add
0548        i32.store
0549        local.get 4
0550        local.get 2
0551        i32.const 19
0552        i32.shr_u
0553        i32.store8
0554        local.get 1
0555        local.get 1
0556        i32.load offset=4
0557        i32.const -1
0558        i32.add
0559        local.tee 2
0560        i32.store offset=4
0561        local.get 2
0562        br_if 0 (;@2;)
85 ------------------------------------------------------------
0563        local.get 0
0564        local.get 1
0565        i32.load offset=12
0566        call_indirect (type 1)
0567        br_if 0 (;@2;)
86 ------------------------------------------------------------
0568        local.get 0
0569        i32.load
0570        local.tee 1
0571        i32.const 24
0572        i32.store offset=20
0573        local.get 0
0574        local.get 1
0575        i32.load
0576        call_indirect (type 0)
0577      end
87 ------------------------------------------------------------
0578      block  ;; label = @2
88 ------------------------------------------------------------
0579        local.get 3
0580        i32.load offset=12
0581        i32.const 133693440
0582        i32.and
0583        i32.const 133693440
0584        i32.ne
0585        br_if 0 (;@2;)
89 ------------------------------------------------------------
0586        local.get 0
0587        i32.load offset=332
0588        i32.load offset=44
0589        br_if 0 (;@2;)
90 ------------------------------------------------------------
0590        local.get 0
0591        i32.load offset=24
0592        local.tee 1
0593        local.get 1
0594        i32.load
0595        local.tee 2
0596        i32.const 1
0597        i32.add
0598        i32.store
0599        local.get 2
0600        i32.const 0
0601        i32.store8
0602        local.get 1
0603        local.get 1
0604        i32.load offset=4
0605        i32.const -1
0606        i32.add
0607        local.tee 2
0608        i32.store offset=4
0609        local.get 2
0610        br_if 0 (;@2;)
91 ------------------------------------------------------------
0611        local.get 0
0612        local.get 1
0613        i32.load offset=12
0614        call_indirect (type 1)
0615        br_if 0 (;@2;)
92 ------------------------------------------------------------
0616        local.get 0
0617        i32.load
0618        local.tee 1
0619        i32.const 24
0620        i32.store offset=20
0621        local.get 0
0622        local.get 1
0623        i32.load
0624        call_indirect (type 0)
0625      end
93 ------------------------------------------------------------
0626      local.get 3
0627      i32.load offset=12
0628      local.tee 2
0629      i32.const 522240
0630      i32.and
0631      i32.eqz
0632      br_if 0 (;@1;)
94 ------------------------------------------------------------
0633      block  ;; label = @2
95 ------------------------------------------------------------
0634        local.get 0
0635        i32.load offset=332
0636        i32.load offset=44
0637        br_if 0 (;@2;)
96 ------------------------------------------------------------
0638        local.get 0
0639        i32.load offset=24
0640        local.tee 1
0641        local.get 1
0642        i32.load
0643        local.tee 4
0644        i32.const 1
0645        i32.add
0646        i32.store
0647        local.get 4
0648        local.get 2
0649        i32.const 11
0650        i32.shr_u
0651        i32.store8
0652        local.get 1
0653        local.get 1
0654        i32.load offset=4
0655        i32.const -1
0656        i32.add
0657        local.tee 2
0658        i32.store offset=4
0659        local.get 2
0660        br_if 0 (;@2;)
97 ------------------------------------------------------------
0661        local.get 0
0662        local.get 1
0663        i32.load offset=12
0664        call_indirect (type 1)
0665        br_if 0 (;@2;)
98 ------------------------------------------------------------
0666        local.get 0
0667        i32.load
0668        local.tee 1
0669        i32.const 24
0670        i32.store offset=20
0671        local.get 0
0672        local.get 1
0673        i32.load
0674        call_indirect (type 0)
0675      end
99 ------------------------------------------------------------
0676      local.get 3
0677      i32.load offset=12
0678      i32.const 522240
0679      i32.and
0680      i32.const 522240
0681      i32.ne
0682      br_if 0 (;@1;)
100 ------------------------------------------------------------
0683      local.get 0
0684      i32.load offset=332
0685      i32.load offset=44
0686      br_if 0 (;@1;)
101 ------------------------------------------------------------
0687      local.get 0
0688      i32.load offset=24
0689      local.tee 3
0690      local.get 3
0691      i32.load
0692      local.tee 1
0693      i32.const 1
0694      i32.add
0695      i32.store
0696      local.get 1
0697      i32.const 0
0698      i32.store8
0699      local.get 3
0700      local.get 3
0701      i32.load offset=4
0702      i32.const -1
0703      i32.add
0704      local.tee 1
0705      i32.store offset=4
0706      local.get 1
0707      br_if 0 (;@1;)
102 ------------------------------------------------------------
0708      local.get 0
0709      local.get 3
0710      i32.load offset=12
0711      call_indirect (type 1)
0712      br_if 0 (;@1;)
103 ------------------------------------------------------------
0713      local.get 0
0714      i32.load
0715      local.tee 3
0716      i32.const 24
0717      i32.store offset=20
0718      local.get 0
0719      local.get 3
0720      i32.load
0721      call_indirect (type 0)
0722    end
104 ------------------------------------------------------------)
