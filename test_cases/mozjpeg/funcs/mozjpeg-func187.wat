  (func (;187;) (type 0) (param i32)
    (local i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load
0002    local.set 2
0003    local.get 0
0004    i32.load
0005    local.tee 1
0006    local.get 1
0007    i32.load
0008    local.tee 3
0009    i32.const 1
0010    i32.add
0011    i32.store
0012    local.get 3
0013    i32.const 255
0014    i32.store8
0015    local.get 1
0016    local.get 1
0017    i32.load
0018    i32.const -1
0019    i32.add
0020    local.tee 3
0021    i32.store
0022    block  ;; label = @1
1 ------------------------------------------------------------
0023      local.get 3
0024      br_if 0 (;@1;)
2 ------------------------------------------------------------
0025      local.get 0
0026      local.get 1
0027      i32.load
0028      call_indirect (type 1)
0029      br_if 0 (;@1;)
3 ------------------------------------------------------------
0030      local.get 0
0031      i32.load
0032      local.tee 1
0033      i32.const 24
0034      i32.store
0035      local.get 0
0036      local.get 1
0037      i32.load
0038      call_indirect (type 0)
0039    end
4 ------------------------------------------------------------
0040    local.get 0
0041    i32.load
0042    local.tee 1
0043    local.get 1
0044    i32.load
0045    local.tee 3
0046    i32.const 1
0047    i32.add
0048    i32.store
0049    local.get 3
0050    i32.const 216
0051    i32.store8
0052    local.get 1
0053    local.get 1
0054    i32.load
0055    i32.const -1
0056    i32.add
0057    local.tee 3
0058    i32.store
0059    block  ;; label = @1
5 ------------------------------------------------------------
0060      local.get 3
0061      br_if 0 (;@1;)
6 ------------------------------------------------------------
0062      local.get 0
0063      local.get 1
0064      i32.load
0065      call_indirect (type 1)
0066      br_if 0 (;@1;)
7 ------------------------------------------------------------
0067      local.get 0
0068      i32.load
0069      local.tee 1
0070      i32.const 24
0071      i32.store
0072      local.get 0
0073      local.get 1
0074      i32.load
0075      call_indirect (type 0)
0076    end
8 ------------------------------------------------------------
0077    local.get 2
0078    i32.const 0
0079    i32.store
0080    block  ;; label = @1
9 ------------------------------------------------------------
0081      local.get 0
0082      i32.load
0083      i32.eqz
0084      br_if 0 (;@1;)
10 ------------------------------------------------------------
0085      local.get 0
0086      i32.load
0087      local.tee 1
0088      local.get 1
0089      i32.load
0090      local.tee 2
0091      i32.const 1
0092      i32.add
0093      i32.store
0094      local.get 2
0095      i32.const 255
0096      i32.store8
0097      local.get 1
0098      local.get 1
0099      i32.load
0100      i32.const -1
0101      i32.add
0102      local.tee 2
0103      i32.store
0104      block  ;; label = @2
11 ------------------------------------------------------------
0105        local.get 2
0106        br_if 0 (;@2;)
12 ------------------------------------------------------------
0107        local.get 0
0108        local.get 1
0109        i32.load
0110        call_indirect (type 1)
0111        br_if 0 (;@2;)
13 ------------------------------------------------------------
0112        local.get 0
0113        i32.load
0114        local.tee 1
0115        i32.const 24
0116        i32.store
0117        local.get 0
0118        local.get 1
0119        i32.load
0120        call_indirect (type 0)
0121      end
14 ------------------------------------------------------------
0122      local.get 0
0123      i32.load
0124      local.tee 1
0125      local.get 1
0126      i32.load
0127      local.tee 2
0128      i32.const 1
0129      i32.add
0130      i32.store
0131      local.get 2
0132      i32.const 224
0133      i32.store8
0134      local.get 1
0135      local.get 1
0136      i32.load
0137      i32.const -1
0138      i32.add
0139      local.tee 2
0140      i32.store
0141      block  ;; label = @2
15 ------------------------------------------------------------
0142        local.get 2
0143        br_if 0 (;@2;)
16 ------------------------------------------------------------
0144        local.get 0
0145        local.get 1
0146        i32.load
0147        call_indirect (type 1)
0148        br_if 0 (;@2;)
17 ------------------------------------------------------------
0149        local.get 0
0150        i32.load
0151        local.tee 1
0152        i32.const 24
0153        i32.store
0154        local.get 0
0155        local.get 1
0156        i32.load
0157        call_indirect (type 0)
0158      end
18 ------------------------------------------------------------
0159      local.get 0
0160      i32.load
0161      local.tee 1
0162      local.get 1
0163      i32.load
0164      local.tee 2
0165      i32.const 1
0166      i32.add
0167      i32.store
0168      local.get 2
0169      i32.const 0
0170      i32.store8
0171      local.get 1
0172      local.get 1
0173      i32.load
0174      i32.const -1
0175      i32.add
0176      local.tee 2
0177      i32.store
0178      block  ;; label = @2
19 ------------------------------------------------------------
0179        local.get 2
0180        br_if 0 (;@2;)
20 ------------------------------------------------------------
0181        local.get 0
0182        local.get 1
0183        i32.load
0184        call_indirect (type 1)
0185        br_if 0 (;@2;)
21 ------------------------------------------------------------
0186        local.get 0
0187        i32.load
0188        local.tee 1
0189        i32.const 24
0190        i32.store
0191        local.get 0
0192        local.get 1
0193        i32.load
0194        call_indirect (type 0)
0195      end
22 ------------------------------------------------------------
0196      local.get 0
0197      i32.load
0198      local.tee 1
0199      local.get 1
0200      i32.load
0201      local.tee 2
0202      i32.const 1
0203      i32.add
0204      i32.store
0205      local.get 2
0206      i32.const 16
0207      i32.store8
0208      local.get 1
0209      local.get 1
0210      i32.load
0211      i32.const -1
0212      i32.add
0213      local.tee 2
0214      i32.store
0215      block  ;; label = @2
23 ------------------------------------------------------------
0216        local.get 2
0217        br_if 0 (;@2;)
24 ------------------------------------------------------------
0218        local.get 0
0219        local.get 1
0220        i32.load
0221        call_indirect (type 1)
0222        br_if 0 (;@2;)
25 ------------------------------------------------------------
0223        local.get 0
0224        i32.load
0225        local.tee 1
0226        i32.const 24
0227        i32.store
0228        local.get 0
0229        local.get 1
0230        i32.load
0231        call_indirect (type 0)
0232      end
26 ------------------------------------------------------------
0233      local.get 0
0234      i32.load
0235      local.tee 1
0236      local.get 1
0237      i32.load
0238      local.tee 2
0239      i32.const 1
0240      i32.add
0241      i32.store
0242      local.get 2
0243      i32.const 74
0244      i32.store8
0245      local.get 1
0246      local.get 1
0247      i32.load
0248      i32.const -1
0249      i32.add
0250      local.tee 2
0251      i32.store
0252      block  ;; label = @2
27 ------------------------------------------------------------
0253        local.get 2
0254        br_if 0 (;@2;)
28 ------------------------------------------------------------
0255        local.get 0
0256        local.get 1
0257        i32.load
0258        call_indirect (type 1)
0259        br_if 0 (;@2;)
29 ------------------------------------------------------------
0260        local.get 0
0261        i32.load
0262        local.tee 1
0263        i32.const 24
0264        i32.store
0265        local.get 0
0266        local.get 1
0267        i32.load
0268        call_indirect (type 0)
0269      end
30 ------------------------------------------------------------
0270      local.get 0
0271      i32.load
0272      local.tee 1
0273      local.get 1
0274      i32.load
0275      local.tee 2
0276      i32.const 1
0277      i32.add
0278      i32.store
0279      local.get 2
0280      i32.const 70
0281      i32.store8
0282      local.get 1
0283      local.get 1
0284      i32.load
0285      i32.const -1
0286      i32.add
0287      local.tee 2
0288      i32.store
0289      block  ;; label = @2
31 ------------------------------------------------------------
0290        local.get 2
0291        br_if 0 (;@2;)
32 ------------------------------------------------------------
0292        local.get 0
0293        local.get 1
0294        i32.load
0295        call_indirect (type 1)
0296        br_if 0 (;@2;)
33 ------------------------------------------------------------
0297        local.get 0
0298        i32.load
0299        local.tee 1
0300        i32.const 24
0301        i32.store
0302        local.get 0
0303        local.get 1
0304        i32.load
0305        call_indirect (type 0)
0306      end
34 ------------------------------------------------------------
0307      local.get 0
0308      i32.load
0309      local.tee 1
0310      local.get 1
0311      i32.load
0312      local.tee 2
0313      i32.const 1
0314      i32.add
0315      i32.store
0316      local.get 2
0317      i32.const 73
0318      i32.store8
0319      local.get 1
0320      local.get 1
0321      i32.load
0322      i32.const -1
0323      i32.add
0324      local.tee 2
0325      i32.store
0326      block  ;; label = @2
35 ------------------------------------------------------------
0327        local.get 2
0328        br_if 0 (;@2;)
36 ------------------------------------------------------------
0329        local.get 0
0330        local.get 1
0331        i32.load
0332        call_indirect (type 1)
0333        br_if 0 (;@2;)
37 ------------------------------------------------------------
0334        local.get 0
0335        i32.load
0336        local.tee 1
0337        i32.const 24
0338        i32.store
0339        local.get 0
0340        local.get 1
0341        i32.load
0342        call_indirect (type 0)
0343      end
38 ------------------------------------------------------------
0344      local.get 0
0345      i32.load
0346      local.tee 1
0347      local.get 1
0348      i32.load
0349      local.tee 2
0350      i32.const 1
0351      i32.add
0352      i32.store
0353      local.get 2
0354      i32.const 70
0355      i32.store8
0356      local.get 1
0357      local.get 1
0358      i32.load
0359      i32.const -1
0360      i32.add
0361      local.tee 2
0362      i32.store
0363      block  ;; label = @2
39 ------------------------------------------------------------
0364        local.get 2
0365        br_if 0 (;@2;)
40 ------------------------------------------------------------
0366        local.get 0
0367        local.get 1
0368        i32.load
0369        call_indirect (type 1)
0370        br_if 0 (;@2;)
41 ------------------------------------------------------------
0371        local.get 0
0372        i32.load
0373        local.tee 1
0374        i32.const 24
0375        i32.store
0376        local.get 0
0377        local.get 1
0378        i32.load
0379        call_indirect (type 0)
0380      end
42 ------------------------------------------------------------
0381      local.get 0
0382      i32.load
0383      local.tee 1
0384      local.get 1
0385      i32.load
0386      local.tee 2
0387      i32.const 1
0388      i32.add
0389      i32.store
0390      local.get 2
0391      i32.const 0
0392      i32.store8
0393      local.get 1
0394      local.get 1
0395      i32.load
0396      i32.const -1
0397      i32.add
0398      local.tee 2
0399      i32.store
0400      block  ;; label = @2
43 ------------------------------------------------------------
0401        local.get 2
0402        br_if 0 (;@2;)
44 ------------------------------------------------------------
0403        local.get 0
0404        local.get 1
0405        i32.load
0406        call_indirect (type 1)
0407        br_if 0 (;@2;)
45 ------------------------------------------------------------
0408        local.get 0
0409        i32.load
0410        local.tee 1
0411        i32.const 24
0412        i32.store
0413        local.get 0
0414        local.get 1
0415        i32.load
0416        call_indirect (type 0)
0417      end
46 ------------------------------------------------------------
0418      local.get 0
0419      i32.load8_u
0420      local.set 2
0421      local.get 0
0422      i32.load
0423      local.tee 1
0424      local.get 1
0425      i32.load
0426      local.tee 3
0427      i32.const 1
0428      i32.add
0429      i32.store
0430      local.get 3
0431      local.get 2
0432      i32.store8
0433      local.get 1
0434      local.get 1
0435      i32.load
0436      i32.const -1
0437      i32.add
0438      local.tee 2
0439      i32.store
0440      block  ;; label = @2
47 ------------------------------------------------------------
0441        local.get 2
0442        br_if 0 (;@2;)
48 ------------------------------------------------------------
0443        local.get 0
0444        local.get 1
0445        i32.load
0446        call_indirect (type 1)
0447        br_if 0 (;@2;)
49 ------------------------------------------------------------
0448        local.get 0
0449        i32.load
0450        local.tee 1
0451        i32.const 24
0452        i32.store
0453        local.get 0
0454        local.get 1
0455        i32.load
0456        call_indirect (type 0)
0457      end
50 ------------------------------------------------------------
0458      local.get 0
0459      i32.load8_u
0460      local.set 2
0461      local.get 0
0462      i32.load
0463      local.tee 1
0464      local.get 1
0465      i32.load
0466      local.tee 3
0467      i32.const 1
0468      i32.add
0469      i32.store
0470      local.get 3
0471      local.get 2
0472      i32.store8
0473      local.get 1
0474      local.get 1
0475      i32.load
0476      i32.const -1
0477      i32.add
0478      local.tee 2
0479      i32.store
0480      block  ;; label = @2
51 ------------------------------------------------------------
0481        local.get 2
0482        br_if 0 (;@2;)
52 ------------------------------------------------------------
0483        local.get 0
0484        local.get 1
0485        i32.load
0486        call_indirect (type 1)
0487        br_if 0 (;@2;)
53 ------------------------------------------------------------
0488        local.get 0
0489        i32.load
0490        local.tee 1
0491        i32.const 24
0492        i32.store
0493        local.get 0
0494        local.get 1
0495        i32.load
0496        call_indirect (type 0)
0497      end
54 ------------------------------------------------------------
0498      local.get 0
0499      i32.load8_u
0500      local.set 2
0501      local.get 0
0502      i32.load
0503      local.tee 1
0504      local.get 1
0505      i32.load
0506      local.tee 3
0507      i32.const 1
0508      i32.add
0509      i32.store
0510      local.get 3
0511      local.get 2
0512      i32.store8
0513      local.get 1
0514      local.get 1
0515      i32.load
0516      i32.const -1
0517      i32.add
0518      local.tee 2
0519      i32.store
0520      block  ;; label = @2
55 ------------------------------------------------------------
0521        local.get 2
0522        br_if 0 (;@2;)
56 ------------------------------------------------------------
0523        local.get 0
0524        local.get 1
0525        i32.load
0526        call_indirect (type 1)
0527        br_if 0 (;@2;)
57 ------------------------------------------------------------
0528        local.get 0
0529        i32.load
0530        local.tee 1
0531        i32.const 24
0532        i32.store
0533        local.get 0
0534        local.get 1
0535        i32.load
0536        call_indirect (type 0)
0537      end
58 ------------------------------------------------------------
0538      local.get 0
0539      i32.load16_u
0540      local.set 2
0541      local.get 0
0542      i32.load
0543      local.tee 1
0544      local.get 1
0545      i32.load
0546      local.tee 3
0547      i32.const 1
0548      i32.add
0549      i32.store
0550      local.get 3
0551      local.get 2
0552      i32.const 8
0553      i32.shr_u
0554      i32.store8
0555      local.get 1
0556      local.get 1
0557      i32.load
0558      i32.const -1
0559      i32.add
0560      local.tee 3
0561      i32.store
0562      block  ;; label = @2
59 ------------------------------------------------------------
0563        local.get 3
0564        br_if 0 (;@2;)
60 ------------------------------------------------------------
0565        local.get 0
0566        local.get 1
0567        i32.load
0568        call_indirect (type 1)
0569        br_if 0 (;@2;)
61 ------------------------------------------------------------
0570        local.get 0
0571        i32.load
0572        local.tee 1
0573        i32.const 24
0574        i32.store
0575        local.get 0
0576        local.get 1
0577        i32.load
0578        call_indirect (type 0)
0579      end
62 ------------------------------------------------------------
0580      local.get 0
0581      i32.load
0582      local.tee 1
0583      local.get 1
0584      i32.load
0585      local.tee 3
0586      i32.const 1
0587      i32.add
0588      i32.store
0589      local.get 3
0590      local.get 2
0591      i32.store8
0592      local.get 1
0593      local.get 1
0594      i32.load
0595      i32.const -1
0596      i32.add
0597      local.tee 2
0598      i32.store
0599      block  ;; label = @2
63 ------------------------------------------------------------
0600        local.get 2
0601        br_if 0 (;@2;)
64 ------------------------------------------------------------
0602        local.get 0
0603        local.get 1
0604        i32.load
0605        call_indirect (type 1)
0606        br_if 0 (;@2;)
65 ------------------------------------------------------------
0607        local.get 0
0608        i32.load
0609        local.tee 1
0610        i32.const 24
0611        i32.store
0612        local.get 0
0613        local.get 1
0614        i32.load
0615        call_indirect (type 0)
0616      end
66 ------------------------------------------------------------
0617      local.get 0
0618      i32.load16_u
0619      local.set 2
0620      local.get 0
0621      i32.load
0622      local.tee 1
0623      local.get 1
0624      i32.load
0625      local.tee 3
0626      i32.const 1
0627      i32.add
0628      i32.store
0629      local.get 3
0630      local.get 2
0631      i32.const 8
0632      i32.shr_u
0633      i32.store8
0634      local.get 1
0635      local.get 1
0636      i32.load
0637      i32.const -1
0638      i32.add
0639      local.tee 3
0640      i32.store
0641      block  ;; label = @2
67 ------------------------------------------------------------
0642        local.get 3
0643        br_if 0 (;@2;)
68 ------------------------------------------------------------
0644        local.get 0
0645        local.get 1
0646        i32.load
0647        call_indirect (type 1)
0648        br_if 0 (;@2;)
69 ------------------------------------------------------------
0649        local.get 0
0650        i32.load
0651        local.tee 1
0652        i32.const 24
0653        i32.store
0654        local.get 0
0655        local.get 1
0656        i32.load
0657        call_indirect (type 0)
0658      end
70 ------------------------------------------------------------
0659      local.get 0
0660      i32.load
0661      local.tee 1
0662      local.get 1
0663      i32.load
0664      local.tee 3
0665      i32.const 1
0666      i32.add
0667      i32.store
0668      local.get 3
0669      local.get 2
0670      i32.store8
0671      local.get 1
0672      local.get 1
0673      i32.load
0674      i32.const -1
0675      i32.add
0676      local.tee 2
0677      i32.store
0678      block  ;; label = @2
71 ------------------------------------------------------------
0679        local.get 2
0680        br_if 0 (;@2;)
72 ------------------------------------------------------------
0681        local.get 0
0682        local.get 1
0683        i32.load
0684        call_indirect (type 1)
0685        br_if 0 (;@2;)
73 ------------------------------------------------------------
0686        local.get 0
0687        i32.load
0688        local.tee 1
0689        i32.const 24
0690        i32.store
0691        local.get 0
0692        local.get 1
0693        i32.load
0694        call_indirect (type 0)
0695      end
74 ------------------------------------------------------------
0696      local.get 0
0697      i32.load
0698      local.tee 1
0699      local.get 1
0700      i32.load
0701      local.tee 2
0702      i32.const 1
0703      i32.add
0704      i32.store
0705      local.get 2
0706      i32.const 0
0707      i32.store8
0708      local.get 1
0709      local.get 1
0710      i32.load
0711      i32.const -1
0712      i32.add
0713      local.tee 2
0714      i32.store
0715      block  ;; label = @2
75 ------------------------------------------------------------
0716        local.get 2
0717        br_if 0 (;@2;)
76 ------------------------------------------------------------
0718        local.get 0
0719        local.get 1
0720        i32.load
0721        call_indirect (type 1)
0722        br_if 0 (;@2;)
77 ------------------------------------------------------------
0723        local.get 0
0724        i32.load
0725        local.tee 1
0726        i32.const 24
0727        i32.store
0728        local.get 0
0729        local.get 1
0730        i32.load
0731        call_indirect (type 0)
0732      end
78 ------------------------------------------------------------
0733      local.get 0
0734      i32.load
0735      local.tee 1
0736      local.get 1
0737      i32.load
0738      local.tee 2
0739      i32.const 1
0740      i32.add
0741      i32.store
0742      local.get 2
0743      i32.const 0
0744      i32.store8
0745      local.get 1
0746      local.get 1
0747      i32.load
0748      i32.const -1
0749      i32.add
0750      local.tee 2
0751      i32.store
0752      local.get 2
0753      br_if 0 (;@1;)
79 ------------------------------------------------------------
0754      local.get 0
0755      local.get 1
0756      i32.load
0757      call_indirect (type 1)
0758      br_if 0 (;@1;)
80 ------------------------------------------------------------
0759      local.get 0
0760      i32.load
0761      local.tee 1
0762      i32.const 24
0763      i32.store
0764      local.get 0
0765      local.get 1
0766      i32.load
0767      call_indirect (type 0)
0768    end
81 ------------------------------------------------------------
0769    block  ;; label = @1
82 ------------------------------------------------------------
0770      block  ;; label = @2
83 ------------------------------------------------------------
0771        local.get 0
0772        i32.load
0773        i32.eqz
0774        br_if 0 (;@2;)
84 ------------------------------------------------------------
0775        local.get 0
0776        i32.load
0777        local.tee 1
0778        local.get 1
0779        i32.load
0780        local.tee 2
0781        i32.const 1
0782        i32.add
0783        i32.store
0784        local.get 2
0785        i32.const 255
0786        i32.store8
0787        local.get 1
0788        local.get 1
0789        i32.load
0790        i32.const -1
0791        i32.add
0792        local.tee 2
0793        i32.store
0794        block  ;; label = @3
85 ------------------------------------------------------------
0795          local.get 2
0796          br_if 0 (;@3;)
86 ------------------------------------------------------------
0797          local.get 0
0798          local.get 1
0799          i32.load
0800          call_indirect (type 1)
0801          br_if 0 (;@3;)
87 ------------------------------------------------------------
0802          local.get 0
0803          i32.load
0804          local.tee 1
0805          i32.const 24
0806          i32.store
0807          local.get 0
0808          local.get 1
0809          i32.load
0810          call_indirect (type 0)
0811        end
88 ------------------------------------------------------------
0812        local.get 0
0813        i32.load
0814        local.tee 1
0815        local.get 1
0816        i32.load
0817        local.tee 2
0818        i32.const 1
0819        i32.add
0820        i32.store
0821        local.get 2
0822        i32.const 238
0823        i32.store8
0824        local.get 1
0825        local.get 1
0826        i32.load
0827        i32.const -1
0828        i32.add
0829        local.tee 2
0830        i32.store
0831        block  ;; label = @3
89 ------------------------------------------------------------
0832          local.get 2
0833          br_if 0 (;@3;)
90 ------------------------------------------------------------
0834          local.get 0
0835          local.get 1
0836          i32.load
0837          call_indirect (type 1)
0838          br_if 0 (;@3;)
91 ------------------------------------------------------------
0839          local.get 0
0840          i32.load
0841          local.tee 1
0842          i32.const 24
0843          i32.store
0844          local.get 0
0845          local.get 1
0846          i32.load
0847          call_indirect (type 0)
0848        end
92 ------------------------------------------------------------
0849        local.get 0
0850        i32.load
0851        local.tee 1
0852        local.get 1
0853        i32.load
0854        local.tee 2
0855        i32.const 1
0856        i32.add
0857        i32.store
0858        local.get 2
0859        i32.const 0
0860        i32.store8
0861        local.get 1
0862        local.get 1
0863        i32.load
0864        i32.const -1
0865        i32.add
0866        local.tee 2
0867        i32.store
0868        block  ;; label = @3
93 ------------------------------------------------------------
0869          local.get 2
0870          br_if 0 (;@3;)
94 ------------------------------------------------------------
0871          local.get 0
0872          local.get 1
0873          i32.load
0874          call_indirect (type 1)
0875          br_if 0 (;@3;)
95 ------------------------------------------------------------
0876          local.get 0
0877          i32.load
0878          local.tee 1
0879          i32.const 24
0880          i32.store
0881          local.get 0
0882          local.get 1
0883          i32.load
0884          call_indirect (type 0)
0885        end
96 ------------------------------------------------------------
0886        local.get 0
0887        i32.load
0888        local.tee 1
0889        local.get 1
0890        i32.load
0891        local.tee 2
0892        i32.const 1
0893        i32.add
0894        i32.store
0895        local.get 2
0896        i32.const 14
0897        i32.store8
0898        local.get 1
0899        local.get 1
0900        i32.load
0901        i32.const -1
0902        i32.add
0903        local.tee 2
0904        i32.store
0905        block  ;; label = @3
97 ------------------------------------------------------------
0906          local.get 2
0907          br_if 0 (;@3;)
98 ------------------------------------------------------------
0908          local.get 0
0909          local.get 1
0910          i32.load
0911          call_indirect (type 1)
0912          br_if 0 (;@3;)
99 ------------------------------------------------------------
0913          local.get 0
0914          i32.load
0915          local.tee 1
0916          i32.const 24
0917          i32.store
0918          local.get 0
0919          local.get 1
0920          i32.load
0921          call_indirect (type 0)
0922        end
100 ------------------------------------------------------------
0923        local.get 0
0924        i32.load
0925        local.tee 1
0926        local.get 1
0927        i32.load
0928        local.tee 2
0929        i32.const 1
0930        i32.add
0931        i32.store
0932        local.get 2
0933        i32.const 65
0934        i32.store8
0935        local.get 1
0936        local.get 1
0937        i32.load
0938        i32.const -1
0939        i32.add
0940        local.tee 2
0941        i32.store
0942        block  ;; label = @3
101 ------------------------------------------------------------
0943          local.get 2
0944          br_if 0 (;@3;)
102 ------------------------------------------------------------
0945          local.get 0
0946          local.get 1
0947          i32.load
0948          call_indirect (type 1)
0949          br_if 0 (;@3;)
103 ------------------------------------------------------------
0950          local.get 0
0951          i32.load
0952          local.tee 1
0953          i32.const 24
0954          i32.store
0955          local.get 0
0956          local.get 1
0957          i32.load
0958          call_indirect (type 0)
0959        end
104 ------------------------------------------------------------
0960        local.get 0
0961        i32.load
0962        local.tee 1
0963        local.get 1
0964        i32.load
0965        local.tee 2
0966        i32.const 1
0967        i32.add
0968        i32.store
0969        local.get 2
0970        i32.const 100
0971        i32.store8
0972        local.get 1
0973        local.get 1
0974        i32.load
0975        i32.const -1
0976        i32.add
0977        local.tee 2
0978        i32.store
0979        block  ;; label = @3
105 ------------------------------------------------------------
0980          local.get 2
0981          br_if 0 (;@3;)
106 ------------------------------------------------------------
0982          local.get 0
0983          local.get 1
0984          i32.load
0985          call_indirect (type 1)
0986          br_if 0 (;@3;)
107 ------------------------------------------------------------
0987          local.get 0
0988          i32.load
0989          local.tee 1
0990          i32.const 24
0991          i32.store
0992          local.get 0
0993          local.get 1
0994          i32.load
0995          call_indirect (type 0)
0996        end
108 ------------------------------------------------------------
0997        local.get 0
0998        i32.load
0999        local.tee 1
1000        local.get 1
1001        i32.load
1002        local.tee 2
1003        i32.const 1
1004        i32.add
1005        i32.store
1006        local.get 2
1007        i32.const 111
1008        i32.store8
1009        local.get 1
1010        local.get 1
1011        i32.load
1012        i32.const -1
1013        i32.add
1014        local.tee 2
1015        i32.store
1016        block  ;; label = @3
109 ------------------------------------------------------------
1017          local.get 2
1018          br_if 0 (;@3;)
110 ------------------------------------------------------------
1019          local.get 0
1020          local.get 1
1021          i32.load
1022          call_indirect (type 1)
1023          br_if 0 (;@3;)
111 ------------------------------------------------------------
1024          local.get 0
1025          i32.load
1026          local.tee 1
1027          i32.const 24
1028          i32.store
1029          local.get 0
1030          local.get 1
1031          i32.load
1032          call_indirect (type 0)
1033        end
112 ------------------------------------------------------------
1034        local.get 0
1035        i32.load
1036        local.tee 1
1037        local.get 1
1038        i32.load
1039        local.tee 2
1040        i32.const 1
1041        i32.add
1042        i32.store
1043        local.get 2
1044        i32.const 98
1045        i32.store8
1046        local.get 1
1047        local.get 1
1048        i32.load
1049        i32.const -1
1050        i32.add
1051        local.tee 2
1052        i32.store
1053        block  ;; label = @3
113 ------------------------------------------------------------
1054          local.get 2
1055          br_if 0 (;@3;)
114 ------------------------------------------------------------
1056          local.get 0
1057          local.get 1
1058          i32.load
1059          call_indirect (type 1)
1060          br_if 0 (;@3;)
115 ------------------------------------------------------------
1061          local.get 0
1062          i32.load
1063          local.tee 1
1064          i32.const 24
1065          i32.store
1066          local.get 0
1067          local.get 1
1068          i32.load
1069          call_indirect (type 0)
1070        end
116 ------------------------------------------------------------
1071        local.get 0
1072        i32.load
1073        local.tee 1
1074        local.get 1
1075        i32.load
1076        local.tee 2
1077        i32.const 1
1078        i32.add
1079        i32.store
1080        local.get 2
1081        i32.const 101
1082        i32.store8
1083        local.get 1
1084        local.get 1
1085        i32.load
1086        i32.const -1
1087        i32.add
1088        local.tee 2
1089        i32.store
1090        block  ;; label = @3
117 ------------------------------------------------------------
1091          local.get 2
1092          br_if 0 (;@3;)
118 ------------------------------------------------------------
1093          local.get 0
1094          local.get 1
1095          i32.load
1096          call_indirect (type 1)
1097          br_if 0 (;@3;)
119 ------------------------------------------------------------
1098          local.get 0
1099          i32.load
1100          local.tee 1
1101          i32.const 24
1102          i32.store
1103          local.get 0
1104          local.get 1
1105          i32.load
1106          call_indirect (type 0)
1107        end
120 ------------------------------------------------------------
1108        local.get 0
1109        i32.load
1110        local.tee 1
1111        local.get 1
1112        i32.load
1113        local.tee 2
1114        i32.const 1
1115        i32.add
1116        i32.store
1117        local.get 2
1118        i32.const 0
1119        i32.store8
1120        local.get 1
1121        local.get 1
1122        i32.load
1123        i32.const -1
1124        i32.add
1125        local.tee 2
1126        i32.store
1127        block  ;; label = @3
121 ------------------------------------------------------------
1128          local.get 2
1129          br_if 0 (;@3;)
122 ------------------------------------------------------------
1130          local.get 0
1131          local.get 1
1132          i32.load
1133          call_indirect (type 1)
1134          br_if 0 (;@3;)
123 ------------------------------------------------------------
1135          local.get 0
1136          i32.load
1137          local.tee 1
1138          i32.const 24
1139          i32.store
1140          local.get 0
1141          local.get 1
1142          i32.load
1143          call_indirect (type 0)
1144        end
124 ------------------------------------------------------------
1145        local.get 0
1146        i32.load
1147        local.tee 1
1148        local.get 1
1149        i32.load
1150        local.tee 2
1151        i32.const 1
1152        i32.add
1153        i32.store
1154        local.get 2
1155        i32.const 100
1156        i32.store8
1157        local.get 1
1158        local.get 1
1159        i32.load
1160        i32.const -1
1161        i32.add
1162        local.tee 2
1163        i32.store
1164        block  ;; label = @3
125 ------------------------------------------------------------
1165          local.get 2
1166          br_if 0 (;@3;)
126 ------------------------------------------------------------
1167          local.get 0
1168          local.get 1
1169          i32.load
1170          call_indirect (type 1)
1171          br_if 0 (;@3;)
127 ------------------------------------------------------------
1172          local.get 0
1173          i32.load
1174          local.tee 1
1175          i32.const 24
1176          i32.store
1177          local.get 0
1178          local.get 1
1179          i32.load
1180          call_indirect (type 0)
1181        end
128 ------------------------------------------------------------
1182        local.get 0
1183        i32.load
1184        local.tee 1
1185        local.get 1
1186        i32.load
1187        local.tee 2
1188        i32.const 1
1189        i32.add
1190        i32.store
1191        local.get 2
1192        i32.const 0
1193        i32.store8
1194        local.get 1
1195        local.get 1
1196        i32.load
1197        i32.const -1
1198        i32.add
1199        local.tee 2
1200        i32.store
1201        block  ;; label = @3
129 ------------------------------------------------------------
1202          local.get 2
1203          br_if 0 (;@3;)
130 ------------------------------------------------------------
1204          local.get 0
1205          local.get 1
1206          i32.load
1207          call_indirect (type 1)
1208          br_if 0 (;@3;)
131 ------------------------------------------------------------
1209          local.get 0
1210          i32.load
1211          local.tee 1
1212          i32.const 24
1213          i32.store
1214          local.get 0
1215          local.get 1
1216          i32.load
1217          call_indirect (type 0)
1218        end
132 ------------------------------------------------------------
1219        local.get 0
1220        i32.load
1221        local.tee 1
1222        local.get 1
1223        i32.load
1224        local.tee 2
1225        i32.const 1
1226        i32.add
1227        i32.store
1228        local.get 2
1229        i32.const 0
1230        i32.store8
1231        local.get 1
1232        local.get 1
1233        i32.load
1234        i32.const -1
1235        i32.add
1236        local.tee 2
1237        i32.store
1238        block  ;; label = @3
133 ------------------------------------------------------------
1239          local.get 2
1240          br_if 0 (;@3;)
134 ------------------------------------------------------------
1241          local.get 0
1242          local.get 1
1243          i32.load
1244          call_indirect (type 1)
1245          br_if 0 (;@3;)
135 ------------------------------------------------------------
1246          local.get 0
1247          i32.load
1248          local.tee 1
1249          i32.const 24
1250          i32.store
1251          local.get 0
1252          local.get 1
1253          i32.load
1254          call_indirect (type 0)
1255        end
136 ------------------------------------------------------------
1256        local.get 0
1257        i32.load
1258        local.tee 1
1259        local.get 1
1260        i32.load
1261        local.tee 2
1262        i32.const 1
1263        i32.add
1264        i32.store
1265        local.get 2
1266        i32.const 0
1267        i32.store8
1268        local.get 1
1269        local.get 1
1270        i32.load
1271        i32.const -1
1272        i32.add
1273        local.tee 2
1274        i32.store
1275        block  ;; label = @3
137 ------------------------------------------------------------
1276          local.get 2
1277          br_if 0 (;@3;)
138 ------------------------------------------------------------
1278          local.get 0
1279          local.get 1
1280          i32.load
1281          call_indirect (type 1)
1282          br_if 0 (;@3;)
139 ------------------------------------------------------------
1283          local.get 0
1284          i32.load
1285          local.tee 1
1286          i32.const 24
1287          i32.store
1288          local.get 0
1289          local.get 1
1290          i32.load
1291          call_indirect (type 0)
1292        end
140 ------------------------------------------------------------
1293        local.get 0
1294        i32.load
1295        local.tee 1
1296        local.get 1
1297        i32.load
1298        local.tee 2
1299        i32.const 1
1300        i32.add
1301        i32.store
1302        local.get 2
1303        i32.const 0
1304        i32.store8
1305        local.get 1
1306        local.get 1
1307        i32.load
1308        i32.const -1
1309        i32.add
1310        local.tee 2
1311        i32.store
1312        block  ;; label = @3
141 ------------------------------------------------------------
1313          local.get 2
1314          br_if 0 (;@3;)
142 ------------------------------------------------------------
1315          local.get 0
1316          local.get 1
1317          i32.load
1318          call_indirect (type 1)
1319          br_if 0 (;@3;)
143 ------------------------------------------------------------
1320          local.get 0
1321          i32.load
1322          local.tee 1
1323          i32.const 24
1324          i32.store
1325          local.get 0
1326          local.get 1
1327          i32.load
1328          call_indirect (type 0)
1329        end
144 ------------------------------------------------------------
1330        block  ;; label = @3
145 ------------------------------------------------------------
1331          block  ;; label = @4
146 ------------------------------------------------------------
1332            block  ;; label = @5
147 ------------------------------------------------------------
1333              local.get 0
1334              i32.load
1335              i32.const -3
1336              i32.add
1337              br_table 1 2 0 2
148 ------------------------------------------------------------
1338            end
149 ------------------------------------------------------------
1339            local.get 0
1340            i32.load
1341            local.tee 1
1342            local.get 1
1343            i32.load
1344            local.tee 2
1345            i32.const 1
1346            i32.add
1347            i32.store
1348            local.get 2
1349            i32.const 1
1350            i32.store8
1351            local.get 1
1352            local.get 1
1353            i32.load
1354            i32.const -1
1355            i32.add
1356            local.tee 2
1357            i32.store
1358            local.get 2
1359            br_if 2 (;@2;)
150 ------------------------------------------------------------
1360            local.get 0
1361            local.get 1
1362            i32.load
1363            call_indirect (type 1)
1364            br_if 2 (;@2;)
151 ------------------------------------------------------------
1365            br 3 (;@1;)
152 ------------------------------------------------------------
1366          end
153 ------------------------------------------------------------
1367          local.get 0
1368          i32.load
1369          local.tee 1
1370          local.get 1
1371          i32.load
1372          local.tee 2
1373          i32.const 1
1374          i32.add
1375          i32.store
1376          local.get 2
1377          i32.const 2
1378          i32.store8
1379          local.get 1
1380          local.get 1
1381          i32.load
1382          i32.const -1
1383          i32.add
1384          local.tee 2
1385          i32.store
1386          local.get 2
1387          br_if 1 (;@2;)
154 ------------------------------------------------------------
1388          local.get 0
1389          local.get 1
1390          i32.load
1391          call_indirect (type 1)
1392          br_if 1 (;@2;)
155 ------------------------------------------------------------
1393          br 2 (;@1;)
156 ------------------------------------------------------------
1394        end
157 ------------------------------------------------------------
1395        local.get 0
1396        i32.load
1397        local.tee 1
1398        local.get 1
1399        i32.load
1400        local.tee 2
1401        i32.const 1
1402        i32.add
1403        i32.store
1404        local.get 2
1405        i32.const 0
1406        i32.store8
1407        local.get 1
1408        local.get 1
1409        i32.load
1410        i32.const -1
1411        i32.add
1412        local.tee 2
1413        i32.store
1414        local.get 2
1415        br_if 0 (;@2;)
158 ------------------------------------------------------------
1416        local.get 0
1417        local.get 1
1418        i32.load
1419        call_indirect (type 1)
1420        br_if 0 (;@2;)
159 ------------------------------------------------------------
1421        local.get 0
1422        i32.load
1423        local.tee 1
1424        i32.const 24
1425        i32.store
1426        local.get 0
1427        local.get 1
1428        i32.load
1429        call_indirect (type 0)
1430      end
160 ------------------------------------------------------------
1431      return
161 ------------------------------------------------------------
1432    end
162 ------------------------------------------------------------
1433    local.get 0
1434    i32.load
1435    local.tee 1
1436    i32.const 24
1437    i32.store
1438    local.get 0
1439    local.get 1
1440    i32.load
1441    call_indirect (type 0))
