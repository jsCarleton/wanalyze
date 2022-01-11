  (func (;207;) (type 9) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 256
0002    i32.sub
0003    local.tee 13
0004    global.set 0
0005    local.get 0
0006    i32.load
0007    local.set 8
0008    local.get 4
0009    i32.const 1264
0010    i32.add
0011    i32.load8_s
0012    local.set 10
0013    local.get 4
0014    i32.load
0015    local.set 12
0016    local.get 0
0017    i32.load
0018    local.get 3
0019    local.get 1
0020    i32.load16_s
0021    local.get 2
0022    i32.sub
0023    local.tee 6
0024    i32.const 31
0025    i32.shr_s
0026    local.tee 7
0027    local.get 6
0028    i32.xor
0029    local.get 7
0030    i32.sub
0031    i32.const 66832
0032    i32.add
0033    i32.load8_u
0034    local.tee 2
0035    i32.add
0036    i32.const 1024
0037    i32.add
0038    i32.load8_s
0039    local.tee 9
0040    i32.shl
0041    local.get 3
0042    local.get 2
0043    i32.const 2
0044    i32.shl
0045    i32.add
0046    i32.load
0047    i32.or
0048    local.set 3
0049    local.get 6
0050    local.get 7
0051    i32.add
0052    local.set 7
0053    block (result i32)  ;; label = @1
1 ------------------------------------------------------------
0054      block (result i32)  ;; label = @2
2 ------------------------------------------------------------
0055        local.get 0
0056        i32.load
0057        i32.const 256
0058        i32.lt_u
0059        if  ;; label = @3
3 ------------------------------------------------------------
0060          i32.const 1
0061          local.set 14
0062          local.get 13
0063          br 1 (;@2;)
4 ------------------------------------------------------------
0064        end
5 ------------------------------------------------------------
0065        local.get 0
0066        i32.load
0067      end
6 ------------------------------------------------------------
0068      local.tee 5
0069      local.get 8
0070      local.get 9
0071      i32.add
0072      local.tee 6
0073      i32.const 16
0074      i32.lt_s
0075      br_if 0 (;@1;)
7 ------------------------------------------------------------
0076      drop
0077      local.get 5
0078      local.get 3
0079      local.get 6
0080      i32.const -8
0081      i32.add
0082      i32.shr_u
0083      local.tee 8
0084      i32.store8
0085      local.get 8
0086      i32.const 255
0087      i32.and
0088      i32.const 255
0089      i32.ne
0090      if (result i32)  ;; label = @2
8 ------------------------------------------------------------
0091        local.get 5
0092        i32.const 1
0093        i32.add
0094      else
9 ------------------------------------------------------------
0095        local.get 5
0096        i32.const 0
0097        i32.store8
0098        local.get 5
0099        i32.const 2
0100        i32.add
0101      end
10 ------------------------------------------------------------
0102      local.tee 5
0103      local.get 3
0104      local.get 6
0105      i32.const -16
0106      i32.add
0107      local.tee 6
0108      i32.shr_u
0109      local.tee 8
0110      i32.store8
0111      local.get 5
0112      i32.const 1
0113      i32.add
0114      local.get 8
0115      i32.const 255
0116      i32.and
0117      i32.const 255
0118      i32.ne
0119      br_if 0 (;@1;)
11 ------------------------------------------------------------
0120      drop
0121      local.get 5
0122      i32.const 0
0123      i32.store8
0124      local.get 5
0125      i32.const 2
0126      i32.add
0127    end
12 ------------------------------------------------------------
0128    local.set 5
0129    local.get 7
0130    i32.const -1
0131    local.get 2
0132    i32.shl
0133    i32.const -1
0134    i32.xor
0135    i32.and
0136    local.get 3
0137    local.get 2
0138    i32.shl
0139    i32.or
0140    local.set 3
0141    block  ;; label = @1
13 ------------------------------------------------------------
0142      local.get 2
0143      local.get 6
0144      i32.add
0145      local.tee 2
0146      i32.const 16
0147      i32.lt_s
0148      br_if 0 (;@1;)
14 ------------------------------------------------------------
0149      local.get 5
0150      local.get 3
0151      local.get 2
0152      i32.const -8
0153      i32.add
0154      i32.shr_u
0155      local.tee 6
0156      i32.store8
0157      local.get 6
0158      i32.const 255
0159      i32.and
0160      i32.const 255
0161      i32.ne
0162      if (result i32)  ;; label = @2
15 ------------------------------------------------------------
0163        local.get 5
0164        i32.const 1
0165        i32.add
0166      else
16 ------------------------------------------------------------
0167        local.get 5
0168        i32.const 0
0169        i32.store8
0170        local.get 5
0171        i32.const 2
0172        i32.add
0173      end
17 ------------------------------------------------------------
0174      local.tee 5
0175      local.get 3
0176      local.get 2
0177      i32.const -16
0178      i32.add
0179      local.tee 2
0180      i32.shr_u
0181      local.tee 6
0182      i32.store8
0183      local.get 6
0184      i32.const 255
0185      i32.and
0186      i32.const 255
0187      i32.ne
0188      if  ;; label = @2
18 ------------------------------------------------------------
0189        local.get 5
0190        i32.const 1
0191        i32.add
0192        local.set 5
0193        br 1 (;@1;)
19 ------------------------------------------------------------
0194      end
20 ------------------------------------------------------------
0195      local.get 5
0196      i32.const 0
0197      i32.store8
0198      local.get 5
0199      i32.const 2
0200      i32.add
0201      local.set 5
0202    end
21 ------------------------------------------------------------
0203    block  ;; label = @1
22 ------------------------------------------------------------
0204      local.get 1
0205      i32.load16_s
0206      local.tee 6
0207      i32.eqz
0208      if  ;; label = @2
23 ------------------------------------------------------------
0209        i32.const 1
0210        local.set 6
0211        br 1 (;@1;)
24 ------------------------------------------------------------
0212      end
25 ------------------------------------------------------------
0213      local.get 3
0214      local.get 4
0215      local.get 6
0216      i32.const 31
0217      i32.shr_s
0218      local.tee 8
0219      local.get 6
0220      i32.xor
0221      local.get 8
0222      i32.sub
0223      i32.const 66832
0224      i32.add
0225      i32.load8_u
0226      local.tee 7
0227      i32.add
0228      i32.const 1024
0229      i32.add
0230      i32.load8_s
0231      local.tee 9
0232      i32.shl
0233      local.get 4
0234      local.get 7
0235      i32.const 2
0236      i32.shl
0237      i32.add
0238      i32.load
0239      i32.or
0240      local.set 3
0241      local.get 6
0242      local.get 8
0243      i32.add
0244      i32.const -1
0245      local.get 7
0246      i32.shl
0247      i32.const -1
0248      i32.xor
0249      i32.and
0250      local.set 6
0251      block  ;; label = @2
26 ------------------------------------------------------------
0252        local.get 2
0253        local.get 9
0254        i32.add
0255        local.tee 2
0256        i32.const 16
0257        i32.lt_s
0258        br_if 0 (;@2;)
27 ------------------------------------------------------------
0259        local.get 5
0260        local.get 3
0261        local.get 2
0262        i32.const -8
0263        i32.add
0264        i32.shr_u
0265        local.tee 8
0266        i32.store8
0267        local.get 8
0268        i32.const 255
0269        i32.and
0270        i32.const 255
0271        i32.ne
0272        if (result i32)  ;; label = @3
28 ------------------------------------------------------------
0273          local.get 5
0274          i32.const 1
0275          i32.add
0276        else
29 ------------------------------------------------------------
0277          local.get 5
0278          i32.const 0
0279          i32.store8
0280          local.get 5
0281          i32.const 2
0282          i32.add
0283        end
30 ------------------------------------------------------------
0284        local.tee 5
0285        local.get 3
0286        local.get 2
0287        i32.const -16
0288        i32.add
0289        local.tee 2
0290        i32.shr_u
0291        local.tee 8
0292        i32.store8
0293        local.get 8
0294        i32.const 255
0295        i32.and
0296        i32.const 255
0297        i32.ne
0298        if  ;; label = @3
31 ------------------------------------------------------------
0299          local.get 5
0300          i32.const 1
0301          i32.add
0302          local.set 5
0303          br 1 (;@2;)
32 ------------------------------------------------------------
0304        end
33 ------------------------------------------------------------
0305        local.get 5
0306        i32.const 0
0307        i32.store8
0308        local.get 5
0309        i32.const 2
0310        i32.add
0311        local.set 5
0312      end
34 ------------------------------------------------------------
0313      local.get 3
0314      local.get 7
0315      i32.shl
0316      local.get 6
0317      i32.or
0318      local.set 3
0319      i32.const 0
0320      local.set 6
0321      local.get 2
0322      local.get 7
0323      i32.add
0324      local.tee 2
0325      i32.const 16
0326      i32.lt_s
0327      br_if 0 (;@1;)
35 ------------------------------------------------------------
0328      local.get 5
0329      local.get 3
0330      local.get 2
0331      i32.const -8
0332      i32.add
0333      i32.shr_u
0334      local.tee 7
0335      i32.store8
0336      local.get 7
0337      i32.const 255
0338      i32.and
0339      i32.const 255
0340      i32.ne
0341      if (result i32)  ;; label = @2
36 ------------------------------------------------------------
0342        local.get 5
0343        i32.const 1
0344        i32.add
0345      else
37 ------------------------------------------------------------
0346        local.get 5
0347        i32.const 0
0348        i32.store8
0349        local.get 5
0350        i32.const 2
0351        i32.add
0352      end
38 ------------------------------------------------------------
0353      local.tee 5
0354      local.get 3
0355      local.get 2
0356      i32.const -16
0357      i32.add
0358      local.tee 2
0359      i32.shr_u
0360      local.tee 7
0361      i32.store8
0362      local.get 7
0363      i32.const 255
0364      i32.and
0365      i32.const 255
0366      i32.ne
0367      if  ;; label = @2
39 ------------------------------------------------------------
0368        local.get 5
0369        i32.const 1
0370        i32.add
0371        local.set 5
0372        br 1 (;@1;)
40 ------------------------------------------------------------
0373      end
41 ------------------------------------------------------------
0374      local.get 5
0375      i32.const 0
0376      i32.store8
0377      local.get 5
0378      i32.const 2
0379      i32.add
0380      local.set 5
0381    end
42 ------------------------------------------------------------
0382    block  ;; label = @1
43 ------------------------------------------------------------
0383      local.get 1
0384      i32.load16_s
0385      local.tee 7
0386      i32.eqz
0387      if  ;; label = @2
44 ------------------------------------------------------------
0388        local.get 6
0389        i32.const 1
0390        i32.add
0391        local.set 6
0392        br 1 (;@1;)
45 ------------------------------------------------------------
0393      end
46 ------------------------------------------------------------
0394      local.get 3
0395      local.get 4
0396      local.get 7
0397      i32.const 31
0398      i32.shr_s
0399      local.tee 9
0400      local.get 7
0401      i32.xor
0402      local.get 9
0403      i32.sub
0404      i32.const 66832
0405      i32.add
0406      i32.load8_u
0407      local.tee 8
0408      local.get 6
0409      i32.const 4
0410      i32.shl
0411      i32.add
0412      local.tee 3
0413      i32.add
0414      i32.const 1024
0415      i32.add
0416      i32.load8_s
0417      local.tee 6
0418      i32.shl
0419      local.get 4
0420      local.get 3
0421      i32.const 2
0422      i32.shl
0423      i32.add
0424      i32.load
0425      i32.or
0426      local.set 3
0427      local.get 7
0428      local.get 9
0429      i32.add
0430      i32.const -1
0431      local.get 8
0432      i32.shl
0433      i32.const -1
0434      i32.xor
0435      i32.and
0436      local.set 7
0437      block  ;; label = @2
47 ------------------------------------------------------------
0438        local.get 2
0439        local.get 6
0440        i32.add
0441        local.tee 2
0442        i32.const 16
0443        i32.lt_s
0444        br_if 0 (;@2;)
48 ------------------------------------------------------------
0445        local.get 5
0446        local.get 3
0447        local.get 2
0448        i32.const -8
0449        i32.add
0450        i32.shr_u
0451        local.tee 6
0452        i32.store8
0453        local.get 6
0454        i32.const 255
0455        i32.and
0456        i32.const 255
0457        i32.ne
0458        if (result i32)  ;; label = @3
49 ------------------------------------------------------------
0459          local.get 5
0460          i32.const 1
0461          i32.add
0462        else
50 ------------------------------------------------------------
0463          local.get 5
0464          i32.const 0
0465          i32.store8
0466          local.get 5
0467          i32.const 2
0468          i32.add
0469        end
51 ------------------------------------------------------------
0470        local.tee 5
0471        local.get 3
0472        local.get 2
0473        i32.const -16
0474        i32.add
0475        local.tee 2
0476        i32.shr_u
0477        local.tee 6
0478        i32.store8
0479        local.get 6
0480        i32.const 255
0481        i32.and
0482        i32.const 255
0483        i32.ne
0484        if  ;; label = @3
52 ------------------------------------------------------------
0485          local.get 5
0486          i32.const 1
0487          i32.add
0488          local.set 5
0489          br 1 (;@2;)
53 ------------------------------------------------------------
0490        end
54 ------------------------------------------------------------
0491        local.get 5
0492        i32.const 0
0493        i32.store8
0494        local.get 5
0495        i32.const 2
0496        i32.add
0497        local.set 5
0498      end
55 ------------------------------------------------------------
0499      local.get 3
0500      local.get 8
0501      i32.shl
0502      local.get 7
0503      i32.or
0504      local.set 3
0505      i32.const 0
0506      local.set 6
0507      local.get 2
0508      local.get 8
0509      i32.add
0510      local.tee 2
0511      i32.const 16
0512      i32.lt_s
0513      br_if 0 (;@1;)
56 ------------------------------------------------------------
0514      local.get 5
0515      local.get 3
0516      local.get 2
0517      i32.const -8
0518      i32.add
0519      i32.shr_u
0520      local.tee 7
0521      i32.store8
0522      local.get 7
0523      i32.const 255
0524      i32.and
0525      i32.const 255
0526      i32.ne
0527      if (result i32)  ;; label = @2
57 ------------------------------------------------------------
0528        local.get 5
0529        i32.const 1
0530        i32.add
0531      else
58 ------------------------------------------------------------
0532        local.get 5
0533        i32.const 0
0534        i32.store8
0535        local.get 5
0536        i32.const 2
0537        i32.add
0538      end
59 ------------------------------------------------------------
0539      local.tee 5
0540      local.get 3
0541      local.get 2
0542      i32.const -16
0543      i32.add
0544      local.tee 2
0545      i32.shr_u
0546      local.tee 7
0547      i32.store8
0548      local.get 7
0549      i32.const 255
0550      i32.and
0551      i32.const 255
0552      i32.ne
0553      if  ;; label = @2
60 ------------------------------------------------------------
0554        local.get 5
0555        i32.const 1
0556        i32.add
0557        local.set 5
0558        br 1 (;@1;)
61 ------------------------------------------------------------
0559      end
62 ------------------------------------------------------------
0560      local.get 5
0561      i32.const 0
0562      i32.store8
0563      local.get 5
0564      i32.const 2
0565      i32.add
0566      local.set 5
0567    end
63 ------------------------------------------------------------
0568    block  ;; label = @1
64 ------------------------------------------------------------
0569      local.get 1
0570      i32.load16_s
0571      local.tee 7
0572      i32.eqz
0573      if  ;; label = @2
65 ------------------------------------------------------------
0574        local.get 6
0575        i32.const 1
0576        i32.add
0577        local.set 6
0578        br 1 (;@1;)
66 ------------------------------------------------------------
0579      end
67 ------------------------------------------------------------
0580      local.get 3
0581      local.get 4
0582      local.get 7
0583      i32.const 31
0584      i32.shr_s
0585      local.tee 9
0586      local.get 7
0587      i32.xor
0588      local.get 9
0589      i32.sub
0590      i32.const 66832
0591      i32.add
0592      i32.load8_u
0593      local.tee 8
0594      local.get 6
0595      i32.const 4
0596      i32.shl
0597      i32.add
0598      local.tee 3
0599      i32.add
0600      i32.const 1024
0601      i32.add
0602      i32.load8_s
0603      local.tee 6
0604      i32.shl
0605      local.get 4
0606      local.get 3
0607      i32.const 2
0608      i32.shl
0609      i32.add
0610      i32.load
0611      i32.or
0612      local.set 3
0613      local.get 7
0614      local.get 9
0615      i32.add
0616      i32.const -1
0617      local.get 8
0618      i32.shl
0619      i32.const -1
0620      i32.xor
0621      i32.and
0622      local.set 7
0623      block  ;; label = @2
68 ------------------------------------------------------------
0624        local.get 2
0625        local.get 6
0626        i32.add
0627        local.tee 2
0628        i32.const 16
0629        i32.lt_s
0630        br_if 0 (;@2;)
69 ------------------------------------------------------------
0631        local.get 5
0632        local.get 3
0633        local.get 2
0634        i32.const -8
0635        i32.add
0636        i32.shr_u
0637        local.tee 6
0638        i32.store8
0639        local.get 6
0640        i32.const 255
0641        i32.and
0642        i32.const 255
0643        i32.ne
0644        if (result i32)  ;; label = @3
70 ------------------------------------------------------------
0645          local.get 5
0646          i32.const 1
0647          i32.add
0648        else
71 ------------------------------------------------------------
0649          local.get 5
0650          i32.const 0
0651          i32.store8
0652          local.get 5
0653          i32.const 2
0654          i32.add
0655        end
72 ------------------------------------------------------------
0656        local.tee 5
0657        local.get 3
0658        local.get 2
0659        i32.const -16
0660        i32.add
0661        local.tee 2
0662        i32.shr_u
0663        local.tee 6
0664        i32.store8
0665        local.get 6
0666        i32.const 255
0667        i32.and
0668        i32.const 255
0669        i32.ne
0670        if  ;; label = @3
73 ------------------------------------------------------------
0671          local.get 5
0672          i32.const 1
0673          i32.add
0674          local.set 5
0675          br 1 (;@2;)
74 ------------------------------------------------------------
0676        end
75 ------------------------------------------------------------
0677        local.get 5
0678        i32.const 0
0679        i32.store8
0680        local.get 5
0681        i32.const 2
0682        i32.add
0683        local.set 5
0684      end
76 ------------------------------------------------------------
0685      local.get 3
0686      local.get 8
0687      i32.shl
0688      local.get 7
0689      i32.or
0690      local.set 3
0691      i32.const 0
0692      local.set 6
0693      local.get 2
0694      local.get 8
0695      i32.add
0696      local.tee 2
0697      i32.const 16
0698      i32.lt_s
0699      br_if 0 (;@1;)
77 ------------------------------------------------------------
0700      local.get 5
0701      local.get 3
0702      local.get 2
0703      i32.const -8
0704      i32.add
0705      i32.shr_u
0706      local.tee 7
0707      i32.store8
0708      local.get 7
0709      i32.const 255
0710      i32.and
0711      i32.const 255
0712      i32.ne
0713      if (result i32)  ;; label = @2
78 ------------------------------------------------------------
0714        local.get 5
0715        i32.const 1
0716        i32.add
0717      else
79 ------------------------------------------------------------
0718        local.get 5
0719        i32.const 0
0720        i32.store8
0721        local.get 5
0722        i32.const 2
0723        i32.add
0724      end
80 ------------------------------------------------------------
0725      local.tee 5
0726      local.get 3
0727      local.get 2
0728      i32.const -16
0729      i32.add
0730      local.tee 2
0731      i32.shr_u
0732      local.tee 7
0733      i32.store8
0734      local.get 7
0735      i32.const 255
0736      i32.and
0737      i32.const 255
0738      i32.ne
0739      if  ;; label = @2
81 ------------------------------------------------------------
0740        local.get 5
0741        i32.const 1
0742        i32.add
0743        local.set 5
0744        br 1 (;@1;)
82 ------------------------------------------------------------
0745      end
83 ------------------------------------------------------------
0746      local.get 5
0747      i32.const 0
0748      i32.store8
0749      local.get 5
0750      i32.const 2
0751      i32.add
0752      local.set 5
0753    end
84 ------------------------------------------------------------
0754    block  ;; label = @1
85 ------------------------------------------------------------
0755      local.get 1
0756      i32.load16_s
0757      local.tee 7
0758      i32.eqz
0759      if  ;; label = @2
86 ------------------------------------------------------------
0760        local.get 6
0761        i32.const 1
0762        i32.add
0763        local.set 6
0764        br 1 (;@1;)
87 ------------------------------------------------------------
0765      end
88 ------------------------------------------------------------
0766      local.get 3
0767      local.get 4
0768      local.get 7
0769      i32.const 31
0770      i32.shr_s
0771      local.tee 9
0772      local.get 7
0773      i32.xor
0774      local.get 9
0775      i32.sub
0776      i32.const 66832
0777      i32.add
0778      i32.load8_u
0779      local.tee 8
0780      local.get 6
0781      i32.const 4
0782      i32.shl
0783      i32.add
0784      local.tee 3
0785      i32.add
0786      i32.const 1024
0787      i32.add
0788      i32.load8_s
0789      local.tee 6
0790      i32.shl
0791      local.get 4
0792      local.get 3
0793      i32.const 2
0794      i32.shl
0795      i32.add
0796      i32.load
0797      i32.or
0798      local.set 3
0799      local.get 7
0800      local.get 9
0801      i32.add
0802      i32.const -1
0803      local.get 8
0804      i32.shl
0805      i32.const -1
0806      i32.xor
0807      i32.and
0808      local.set 7
0809      block  ;; label = @2
89 ------------------------------------------------------------
0810        local.get 2
0811        local.get 6
0812        i32.add
0813        local.tee 2
0814        i32.const 16
0815        i32.lt_s
0816        br_if 0 (;@2;)
90 ------------------------------------------------------------
0817        local.get 5
0818        local.get 3
0819        local.get 2
0820        i32.const -8
0821        i32.add
0822        i32.shr_u
0823        local.tee 6
0824        i32.store8
0825        local.get 6
0826        i32.const 255
0827        i32.and
0828        i32.const 255
0829        i32.ne
0830        if (result i32)  ;; label = @3
91 ------------------------------------------------------------
0831          local.get 5
0832          i32.const 1
0833          i32.add
0834        else
92 ------------------------------------------------------------
0835          local.get 5
0836          i32.const 0
0837          i32.store8
0838          local.get 5
0839          i32.const 2
0840          i32.add
0841        end
93 ------------------------------------------------------------
0842        local.tee 5
0843        local.get 3
0844        local.get 2
0845        i32.const -16
0846        i32.add
0847        local.tee 2
0848        i32.shr_u
0849        local.tee 6
0850        i32.store8
0851        local.get 6
0852        i32.const 255
0853        i32.and
0854        i32.const 255
0855        i32.ne
0856        if  ;; label = @3
94 ------------------------------------------------------------
0857          local.get 5
0858          i32.const 1
0859          i32.add
0860          local.set 5
0861          br 1 (;@2;)
95 ------------------------------------------------------------
0862        end
96 ------------------------------------------------------------
0863        local.get 5
0864        i32.const 0
0865        i32.store8
0866        local.get 5
0867        i32.const 2
0868        i32.add
0869        local.set 5
0870      end
97 ------------------------------------------------------------
0871      local.get 3
0872      local.get 8
0873      i32.shl
0874      local.get 7
0875      i32.or
0876      local.set 3
0877      i32.const 0
0878      local.set 6
0879      local.get 2
0880      local.get 8
0881      i32.add
0882      local.tee 2
0883      i32.const 16
0884      i32.lt_s
0885      br_if 0 (;@1;)
98 ------------------------------------------------------------
0886      local.get 5
0887      local.get 3
0888      local.get 2
0889      i32.const -8
0890      i32.add
0891      i32.shr_u
0892      local.tee 7
0893      i32.store8
0894      local.get 7
0895      i32.const 255
0896      i32.and
0897      i32.const 255
0898      i32.ne
0899      if (result i32)  ;; label = @2
99 ------------------------------------------------------------
0900        local.get 5
0901        i32.const 1
0902        i32.add
0903      else
100 ------------------------------------------------------------
0904        local.get 5
0905        i32.const 0
0906        i32.store8
0907        local.get 5
0908        i32.const 2
0909        i32.add
0910      end
101 ------------------------------------------------------------
0911      local.tee 5
0912      local.get 3
0913      local.get 2
0914      i32.const -16
0915      i32.add
0916      local.tee 2
0917      i32.shr_u
0918      local.tee 7
0919      i32.store8
0920      local.get 7
0921      i32.const 255
0922      i32.and
0923      i32.const 255
0924      i32.ne
0925      if  ;; label = @2
102 ------------------------------------------------------------
0926        local.get 5
0927        i32.const 1
0928        i32.add
0929        local.set 5
0930        br 1 (;@1;)
103 ------------------------------------------------------------
0931      end
104 ------------------------------------------------------------
0932      local.get 5
0933      i32.const 0
0934      i32.store8
0935      local.get 5
0936      i32.const 2
0937      i32.add
0938      local.set 5
0939    end
105 ------------------------------------------------------------
0940    block  ;; label = @1
106 ------------------------------------------------------------
0941      local.get 1
0942      i32.load16_s
0943      local.tee 7
0944      i32.eqz
0945      if  ;; label = @2
107 ------------------------------------------------------------
0946        local.get 6
0947        i32.const 1
0948        i32.add
0949        local.set 6
0950        br 1 (;@1;)
108 ------------------------------------------------------------
0951      end
109 ------------------------------------------------------------
0952      local.get 3
0953      local.get 4
0954      local.get 7
0955      i32.const 31
0956      i32.shr_s
0957      local.tee 9
0958      local.get 7
0959      i32.xor
0960      local.get 9
0961      i32.sub
0962      i32.const 66832
0963      i32.add
0964      i32.load8_u
0965      local.tee 8
0966      local.get 6
0967      i32.const 4
0968      i32.shl
0969      i32.add
0970      local.tee 3
0971      i32.add
0972      i32.const 1024
0973      i32.add
0974      i32.load8_s
0975      local.tee 6
0976      i32.shl
0977      local.get 4
0978      local.get 3
0979      i32.const 2
0980      i32.shl
0981      i32.add
0982      i32.load
0983      i32.or
0984      local.set 3
0985      local.get 7
0986      local.get 9
0987      i32.add
0988      i32.const -1
0989      local.get 8
0990      i32.shl
0991      i32.const -1
0992      i32.xor
0993      i32.and
0994      local.set 7
0995      block  ;; label = @2
110 ------------------------------------------------------------
0996        local.get 2
0997        local.get 6
0998        i32.add
0999        local.tee 2
1000        i32.const 16
1001        i32.lt_s
1002        br_if 0 (;@2;)
111 ------------------------------------------------------------
1003        local.get 5
1004        local.get 3
1005        local.get 2
1006        i32.const -8
1007        i32.add
1008        i32.shr_u
1009        local.tee 6
1010        i32.store8
1011        local.get 6
1012        i32.const 255
1013        i32.and
1014        i32.const 255
1015        i32.ne
1016        if (result i32)  ;; label = @3
112 ------------------------------------------------------------
1017          local.get 5
1018          i32.const 1
1019          i32.add
1020        else
113 ------------------------------------------------------------
1021          local.get 5
1022          i32.const 0
1023          i32.store8
1024          local.get 5
1025          i32.const 2
1026          i32.add
1027        end
114 ------------------------------------------------------------
1028        local.tee 5
1029        local.get 3
1030        local.get 2
1031        i32.const -16
1032        i32.add
1033        local.tee 2
1034        i32.shr_u
1035        local.tee 6
1036        i32.store8
1037        local.get 6
1038        i32.const 255
1039        i32.and
1040        i32.const 255
1041        i32.ne
1042        if  ;; label = @3
115 ------------------------------------------------------------
1043          local.get 5
1044          i32.const 1
1045          i32.add
1046          local.set 5
1047          br 1 (;@2;)
116 ------------------------------------------------------------
1048        end
117 ------------------------------------------------------------
1049        local.get 5
1050        i32.const 0
1051        i32.store8
1052        local.get 5
1053        i32.const 2
1054        i32.add
1055        local.set 5
1056      end
118 ------------------------------------------------------------
1057      local.get 3
1058      local.get 8
1059      i32.shl
1060      local.get 7
1061      i32.or
1062      local.set 3
1063      i32.const 0
1064      local.set 6
1065      local.get 2
1066      local.get 8
1067      i32.add
1068      local.tee 2
1069      i32.const 16
1070      i32.lt_s
1071      br_if 0 (;@1;)
119 ------------------------------------------------------------
1072      local.get 5
1073      local.get 3
1074      local.get 2
1075      i32.const -8
1076      i32.add
1077      i32.shr_u
1078      local.tee 7
1079      i32.store8
1080      local.get 7
1081      i32.const 255
1082      i32.and
1083      i32.const 255
1084      i32.ne
1085      if (result i32)  ;; label = @2
120 ------------------------------------------------------------
1086        local.get 5
1087        i32.const 1
1088        i32.add
1089      else
121 ------------------------------------------------------------
1090        local.get 5
1091        i32.const 0
1092        i32.store8
1093        local.get 5
1094        i32.const 2
1095        i32.add
1096      end
122 ------------------------------------------------------------
1097      local.tee 5
1098      local.get 3
1099      local.get 2
1100      i32.const -16
1101      i32.add
1102      local.tee 2
1103      i32.shr_u
1104      local.tee 7
1105      i32.store8
1106      local.get 7
1107      i32.const 255
1108      i32.and
1109      i32.const 255
1110      i32.ne
1111      if  ;; label = @2
123 ------------------------------------------------------------
1112        local.get 5
1113        i32.const 1
1114        i32.add
1115        local.set 5
1116        br 1 (;@1;)
124 ------------------------------------------------------------
1117      end
125 ------------------------------------------------------------
1118      local.get 5
1119      i32.const 0
1120      i32.store8
1121      local.get 5
1122      i32.const 2
1123      i32.add
1124      local.set 5
1125    end
126 ------------------------------------------------------------
1126    block  ;; label = @1
127 ------------------------------------------------------------
1127      local.get 1
1128      i32.load16_s
1129      local.tee 7
1130      i32.eqz
1131      if  ;; label = @2
128 ------------------------------------------------------------
1132        local.get 6
1133        i32.const 1
1134        i32.add
1135        local.set 6
1136        br 1 (;@1;)
129 ------------------------------------------------------------
1137      end
130 ------------------------------------------------------------
1138      local.get 3
1139      local.get 4
1140      local.get 7
1141      i32.const 31
1142      i32.shr_s
1143      local.tee 9
1144      local.get 7
1145      i32.xor
1146      local.get 9
1147      i32.sub
1148      i32.const 66832
1149      i32.add
1150      i32.load8_u
1151      local.tee 8
1152      local.get 6
1153      i32.const 4
1154      i32.shl
1155      i32.add
1156      local.tee 3
1157      i32.add
1158      i32.const 1024
1159      i32.add
1160      i32.load8_s
1161      local.tee 6
1162      i32.shl
1163      local.get 4
1164      local.get 3
1165      i32.const 2
1166      i32.shl
1167      i32.add
1168      i32.load
1169      i32.or
1170      local.set 3
1171      local.get 7
1172      local.get 9
1173      i32.add
1174      i32.const -1
1175      local.get 8
1176      i32.shl
1177      i32.const -1
1178      i32.xor
1179      i32.and
1180      local.set 7
1181      block  ;; label = @2
131 ------------------------------------------------------------
1182        local.get 2
1183        local.get 6
1184        i32.add
1185        local.tee 2
1186        i32.const 16
1187        i32.lt_s
1188        br_if 0 (;@2;)
132 ------------------------------------------------------------
1189        local.get 5
1190        local.get 3
1191        local.get 2
1192        i32.const -8
1193        i32.add
1194        i32.shr_u
1195        local.tee 6
1196        i32.store8
1197        local.get 6
1198        i32.const 255
1199        i32.and
1200        i32.const 255
1201        i32.ne
1202        if (result i32)  ;; label = @3
133 ------------------------------------------------------------
1203          local.get 5
1204          i32.const 1
1205          i32.add
1206        else
134 ------------------------------------------------------------
1207          local.get 5
1208          i32.const 0
1209          i32.store8
1210          local.get 5
1211          i32.const 2
1212          i32.add
1213        end
135 ------------------------------------------------------------
1214        local.tee 5
1215        local.get 3
1216        local.get 2
1217        i32.const -16
1218        i32.add
1219        local.tee 2
1220        i32.shr_u
1221        local.tee 6
1222        i32.store8
1223        local.get 6
1224        i32.const 255
1225        i32.and
1226        i32.const 255
1227        i32.ne
1228        if  ;; label = @3
136 ------------------------------------------------------------
1229          local.get 5
1230          i32.const 1
1231          i32.add
1232          local.set 5
1233          br 1 (;@2;)
137 ------------------------------------------------------------
1234        end
138 ------------------------------------------------------------
1235        local.get 5
1236        i32.const 0
1237        i32.store8
1238        local.get 5
1239        i32.const 2
1240        i32.add
1241        local.set 5
1242      end
139 ------------------------------------------------------------
1243      local.get 3
1244      local.get 8
1245      i32.shl
1246      local.get 7
1247      i32.or
1248      local.set 3
1249      i32.const 0
1250      local.set 6
1251      local.get 2
1252      local.get 8
1253      i32.add
1254      local.tee 2
1255      i32.const 16
1256      i32.lt_s
1257      br_if 0 (;@1;)
140 ------------------------------------------------------------
1258      local.get 5
1259      local.get 3
1260      local.get 2
1261      i32.const -8
1262      i32.add
1263      i32.shr_u
1264      local.tee 7
1265      i32.store8
1266      local.get 7
1267      i32.const 255
1268      i32.and
1269      i32.const 255
1270      i32.ne
1271      if (result i32)  ;; label = @2
141 ------------------------------------------------------------
1272        local.get 5
1273        i32.const 1
1274        i32.add
1275      else
142 ------------------------------------------------------------
1276        local.get 5
1277        i32.const 0
1278        i32.store8
1279        local.get 5
1280        i32.const 2
1281        i32.add
1282      end
143 ------------------------------------------------------------
1283      local.tee 5
1284      local.get 3
1285      local.get 2
1286      i32.const -16
1287      i32.add
1288      local.tee 2
1289      i32.shr_u
1290      local.tee 7
1291      i32.store8
1292      local.get 7
1293      i32.const 255
1294      i32.and
1295      i32.const 255
1296      i32.ne
1297      if  ;; label = @2
144 ------------------------------------------------------------
1298        local.get 5
1299        i32.const 1
1300        i32.add
1301        local.set 5
1302        br 1 (;@1;)
145 ------------------------------------------------------------
1303      end
146 ------------------------------------------------------------
1304      local.get 5
1305      i32.const 0
1306      i32.store8
1307      local.get 5
1308      i32.const 2
1309      i32.add
1310      local.set 5
1311    end
147 ------------------------------------------------------------
1312    block  ;; label = @1
148 ------------------------------------------------------------
1313      local.get 1
1314      i32.load16_s
1315      local.tee 7
1316      i32.eqz
1317      if  ;; label = @2
149 ------------------------------------------------------------
1318        local.get 6
1319        i32.const 1
1320        i32.add
1321        local.set 6
1322        br 1 (;@1;)
150 ------------------------------------------------------------
1323      end
151 ------------------------------------------------------------
1324      local.get 3
1325      local.get 4
1326      local.get 7
1327      i32.const 31
1328      i32.shr_s
1329      local.tee 9
1330      local.get 7
1331      i32.xor
1332      local.get 9
1333      i32.sub
1334      i32.const 66832
1335      i32.add
1336      i32.load8_u
1337      local.tee 8
1338      local.get 6
1339      i32.const 4
1340      i32.shl
1341      i32.add
1342      local.tee 3
1343      i32.add
1344      i32.const 1024
1345      i32.add
1346      i32.load8_s
1347      local.tee 6
1348      i32.shl
1349      local.get 4
1350      local.get 3
1351      i32.const 2
1352      i32.shl
1353      i32.add
1354      i32.load
1355      i32.or
1356      local.set 3
1357      local.get 7
1358      local.get 9
1359      i32.add
1360      i32.const -1
1361      local.get 8
1362      i32.shl
1363      i32.const -1
1364      i32.xor
1365      i32.and
1366      local.set 7
1367      block  ;; label = @2
152 ------------------------------------------------------------
1368        local.get 2
1369        local.get 6
1370        i32.add
1371        local.tee 2
1372        i32.const 16
1373        i32.lt_s
1374        br_if 0 (;@2;)
153 ------------------------------------------------------------
1375        local.get 5
1376        local.get 3
1377        local.get 2
1378        i32.const -8
1379        i32.add
1380        i32.shr_u
1381        local.tee 6
1382        i32.store8
1383        local.get 6
1384        i32.const 255
1385        i32.and
1386        i32.const 255
1387        i32.ne
1388        if (result i32)  ;; label = @3
154 ------------------------------------------------------------
1389          local.get 5
1390          i32.const 1
1391          i32.add
1392        else
155 ------------------------------------------------------------
1393          local.get 5
1394          i32.const 0
1395          i32.store8
1396          local.get 5
1397          i32.const 2
1398          i32.add
1399        end
156 ------------------------------------------------------------
1400        local.tee 5
1401        local.get 3
1402        local.get 2
1403        i32.const -16
1404        i32.add
1405        local.tee 2
1406        i32.shr_u
1407        local.tee 6
1408        i32.store8
1409        local.get 6
1410        i32.const 255
1411        i32.and
1412        i32.const 255
1413        i32.ne
1414        if  ;; label = @3
157 ------------------------------------------------------------
1415          local.get 5
1416          i32.const 1
1417          i32.add
1418          local.set 5
1419          br 1 (;@2;)
158 ------------------------------------------------------------
1420        end
159 ------------------------------------------------------------
1421        local.get 5
1422        i32.const 0
1423        i32.store8
1424        local.get 5
1425        i32.const 2
1426        i32.add
1427        local.set 5
1428      end
160 ------------------------------------------------------------
1429      local.get 3
1430      local.get 8
1431      i32.shl
1432      local.get 7
1433      i32.or
1434      local.set 3
1435      i32.const 0
1436      local.set 6
1437      local.get 2
1438      local.get 8
1439      i32.add
1440      local.tee 2
1441      i32.const 16
1442      i32.lt_s
1443      br_if 0 (;@1;)
161 ------------------------------------------------------------
1444      local.get 5
1445      local.get 3
1446      local.get 2
1447      i32.const -8
1448      i32.add
1449      i32.shr_u
1450      local.tee 7
1451      i32.store8
1452      local.get 7
1453      i32.const 255
1454      i32.and
1455      i32.const 255
1456      i32.ne
1457      if (result i32)  ;; label = @2
162 ------------------------------------------------------------
1458        local.get 5
1459        i32.const 1
1460        i32.add
1461      else
163 ------------------------------------------------------------
1462        local.get 5
1463        i32.const 0
1464        i32.store8
1465        local.get 5
1466        i32.const 2
1467        i32.add
1468      end
164 ------------------------------------------------------------
1469      local.tee 5
1470      local.get 3
1471      local.get 2
1472      i32.const -16
1473      i32.add
1474      local.tee 2
1475      i32.shr_u
1476      local.tee 7
1477      i32.store8
1478      local.get 7
1479      i32.const 255
1480      i32.and
1481      i32.const 255
1482      i32.ne
1483      if  ;; label = @2
165 ------------------------------------------------------------
1484        local.get 5
1485        i32.const 1
1486        i32.add
1487        local.set 5
1488        br 1 (;@1;)
166 ------------------------------------------------------------
1489      end
167 ------------------------------------------------------------
1490      local.get 5
1491      i32.const 0
1492      i32.store8
1493      local.get 5
1494      i32.const 2
1495      i32.add
1496      local.set 5
1497    end
168 ------------------------------------------------------------
1498    block  ;; label = @1
169 ------------------------------------------------------------
1499      local.get 1
1500      i32.load16_s
1501      local.tee 7
1502      i32.eqz
1503      if  ;; label = @2
170 ------------------------------------------------------------
1504        local.get 6
1505        i32.const 1
1506        i32.add
1507        local.set 6
1508        br 1 (;@1;)
171 ------------------------------------------------------------
1509      end
172 ------------------------------------------------------------
1510      local.get 3
1511      local.get 4
1512      local.get 7
1513      i32.const 31
1514      i32.shr_s
1515      local.tee 9
1516      local.get 7
1517      i32.xor
1518      local.get 9
1519      i32.sub
1520      i32.const 66832
1521      i32.add
1522      i32.load8_u
1523      local.tee 8
1524      local.get 6
1525      i32.const 4
1526      i32.shl
1527      i32.add
1528      local.tee 3
1529      i32.add
1530      i32.const 1024
1531      i32.add
1532      i32.load8_s
1533      local.tee 6
1534      i32.shl
1535      local.get 4
1536      local.get 3
1537      i32.const 2
1538      i32.shl
1539      i32.add
1540      i32.load
1541      i32.or
1542      local.set 3
1543      local.get 7
1544      local.get 9
1545      i32.add
1546      i32.const -1
1547      local.get 8
1548      i32.shl
1549      i32.const -1
1550      i32.xor
1551      i32.and
1552      local.set 7
1553      block  ;; label = @2
173 ------------------------------------------------------------
1554        local.get 2
1555        local.get 6
1556        i32.add
1557        local.tee 2
1558        i32.const 16
1559        i32.lt_s
1560        br_if 0 (;@2;)
174 ------------------------------------------------------------
1561        local.get 5
1562        local.get 3
1563        local.get 2
1564        i32.const -8
1565        i32.add
1566        i32.shr_u
1567        local.tee 6
1568        i32.store8
1569        local.get 6
1570        i32.const 255
1571        i32.and
1572        i32.const 255
1573        i32.ne
1574        if (result i32)  ;; label = @3
175 ------------------------------------------------------------
1575          local.get 5
1576          i32.const 1
1577          i32.add
1578        else
176 ------------------------------------------------------------
1579          local.get 5
1580          i32.const 0
1581          i32.store8
1582          local.get 5
1583          i32.const 2
1584          i32.add
1585        end
177 ------------------------------------------------------------
1586        local.tee 5
1587        local.get 3
1588        local.get 2
1589        i32.const -16
1590        i32.add
1591        local.tee 2
1592        i32.shr_u
1593        local.tee 6
1594        i32.store8
1595        local.get 6
1596        i32.const 255
1597        i32.and
1598        i32.const 255
1599        i32.ne
1600        if  ;; label = @3
178 ------------------------------------------------------------
1601          local.get 5
1602          i32.const 1
1603          i32.add
1604          local.set 5
1605          br 1 (;@2;)
179 ------------------------------------------------------------
1606        end
180 ------------------------------------------------------------
1607        local.get 5
1608        i32.const 0
1609        i32.store8
1610        local.get 5
1611        i32.const 2
1612        i32.add
1613        local.set 5
1614      end
181 ------------------------------------------------------------
1615      local.get 3
1616      local.get 8
1617      i32.shl
1618      local.get 7
1619      i32.or
1620      local.set 3
1621      i32.const 0
1622      local.set 6
1623      local.get 2
1624      local.get 8
1625      i32.add
1626      local.tee 2
1627      i32.const 16
1628      i32.lt_s
1629      br_if 0 (;@1;)
182 ------------------------------------------------------------
1630      local.get 5
1631      local.get 3
1632      local.get 2
1633      i32.const -8
1634      i32.add
1635      i32.shr_u
1636      local.tee 7
1637      i32.store8
1638      local.get 7
1639      i32.const 255
1640      i32.and
1641      i32.const 255
1642      i32.ne
1643      if (result i32)  ;; label = @2
183 ------------------------------------------------------------
1644        local.get 5
1645        i32.const 1
1646        i32.add
1647      else
184 ------------------------------------------------------------
1648        local.get 5
1649        i32.const 0
1650        i32.store8
1651        local.get 5
1652        i32.const 2
1653        i32.add
1654      end
185 ------------------------------------------------------------
1655      local.tee 5
1656      local.get 3
1657      local.get 2
1658      i32.const -16
1659      i32.add
1660      local.tee 2
1661      i32.shr_u
1662      local.tee 7
1663      i32.store8
1664      local.get 7
1665      i32.const 255
1666      i32.and
1667      i32.const 255
1668      i32.ne
1669      if  ;; label = @2
186 ------------------------------------------------------------
1670        local.get 5
1671        i32.const 1
1672        i32.add
1673        local.set 5
1674        br 1 (;@1;)
187 ------------------------------------------------------------
1675      end
188 ------------------------------------------------------------
1676      local.get 5
1677      i32.const 0
1678      i32.store8
1679      local.get 5
1680      i32.const 2
1681      i32.add
1682      local.set 5
1683    end
189 ------------------------------------------------------------
1684    block  ;; label = @1
190 ------------------------------------------------------------
1685      local.get 1
1686      i32.load16_s
1687      local.tee 7
1688      i32.eqz
1689      if  ;; label = @2
191 ------------------------------------------------------------
1690        local.get 6
1691        i32.const 1
1692        i32.add
1693        local.set 6
1694        br 1 (;@1;)
192 ------------------------------------------------------------
1695      end
193 ------------------------------------------------------------
1696      local.get 3
1697      local.get 4
1698      local.get 7
1699      i32.const 31
1700      i32.shr_s
1701      local.tee 9
1702      local.get 7
1703      i32.xor
1704      local.get 9
1705      i32.sub
1706      i32.const 66832
1707      i32.add
1708      i32.load8_u
1709      local.tee 8
1710      local.get 6
1711      i32.const 4
1712      i32.shl
1713      i32.add
1714      local.tee 3
1715      i32.add
1716      i32.const 1024
1717      i32.add
1718      i32.load8_s
1719      local.tee 6
1720      i32.shl
1721      local.get 4
1722      local.get 3
1723      i32.const 2
1724      i32.shl
1725      i32.add
1726      i32.load
1727      i32.or
1728      local.set 3
1729      local.get 7
1730      local.get 9
1731      i32.add
1732      i32.const -1
1733      local.get 8
1734      i32.shl
1735      i32.const -1
1736      i32.xor
1737      i32.and
1738      local.set 7
1739      block  ;; label = @2
194 ------------------------------------------------------------
1740        local.get 2
1741        local.get 6
1742        i32.add
1743        local.tee 2
1744        i32.const 16
1745        i32.lt_s
1746        br_if 0 (;@2;)
195 ------------------------------------------------------------
1747        local.get 5
1748        local.get 3
1749        local.get 2
1750        i32.const -8
1751        i32.add
1752        i32.shr_u
1753        local.tee 6
1754        i32.store8
1755        local.get 6
1756        i32.const 255
1757        i32.and
1758        i32.const 255
1759        i32.ne
1760        if (result i32)  ;; label = @3
196 ------------------------------------------------------------
1761          local.get 5
1762          i32.const 1
1763          i32.add
1764        else
197 ------------------------------------------------------------
1765          local.get 5
1766          i32.const 0
1767          i32.store8
1768          local.get 5
1769          i32.const 2
1770          i32.add
1771        end
198 ------------------------------------------------------------
1772        local.tee 5
1773        local.get 3
1774        local.get 2
1775        i32.const -16
1776        i32.add
1777        local.tee 2
1778        i32.shr_u
1779        local.tee 6
1780        i32.store8
1781        local.get 6
1782        i32.const 255
1783        i32.and
1784        i32.const 255
1785        i32.ne
1786        if  ;; label = @3
199 ------------------------------------------------------------
1787          local.get 5
1788          i32.const 1
1789          i32.add
1790          local.set 5
1791          br 1 (;@2;)
200 ------------------------------------------------------------
1792        end
201 ------------------------------------------------------------
1793        local.get 5
1794        i32.const 0
1795        i32.store8
1796        local.get 5
1797        i32.const 2
1798        i32.add
1799        local.set 5
1800      end
202 ------------------------------------------------------------
1801      local.get 3
1802      local.get 8
1803      i32.shl
1804      local.get 7
1805      i32.or
1806      local.set 3
1807      i32.const 0
1808      local.set 6
1809      local.get 2
1810      local.get 8
1811      i32.add
1812      local.tee 2
1813      i32.const 16
1814      i32.lt_s
1815      br_if 0 (;@1;)
203 ------------------------------------------------------------
1816      local.get 5
1817      local.get 3
1818      local.get 2
1819      i32.const -8
1820      i32.add
1821      i32.shr_u
1822      local.tee 7
1823      i32.store8
1824      local.get 7
1825      i32.const 255
1826      i32.and
1827      i32.const 255
1828      i32.ne
1829      if (result i32)  ;; label = @2
204 ------------------------------------------------------------
1830        local.get 5
1831        i32.const 1
1832        i32.add
1833      else
205 ------------------------------------------------------------
1834        local.get 5
1835        i32.const 0
1836        i32.store8
1837        local.get 5
1838        i32.const 2
1839        i32.add
1840      end
206 ------------------------------------------------------------
1841      local.tee 5
1842      local.get 3
1843      local.get 2
1844      i32.const -16
1845      i32.add
1846      local.tee 2
1847      i32.shr_u
1848      local.tee 7
1849      i32.store8
1850      local.get 7
1851      i32.const 255
1852      i32.and
1853      i32.const 255
1854      i32.ne
1855      if  ;; label = @2
207 ------------------------------------------------------------
1856        local.get 5
1857        i32.const 1
1858        i32.add
1859        local.set 5
1860        br 1 (;@1;)
208 ------------------------------------------------------------
1861      end
209 ------------------------------------------------------------
1862      local.get 5
1863      i32.const 0
1864      i32.store8
1865      local.get 5
1866      i32.const 2
1867      i32.add
1868      local.set 5
1869    end
210 ------------------------------------------------------------
1870    block  ;; label = @1
211 ------------------------------------------------------------
1871      local.get 1
1872      i32.load16_s
1873      local.tee 7
1874      i32.eqz
1875      if  ;; label = @2
212 ------------------------------------------------------------
1876        local.get 6
1877        i32.const 1
1878        i32.add
1879        local.set 6
1880        br 1 (;@1;)
213 ------------------------------------------------------------
1881      end
214 ------------------------------------------------------------
1882      local.get 3
1883      local.get 4
1884      local.get 7
1885      i32.const 31
1886      i32.shr_s
1887      local.tee 9
1888      local.get 7
1889      i32.xor
1890      local.get 9
1891      i32.sub
1892      i32.const 66832
1893      i32.add
1894      i32.load8_u
1895      local.tee 8
1896      local.get 6
1897      i32.const 4
1898      i32.shl
1899      i32.add
1900      local.tee 3
1901      i32.add
1902      i32.const 1024
1903      i32.add
1904      i32.load8_s
1905      local.tee 6
1906      i32.shl
1907      local.get 4
1908      local.get 3
1909      i32.const 2
1910      i32.shl
1911      i32.add
1912      i32.load
1913      i32.or
1914      local.set 3
1915      local.get 7
1916      local.get 9
1917      i32.add
1918      i32.const -1
1919      local.get 8
1920      i32.shl
1921      i32.const -1
1922      i32.xor
1923      i32.and
1924      local.set 7
1925      block  ;; label = @2
215 ------------------------------------------------------------
1926        local.get 2
1927        local.get 6
1928        i32.add
1929        local.tee 2
1930        i32.const 16
1931        i32.lt_s
1932        br_if 0 (;@2;)
216 ------------------------------------------------------------
1933        local.get 5
1934        local.get 3
1935        local.get 2
1936        i32.const -8
1937        i32.add
1938        i32.shr_u
1939        local.tee 6
1940        i32.store8
1941        local.get 6
1942        i32.const 255
1943        i32.and
1944        i32.const 255
1945        i32.ne
1946        if (result i32)  ;; label = @3
217 ------------------------------------------------------------
1947          local.get 5
1948          i32.const 1
1949          i32.add
1950        else
218 ------------------------------------------------------------
1951          local.get 5
1952          i32.const 0
1953          i32.store8
1954          local.get 5
1955          i32.const 2
1956          i32.add
1957        end
219 ------------------------------------------------------------
1958        local.tee 5
1959        local.get 3
1960        local.get 2
1961        i32.const -16
1962        i32.add
1963        local.tee 2
1964        i32.shr_u
1965        local.tee 6
1966        i32.store8
1967        local.get 6
1968        i32.const 255
1969        i32.and
1970        i32.const 255
1971        i32.ne
1972        if  ;; label = @3
220 ------------------------------------------------------------
1973          local.get 5
1974          i32.const 1
1975          i32.add
1976          local.set 5
1977          br 1 (;@2;)
221 ------------------------------------------------------------
1978        end
222 ------------------------------------------------------------
1979        local.get 5
1980        i32.const 0
1981        i32.store8
1982        local.get 5
1983        i32.const 2
1984        i32.add
1985        local.set 5
1986      end
223 ------------------------------------------------------------
1987      local.get 3
1988      local.get 8
1989      i32.shl
1990      local.get 7
1991      i32.or
1992      local.set 3
1993      i32.const 0
1994      local.set 6
1995      local.get 2
1996      local.get 8
1997      i32.add
1998      local.tee 2
1999      i32.const 16
2000      i32.lt_s
2001      br_if 0 (;@1;)
224 ------------------------------------------------------------
2002      local.get 5
2003      local.get 3
2004      local.get 2
2005      i32.const -8
2006      i32.add
2007      i32.shr_u
2008      local.tee 7
2009      i32.store8
2010      local.get 7
2011      i32.const 255
2012      i32.and
2013      i32.const 255
2014      i32.ne
2015      if (result i32)  ;; label = @2
225 ------------------------------------------------------------
2016        local.get 5
2017        i32.const 1
2018        i32.add
2019      else
226 ------------------------------------------------------------
2020        local.get 5
2021        i32.const 0
2022        i32.store8
2023        local.get 5
2024        i32.const 2
2025        i32.add
2026      end
227 ------------------------------------------------------------
2027      local.tee 5
2028      local.get 3
2029      local.get 2
2030      i32.const -16
2031      i32.add
2032      local.tee 2
2033      i32.shr_u
2034      local.tee 7
2035      i32.store8
2036      local.get 7
2037      i32.const 255
2038      i32.and
2039      i32.const 255
2040      i32.ne
2041      if  ;; label = @2
228 ------------------------------------------------------------
2042        local.get 5
2043        i32.const 1
2044        i32.add
2045        local.set 5
2046        br 1 (;@1;)
229 ------------------------------------------------------------
2047      end
230 ------------------------------------------------------------
2048      local.get 5
2049      i32.const 0
2050      i32.store8
2051      local.get 5
2052      i32.const 2
2053      i32.add
2054      local.set 5
2055    end
231 ------------------------------------------------------------
2056    block  ;; label = @1
232 ------------------------------------------------------------
2057      local.get 1
2058      i32.load16_s
2059      local.tee 7
2060      i32.eqz
2061      if  ;; label = @2
233 ------------------------------------------------------------
2062        local.get 6
2063        i32.const 1
2064        i32.add
2065        local.set 6
2066        br 1 (;@1;)
234 ------------------------------------------------------------
2067      end
235 ------------------------------------------------------------
2068      local.get 3
2069      local.get 4
2070      local.get 7
2071      i32.const 31
2072      i32.shr_s
2073      local.tee 9
2074      local.get 7
2075      i32.xor
2076      local.get 9
2077      i32.sub
2078      i32.const 66832
2079      i32.add
2080      i32.load8_u
2081      local.tee 8
2082      local.get 6
2083      i32.const 4
2084      i32.shl
2085      i32.add
2086      local.tee 3
2087      i32.add
2088      i32.const 1024
2089      i32.add
2090      i32.load8_s
2091      local.tee 6
2092      i32.shl
2093      local.get 4
2094      local.get 3
2095      i32.const 2
2096      i32.shl
2097      i32.add
2098      i32.load
2099      i32.or
2100      local.set 3
2101      local.get 7
2102      local.get 9
2103      i32.add
2104      i32.const -1
2105      local.get 8
2106      i32.shl
2107      i32.const -1
2108      i32.xor
2109      i32.and
2110      local.set 7
2111      block  ;; label = @2
236 ------------------------------------------------------------
2112        local.get 2
2113        local.get 6
2114        i32.add
2115        local.tee 2
2116        i32.const 16
2117        i32.lt_s
2118        br_if 0 (;@2;)
237 ------------------------------------------------------------
2119        local.get 5
2120        local.get 3
2121        local.get 2
2122        i32.const -8
2123        i32.add
2124        i32.shr_u
2125        local.tee 6
2126        i32.store8
2127        local.get 6
2128        i32.const 255
2129        i32.and
2130        i32.const 255
2131        i32.ne
2132        if (result i32)  ;; label = @3
238 ------------------------------------------------------------
2133          local.get 5
2134          i32.const 1
2135          i32.add
2136        else
239 ------------------------------------------------------------
2137          local.get 5
2138          i32.const 0
2139          i32.store8
2140          local.get 5
2141          i32.const 2
2142          i32.add
2143        end
240 ------------------------------------------------------------
2144        local.tee 5
2145        local.get 3
2146        local.get 2
2147        i32.const -16
2148        i32.add
2149        local.tee 2
2150        i32.shr_u
2151        local.tee 6
2152        i32.store8
2153        local.get 6
2154        i32.const 255
2155        i32.and
2156        i32.const 255
2157        i32.ne
2158        if  ;; label = @3
241 ------------------------------------------------------------
2159          local.get 5
2160          i32.const 1
2161          i32.add
2162          local.set 5
2163          br 1 (;@2;)
242 ------------------------------------------------------------
2164        end
243 ------------------------------------------------------------
2165        local.get 5
2166        i32.const 0
2167        i32.store8
2168        local.get 5
2169        i32.const 2
2170        i32.add
2171        local.set 5
2172      end
244 ------------------------------------------------------------
2173      local.get 3
2174      local.get 8
2175      i32.shl
2176      local.get 7
2177      i32.or
2178      local.set 3
2179      i32.const 0
2180      local.set 6
2181      local.get 2
2182      local.get 8
2183      i32.add
2184      local.tee 2
2185      i32.const 16
2186      i32.lt_s
2187      br_if 0 (;@1;)
245 ------------------------------------------------------------
2188      local.get 5
2189      local.get 3
2190      local.get 2
2191      i32.const -8
2192      i32.add
2193      i32.shr_u
2194      local.tee 7
2195      i32.store8
2196      local.get 7
2197      i32.const 255
2198      i32.and
2199      i32.const 255
2200      i32.ne
2201      if (result i32)  ;; label = @2
246 ------------------------------------------------------------
2202        local.get 5
2203        i32.const 1
2204        i32.add
2205      else
247 ------------------------------------------------------------
2206        local.get 5
2207        i32.const 0
2208        i32.store8
2209        local.get 5
2210        i32.const 2
2211        i32.add
2212      end
248 ------------------------------------------------------------
2213      local.tee 5
2214      local.get 3
2215      local.get 2
2216      i32.const -16
2217      i32.add
2218      local.tee 2
2219      i32.shr_u
2220      local.tee 7
2221      i32.store8
2222      local.get 7
2223      i32.const 255
2224      i32.and
2225      i32.const 255
2226      i32.ne
2227      if  ;; label = @2
249 ------------------------------------------------------------
2228        local.get 5
2229        i32.const 1
2230        i32.add
2231        local.set 5
2232        br 1 (;@1;)
250 ------------------------------------------------------------
2233      end
251 ------------------------------------------------------------
2234      local.get 5
2235      i32.const 0
2236      i32.store8
2237      local.get 5
2238      i32.const 2
2239      i32.add
2240      local.set 5
2241    end
252 ------------------------------------------------------------
2242    block  ;; label = @1
253 ------------------------------------------------------------
2243      local.get 1
2244      i32.load16_s
2245      local.tee 7
2246      i32.eqz
2247      if  ;; label = @2
254 ------------------------------------------------------------
2248        local.get 6
2249        i32.const 1
2250        i32.add
2251        local.set 6
2252        br 1 (;@1;)
255 ------------------------------------------------------------
2253      end
256 ------------------------------------------------------------
2254      local.get 3
2255      local.get 4
2256      local.get 7
2257      i32.const 31
2258      i32.shr_s
2259      local.tee 9
2260      local.get 7
2261      i32.xor
2262      local.get 9
2263      i32.sub
2264      i32.const 66832
2265      i32.add
2266      i32.load8_u
2267      local.tee 8
2268      local.get 6
2269      i32.const 4
2270      i32.shl
2271      i32.add
2272      local.tee 3
2273      i32.add
2274      i32.const 1024
2275      i32.add
2276      i32.load8_s
2277      local.tee 6
2278      i32.shl
2279      local.get 4
2280      local.get 3
2281      i32.const 2
2282      i32.shl
2283      i32.add
2284      i32.load
2285      i32.or
2286      local.set 3
2287      local.get 7
2288      local.get 9
2289      i32.add
2290      i32.const -1
2291      local.get 8
2292      i32.shl
2293      i32.const -1
2294      i32.xor
2295      i32.and
2296      local.set 7
2297      block  ;; label = @2
257 ------------------------------------------------------------
2298        local.get 2
2299        local.get 6
2300        i32.add
2301        local.tee 2
2302        i32.const 16
2303        i32.lt_s
2304        br_if 0 (;@2;)
258 ------------------------------------------------------------
2305        local.get 5
2306        local.get 3
2307        local.get 2
2308        i32.const -8
2309        i32.add
2310        i32.shr_u
2311        local.tee 6
2312        i32.store8
2313        local.get 6
2314        i32.const 255
2315        i32.and
2316        i32.const 255
2317        i32.ne
2318        if (result i32)  ;; label = @3
259 ------------------------------------------------------------
2319          local.get 5
2320          i32.const 1
2321          i32.add
2322        else
260 ------------------------------------------------------------
2323          local.get 5
2324          i32.const 0
2325          i32.store8
2326          local.get 5
2327          i32.const 2
2328          i32.add
2329        end
261 ------------------------------------------------------------
2330        local.tee 5
2331        local.get 3
2332        local.get 2
2333        i32.const -16
2334        i32.add
2335        local.tee 2
2336        i32.shr_u
2337        local.tee 6
2338        i32.store8
2339        local.get 6
2340        i32.const 255
2341        i32.and
2342        i32.const 255
2343        i32.ne
2344        if  ;; label = @3
262 ------------------------------------------------------------
2345          local.get 5
2346          i32.const 1
2347          i32.add
2348          local.set 5
2349          br 1 (;@2;)
263 ------------------------------------------------------------
2350        end
264 ------------------------------------------------------------
2351        local.get 5
2352        i32.const 0
2353        i32.store8
2354        local.get 5
2355        i32.const 2
2356        i32.add
2357        local.set 5
2358      end
265 ------------------------------------------------------------
2359      local.get 3
2360      local.get 8
2361      i32.shl
2362      local.get 7
2363      i32.or
2364      local.set 3
2365      i32.const 0
2366      local.set 6
2367      local.get 2
2368      local.get 8
2369      i32.add
2370      local.tee 2
2371      i32.const 16
2372      i32.lt_s
2373      br_if 0 (;@1;)
266 ------------------------------------------------------------
2374      local.get 5
2375      local.get 3
2376      local.get 2
2377      i32.const -8
2378      i32.add
2379      i32.shr_u
2380      local.tee 7
2381      i32.store8
2382      local.get 7
2383      i32.const 255
2384      i32.and
2385      i32.const 255
2386      i32.ne
2387      if (result i32)  ;; label = @2
267 ------------------------------------------------------------
2388        local.get 5
2389        i32.const 1
2390        i32.add
2391      else
268 ------------------------------------------------------------
2392        local.get 5
2393        i32.const 0
2394        i32.store8
2395        local.get 5
2396        i32.const 2
2397        i32.add
2398      end
269 ------------------------------------------------------------
2399      local.tee 5
2400      local.get 3
2401      local.get 2
2402      i32.const -16
2403      i32.add
2404      local.tee 2
2405      i32.shr_u
2406      local.tee 7
2407      i32.store8
2408      local.get 7
2409      i32.const 255
2410      i32.and
2411      i32.const 255
2412      i32.ne
2413      if  ;; label = @2
270 ------------------------------------------------------------
2414        local.get 5
2415        i32.const 1
2416        i32.add
2417        local.set 5
2418        br 1 (;@1;)
271 ------------------------------------------------------------
2419      end
272 ------------------------------------------------------------
2420      local.get 5
2421      i32.const 0
2422      i32.store8
2423      local.get 5
2424      i32.const 2
2425      i32.add
2426      local.set 5
2427    end
273 ------------------------------------------------------------
2428    block  ;; label = @1
274 ------------------------------------------------------------
2429      local.get 1
2430      i32.load16_s
2431      local.tee 7
2432      i32.eqz
2433      if  ;; label = @2
275 ------------------------------------------------------------
2434        local.get 6
2435        i32.const 1
2436        i32.add
2437        local.set 6
2438        br 1 (;@1;)
276 ------------------------------------------------------------
2439      end
277 ------------------------------------------------------------
2440      local.get 3
2441      local.get 4
2442      local.get 7
2443      i32.const 31
2444      i32.shr_s
2445      local.tee 9
2446      local.get 7
2447      i32.xor
2448      local.get 9
2449      i32.sub
2450      i32.const 66832
2451      i32.add
2452      i32.load8_u
2453      local.tee 8
2454      local.get 6
2455      i32.const 4
2456      i32.shl
2457      i32.add
2458      local.tee 3
2459      i32.add
2460      i32.const 1024
2461      i32.add
2462      i32.load8_s
2463      local.tee 6
2464      i32.shl
2465      local.get 4
2466      local.get 3
2467      i32.const 2
2468      i32.shl
2469      i32.add
2470      i32.load
2471      i32.or
2472      local.set 3
2473      local.get 7
2474      local.get 9
2475      i32.add
2476      i32.const -1
2477      local.get 8
2478      i32.shl
2479      i32.const -1
2480      i32.xor
2481      i32.and
2482      local.set 7
2483      block  ;; label = @2
278 ------------------------------------------------------------
2484        local.get 2
2485        local.get 6
2486        i32.add
2487        local.tee 2
2488        i32.const 16
2489        i32.lt_s
2490        br_if 0 (;@2;)
279 ------------------------------------------------------------
2491        local.get 5
2492        local.get 3
2493        local.get 2
2494        i32.const -8
2495        i32.add
2496        i32.shr_u
2497        local.tee 6
2498        i32.store8
2499        local.get 6
2500        i32.const 255
2501        i32.and
2502        i32.const 255
2503        i32.ne
2504        if (result i32)  ;; label = @3
280 ------------------------------------------------------------
2505          local.get 5
2506          i32.const 1
2507          i32.add
2508        else
281 ------------------------------------------------------------
2509          local.get 5
2510          i32.const 0
2511          i32.store8
2512          local.get 5
2513          i32.const 2
2514          i32.add
2515        end
282 ------------------------------------------------------------
2516        local.tee 5
2517        local.get 3
2518        local.get 2
2519        i32.const -16
2520        i32.add
2521        local.tee 2
2522        i32.shr_u
2523        local.tee 6
2524        i32.store8
2525        local.get 6
2526        i32.const 255
2527        i32.and
2528        i32.const 255
2529        i32.ne
2530        if  ;; label = @3
283 ------------------------------------------------------------
2531          local.get 5
2532          i32.const 1
2533          i32.add
2534          local.set 5
2535          br 1 (;@2;)
284 ------------------------------------------------------------
2536        end
285 ------------------------------------------------------------
2537        local.get 5
2538        i32.const 0
2539        i32.store8
2540        local.get 5
2541        i32.const 2
2542        i32.add
2543        local.set 5
2544      end
286 ------------------------------------------------------------
2545      local.get 3
2546      local.get 8
2547      i32.shl
2548      local.get 7
2549      i32.or
2550      local.set 3
2551      i32.const 0
2552      local.set 6
2553      local.get 2
2554      local.get 8
2555      i32.add
2556      local.tee 2
2557      i32.const 16
2558      i32.lt_s
2559      br_if 0 (;@1;)
287 ------------------------------------------------------------
2560      local.get 5
2561      local.get 3
2562      local.get 2
2563      i32.const -8
2564      i32.add
2565      i32.shr_u
2566      local.tee 7
2567      i32.store8
2568      local.get 7
2569      i32.const 255
2570      i32.and
2571      i32.const 255
2572      i32.ne
2573      if (result i32)  ;; label = @2
288 ------------------------------------------------------------
2574        local.get 5
2575        i32.const 1
2576        i32.add
2577      else
289 ------------------------------------------------------------
2578        local.get 5
2579        i32.const 0
2580        i32.store8
2581        local.get 5
2582        i32.const 2
2583        i32.add
2584      end
290 ------------------------------------------------------------
2585      local.tee 5
2586      local.get 3
2587      local.get 2
2588      i32.const -16
2589      i32.add
2590      local.tee 2
2591      i32.shr_u
2592      local.tee 7
2593      i32.store8
2594      local.get 7
2595      i32.const 255
2596      i32.and
2597      i32.const 255
2598      i32.ne
2599      if  ;; label = @2
291 ------------------------------------------------------------
2600        local.get 5
2601        i32.const 1
2602        i32.add
2603        local.set 5
2604        br 1 (;@1;)
292 ------------------------------------------------------------
2605      end
293 ------------------------------------------------------------
2606      local.get 5
2607      i32.const 0
2608      i32.store8
2609      local.get 5
2610      i32.const 2
2611      i32.add
2612      local.set 5
2613    end
294 ------------------------------------------------------------
2614    block  ;; label = @1
295 ------------------------------------------------------------
2615      local.get 1
2616      i32.load16_s
2617      local.tee 7
2618      i32.eqz
2619      if  ;; label = @2
296 ------------------------------------------------------------
2620        local.get 6
2621        i32.const 1
2622        i32.add
2623        local.set 6
2624        br 1 (;@1;)
297 ------------------------------------------------------------
2625      end
298 ------------------------------------------------------------
2626      local.get 3
2627      local.get 4
2628      local.get 7
2629      i32.const 31
2630      i32.shr_s
2631      local.tee 9
2632      local.get 7
2633      i32.xor
2634      local.get 9
2635      i32.sub
2636      i32.const 66832
2637      i32.add
2638      i32.load8_u
2639      local.tee 8
2640      local.get 6
2641      i32.const 4
2642      i32.shl
2643      i32.add
2644      local.tee 3
2645      i32.add
2646      i32.const 1024
2647      i32.add
2648      i32.load8_s
2649      local.tee 6
2650      i32.shl
2651      local.get 4
2652      local.get 3
2653      i32.const 2
2654      i32.shl
2655      i32.add
2656      i32.load
2657      i32.or
2658      local.set 3
2659      local.get 7
2660      local.get 9
2661      i32.add
2662      i32.const -1
2663      local.get 8
2664      i32.shl
2665      i32.const -1
2666      i32.xor
2667      i32.and
2668      local.set 7
2669      block  ;; label = @2
299 ------------------------------------------------------------
2670        local.get 2
2671        local.get 6
2672        i32.add
2673        local.tee 2
2674        i32.const 16
2675        i32.lt_s
2676        br_if 0 (;@2;)
300 ------------------------------------------------------------
2677        local.get 5
2678        local.get 3
2679        local.get 2
2680        i32.const -8
2681        i32.add
2682        i32.shr_u
2683        local.tee 6
2684        i32.store8
2685        local.get 6
2686        i32.const 255
2687        i32.and
2688        i32.const 255
2689        i32.ne
2690        if (result i32)  ;; label = @3
301 ------------------------------------------------------------
2691          local.get 5
2692          i32.const 1
2693          i32.add
2694        else
302 ------------------------------------------------------------
2695          local.get 5
2696          i32.const 0
2697          i32.store8
2698          local.get 5
2699          i32.const 2
2700          i32.add
2701        end
303 ------------------------------------------------------------
2702        local.tee 5
2703        local.get 3
2704        local.get 2
2705        i32.const -16
2706        i32.add
2707        local.tee 2
2708        i32.shr_u
2709        local.tee 6
2710        i32.store8
2711        local.get 6
2712        i32.const 255
2713        i32.and
2714        i32.const 255
2715        i32.ne
2716        if  ;; label = @3
304 ------------------------------------------------------------
2717          local.get 5
2718          i32.const 1
2719          i32.add
2720          local.set 5
2721          br 1 (;@2;)
305 ------------------------------------------------------------
2722        end
306 ------------------------------------------------------------
2723        local.get 5
2724        i32.const 0
2725        i32.store8
2726        local.get 5
2727        i32.const 2
2728        i32.add
2729        local.set 5
2730      end
307 ------------------------------------------------------------
2731      local.get 3
2732      local.get 8
2733      i32.shl
2734      local.get 7
2735      i32.or
2736      local.set 3
2737      i32.const 0
2738      local.set 6
2739      local.get 2
2740      local.get 8
2741      i32.add
2742      local.tee 2
2743      i32.const 16
2744      i32.lt_s
2745      br_if 0 (;@1;)
308 ------------------------------------------------------------
2746      local.get 5
2747      local.get 3
2748      local.get 2
2749      i32.const -8
2750      i32.add
2751      i32.shr_u
2752      local.tee 7
2753      i32.store8
2754      local.get 7
2755      i32.const 255
2756      i32.and
2757      i32.const 255
2758      i32.ne
2759      if (result i32)  ;; label = @2
309 ------------------------------------------------------------
2760        local.get 5
2761        i32.const 1
2762        i32.add
2763      else
310 ------------------------------------------------------------
2764        local.get 5
2765        i32.const 0
2766        i32.store8
2767        local.get 5
2768        i32.const 2
2769        i32.add
2770      end
311 ------------------------------------------------------------
2771      local.tee 5
2772      local.get 3
2773      local.get 2
2774      i32.const -16
2775      i32.add
2776      local.tee 2
2777      i32.shr_u
2778      local.tee 7
2779      i32.store8
2780      local.get 7
2781      i32.const 255
2782      i32.and
2783      i32.const 255
2784      i32.ne
2785      if  ;; label = @2
312 ------------------------------------------------------------
2786        local.get 5
2787        i32.const 1
2788        i32.add
2789        local.set 5
2790        br 1 (;@1;)
313 ------------------------------------------------------------
2791      end
314 ------------------------------------------------------------
2792      local.get 5
2793      i32.const 0
2794      i32.store8
2795      local.get 5
2796      i32.const 2
2797      i32.add
2798      local.set 5
2799    end
315 ------------------------------------------------------------
2800    block  ;; label = @1
316 ------------------------------------------------------------
2801      local.get 1
2802      i32.load16_s
2803      local.tee 7
2804      i32.eqz
2805      if  ;; label = @2
317 ------------------------------------------------------------
2806        local.get 6
2807        i32.const 1
2808        i32.add
2809        local.set 6
2810        br 1 (;@1;)
318 ------------------------------------------------------------
2811      end
319 ------------------------------------------------------------
2812      local.get 3
2813      local.get 4
2814      local.get 7
2815      i32.const 31
2816      i32.shr_s
2817      local.tee 9
2818      local.get 7
2819      i32.xor
2820      local.get 9
2821      i32.sub
2822      i32.const 66832
2823      i32.add
2824      i32.load8_u
2825      local.tee 8
2826      local.get 6
2827      i32.const 4
2828      i32.shl
2829      i32.add
2830      local.tee 3
2831      i32.add
2832      i32.const 1024
2833      i32.add
2834      i32.load8_s
2835      local.tee 6
2836      i32.shl
2837      local.get 4
2838      local.get 3
2839      i32.const 2
2840      i32.shl
2841      i32.add
2842      i32.load
2843      i32.or
2844      local.set 3
2845      local.get 7
2846      local.get 9
2847      i32.add
2848      i32.const -1
2849      local.get 8
2850      i32.shl
2851      i32.const -1
2852      i32.xor
2853      i32.and
2854      local.set 7
2855      block  ;; label = @2
320 ------------------------------------------------------------
2856        local.get 2
2857        local.get 6
2858        i32.add
2859        local.tee 2
2860        i32.const 16
2861        i32.lt_s
2862        br_if 0 (;@2;)
321 ------------------------------------------------------------
2863        local.get 5
2864        local.get 3
2865        local.get 2
2866        i32.const -8
2867        i32.add
2868        i32.shr_u
2869        local.tee 6
2870        i32.store8
2871        local.get 6
2872        i32.const 255
2873        i32.and
2874        i32.const 255
2875        i32.ne
2876        if (result i32)  ;; label = @3
322 ------------------------------------------------------------
2877          local.get 5
2878          i32.const 1
2879          i32.add
2880        else
323 ------------------------------------------------------------
2881          local.get 5
2882          i32.const 0
2883          i32.store8
2884          local.get 5
2885          i32.const 2
2886          i32.add
2887        end
324 ------------------------------------------------------------
2888        local.tee 5
2889        local.get 3
2890        local.get 2
2891        i32.const -16
2892        i32.add
2893        local.tee 2
2894        i32.shr_u
2895        local.tee 6
2896        i32.store8
2897        local.get 6
2898        i32.const 255
2899        i32.and
2900        i32.const 255
2901        i32.ne
2902        if  ;; label = @3
325 ------------------------------------------------------------
2903          local.get 5
2904          i32.const 1
2905          i32.add
2906          local.set 5
2907          br 1 (;@2;)
326 ------------------------------------------------------------
2908        end
327 ------------------------------------------------------------
2909        local.get 5
2910        i32.const 0
2911        i32.store8
2912        local.get 5
2913        i32.const 2
2914        i32.add
2915        local.set 5
2916      end
328 ------------------------------------------------------------
2917      local.get 3
2918      local.get 8
2919      i32.shl
2920      local.get 7
2921      i32.or
2922      local.set 3
2923      i32.const 0
2924      local.set 6
2925      local.get 2
2926      local.get 8
2927      i32.add
2928      local.tee 2
2929      i32.const 16
2930      i32.lt_s
2931      br_if 0 (;@1;)
329 ------------------------------------------------------------
2932      local.get 5
2933      local.get 3
2934      local.get 2
2935      i32.const -8
2936      i32.add
2937      i32.shr_u
2938      local.tee 7
2939      i32.store8
2940      local.get 7
2941      i32.const 255
2942      i32.and
2943      i32.const 255
2944      i32.ne
2945      if (result i32)  ;; label = @2
330 ------------------------------------------------------------
2946        local.get 5
2947        i32.const 1
2948        i32.add
2949      else
331 ------------------------------------------------------------
2950        local.get 5
2951        i32.const 0
2952        i32.store8
2953        local.get 5
2954        i32.const 2
2955        i32.add
2956      end
332 ------------------------------------------------------------
2957      local.tee 5
2958      local.get 3
2959      local.get 2
2960      i32.const -16
2961      i32.add
2962      local.tee 2
2963      i32.shr_u
2964      local.tee 7
2965      i32.store8
2966      local.get 7
2967      i32.const 255
2968      i32.and
2969      i32.const 255
2970      i32.ne
2971      if  ;; label = @2
333 ------------------------------------------------------------
2972        local.get 5
2973        i32.const 1
2974        i32.add
2975        local.set 5
2976        br 1 (;@1;)
334 ------------------------------------------------------------
2977      end
335 ------------------------------------------------------------
2978      local.get 5
2979      i32.const 0
2980      i32.store8
2981      local.get 5
2982      i32.const 2
2983      i32.add
2984      local.set 5
2985    end
336 ------------------------------------------------------------
2986    block  ;; label = @1
337 ------------------------------------------------------------
2987      local.get 1
2988      i32.load16_s
2989      local.tee 7
2990      i32.eqz
2991      if  ;; label = @2
338 ------------------------------------------------------------
2992        local.get 6
2993        i32.const 1
2994        i32.add
2995        local.set 6
2996        br 1 (;@1;)
339 ------------------------------------------------------------
2997      end
340 ------------------------------------------------------------
2998      local.get 3
2999      local.get 4
3000      local.get 7
3001      i32.const 31
3002      i32.shr_s
3003      local.tee 9
3004      local.get 7
3005      i32.xor
3006      local.get 9
3007      i32.sub
3008      i32.const 66832
3009      i32.add
3010      i32.load8_u
3011      local.tee 8
3012      local.get 6
3013      i32.const 4
3014      i32.shl
3015      i32.add
3016      local.tee 3
3017      i32.add
3018      i32.const 1024
3019      i32.add
3020      i32.load8_s
3021      local.tee 6
3022      i32.shl
3023      local.get 4
3024      local.get 3
3025      i32.const 2
3026      i32.shl
3027      i32.add
3028      i32.load
3029      i32.or
3030      local.set 3
3031      local.get 7
3032      local.get 9
3033      i32.add
3034      i32.const -1
3035      local.get 8
3036      i32.shl
3037      i32.const -1
3038      i32.xor
3039      i32.and
3040      local.set 7
3041      block  ;; label = @2
341 ------------------------------------------------------------
3042        local.get 2
3043        local.get 6
3044        i32.add
3045        local.tee 2
3046        i32.const 16
3047        i32.lt_s
3048        br_if 0 (;@2;)
342 ------------------------------------------------------------
3049        local.get 5
3050        local.get 3
3051        local.get 2
3052        i32.const -8
3053        i32.add
3054        i32.shr_u
3055        local.tee 6
3056        i32.store8
3057        local.get 6
3058        i32.const 255
3059        i32.and
3060        i32.const 255
3061        i32.ne
3062        if (result i32)  ;; label = @3
343 ------------------------------------------------------------
3063          local.get 5
3064          i32.const 1
3065          i32.add
3066        else
344 ------------------------------------------------------------
3067          local.get 5
3068          i32.const 0
3069          i32.store8
3070          local.get 5
3071          i32.const 2
3072          i32.add
3073        end
345 ------------------------------------------------------------
3074        local.tee 5
3075        local.get 3
3076        local.get 2
3077        i32.const -16
3078        i32.add
3079        local.tee 2
3080        i32.shr_u
3081        local.tee 6
3082        i32.store8
3083        local.get 6
3084        i32.const 255
3085        i32.and
3086        i32.const 255
3087        i32.ne
3088        if  ;; label = @3
346 ------------------------------------------------------------
3089          local.get 5
3090          i32.const 1
3091          i32.add
3092          local.set 5
3093          br 1 (;@2;)
347 ------------------------------------------------------------
3094        end
348 ------------------------------------------------------------
3095        local.get 5
3096        i32.const 0
3097        i32.store8
3098        local.get 5
3099        i32.const 2
3100        i32.add
3101        local.set 5
3102      end
349 ------------------------------------------------------------
3103      local.get 3
3104      local.get 8
3105      i32.shl
3106      local.get 7
3107      i32.or
3108      local.set 3
3109      i32.const 0
3110      local.set 6
3111      local.get 2
3112      local.get 8
3113      i32.add
3114      local.tee 2
3115      i32.const 16
3116      i32.lt_s
3117      br_if 0 (;@1;)
350 ------------------------------------------------------------
3118      local.get 5
3119      local.get 3
3120      local.get 2
3121      i32.const -8
3122      i32.add
3123      i32.shr_u
3124      local.tee 7
3125      i32.store8
3126      local.get 7
3127      i32.const 255
3128      i32.and
3129      i32.const 255
3130      i32.ne
3131      if (result i32)  ;; label = @2
351 ------------------------------------------------------------
3132        local.get 5
3133        i32.const 1
3134        i32.add
3135      else
352 ------------------------------------------------------------
3136        local.get 5
3137        i32.const 0
3138        i32.store8
3139        local.get 5
3140        i32.const 2
3141        i32.add
3142      end
353 ------------------------------------------------------------
3143      local.tee 5
3144      local.get 3
3145      local.get 2
3146      i32.const -16
3147      i32.add
3148      local.tee 2
3149      i32.shr_u
3150      local.tee 7
3151      i32.store8
3152      local.get 7
3153      i32.const 255
3154      i32.and
3155      i32.const 255
3156      i32.ne
3157      if  ;; label = @2
354 ------------------------------------------------------------
3158        local.get 5
3159        i32.const 1
3160        i32.add
3161        local.set 5
3162        br 1 (;@1;)
355 ------------------------------------------------------------
3163      end
356 ------------------------------------------------------------
3164      local.get 5
3165      i32.const 0
3166      i32.store8
3167      local.get 5
3168      i32.const 2
3169      i32.add
3170      local.set 5
3171    end
357 ------------------------------------------------------------
3172    block  ;; label = @1
358 ------------------------------------------------------------
3173      local.get 1
3174      i32.load16_s
3175      local.tee 8
3176      i32.eqz
3177      if  ;; label = @2
359 ------------------------------------------------------------
3178        local.get 6
3179        i32.const 1
3180        i32.add
3181        local.set 6
3182        br 1 (;@1;)
360 ------------------------------------------------------------
3183      end
361 ------------------------------------------------------------
3184      local.get 8
3185      i32.const 31
3186      i32.shr_s
3187      local.tee 9
3188      local.get 8
3189      i32.xor
3190      local.get 9
3191      i32.sub
3192      i32.const 66832
3193      i32.add
3194      i32.load8_u
3195      local.set 7
3196      local.get 8
3197      local.get 9
3198      i32.add
3199      local.set 8
3200      block  ;; label = @2
362 ------------------------------------------------------------
3201        local.get 6
3202        i32.const 16
3203        i32.lt_s
3204        br_if 0 (;@2;)
363 ------------------------------------------------------------
3205        local.get 3
3206        local.get 10
3207        i32.shl
3208        local.get 12
3209        i32.or
3210        local.set 3
3211        i32.const 0
3212        local.set 6
3213        local.get 2
3214        local.get 10
3215        i32.add
3216        local.tee 2
3217        i32.const 16
3218        i32.lt_s
3219        br_if 0 (;@2;)
364 ------------------------------------------------------------
3220        local.get 5
3221        local.get 3
3222        local.get 2
3223        i32.const -8
3224        i32.add
3225        i32.shr_u
3226        local.tee 9
3227        i32.store8
3228        local.get 9
3229        i32.const 255
3230        i32.and
3231        i32.const 255
3232        i32.ne
3233        if (result i32)  ;; label = @3
365 ------------------------------------------------------------
3234          local.get 5
3235          i32.const 1
3236          i32.add
3237        else
366 ------------------------------------------------------------
3238          local.get 5
3239          i32.const 0
3240          i32.store8
3241          local.get 5
3242          i32.const 2
3243          i32.add
3244        end
367 ------------------------------------------------------------
3245        local.tee 5
3246        local.get 3
3247        local.get 2
3248        i32.const -16
3249        i32.add
3250        local.tee 2
3251        i32.shr_u
3252        local.tee 9
3253        i32.store8
3254        local.get 9
3255        i32.const 255
3256        i32.and
3257        i32.const 255
3258        i32.ne
3259        if  ;; label = @3
368 ------------------------------------------------------------
3260          local.get 5
3261          i32.const 1
3262          i32.add
3263          local.set 5
3264          br 1 (;@2;)
369 ------------------------------------------------------------
3265        end
370 ------------------------------------------------------------
3266        local.get 5
3267        i32.const 0
3268        i32.store8
3269        local.get 5
3270        i32.const 2
3271        i32.add
3272        local.set 5
3273      end
371 ------------------------------------------------------------
3274      local.get 3
3275      local.get 4
3276      local.get 6
3277      i32.const 4
3278      i32.shl
3279      local.get 7
3280      i32.add
3281      local.tee 3
3282      i32.add
3283      i32.const 1024
3284      i32.add
3285      i32.load8_s
3286      local.tee 6
3287      i32.shl
3288      local.get 4
3289      local.get 3
3290      i32.const 2
3291      i32.shl
3292      i32.add
3293      i32.load
3294      i32.or
3295      local.set 3
3296      local.get 8
3297      i32.const -1
3298      local.get 7
3299      i32.shl
3300      i32.const -1
3301      i32.xor
3302      i32.and
3303      local.set 8
3304      block  ;; label = @2
372 ------------------------------------------------------------
3305        local.get 2
3306        local.get 6
3307        i32.add
3308        local.tee 2
3309        i32.const 16
3310        i32.lt_s
3311        br_if 0 (;@2;)
373 ------------------------------------------------------------
3312        local.get 5
3313        local.get 3
3314        local.get 2
3315        i32.const -8
3316        i32.add
3317        i32.shr_u
3318        local.tee 6
3319        i32.store8
3320        local.get 6
3321        i32.const 255
3322        i32.and
3323        i32.const 255
3324        i32.ne
3325        if (result i32)  ;; label = @3
374 ------------------------------------------------------------
3326          local.get 5
3327          i32.const 1
3328          i32.add
3329        else
375 ------------------------------------------------------------
3330          local.get 5
3331          i32.const 0
3332          i32.store8
3333          local.get 5
3334          i32.const 2
3335          i32.add
3336        end
376 ------------------------------------------------------------
3337        local.tee 5
3338        local.get 3
3339        local.get 2
3340        i32.const -16
3341        i32.add
3342        local.tee 2
3343        i32.shr_u
3344        local.tee 6
3345        i32.store8
3346        local.get 6
3347        i32.const 255
3348        i32.and
3349        i32.const 255
3350        i32.ne
3351        if  ;; label = @3
377 ------------------------------------------------------------
3352          local.get 5
3353          i32.const 1
3354          i32.add
3355          local.set 5
3356          br 1 (;@2;)
378 ------------------------------------------------------------
3357        end
379 ------------------------------------------------------------
3358        local.get 5
3359        i32.const 0
3360        i32.store8
3361        local.get 5
3362        i32.const 2
3363        i32.add
3364        local.set 5
3365      end
380 ------------------------------------------------------------
3366      local.get 3
3367      local.get 7
3368      i32.shl
3369      local.get 8
3370      i32.or
3371      local.set 3
3372      i32.const 0
3373      local.set 6
3374      local.get 2
3375      local.get 7
3376      i32.add
3377      local.tee 2
3378      i32.const 16
3379      i32.lt_s
3380      br_if 0 (;@1;)
381 ------------------------------------------------------------
3381      local.get 5
3382      local.get 3
3383      local.get 2
3384      i32.const -8
3385      i32.add
3386      i32.shr_u
3387      local.tee 7
3388      i32.store8
3389      local.get 7
3390      i32.const 255
3391      i32.and
3392      i32.const 255
3393      i32.ne
3394      if (result i32)  ;; label = @2
382 ------------------------------------------------------------
3395        local.get 5
3396        i32.const 1
3397        i32.add
3398      else
383 ------------------------------------------------------------
3399        local.get 5
3400        i32.const 0
3401        i32.store8
3402        local.get 5
3403        i32.const 2
3404        i32.add
3405      end
384 ------------------------------------------------------------
3406      local.tee 5
3407      local.get 3
3408      local.get 2
3409      i32.const -16
3410      i32.add
3411      local.tee 2
3412      i32.shr_u
3413      local.tee 7
3414      i32.store8
3415      local.get 7
3416      i32.const 255
3417      i32.and
3418      i32.const 255
3419      i32.ne
3420      if  ;; label = @2
385 ------------------------------------------------------------
3421        local.get 5
3422        i32.const 1
3423        i32.add
3424        local.set 5
3425        br 1 (;@1;)
386 ------------------------------------------------------------
3426      end
387 ------------------------------------------------------------
3427      local.get 5
3428      i32.const 0
3429      i32.store8
3430      local.get 5
3431      i32.const 2
3432      i32.add
3433      local.set 5
3434    end
388 ------------------------------------------------------------
3435    block  ;; label = @1
389 ------------------------------------------------------------
3436      local.get 1
3437      i32.load16_s
3438      local.tee 8
3439      i32.eqz
3440      if  ;; label = @2
390 ------------------------------------------------------------
3441        local.get 6
3442        i32.const 1
3443        i32.add
3444        local.set 6
3445        br 1 (;@1;)
391 ------------------------------------------------------------
3446      end
392 ------------------------------------------------------------
3447      local.get 8
3448      i32.const 31
3449      i32.shr_s
3450      local.tee 9
3451      local.get 8
3452      i32.xor
3453      local.get 9
3454      i32.sub
3455      i32.const 66832
3456      i32.add
3457      i32.load8_u
3458      local.set 7
3459      local.get 8
3460      local.get 9
3461      i32.add
3462      local.set 8
3463      local.get 6
3464      i32.const 16
3465      i32.ge_s
3466      if  ;; label = @2
393 ------------------------------------------------------------
3467        local.get 3
3468        local.get 10
3469        i32.shl
3470        local.get 12
3471        i32.or
3472        local.set 3
3473        block  ;; label = @3
394 ------------------------------------------------------------
3474          local.get 2
3475          local.get 10
3476          i32.add
3477          local.tee 2
3478          i32.const 16
3479          i32.lt_s
3480          br_if 0 (;@3;)
395 ------------------------------------------------------------
3481          local.get 5
3482          local.get 3
3483          local.get 2
3484          i32.const -8
3485          i32.add
3486          i32.shr_u
3487          local.tee 9
3488          i32.store8
3489          local.get 9
3490          i32.const 255
3491          i32.and
3492          i32.const 255
3493          i32.ne
3494          if (result i32)  ;; label = @4
396 ------------------------------------------------------------
3495            local.get 5
3496            i32.const 1
3497            i32.add
3498          else
397 ------------------------------------------------------------
3499            local.get 5
3500            i32.const 0
3501            i32.store8
3502            local.get 5
3503            i32.const 2
3504            i32.add
3505          end
398 ------------------------------------------------------------
3506          local.tee 5
3507          local.get 3
3508          local.get 2
3509          i32.const -16
3510          i32.add
3511          local.tee 2
3512          i32.shr_u
3513          local.tee 9
3514          i32.store8
3515          local.get 9
3516          i32.const 255
3517          i32.and
3518          i32.const 255
3519          i32.ne
3520          if  ;; label = @4
399 ------------------------------------------------------------
3521            local.get 5
3522            i32.const 1
3523            i32.add
3524            local.set 5
3525            br 1 (;@3;)
400 ------------------------------------------------------------
3526          end
401 ------------------------------------------------------------
3527          local.get 5
3528          i32.const 0
3529          i32.store8
3530          local.get 5
3531          i32.const 2
3532          i32.add
3533          local.set 5
3534        end
402 ------------------------------------------------------------
3535        local.get 6
3536        i32.const -16
3537        i32.add
3538        local.set 6
3539      end
403 ------------------------------------------------------------
3540      local.get 3
3541      local.get 4
3542      local.get 6
3543      i32.const 4
3544      i32.shl
3545      local.get 7
3546      i32.add
3547      local.tee 3
3548      i32.add
3549      i32.const 1024
3550      i32.add
3551      i32.load8_s
3552      local.tee 6
3553      i32.shl
3554      local.get 4
3555      local.get 3
3556      i32.const 2
3557      i32.shl
3558      i32.add
3559      i32.load
3560      i32.or
3561      local.set 3
3562      local.get 8
3563      i32.const -1
3564      local.get 7
3565      i32.shl
3566      i32.const -1
3567      i32.xor
3568      i32.and
3569      local.set 8
3570      block  ;; label = @2
404 ------------------------------------------------------------
3571        local.get 2
3572        local.get 6
3573        i32.add
3574        local.tee 2
3575        i32.const 16
3576        i32.lt_s
3577        br_if 0 (;@2;)
405 ------------------------------------------------------------
3578        local.get 5
3579        local.get 3
3580        local.get 2
3581        i32.const -8
3582        i32.add
3583        i32.shr_u
3584        local.tee 6
3585        i32.store8
3586        local.get 6
3587        i32.const 255
3588        i32.and
3589        i32.const 255
3590        i32.ne
3591        if (result i32)  ;; label = @3
406 ------------------------------------------------------------
3592          local.get 5
3593          i32.const 1
3594          i32.add
3595        else
407 ------------------------------------------------------------
3596          local.get 5
3597          i32.const 0
3598          i32.store8
3599          local.get 5
3600          i32.const 2
3601          i32.add
3602        end
408 ------------------------------------------------------------
3603        local.tee 5
3604        local.get 3
3605        local.get 2
3606        i32.const -16
3607        i32.add
3608        local.tee 2
3609        i32.shr_u
3610        local.tee 6
3611        i32.store8
3612        local.get 6
3613        i32.const 255
3614        i32.and
3615        i32.const 255
3616        i32.ne
3617        if  ;; label = @3
409 ------------------------------------------------------------
3618          local.get 5
3619          i32.const 1
3620          i32.add
3621          local.set 5
3622          br 1 (;@2;)
410 ------------------------------------------------------------
3623        end
411 ------------------------------------------------------------
3624        local.get 5
3625        i32.const 0
3626        i32.store8
3627        local.get 5
3628        i32.const 2
3629        i32.add
3630        local.set 5
3631      end
412 ------------------------------------------------------------
3632      local.get 3
3633      local.get 7
3634      i32.shl
3635      local.get 8
3636      i32.or
3637      local.set 3
3638      i32.const 0
3639      local.set 6
3640      local.get 2
3641      local.get 7
3642      i32.add
3643      local.tee 2
3644      i32.const 16
3645      i32.lt_s
3646      br_if 0 (;@1;)
413 ------------------------------------------------------------
3647      local.get 5
3648      local.get 3
3649      local.get 2
3650      i32.const -8
3651      i32.add
3652      i32.shr_u
3653      local.tee 7
3654      i32.store8
3655      local.get 7
3656      i32.const 255
3657      i32.and
3658      i32.const 255
3659      i32.ne
3660      if (result i32)  ;; label = @2
414 ------------------------------------------------------------
3661        local.get 5
3662        i32.const 1
3663        i32.add
3664      else
415 ------------------------------------------------------------
3665        local.get 5
3666        i32.const 0
3667        i32.store8
3668        local.get 5
3669        i32.const 2
3670        i32.add
3671      end
416 ------------------------------------------------------------
3672      local.tee 5
3673      local.get 3
3674      local.get 2
3675      i32.const -16
3676      i32.add
3677      local.tee 2
3678      i32.shr_u
3679      local.tee 7
3680      i32.store8
3681      local.get 7
3682      i32.const 255
3683      i32.and
3684      i32.const 255
3685      i32.ne
3686      if  ;; label = @2
417 ------------------------------------------------------------
3687        local.get 5
3688        i32.const 1
3689        i32.add
3690        local.set 5
3691        br 1 (;@1;)
418 ------------------------------------------------------------
3692      end
419 ------------------------------------------------------------
3693      local.get 5
3694      i32.const 0
3695      i32.store8
3696      local.get 5
3697      i32.const 2
3698      i32.add
3699      local.set 5
3700    end
420 ------------------------------------------------------------
3701    block  ;; label = @1
421 ------------------------------------------------------------
3702      local.get 1
3703      i32.load16_s
3704      local.tee 8
3705      i32.eqz
3706      if  ;; label = @2
422 ------------------------------------------------------------
3707        local.get 6
3708        i32.const 1
3709        i32.add
3710        local.set 6
3711        br 1 (;@1;)
423 ------------------------------------------------------------
3712      end
424 ------------------------------------------------------------
3713      local.get 8
3714      i32.const 31
3715      i32.shr_s
3716      local.tee 9
3717      local.get 8
3718      i32.xor
3719      local.get 9
3720      i32.sub
3721      i32.const 66832
3722      i32.add
3723      i32.load8_u
3724      local.set 7
3725      local.get 8
3726      local.get 9
3727      i32.add
3728      local.set 8
3729      local.get 6
3730      i32.const 16
3731      i32.ge_s
3732      if  ;; label = @2
425 ------------------------------------------------------------
3733        local.get 3
3734        local.get 10
3735        i32.shl
3736        local.get 12
3737        i32.or
3738        local.set 3
3739        block  ;; label = @3
426 ------------------------------------------------------------
3740          local.get 2
3741          local.get 10
3742          i32.add
3743          local.tee 2
3744          i32.const 16
3745          i32.lt_s
3746          br_if 0 (;@3;)
427 ------------------------------------------------------------
3747          local.get 5
3748          local.get 3
3749          local.get 2
3750          i32.const -8
3751          i32.add
3752          i32.shr_u
3753          local.tee 9
3754          i32.store8
3755          local.get 9
3756          i32.const 255
3757          i32.and
3758          i32.const 255
3759          i32.ne
3760          if (result i32)  ;; label = @4
428 ------------------------------------------------------------
3761            local.get 5
3762            i32.const 1
3763            i32.add
3764          else
429 ------------------------------------------------------------
3765            local.get 5
3766            i32.const 0
3767            i32.store8
3768            local.get 5
3769            i32.const 2
3770            i32.add
3771          end
430 ------------------------------------------------------------
3772          local.tee 5
3773          local.get 3
3774          local.get 2
3775          i32.const -16
3776          i32.add
3777          local.tee 2
3778          i32.shr_u
3779          local.tee 9
3780          i32.store8
3781          local.get 9
3782          i32.const 255
3783          i32.and
3784          i32.const 255
3785          i32.ne
3786          if  ;; label = @4
431 ------------------------------------------------------------
3787            local.get 5
3788            i32.const 1
3789            i32.add
3790            local.set 5
3791            br 1 (;@3;)
432 ------------------------------------------------------------
3792          end
433 ------------------------------------------------------------
3793          local.get 5
3794          i32.const 0
3795          i32.store8
3796          local.get 5
3797          i32.const 2
3798          i32.add
3799          local.set 5
3800        end
434 ------------------------------------------------------------
3801        local.get 6
3802        i32.const -16
3803        i32.add
3804        local.set 6
3805      end
435 ------------------------------------------------------------
3806      local.get 3
3807      local.get 4
3808      local.get 6
3809      i32.const 4
3810      i32.shl
3811      local.get 7
3812      i32.add
3813      local.tee 3
3814      i32.add
3815      i32.const 1024
3816      i32.add
3817      i32.load8_s
3818      local.tee 6
3819      i32.shl
3820      local.get 4
3821      local.get 3
3822      i32.const 2
3823      i32.shl
3824      i32.add
3825      i32.load
3826      i32.or
3827      local.set 3
3828      local.get 8
3829      i32.const -1
3830      local.get 7
3831      i32.shl
3832      i32.const -1
3833      i32.xor
3834      i32.and
3835      local.set 8
3836      block  ;; label = @2
436 ------------------------------------------------------------
3837        local.get 2
3838        local.get 6
3839        i32.add
3840        local.tee 2
3841        i32.const 16
3842        i32.lt_s
3843        br_if 0 (;@2;)
437 ------------------------------------------------------------
3844        local.get 5
3845        local.get 3
3846        local.get 2
3847        i32.const -8
3848        i32.add
3849        i32.shr_u
3850        local.tee 6
3851        i32.store8
3852        local.get 6
3853        i32.const 255
3854        i32.and
3855        i32.const 255
3856        i32.ne
3857        if (result i32)  ;; label = @3
438 ------------------------------------------------------------
3858          local.get 5
3859          i32.const 1
3860          i32.add
3861        else
439 ------------------------------------------------------------
3862          local.get 5
3863          i32.const 0
3864          i32.store8
3865          local.get 5
3866          i32.const 2
3867          i32.add
3868        end
440 ------------------------------------------------------------
3869        local.tee 5
3870        local.get 3
3871        local.get 2
3872        i32.const -16
3873        i32.add
3874        local.tee 2
3875        i32.shr_u
3876        local.tee 6
3877        i32.store8
3878        local.get 6
3879        i32.const 255
3880        i32.and
3881        i32.const 255
3882        i32.ne
3883        if  ;; label = @3
441 ------------------------------------------------------------
3884          local.get 5
3885          i32.const 1
3886          i32.add
3887          local.set 5
3888          br 1 (;@2;)
442 ------------------------------------------------------------
3889        end
443 ------------------------------------------------------------
3890        local.get 5
3891        i32.const 0
3892        i32.store8
3893        local.get 5
3894        i32.const 2
3895        i32.add
3896        local.set 5
3897      end
444 ------------------------------------------------------------
3898      local.get 3
3899      local.get 7
3900      i32.shl
3901      local.get 8
3902      i32.or
3903      local.set 3
3904      i32.const 0
3905      local.set 6
3906      local.get 2
3907      local.get 7
3908      i32.add
3909      local.tee 2
3910      i32.const 16
3911      i32.lt_s
3912      br_if 0 (;@1;)
445 ------------------------------------------------------------
3913      local.get 5
3914      local.get 3
3915      local.get 2
3916      i32.const -8
3917      i32.add
3918      i32.shr_u
3919      local.tee 7
3920      i32.store8
3921      local.get 7
3922      i32.const 255
3923      i32.and
3924      i32.const 255
3925      i32.ne
3926      if (result i32)  ;; label = @2
446 ------------------------------------------------------------
3927        local.get 5
3928        i32.const 1
3929        i32.add
3930      else
447 ------------------------------------------------------------
3931        local.get 5
3932        i32.const 0
3933        i32.store8
3934        local.get 5
3935        i32.const 2
3936        i32.add
3937      end
448 ------------------------------------------------------------
3938      local.tee 5
3939      local.get 3
3940      local.get 2
3941      i32.const -16
3942      i32.add
3943      local.tee 2
3944      i32.shr_u
3945      local.tee 7
3946      i32.store8
3947      local.get 7
3948      i32.const 255
3949      i32.and
3950      i32.const 255
3951      i32.ne
3952      if  ;; label = @2
449 ------------------------------------------------------------
3953        local.get 5
3954        i32.const 1
3955        i32.add
3956        local.set 5
3957        br 1 (;@1;)
450 ------------------------------------------------------------
3958      end
451 ------------------------------------------------------------
3959      local.get 5
3960      i32.const 0
3961      i32.store8
3962      local.get 5
3963      i32.const 2
3964      i32.add
3965      local.set 5
3966    end
452 ------------------------------------------------------------
3967    block  ;; label = @1
453 ------------------------------------------------------------
3968      local.get 1
3969      i32.load16_s
3970      local.tee 8
3971      i32.eqz
3972      if  ;; label = @2
454 ------------------------------------------------------------
3973        local.get 6
3974        i32.const 1
3975        i32.add
3976        local.set 6
3977        br 1 (;@1;)
455 ------------------------------------------------------------
3978      end
456 ------------------------------------------------------------
3979      local.get 8
3980      i32.const 31
3981      i32.shr_s
3982      local.tee 9
3983      local.get 8
3984      i32.xor
3985      local.get 9
3986      i32.sub
3987      i32.const 66832
3988      i32.add
3989      i32.load8_u
3990      local.set 7
3991      local.get 8
3992      local.get 9
3993      i32.add
3994      local.set 8
3995      local.get 6
3996      i32.const 16
3997      i32.ge_s
3998      if  ;; label = @2
457 ------------------------------------------------------------
3999        local.get 3
4000        local.get 10
4001        i32.shl
4002        local.get 12
4003        i32.or
4004        local.set 3
4005        block  ;; label = @3
458 ------------------------------------------------------------
4006          local.get 2
4007          local.get 10
4008          i32.add
4009          local.tee 2
4010          i32.const 16
4011          i32.lt_s
4012          br_if 0 (;@3;)
459 ------------------------------------------------------------
4013          local.get 5
4014          local.get 3
4015          local.get 2
4016          i32.const -8
4017          i32.add
4018          i32.shr_u
4019          local.tee 9
4020          i32.store8
4021          local.get 9
4022          i32.const 255
4023          i32.and
4024          i32.const 255
4025          i32.ne
4026          if (result i32)  ;; label = @4
460 ------------------------------------------------------------
4027            local.get 5
4028            i32.const 1
4029            i32.add
4030          else
461 ------------------------------------------------------------
4031            local.get 5
4032            i32.const 0
4033            i32.store8
4034            local.get 5
4035            i32.const 2
4036            i32.add
4037          end
462 ------------------------------------------------------------
4038          local.tee 5
4039          local.get 3
4040          local.get 2
4041          i32.const -16
4042          i32.add
4043          local.tee 2
4044          i32.shr_u
4045          local.tee 9
4046          i32.store8
4047          local.get 9
4048          i32.const 255
4049          i32.and
4050          i32.const 255
4051          i32.ne
4052          if  ;; label = @4
463 ------------------------------------------------------------
4053            local.get 5
4054            i32.const 1
4055            i32.add
4056            local.set 5
4057            br 1 (;@3;)
464 ------------------------------------------------------------
4058          end
465 ------------------------------------------------------------
4059          local.get 5
4060          i32.const 0
4061          i32.store8
4062          local.get 5
4063          i32.const 2
4064          i32.add
4065          local.set 5
4066        end
466 ------------------------------------------------------------
4067        local.get 6
4068        i32.const -16
4069        i32.add
4070        local.set 6
4071      end
467 ------------------------------------------------------------
4072      local.get 3
4073      local.get 4
4074      local.get 6
4075      i32.const 4
4076      i32.shl
4077      local.get 7
4078      i32.add
4079      local.tee 3
4080      i32.add
4081      i32.const 1024
4082      i32.add
4083      i32.load8_s
4084      local.tee 6
4085      i32.shl
4086      local.get 4
4087      local.get 3
4088      i32.const 2
4089      i32.shl
4090      i32.add
4091      i32.load
4092      i32.or
4093      local.set 3
4094      local.get 8
4095      i32.const -1
4096      local.get 7
4097      i32.shl
4098      i32.const -1
4099      i32.xor
4100      i32.and
4101      local.set 8
4102      block  ;; label = @2
468 ------------------------------------------------------------
4103        local.get 2
4104        local.get 6
4105        i32.add
4106        local.tee 2
4107        i32.const 16
4108        i32.lt_s
4109        br_if 0 (;@2;)
469 ------------------------------------------------------------
4110        local.get 5
4111        local.get 3
4112        local.get 2
4113        i32.const -8
4114        i32.add
4115        i32.shr_u
4116        local.tee 6
4117        i32.store8
4118        local.get 6
4119        i32.const 255
4120        i32.and
4121        i32.const 255
4122        i32.ne
4123        if (result i32)  ;; label = @3
470 ------------------------------------------------------------
4124          local.get 5
4125          i32.const 1
4126          i32.add
4127        else
471 ------------------------------------------------------------
4128          local.get 5
4129          i32.const 0
4130          i32.store8
4131          local.get 5
4132          i32.const 2
4133          i32.add
4134        end
472 ------------------------------------------------------------
4135        local.tee 5
4136        local.get 3
4137        local.get 2
4138        i32.const -16
4139        i32.add
4140        local.tee 2
4141        i32.shr_u
4142        local.tee 6
4143        i32.store8
4144        local.get 6
4145        i32.const 255
4146        i32.and
4147        i32.const 255
4148        i32.ne
4149        if  ;; label = @3
473 ------------------------------------------------------------
4150          local.get 5
4151          i32.const 1
4152          i32.add
4153          local.set 5
4154          br 1 (;@2;)
474 ------------------------------------------------------------
4155        end
475 ------------------------------------------------------------
4156        local.get 5
4157        i32.const 0
4158        i32.store8
4159        local.get 5
4160        i32.const 2
4161        i32.add
4162        local.set 5
4163      end
476 ------------------------------------------------------------
4164      local.get 3
4165      local.get 7
4166      i32.shl
4167      local.get 8
4168      i32.or
4169      local.set 3
4170      i32.const 0
4171      local.set 6
4172      local.get 2
4173      local.get 7
4174      i32.add
4175      local.tee 2
4176      i32.const 16
4177      i32.lt_s
4178      br_if 0 (;@1;)
477 ------------------------------------------------------------
4179      local.get 5
4180      local.get 3
4181      local.get 2
4182      i32.const -8
4183      i32.add
4184      i32.shr_u
4185      local.tee 7
4186      i32.store8
4187      local.get 7
4188      i32.const 255
4189      i32.and
4190      i32.const 255
4191      i32.ne
4192      if (result i32)  ;; label = @2
478 ------------------------------------------------------------
4193        local.get 5
4194        i32.const 1
4195        i32.add
4196      else
479 ------------------------------------------------------------
4197        local.get 5
4198        i32.const 0
4199        i32.store8
4200        local.get 5
4201        i32.const 2
4202        i32.add
4203      end
480 ------------------------------------------------------------
4204      local.tee 5
4205      local.get 3
4206      local.get 2
4207      i32.const -16
4208      i32.add
4209      local.tee 2
4210      i32.shr_u
4211      local.tee 7
4212      i32.store8
4213      local.get 7
4214      i32.const 255
4215      i32.and
4216      i32.const 255
4217      i32.ne
4218      if  ;; label = @2
481 ------------------------------------------------------------
4219        local.get 5
4220        i32.const 1
4221        i32.add
4222        local.set 5
4223        br 1 (;@1;)
482 ------------------------------------------------------------
4224      end
483 ------------------------------------------------------------
4225      local.get 5
4226      i32.const 0
4227      i32.store8
4228      local.get 5
4229      i32.const 2
4230      i32.add
4231      local.set 5
4232    end
484 ------------------------------------------------------------
4233    block  ;; label = @1
485 ------------------------------------------------------------
4234      local.get 1
4235      i32.load16_s
4236      local.tee 8
4237      i32.eqz
4238      if  ;; label = @2
486 ------------------------------------------------------------
4239        local.get 6
4240        i32.const 1
4241        i32.add
4242        local.set 6
4243        br 1 (;@1;)
487 ------------------------------------------------------------
4244      end
488 ------------------------------------------------------------
4245      local.get 8
4246      i32.const 31
4247      i32.shr_s
4248      local.tee 9
4249      local.get 8
4250      i32.xor
4251      local.get 9
4252      i32.sub
4253      i32.const 66832
4254      i32.add
4255      i32.load8_u
4256      local.set 7
4257      local.get 8
4258      local.get 9
4259      i32.add
4260      local.set 8
4261      local.get 6
4262      i32.const 16
4263      i32.ge_s
4264      if  ;; label = @2
489 ------------------------------------------------------------
4265        local.get 3
4266        local.get 10
4267        i32.shl
4268        local.get 12
4269        i32.or
4270        local.set 3
4271        block  ;; label = @3
490 ------------------------------------------------------------
4272          local.get 2
4273          local.get 10
4274          i32.add
4275          local.tee 2
4276          i32.const 16
4277          i32.lt_s
4278          br_if 0 (;@3;)
491 ------------------------------------------------------------
4279          local.get 5
4280          local.get 3
4281          local.get 2
4282          i32.const -8
4283          i32.add
4284          i32.shr_u
4285          local.tee 9
4286          i32.store8
4287          local.get 9
4288          i32.const 255
4289          i32.and
4290          i32.const 255
4291          i32.ne
4292          if (result i32)  ;; label = @4
492 ------------------------------------------------------------
4293            local.get 5
4294            i32.const 1
4295            i32.add
4296          else
493 ------------------------------------------------------------
4297            local.get 5
4298            i32.const 0
4299            i32.store8
4300            local.get 5
4301            i32.const 2
4302            i32.add
4303          end
494 ------------------------------------------------------------
4304          local.tee 5
4305          local.get 3
4306          local.get 2
4307          i32.const -16
4308          i32.add
4309          local.tee 2
4310          i32.shr_u
4311          local.tee 9
4312          i32.store8
4313          local.get 9
4314          i32.const 255
4315          i32.and
4316          i32.const 255
4317          i32.ne
4318          if  ;; label = @4
495 ------------------------------------------------------------
4319            local.get 5
4320            i32.const 1
4321            i32.add
4322            local.set 5
4323            br 1 (;@3;)
496 ------------------------------------------------------------
4324          end
497 ------------------------------------------------------------
4325          local.get 5
4326          i32.const 0
4327          i32.store8
4328          local.get 5
4329          i32.const 2
4330          i32.add
4331          local.set 5
4332        end
498 ------------------------------------------------------------
4333        local.get 6
4334        i32.const -16
4335        i32.add
4336        local.set 6
4337      end
499 ------------------------------------------------------------
4338      local.get 3
4339      local.get 4
4340      local.get 6
4341      i32.const 4
4342      i32.shl
4343      local.get 7
4344      i32.add
4345      local.tee 3
4346      i32.add
4347      i32.const 1024
4348      i32.add
4349      i32.load8_s
4350      local.tee 6
4351      i32.shl
4352      local.get 4
4353      local.get 3
4354      i32.const 2
4355      i32.shl
4356      i32.add
4357      i32.load
4358      i32.or
4359      local.set 3
4360      local.get 8
4361      i32.const -1
4362      local.get 7
4363      i32.shl
4364      i32.const -1
4365      i32.xor
4366      i32.and
4367      local.set 8
4368      block  ;; label = @2
500 ------------------------------------------------------------
4369        local.get 2
4370        local.get 6
4371        i32.add
4372        local.tee 2
4373        i32.const 16
4374        i32.lt_s
4375        br_if 0 (;@2;)
501 ------------------------------------------------------------
4376        local.get 5
4377        local.get 3
4378        local.get 2
4379        i32.const -8
4380        i32.add
4381        i32.shr_u
4382        local.tee 6
4383        i32.store8
4384        local.get 6
4385        i32.const 255
4386        i32.and
4387        i32.const 255
4388        i32.ne
4389        if (result i32)  ;; label = @3
502 ------------------------------------------------------------
4390          local.get 5
4391          i32.const 1
4392          i32.add
4393        else
503 ------------------------------------------------------------
4394          local.get 5
4395          i32.const 0
4396          i32.store8
4397          local.get 5
4398          i32.const 2
4399          i32.add
4400        end
504 ------------------------------------------------------------
4401        local.tee 5
4402        local.get 3
4403        local.get 2
4404        i32.const -16
4405        i32.add
4406        local.tee 2
4407        i32.shr_u
4408        local.tee 6
4409        i32.store8
4410        local.get 6
4411        i32.const 255
4412        i32.and
4413        i32.const 255
4414        i32.ne
4415        if  ;; label = @3
505 ------------------------------------------------------------
4416          local.get 5
4417          i32.const 1
4418          i32.add
4419          local.set 5
4420          br 1 (;@2;)
506 ------------------------------------------------------------
4421        end
507 ------------------------------------------------------------
4422        local.get 5
4423        i32.const 0
4424        i32.store8
4425        local.get 5
4426        i32.const 2
4427        i32.add
4428        local.set 5
4429      end
508 ------------------------------------------------------------
4430      local.get 3
4431      local.get 7
4432      i32.shl
4433      local.get 8
4434      i32.or
4435      local.set 3
4436      i32.const 0
4437      local.set 6
4438      local.get 2
4439      local.get 7
4440      i32.add
4441      local.tee 2
4442      i32.const 16
4443      i32.lt_s
4444      br_if 0 (;@1;)
509 ------------------------------------------------------------
4445      local.get 5
4446      local.get 3
4447      local.get 2
4448      i32.const -8
4449      i32.add
4450      i32.shr_u
4451      local.tee 7
4452      i32.store8
4453      local.get 7
4454      i32.const 255
4455      i32.and
4456      i32.const 255
4457      i32.ne
4458      if (result i32)  ;; label = @2
510 ------------------------------------------------------------
4459        local.get 5
4460        i32.const 1
4461        i32.add
4462      else
511 ------------------------------------------------------------
4463        local.get 5
4464        i32.const 0
4465        i32.store8
4466        local.get 5
4467        i32.const 2
4468        i32.add
4469      end
512 ------------------------------------------------------------
4470      local.tee 5
4471      local.get 3
4472      local.get 2
4473      i32.const -16
4474      i32.add
4475      local.tee 2
4476      i32.shr_u
4477      local.tee 7
4478      i32.store8
4479      local.get 7
4480      i32.const 255
4481      i32.and
4482      i32.const 255
4483      i32.ne
4484      if  ;; label = @2
513 ------------------------------------------------------------
4485        local.get 5
4486        i32.const 1
4487        i32.add
4488        local.set 5
4489        br 1 (;@1;)
514 ------------------------------------------------------------
4490      end
515 ------------------------------------------------------------
4491      local.get 5
4492      i32.const 0
4493      i32.store8
4494      local.get 5
4495      i32.const 2
4496      i32.add
4497      local.set 5
4498    end
516 ------------------------------------------------------------
4499    block  ;; label = @1
517 ------------------------------------------------------------
4500      local.get 1
4501      i32.load16_s
4502      local.tee 8
4503      i32.eqz
4504      if  ;; label = @2
518 ------------------------------------------------------------
4505        local.get 6
4506        i32.const 1
4507        i32.add
4508        local.set 6
4509        br 1 (;@1;)
519 ------------------------------------------------------------
4510      end
520 ------------------------------------------------------------
4511      local.get 8
4512      i32.const 31
4513      i32.shr_s
4514      local.tee 9
4515      local.get 8
4516      i32.xor
4517      local.get 9
4518      i32.sub
4519      i32.const 66832
4520      i32.add
4521      i32.load8_u
4522      local.set 7
4523      local.get 8
4524      local.get 9
4525      i32.add
4526      local.set 8
4527      local.get 6
4528      i32.const 16
4529      i32.ge_s
4530      if  ;; label = @2
521 ------------------------------------------------------------
4531        local.get 3
4532        local.get 10
4533        i32.shl
4534        local.get 12
4535        i32.or
4536        local.set 3
4537        block  ;; label = @3
522 ------------------------------------------------------------
4538          local.get 2
4539          local.get 10
4540          i32.add
4541          local.tee 2
4542          i32.const 16
4543          i32.lt_s
4544          br_if 0 (;@3;)
523 ------------------------------------------------------------
4545          local.get 5
4546          local.get 3
4547          local.get 2
4548          i32.const -8
4549          i32.add
4550          i32.shr_u
4551          local.tee 9
4552          i32.store8
4553          local.get 9
4554          i32.const 255
4555          i32.and
4556          i32.const 255
4557          i32.ne
4558          if (result i32)  ;; label = @4
524 ------------------------------------------------------------
4559            local.get 5
4560            i32.const 1
4561            i32.add
4562          else
525 ------------------------------------------------------------
4563            local.get 5
4564            i32.const 0
4565            i32.store8
4566            local.get 5
4567            i32.const 2
4568            i32.add
4569          end
526 ------------------------------------------------------------
4570          local.tee 5
4571          local.get 3
4572          local.get 2
4573          i32.const -16
4574          i32.add
4575          local.tee 2
4576          i32.shr_u
4577          local.tee 9
4578          i32.store8
4579          local.get 9
4580          i32.const 255
4581          i32.and
4582          i32.const 255
4583          i32.ne
4584          if  ;; label = @4
527 ------------------------------------------------------------
4585            local.get 5
4586            i32.const 1
4587            i32.add
4588            local.set 5
4589            br 1 (;@3;)
528 ------------------------------------------------------------
4590          end
529 ------------------------------------------------------------
4591          local.get 5
4592          i32.const 0
4593          i32.store8
4594          local.get 5
4595          i32.const 2
4596          i32.add
4597          local.set 5
4598        end
530 ------------------------------------------------------------
4599        local.get 6
4600        i32.const -16
4601        i32.add
4602        local.set 6
4603      end
531 ------------------------------------------------------------
4604      local.get 3
4605      local.get 4
4606      local.get 6
4607      i32.const 4
4608      i32.shl
4609      local.get 7
4610      i32.add
4611      local.tee 3
4612      i32.add
4613      i32.const 1024
4614      i32.add
4615      i32.load8_s
4616      local.tee 6
4617      i32.shl
4618      local.get 4
4619      local.get 3
4620      i32.const 2
4621      i32.shl
4622      i32.add
4623      i32.load
4624      i32.or
4625      local.set 3
4626      local.get 8
4627      i32.const -1
4628      local.get 7
4629      i32.shl
4630      i32.const -1
4631      i32.xor
4632      i32.and
4633      local.set 8
4634      block  ;; label = @2
532 ------------------------------------------------------------
4635        local.get 2
4636        local.get 6
4637        i32.add
4638        local.tee 2
4639        i32.const 16
4640        i32.lt_s
4641        br_if 0 (;@2;)
533 ------------------------------------------------------------
4642        local.get 5
4643        local.get 3
4644        local.get 2
4645        i32.const -8
4646        i32.add
4647        i32.shr_u
4648        local.tee 6
4649        i32.store8
4650        local.get 6
4651        i32.const 255
4652        i32.and
4653        i32.const 255
4654        i32.ne
4655        if (result i32)  ;; label = @3
534 ------------------------------------------------------------
4656          local.get 5
4657          i32.const 1
4658          i32.add
4659        else
535 ------------------------------------------------------------
4660          local.get 5
4661          i32.const 0
4662          i32.store8
4663          local.get 5
4664          i32.const 2
4665          i32.add
4666        end
536 ------------------------------------------------------------
4667        local.tee 5
4668        local.get 3
4669        local.get 2
4670        i32.const -16
4671        i32.add
4672        local.tee 2
4673        i32.shr_u
4674        local.tee 6
4675        i32.store8
4676        local.get 6
4677        i32.const 255
4678        i32.and
4679        i32.const 255
4680        i32.ne
4681        if  ;; label = @3
537 ------------------------------------------------------------
4682          local.get 5
4683          i32.const 1
4684          i32.add
4685          local.set 5
4686          br 1 (;@2;)
538 ------------------------------------------------------------
4687        end
539 ------------------------------------------------------------
4688        local.get 5
4689        i32.const 0
4690        i32.store8
4691        local.get 5
4692        i32.const 2
4693        i32.add
4694        local.set 5
4695      end
540 ------------------------------------------------------------
4696      local.get 3
4697      local.get 7
4698      i32.shl
4699      local.get 8
4700      i32.or
4701      local.set 3
4702      i32.const 0
4703      local.set 6
4704      local.get 2
4705      local.get 7
4706      i32.add
4707      local.tee 2
4708      i32.const 16
4709      i32.lt_s
4710      br_if 0 (;@1;)
541 ------------------------------------------------------------
4711      local.get 5
4712      local.get 3
4713      local.get 2
4714      i32.const -8
4715      i32.add
4716      i32.shr_u
4717      local.tee 7
4718      i32.store8
4719      local.get 7
4720      i32.const 255
4721      i32.and
4722      i32.const 255
4723      i32.ne
4724      if (result i32)  ;; label = @2
542 ------------------------------------------------------------
4725        local.get 5
4726        i32.const 1
4727        i32.add
4728      else
543 ------------------------------------------------------------
4729        local.get 5
4730        i32.const 0
4731        i32.store8
4732        local.get 5
4733        i32.const 2
4734        i32.add
4735      end
544 ------------------------------------------------------------
4736      local.tee 5
4737      local.get 3
4738      local.get 2
4739      i32.const -16
4740      i32.add
4741      local.tee 2
4742      i32.shr_u
4743      local.tee 7
4744      i32.store8
4745      local.get 7
4746      i32.const 255
4747      i32.and
4748      i32.const 255
4749      i32.ne
4750      if  ;; label = @2
545 ------------------------------------------------------------
4751        local.get 5
4752        i32.const 1
4753        i32.add
4754        local.set 5
4755        br 1 (;@1;)
546 ------------------------------------------------------------
4756      end
547 ------------------------------------------------------------
4757      local.get 5
4758      i32.const 0
4759      i32.store8
4760      local.get 5
4761      i32.const 2
4762      i32.add
4763      local.set 5
4764    end
548 ------------------------------------------------------------
4765    block  ;; label = @1
549 ------------------------------------------------------------
4766      local.get 1
4767      i32.load16_s
4768      local.tee 8
4769      i32.eqz
4770      if  ;; label = @2
550 ------------------------------------------------------------
4771        local.get 6
4772        i32.const 1
4773        i32.add
4774        local.set 6
4775        br 1 (;@1;)
551 ------------------------------------------------------------
4776      end
552 ------------------------------------------------------------
4777      local.get 8
4778      i32.const 31
4779      i32.shr_s
4780      local.tee 9
4781      local.get 8
4782      i32.xor
4783      local.get 9
4784      i32.sub
4785      i32.const 66832
4786      i32.add
4787      i32.load8_u
4788      local.set 7
4789      local.get 8
4790      local.get 9
4791      i32.add
4792      local.set 8
4793      local.get 6
4794      i32.const 16
4795      i32.ge_s
4796      if  ;; label = @2
553 ------------------------------------------------------------
4797        local.get 3
4798        local.get 10
4799        i32.shl
4800        local.get 12
4801        i32.or
4802        local.set 3
4803        block  ;; label = @3
554 ------------------------------------------------------------
4804          local.get 2
4805          local.get 10
4806          i32.add
4807          local.tee 2
4808          i32.const 16
4809          i32.lt_s
4810          br_if 0 (;@3;)
555 ------------------------------------------------------------
4811          local.get 5
4812          local.get 3
4813          local.get 2
4814          i32.const -8
4815          i32.add
4816          i32.shr_u
4817          local.tee 9
4818          i32.store8
4819          local.get 9
4820          i32.const 255
4821          i32.and
4822          i32.const 255
4823          i32.ne
4824          if (result i32)  ;; label = @4
556 ------------------------------------------------------------
4825            local.get 5
4826            i32.const 1
4827            i32.add
4828          else
557 ------------------------------------------------------------
4829            local.get 5
4830            i32.const 0
4831            i32.store8
4832            local.get 5
4833            i32.const 2
4834            i32.add
4835          end
558 ------------------------------------------------------------
4836          local.tee 5
4837          local.get 3
4838          local.get 2
4839          i32.const -16
4840          i32.add
4841          local.tee 2
4842          i32.shr_u
4843          local.tee 9
4844          i32.store8
4845          local.get 9
4846          i32.const 255
4847          i32.and
4848          i32.const 255
4849          i32.ne
4850          if  ;; label = @4
559 ------------------------------------------------------------
4851            local.get 5
4852            i32.const 1
4853            i32.add
4854            local.set 5
4855            br 1 (;@3;)
560 ------------------------------------------------------------
4856          end
561 ------------------------------------------------------------
4857          local.get 5
4858          i32.const 0
4859          i32.store8
4860          local.get 5
4861          i32.const 2
4862          i32.add
4863          local.set 5
4864        end
562 ------------------------------------------------------------
4865        local.get 6
4866        i32.const -16
4867        i32.add
4868        local.set 6
4869      end
563 ------------------------------------------------------------
4870      local.get 3
4871      local.get 4
4872      local.get 6
4873      i32.const 4
4874      i32.shl
4875      local.get 7
4876      i32.add
4877      local.tee 3
4878      i32.add
4879      i32.const 1024
4880      i32.add
4881      i32.load8_s
4882      local.tee 6
4883      i32.shl
4884      local.get 4
4885      local.get 3
4886      i32.const 2
4887      i32.shl
4888      i32.add
4889      i32.load
4890      i32.or
4891      local.set 3
4892      local.get 8
4893      i32.const -1
4894      local.get 7
4895      i32.shl
4896      i32.const -1
4897      i32.xor
4898      i32.and
4899      local.set 8
4900      block  ;; label = @2
564 ------------------------------------------------------------
4901        local.get 2
4902        local.get 6
4903        i32.add
4904        local.tee 2
4905        i32.const 16
4906        i32.lt_s
4907        br_if 0 (;@2;)
565 ------------------------------------------------------------
4908        local.get 5
4909        local.get 3
4910        local.get 2
4911        i32.const -8
4912        i32.add
4913        i32.shr_u
4914        local.tee 6
4915        i32.store8
4916        local.get 6
4917        i32.const 255
4918        i32.and
4919        i32.const 255
4920        i32.ne
4921        if (result i32)  ;; label = @3
566 ------------------------------------------------------------
4922          local.get 5
4923          i32.const 1
4924          i32.add
4925        else
567 ------------------------------------------------------------
4926          local.get 5
4927          i32.const 0
4928          i32.store8
4929          local.get 5
4930          i32.const 2
4931          i32.add
4932        end
568 ------------------------------------------------------------
4933        local.tee 5
4934        local.get 3
4935        local.get 2
4936        i32.const -16
4937        i32.add
4938        local.tee 2
4939        i32.shr_u
4940        local.tee 6
4941        i32.store8
4942        local.get 6
4943        i32.const 255
4944        i32.and
4945        i32.const 255
4946        i32.ne
4947        if  ;; label = @3
569 ------------------------------------------------------------
4948          local.get 5
4949          i32.const 1
4950          i32.add
4951          local.set 5
4952          br 1 (;@2;)
570 ------------------------------------------------------------
4953        end
571 ------------------------------------------------------------
4954        local.get 5
4955        i32.const 0
4956        i32.store8
4957        local.get 5
4958        i32.const 2
4959        i32.add
4960        local.set 5
4961      end
572 ------------------------------------------------------------
4962      local.get 3
4963      local.get 7
4964      i32.shl
4965      local.get 8
4966      i32.or
4967      local.set 3
4968      i32.const 0
4969      local.set 6
4970      local.get 2
4971      local.get 7
4972      i32.add
4973      local.tee 2
4974      i32.const 16
4975      i32.lt_s
4976      br_if 0 (;@1;)
573 ------------------------------------------------------------
4977      local.get 5
4978      local.get 3
4979      local.get 2
4980      i32.const -8
4981      i32.add
4982      i32.shr_u
4983      local.tee 7
4984      i32.store8
4985      local.get 7
4986      i32.const 255
4987      i32.and
4988      i32.const 255
4989      i32.ne
4990      if (result i32)  ;; label = @2
574 ------------------------------------------------------------
4991        local.get 5
4992        i32.const 1
4993        i32.add
4994      else
575 ------------------------------------------------------------
4995        local.get 5
4996        i32.const 0
4997        i32.store8
4998        local.get 5
4999        i32.const 2
5000        i32.add
5001      end
576 ------------------------------------------------------------
5002      local.tee 5
5003      local.get 3
5004      local.get 2
5005      i32.const -16
5006      i32.add
5007      local.tee 2
5008      i32.shr_u
5009      local.tee 7
5010      i32.store8
5011      local.get 7
5012      i32.const 255
5013      i32.and
5014      i32.const 255
5015      i32.ne
5016      if  ;; label = @2
577 ------------------------------------------------------------
5017        local.get 5
5018        i32.const 1
5019        i32.add
5020        local.set 5
5021        br 1 (;@1;)
578 ------------------------------------------------------------
5022      end
579 ------------------------------------------------------------
5023      local.get 5
5024      i32.const 0
5025      i32.store8
5026      local.get 5
5027      i32.const 2
5028      i32.add
5029      local.set 5
5030    end
580 ------------------------------------------------------------
5031    block  ;; label = @1
581 ------------------------------------------------------------
5032      local.get 1
5033      i32.load16_s
5034      local.tee 8
5035      i32.eqz
5036      if  ;; label = @2
582 ------------------------------------------------------------
5037        local.get 6
5038        i32.const 1
5039        i32.add
5040        local.set 6
5041        br 1 (;@1;)
583 ------------------------------------------------------------
5042      end
584 ------------------------------------------------------------
5043      local.get 8
5044      i32.const 31
5045      i32.shr_s
5046      local.tee 9
5047      local.get 8
5048      i32.xor
5049      local.get 9
5050      i32.sub
5051      i32.const 66832
5052      i32.add
5053      i32.load8_u
5054      local.set 7
5055      local.get 8
5056      local.get 9
5057      i32.add
5058      local.set 8
5059      local.get 6
5060      i32.const 16
5061      i32.ge_s
5062      if  ;; label = @2
585 ------------------------------------------------------------
5063        local.get 3
5064        local.get 10
5065        i32.shl
5066        local.get 12
5067        i32.or
5068        local.set 3
5069        block  ;; label = @3
586 ------------------------------------------------------------
5070          local.get 2
5071          local.get 10
5072          i32.add
5073          local.tee 2
5074          i32.const 16
5075          i32.lt_s
5076          br_if 0 (;@3;)
587 ------------------------------------------------------------
5077          local.get 5
5078          local.get 3
5079          local.get 2
5080          i32.const -8
5081          i32.add
5082          i32.shr_u
5083          local.tee 9
5084          i32.store8
5085          local.get 9
5086          i32.const 255
5087          i32.and
5088          i32.const 255
5089          i32.ne
5090          if (result i32)  ;; label = @4
588 ------------------------------------------------------------
5091            local.get 5
5092            i32.const 1
5093            i32.add
5094          else
589 ------------------------------------------------------------
5095            local.get 5
5096            i32.const 0
5097            i32.store8
5098            local.get 5
5099            i32.const 2
5100            i32.add
5101          end
590 ------------------------------------------------------------
5102          local.tee 5
5103          local.get 3
5104          local.get 2
5105          i32.const -16
5106          i32.add
5107          local.tee 2
5108          i32.shr_u
5109          local.tee 9
5110          i32.store8
5111          local.get 9
5112          i32.const 255
5113          i32.and
5114          i32.const 255
5115          i32.ne
5116          if  ;; label = @4
591 ------------------------------------------------------------
5117            local.get 5
5118            i32.const 1
5119            i32.add
5120            local.set 5
5121            br 1 (;@3;)
592 ------------------------------------------------------------
5122          end
593 ------------------------------------------------------------
5123          local.get 5
5124          i32.const 0
5125          i32.store8
5126          local.get 5
5127          i32.const 2
5128          i32.add
5129          local.set 5
5130        end
594 ------------------------------------------------------------
5131        local.get 6
5132        i32.const -16
5133        i32.add
5134        local.set 6
5135      end
595 ------------------------------------------------------------
5136      local.get 3
5137      local.get 4
5138      local.get 6
5139      i32.const 4
5140      i32.shl
5141      local.get 7
5142      i32.add
5143      local.tee 3
5144      i32.add
5145      i32.const 1024
5146      i32.add
5147      i32.load8_s
5148      local.tee 6
5149      i32.shl
5150      local.get 4
5151      local.get 3
5152      i32.const 2
5153      i32.shl
5154      i32.add
5155      i32.load
5156      i32.or
5157      local.set 3
5158      local.get 8
5159      i32.const -1
5160      local.get 7
5161      i32.shl
5162      i32.const -1
5163      i32.xor
5164      i32.and
5165      local.set 8
5166      block  ;; label = @2
596 ------------------------------------------------------------
5167        local.get 2
5168        local.get 6
5169        i32.add
5170        local.tee 2
5171        i32.const 16
5172        i32.lt_s
5173        br_if 0 (;@2;)
597 ------------------------------------------------------------
5174        local.get 5
5175        local.get 3
5176        local.get 2
5177        i32.const -8
5178        i32.add
5179        i32.shr_u
5180        local.tee 6
5181        i32.store8
5182        local.get 6
5183        i32.const 255
5184        i32.and
5185        i32.const 255
5186        i32.ne
5187        if (result i32)  ;; label = @3
598 ------------------------------------------------------------
5188          local.get 5
5189          i32.const 1
5190          i32.add
5191        else
599 ------------------------------------------------------------
5192          local.get 5
5193          i32.const 0
5194          i32.store8
5195          local.get 5
5196          i32.const 2
5197          i32.add
5198        end
600 ------------------------------------------------------------
5199        local.tee 5
5200        local.get 3
5201        local.get 2
5202        i32.const -16
5203        i32.add
5204        local.tee 2
5205        i32.shr_u
5206        local.tee 6
5207        i32.store8
5208        local.get 6
5209        i32.const 255
5210        i32.and
5211        i32.const 255
5212        i32.ne
5213        if  ;; label = @3
601 ------------------------------------------------------------
5214          local.get 5
5215          i32.const 1
5216          i32.add
5217          local.set 5
5218          br 1 (;@2;)
602 ------------------------------------------------------------
5219        end
603 ------------------------------------------------------------
5220        local.get 5
5221        i32.const 0
5222        i32.store8
5223        local.get 5
5224        i32.const 2
5225        i32.add
5226        local.set 5
5227      end
604 ------------------------------------------------------------
5228      local.get 3
5229      local.get 7
5230      i32.shl
5231      local.get 8
5232      i32.or
5233      local.set 3
5234      i32.const 0
5235      local.set 6
5236      local.get 2
5237      local.get 7
5238      i32.add
5239      local.tee 2
5240      i32.const 16
5241      i32.lt_s
5242      br_if 0 (;@1;)
605 ------------------------------------------------------------
5243      local.get 5
5244      local.get 3
5245      local.get 2
5246      i32.const -8
5247      i32.add
5248      i32.shr_u
5249      local.tee 7
5250      i32.store8
5251      local.get 7
5252      i32.const 255
5253      i32.and
5254      i32.const 255
5255      i32.ne
5256      if (result i32)  ;; label = @2
606 ------------------------------------------------------------
5257        local.get 5
5258        i32.const 1
5259        i32.add
5260      else
607 ------------------------------------------------------------
5261        local.get 5
5262        i32.const 0
5263        i32.store8
5264        local.get 5
5265        i32.const 2
5266        i32.add
5267      end
608 ------------------------------------------------------------
5268      local.tee 5
5269      local.get 3
5270      local.get 2
5271      i32.const -16
5272      i32.add
5273      local.tee 2
5274      i32.shr_u
5275      local.tee 7
5276      i32.store8
5277      local.get 7
5278      i32.const 255
5279      i32.and
5280      i32.const 255
5281      i32.ne
5282      if  ;; label = @2
609 ------------------------------------------------------------
5283        local.get 5
5284        i32.const 1
5285        i32.add
5286        local.set 5
5287        br 1 (;@1;)
610 ------------------------------------------------------------
5288      end
611 ------------------------------------------------------------
5289      local.get 5
5290      i32.const 0
5291      i32.store8
5292      local.get 5
5293      i32.const 2
5294      i32.add
5295      local.set 5
5296    end
612 ------------------------------------------------------------
5297    block  ;; label = @1
613 ------------------------------------------------------------
5298      local.get 1
5299      i32.load16_s
5300      local.tee 8
5301      i32.eqz
5302      if  ;; label = @2
614 ------------------------------------------------------------
5303        local.get 6
5304        i32.const 1
5305        i32.add
5306        local.set 6
5307        br 1 (;@1;)
615 ------------------------------------------------------------
5308      end
616 ------------------------------------------------------------
5309      local.get 8
5310      i32.const 31
5311      i32.shr_s
5312      local.tee 9
5313      local.get 8
5314      i32.xor
5315      local.get 9
5316      i32.sub
5317      i32.const 66832
5318      i32.add
5319      i32.load8_u
5320      local.set 7
5321      local.get 8
5322      local.get 9
5323      i32.add
5324      local.set 8
5325      local.get 6
5326      i32.const 16
5327      i32.ge_s
5328      if  ;; label = @2
617 ------------------------------------------------------------
5329        local.get 3
5330        local.get 10
5331        i32.shl
5332        local.get 12
5333        i32.or
5334        local.set 3
5335        block  ;; label = @3
618 ------------------------------------------------------------
5336          local.get 2
5337          local.get 10
5338          i32.add
5339          local.tee 2
5340          i32.const 16
5341          i32.lt_s
5342          br_if 0 (;@3;)
619 ------------------------------------------------------------
5343          local.get 5
5344          local.get 3
5345          local.get 2
5346          i32.const -8
5347          i32.add
5348          i32.shr_u
5349          local.tee 9
5350          i32.store8
5351          local.get 9
5352          i32.const 255
5353          i32.and
5354          i32.const 255
5355          i32.ne
5356          if (result i32)  ;; label = @4
620 ------------------------------------------------------------
5357            local.get 5
5358            i32.const 1
5359            i32.add
5360          else
621 ------------------------------------------------------------
5361            local.get 5
5362            i32.const 0
5363            i32.store8
5364            local.get 5
5365            i32.const 2
5366            i32.add
5367          end
622 ------------------------------------------------------------
5368          local.tee 5
5369          local.get 3
5370          local.get 2
5371          i32.const -16
5372          i32.add
5373          local.tee 2
5374          i32.shr_u
5375          local.tee 9
5376          i32.store8
5377          local.get 9
5378          i32.const 255
5379          i32.and
5380          i32.const 255
5381          i32.ne
5382          if  ;; label = @4
623 ------------------------------------------------------------
5383            local.get 5
5384            i32.const 1
5385            i32.add
5386            local.set 5
5387            br 1 (;@3;)
624 ------------------------------------------------------------
5388          end
625 ------------------------------------------------------------
5389          local.get 5
5390          i32.const 0
5391          i32.store8
5392          local.get 5
5393          i32.const 2
5394          i32.add
5395          local.set 5
5396        end
626 ------------------------------------------------------------
5397        local.get 6
5398        i32.const -16
5399        i32.add
5400        local.set 6
5401      end
627 ------------------------------------------------------------
5402      local.get 3
5403      local.get 4
5404      local.get 6
5405      i32.const 4
5406      i32.shl
5407      local.get 7
5408      i32.add
5409      local.tee 3
5410      i32.add
5411      i32.const 1024
5412      i32.add
5413      i32.load8_s
5414      local.tee 6
5415      i32.shl
5416      local.get 4
5417      local.get 3
5418      i32.const 2
5419      i32.shl
5420      i32.add
5421      i32.load
5422      i32.or
5423      local.set 3
5424      local.get 8
5425      i32.const -1
5426      local.get 7
5427      i32.shl
5428      i32.const -1
5429      i32.xor
5430      i32.and
5431      local.set 8
5432      block  ;; label = @2
628 ------------------------------------------------------------
5433        local.get 2
5434        local.get 6
5435        i32.add
5436        local.tee 2
5437        i32.const 16
5438        i32.lt_s
5439        br_if 0 (;@2;)
629 ------------------------------------------------------------
5440        local.get 5
5441        local.get 3
5442        local.get 2
5443        i32.const -8
5444        i32.add
5445        i32.shr_u
5446        local.tee 6
5447        i32.store8
5448        local.get 6
5449        i32.const 255
5450        i32.and
5451        i32.const 255
5452        i32.ne
5453        if (result i32)  ;; label = @3
630 ------------------------------------------------------------
5454          local.get 5
5455          i32.const 1
5456          i32.add
5457        else
631 ------------------------------------------------------------
5458          local.get 5
5459          i32.const 0
5460          i32.store8
5461          local.get 5
5462          i32.const 2
5463          i32.add
5464        end
632 ------------------------------------------------------------
5465        local.tee 5
5466        local.get 3
5467        local.get 2
5468        i32.const -16
5469        i32.add
5470        local.tee 2
5471        i32.shr_u
5472        local.tee 6
5473        i32.store8
5474        local.get 6
5475        i32.const 255
5476        i32.and
5477        i32.const 255
5478        i32.ne
5479        if  ;; label = @3
633 ------------------------------------------------------------
5480          local.get 5
5481          i32.const 1
5482          i32.add
5483          local.set 5
5484          br 1 (;@2;)
634 ------------------------------------------------------------
5485        end
635 ------------------------------------------------------------
5486        local.get 5
5487        i32.const 0
5488        i32.store8
5489        local.get 5
5490        i32.const 2
5491        i32.add
5492        local.set 5
5493      end
636 ------------------------------------------------------------
5494      local.get 3
5495      local.get 7
5496      i32.shl
5497      local.get 8
5498      i32.or
5499      local.set 3
5500      i32.const 0
5501      local.set 6
5502      local.get 2
5503      local.get 7
5504      i32.add
5505      local.tee 2
5506      i32.const 16
5507      i32.lt_s
5508      br_if 0 (;@1;)
637 ------------------------------------------------------------
5509      local.get 5
5510      local.get 3
5511      local.get 2
5512      i32.const -8
5513      i32.add
5514      i32.shr_u
5515      local.tee 7
5516      i32.store8
5517      local.get 7
5518      i32.const 255
5519      i32.and
5520      i32.const 255
5521      i32.ne
5522      if (result i32)  ;; label = @2
638 ------------------------------------------------------------
5523        local.get 5
5524        i32.const 1
5525        i32.add
5526      else
639 ------------------------------------------------------------
5527        local.get 5
5528        i32.const 0
5529        i32.store8
5530        local.get 5
5531        i32.const 2
5532        i32.add
5533      end
640 ------------------------------------------------------------
5534      local.tee 5
5535      local.get 3
5536      local.get 2
5537      i32.const -16
5538      i32.add
5539      local.tee 2
5540      i32.shr_u
5541      local.tee 7
5542      i32.store8
5543      local.get 7
5544      i32.const 255
5545      i32.and
5546      i32.const 255
5547      i32.ne
5548      if  ;; label = @2
641 ------------------------------------------------------------
5549        local.get 5
5550        i32.const 1
5551        i32.add
5552        local.set 5
5553        br 1 (;@1;)
642 ------------------------------------------------------------
5554      end
643 ------------------------------------------------------------
5555      local.get 5
5556      i32.const 0
5557      i32.store8
5558      local.get 5
5559      i32.const 2
5560      i32.add
5561      local.set 5
5562    end
644 ------------------------------------------------------------
5563    block  ;; label = @1
645 ------------------------------------------------------------
5564      local.get 1
5565      i32.load16_s
5566      local.tee 8
5567      i32.eqz
5568      if  ;; label = @2
646 ------------------------------------------------------------
5569        local.get 6
5570        i32.const 1
5571        i32.add
5572        local.set 6
5573        br 1 (;@1;)
647 ------------------------------------------------------------
5574      end
648 ------------------------------------------------------------
5575      local.get 8
5576      i32.const 31
5577      i32.shr_s
5578      local.tee 9
5579      local.get 8
5580      i32.xor
5581      local.get 9
5582      i32.sub
5583      i32.const 66832
5584      i32.add
5585      i32.load8_u
5586      local.set 7
5587      local.get 8
5588      local.get 9
5589      i32.add
5590      local.set 8
5591      local.get 6
5592      i32.const 16
5593      i32.ge_s
5594      if  ;; label = @2
649 ------------------------------------------------------------
5595        local.get 3
5596        local.get 10
5597        i32.shl
5598        local.get 12
5599        i32.or
5600        local.set 3
5601        block  ;; label = @3
650 ------------------------------------------------------------
5602          local.get 2
5603          local.get 10
5604          i32.add
5605          local.tee 2
5606          i32.const 16
5607          i32.lt_s
5608          br_if 0 (;@3;)
651 ------------------------------------------------------------
5609          local.get 5
5610          local.get 3
5611          local.get 2
5612          i32.const -8
5613          i32.add
5614          i32.shr_u
5615          local.tee 9
5616          i32.store8
5617          local.get 9
5618          i32.const 255
5619          i32.and
5620          i32.const 255
5621          i32.ne
5622          if (result i32)  ;; label = @4
652 ------------------------------------------------------------
5623            local.get 5
5624            i32.const 1
5625            i32.add
5626          else
653 ------------------------------------------------------------
5627            local.get 5
5628            i32.const 0
5629            i32.store8
5630            local.get 5
5631            i32.const 2
5632            i32.add
5633          end
654 ------------------------------------------------------------
5634          local.tee 5
5635          local.get 3
5636          local.get 2
5637          i32.const -16
5638          i32.add
5639          local.tee 2
5640          i32.shr_u
5641          local.tee 9
5642          i32.store8
5643          local.get 9
5644          i32.const 255
5645          i32.and
5646          i32.const 255
5647          i32.ne
5648          if  ;; label = @4
655 ------------------------------------------------------------
5649            local.get 5
5650            i32.const 1
5651            i32.add
5652            local.set 5
5653            br 1 (;@3;)
656 ------------------------------------------------------------
5654          end
657 ------------------------------------------------------------
5655          local.get 5
5656          i32.const 0
5657          i32.store8
5658          local.get 5
5659          i32.const 2
5660          i32.add
5661          local.set 5
5662        end
658 ------------------------------------------------------------
5663        local.get 6
5664        i32.const -16
5665        i32.add
5666        local.set 6
5667      end
659 ------------------------------------------------------------
5668      local.get 3
5669      local.get 4
5670      local.get 6
5671      i32.const 4
5672      i32.shl
5673      local.get 7
5674      i32.add
5675      local.tee 3
5676      i32.add
5677      i32.const 1024
5678      i32.add
5679      i32.load8_s
5680      local.tee 6
5681      i32.shl
5682      local.get 4
5683      local.get 3
5684      i32.const 2
5685      i32.shl
5686      i32.add
5687      i32.load
5688      i32.or
5689      local.set 3
5690      local.get 8
5691      i32.const -1
5692      local.get 7
5693      i32.shl
5694      i32.const -1
5695      i32.xor
5696      i32.and
5697      local.set 8
5698      block  ;; label = @2
660 ------------------------------------------------------------
5699        local.get 2
5700        local.get 6
5701        i32.add
5702        local.tee 2
5703        i32.const 16
5704        i32.lt_s
5705        br_if 0 (;@2;)
661 ------------------------------------------------------------
5706        local.get 5
5707        local.get 3
5708        local.get 2
5709        i32.const -8
5710        i32.add
5711        i32.shr_u
5712        local.tee 6
5713        i32.store8
5714        local.get 6
5715        i32.const 255
5716        i32.and
5717        i32.const 255
5718        i32.ne
5719        if (result i32)  ;; label = @3
662 ------------------------------------------------------------
5720          local.get 5
5721          i32.const 1
5722          i32.add
5723        else
663 ------------------------------------------------------------
5724          local.get 5
5725          i32.const 0
5726          i32.store8
5727          local.get 5
5728          i32.const 2
5729          i32.add
5730        end
664 ------------------------------------------------------------
5731        local.tee 5
5732        local.get 3
5733        local.get 2
5734        i32.const -16
5735        i32.add
5736        local.tee 2
5737        i32.shr_u
5738        local.tee 6
5739        i32.store8
5740        local.get 6
5741        i32.const 255
5742        i32.and
5743        i32.const 255
5744        i32.ne
5745        if  ;; label = @3
665 ------------------------------------------------------------
5746          local.get 5
5747          i32.const 1
5748          i32.add
5749          local.set 5
5750          br 1 (;@2;)
666 ------------------------------------------------------------
5751        end
667 ------------------------------------------------------------
5752        local.get 5
5753        i32.const 0
5754        i32.store8
5755        local.get 5
5756        i32.const 2
5757        i32.add
5758        local.set 5
5759      end
668 ------------------------------------------------------------
5760      local.get 3
5761      local.get 7
5762      i32.shl
5763      local.get 8
5764      i32.or
5765      local.set 3
5766      i32.const 0
5767      local.set 6
5768      local.get 2
5769      local.get 7
5770      i32.add
5771      local.tee 2
5772      i32.const 16
5773      i32.lt_s
5774      br_if 0 (;@1;)
669 ------------------------------------------------------------
5775      local.get 5
5776      local.get 3
5777      local.get 2
5778      i32.const -8
5779      i32.add
5780      i32.shr_u
5781      local.tee 7
5782      i32.store8
5783      local.get 7
5784      i32.const 255
5785      i32.and
5786      i32.const 255
5787      i32.ne
5788      if (result i32)  ;; label = @2
670 ------------------------------------------------------------
5789        local.get 5
5790        i32.const 1
5791        i32.add
5792      else
671 ------------------------------------------------------------
5793        local.get 5
5794        i32.const 0
5795        i32.store8
5796        local.get 5
5797        i32.const 2
5798        i32.add
5799      end
672 ------------------------------------------------------------
5800      local.tee 5
5801      local.get 3
5802      local.get 2
5803      i32.const -16
5804      i32.add
5805      local.tee 2
5806      i32.shr_u
5807      local.tee 7
5808      i32.store8
5809      local.get 7
5810      i32.const 255
5811      i32.and
5812      i32.const 255
5813      i32.ne
5814      if  ;; label = @2
673 ------------------------------------------------------------
5815        local.get 5
5816        i32.const 1
5817        i32.add
5818        local.set 5
5819        br 1 (;@1;)
674 ------------------------------------------------------------
5820      end
675 ------------------------------------------------------------
5821      local.get 5
5822      i32.const 0
5823      i32.store8
5824      local.get 5
5825      i32.const 2
5826      i32.add
5827      local.set 5
5828    end
676 ------------------------------------------------------------
5829    block  ;; label = @1
677 ------------------------------------------------------------
5830      local.get 1
5831      i32.load16_s
5832      local.tee 8
5833      i32.eqz
5834      if  ;; label = @2
678 ------------------------------------------------------------
5835        local.get 6
5836        i32.const 1
5837        i32.add
5838        local.set 6
5839        br 1 (;@1;)
679 ------------------------------------------------------------
5840      end
680 ------------------------------------------------------------
5841      local.get 8
5842      i32.const 31
5843      i32.shr_s
5844      local.tee 9
5845      local.get 8
5846      i32.xor
5847      local.get 9
5848      i32.sub
5849      i32.const 66832
5850      i32.add
5851      i32.load8_u
5852      local.set 7
5853      local.get 8
5854      local.get 9
5855      i32.add
5856      local.set 8
5857      local.get 6
5858      i32.const 16
5859      i32.ge_s
5860      if  ;; label = @2
681 ------------------------------------------------------------
5861        local.get 3
5862        local.get 10
5863        i32.shl
5864        local.get 12
5865        i32.or
5866        local.set 3
5867        block  ;; label = @3
682 ------------------------------------------------------------
5868          local.get 2
5869          local.get 10
5870          i32.add
5871          local.tee 2
5872          i32.const 16
5873          i32.lt_s
5874          br_if 0 (;@3;)
683 ------------------------------------------------------------
5875          local.get 5
5876          local.get 3
5877          local.get 2
5878          i32.const -8
5879          i32.add
5880          i32.shr_u
5881          local.tee 9
5882          i32.store8
5883          local.get 9
5884          i32.const 255
5885          i32.and
5886          i32.const 255
5887          i32.ne
5888          if (result i32)  ;; label = @4
684 ------------------------------------------------------------
5889            local.get 5
5890            i32.const 1
5891            i32.add
5892          else
685 ------------------------------------------------------------
5893            local.get 5
5894            i32.const 0
5895            i32.store8
5896            local.get 5
5897            i32.const 2
5898            i32.add
5899          end
686 ------------------------------------------------------------
5900          local.tee 5
5901          local.get 3
5902          local.get 2
5903          i32.const -16
5904          i32.add
5905          local.tee 2
5906          i32.shr_u
5907          local.tee 9
5908          i32.store8
5909          local.get 9
5910          i32.const 255
5911          i32.and
5912          i32.const 255
5913          i32.ne
5914          if  ;; label = @4
687 ------------------------------------------------------------
5915            local.get 5
5916            i32.const 1
5917            i32.add
5918            local.set 5
5919            br 1 (;@3;)
688 ------------------------------------------------------------
5920          end
689 ------------------------------------------------------------
5921          local.get 5
5922          i32.const 0
5923          i32.store8
5924          local.get 5
5925          i32.const 2
5926          i32.add
5927          local.set 5
5928        end
690 ------------------------------------------------------------
5929        local.get 6
5930        i32.const -16
5931        i32.add
5932        local.set 6
5933      end
691 ------------------------------------------------------------
5934      local.get 3
5935      local.get 4
5936      local.get 6
5937      i32.const 4
5938      i32.shl
5939      local.get 7
5940      i32.add
5941      local.tee 3
5942      i32.add
5943      i32.const 1024
5944      i32.add
5945      i32.load8_s
5946      local.tee 6
5947      i32.shl
5948      local.get 4
5949      local.get 3
5950      i32.const 2
5951      i32.shl
5952      i32.add
5953      i32.load
5954      i32.or
5955      local.set 3
5956      local.get 8
5957      i32.const -1
5958      local.get 7
5959      i32.shl
5960      i32.const -1
5961      i32.xor
5962      i32.and
5963      local.set 8
5964      block  ;; label = @2
692 ------------------------------------------------------------
5965        local.get 2
5966        local.get 6
5967        i32.add
5968        local.tee 2
5969        i32.const 16
5970        i32.lt_s
5971        br_if 0 (;@2;)
693 ------------------------------------------------------------
5972        local.get 5
5973        local.get 3
5974        local.get 2
5975        i32.const -8
5976        i32.add
5977        i32.shr_u
5978        local.tee 6
5979        i32.store8
5980        local.get 6
5981        i32.const 255
5982        i32.and
5983        i32.const 255
5984        i32.ne
5985        if (result i32)  ;; label = @3
694 ------------------------------------------------------------
5986          local.get 5
5987          i32.const 1
5988          i32.add
5989        else
695 ------------------------------------------------------------
5990          local.get 5
5991          i32.const 0
5992          i32.store8
5993          local.get 5
5994          i32.const 2
5995          i32.add
5996        end
696 ------------------------------------------------------------
5997        local.tee 5
5998        local.get 3
5999        local.get 2
6000        i32.const -16
6001        i32.add
6002        local.tee 2
6003        i32.shr_u
6004        local.tee 6
6005        i32.store8
6006        local.get 6
6007        i32.const 255
6008        i32.and
6009        i32.const 255
6010        i32.ne
6011        if  ;; label = @3
697 ------------------------------------------------------------
6012          local.get 5
6013          i32.const 1
6014          i32.add
6015          local.set 5
6016          br 1 (;@2;)
698 ------------------------------------------------------------
6017        end
699 ------------------------------------------------------------
6018        local.get 5
6019        i32.const 0
6020        i32.store8
6021        local.get 5
6022        i32.const 2
6023        i32.add
6024        local.set 5
6025      end
700 ------------------------------------------------------------
6026      local.get 3
6027      local.get 7
6028      i32.shl
6029      local.get 8
6030      i32.or
6031      local.set 3
6032      i32.const 0
6033      local.set 6
6034      local.get 2
6035      local.get 7
6036      i32.add
6037      local.tee 2
6038      i32.const 16
6039      i32.lt_s
6040      br_if 0 (;@1;)
701 ------------------------------------------------------------
6041      local.get 5
6042      local.get 3
6043      local.get 2
6044      i32.const -8
6045      i32.add
6046      i32.shr_u
6047      local.tee 7
6048      i32.store8
6049      local.get 7
6050      i32.const 255
6051      i32.and
6052      i32.const 255
6053      i32.ne
6054      if (result i32)  ;; label = @2
702 ------------------------------------------------------------
6055        local.get 5
6056        i32.const 1
6057        i32.add
6058      else
703 ------------------------------------------------------------
6059        local.get 5
6060        i32.const 0
6061        i32.store8
6062        local.get 5
6063        i32.const 2
6064        i32.add
6065      end
704 ------------------------------------------------------------
6066      local.tee 5
6067      local.get 3
6068      local.get 2
6069      i32.const -16
6070      i32.add
6071      local.tee 2
6072      i32.shr_u
6073      local.tee 7
6074      i32.store8
6075      local.get 7
6076      i32.const 255
6077      i32.and
6078      i32.const 255
6079      i32.ne
6080      if  ;; label = @2
705 ------------------------------------------------------------
6081        local.get 5
6082        i32.const 1
6083        i32.add
6084        local.set 5
6085        br 1 (;@1;)
706 ------------------------------------------------------------
6086      end
707 ------------------------------------------------------------
6087      local.get 5
6088      i32.const 0
6089      i32.store8
6090      local.get 5
6091      i32.const 2
6092      i32.add
6093      local.set 5
6094    end
708 ------------------------------------------------------------
6095    block  ;; label = @1
709 ------------------------------------------------------------
6096      local.get 1
6097      i32.load16_s
6098      local.tee 8
6099      i32.eqz
6100      if  ;; label = @2
710 ------------------------------------------------------------
6101        local.get 6
6102        i32.const 1
6103        i32.add
6104        local.set 6
6105        br 1 (;@1;)
711 ------------------------------------------------------------
6106      end
712 ------------------------------------------------------------
6107      local.get 8
6108      i32.const 31
6109      i32.shr_s
6110      local.tee 9
6111      local.get 8
6112      i32.xor
6113      local.get 9
6114      i32.sub
6115      i32.const 66832
6116      i32.add
6117      i32.load8_u
6118      local.set 7
6119      local.get 8
6120      local.get 9
6121      i32.add
6122      local.set 8
6123      local.get 6
6124      i32.const 16
6125      i32.ge_s
6126      if  ;; label = @2
713 ------------------------------------------------------------
6127        local.get 3
6128        local.get 10
6129        i32.shl
6130        local.get 12
6131        i32.or
6132        local.set 3
6133        block  ;; label = @3
714 ------------------------------------------------------------
6134          local.get 2
6135          local.get 10
6136          i32.add
6137          local.tee 2
6138          i32.const 16
6139          i32.lt_s
6140          br_if 0 (;@3;)
715 ------------------------------------------------------------
6141          local.get 5
6142          local.get 3
6143          local.get 2
6144          i32.const -8
6145          i32.add
6146          i32.shr_u
6147          local.tee 9
6148          i32.store8
6149          local.get 9
6150          i32.const 255
6151          i32.and
6152          i32.const 255
6153          i32.ne
6154          if (result i32)  ;; label = @4
716 ------------------------------------------------------------
6155            local.get 5
6156            i32.const 1
6157            i32.add
6158          else
717 ------------------------------------------------------------
6159            local.get 5
6160            i32.const 0
6161            i32.store8
6162            local.get 5
6163            i32.const 2
6164            i32.add
6165          end
718 ------------------------------------------------------------
6166          local.tee 5
6167          local.get 3
6168          local.get 2
6169          i32.const -16
6170          i32.add
6171          local.tee 2
6172          i32.shr_u
6173          local.tee 9
6174          i32.store8
6175          local.get 9
6176          i32.const 255
6177          i32.and
6178          i32.const 255
6179          i32.ne
6180          if  ;; label = @4
719 ------------------------------------------------------------
6181            local.get 5
6182            i32.const 1
6183            i32.add
6184            local.set 5
6185            br 1 (;@3;)
720 ------------------------------------------------------------
6186          end
721 ------------------------------------------------------------
6187          local.get 5
6188          i32.const 0
6189          i32.store8
6190          local.get 5
6191          i32.const 2
6192          i32.add
6193          local.set 5
6194        end
722 ------------------------------------------------------------
6195        local.get 6
6196        i32.const -16
6197        i32.add
6198        local.set 6
6199      end
723 ------------------------------------------------------------
6200      local.get 3
6201      local.get 4
6202      local.get 6
6203      i32.const 4
6204      i32.shl
6205      local.get 7
6206      i32.add
6207      local.tee 3
6208      i32.add
6209      i32.const 1024
6210      i32.add
6211      i32.load8_s
6212      local.tee 6
6213      i32.shl
6214      local.get 4
6215      local.get 3
6216      i32.const 2
6217      i32.shl
6218      i32.add
6219      i32.load
6220      i32.or
6221      local.set 3
6222      local.get 8
6223      i32.const -1
6224      local.get 7
6225      i32.shl
6226      i32.const -1
6227      i32.xor
6228      i32.and
6229      local.set 8
6230      block  ;; label = @2
724 ------------------------------------------------------------
6231        local.get 2
6232        local.get 6
6233        i32.add
6234        local.tee 2
6235        i32.const 16
6236        i32.lt_s
6237        br_if 0 (;@2;)
725 ------------------------------------------------------------
6238        local.get 5
6239        local.get 3
6240        local.get 2
6241        i32.const -8
6242        i32.add
6243        i32.shr_u
6244        local.tee 6
6245        i32.store8
6246        local.get 6
6247        i32.const 255
6248        i32.and
6249        i32.const 255
6250        i32.ne
6251        if (result i32)  ;; label = @3
726 ------------------------------------------------------------
6252          local.get 5
6253          i32.const 1
6254          i32.add
6255        else
727 ------------------------------------------------------------
6256          local.get 5
6257          i32.const 0
6258          i32.store8
6259          local.get 5
6260          i32.const 2
6261          i32.add
6262        end
728 ------------------------------------------------------------
6263        local.tee 5
6264        local.get 3
6265        local.get 2
6266        i32.const -16
6267        i32.add
6268        local.tee 2
6269        i32.shr_u
6270        local.tee 6
6271        i32.store8
6272        local.get 6
6273        i32.const 255
6274        i32.and
6275        i32.const 255
6276        i32.ne
6277        if  ;; label = @3
729 ------------------------------------------------------------
6278          local.get 5
6279          i32.const 1
6280          i32.add
6281          local.set 5
6282          br 1 (;@2;)
730 ------------------------------------------------------------
6283        end
731 ------------------------------------------------------------
6284        local.get 5
6285        i32.const 0
6286        i32.store8
6287        local.get 5
6288        i32.const 2
6289        i32.add
6290        local.set 5
6291      end
732 ------------------------------------------------------------
6292      local.get 3
6293      local.get 7
6294      i32.shl
6295      local.get 8
6296      i32.or
6297      local.set 3
6298      i32.const 0
6299      local.set 6
6300      local.get 2
6301      local.get 7
6302      i32.add
6303      local.tee 2
6304      i32.const 16
6305      i32.lt_s
6306      br_if 0 (;@1;)
733 ------------------------------------------------------------
6307      local.get 5
6308      local.get 3
6309      local.get 2
6310      i32.const -8
6311      i32.add
6312      i32.shr_u
6313      local.tee 7
6314      i32.store8
6315      local.get 7
6316      i32.const 255
6317      i32.and
6318      i32.const 255
6319      i32.ne
6320      if (result i32)  ;; label = @2
734 ------------------------------------------------------------
6321        local.get 5
6322        i32.const 1
6323        i32.add
6324      else
735 ------------------------------------------------------------
6325        local.get 5
6326        i32.const 0
6327        i32.store8
6328        local.get 5
6329        i32.const 2
6330        i32.add
6331      end
736 ------------------------------------------------------------
6332      local.tee 5
6333      local.get 3
6334      local.get 2
6335      i32.const -16
6336      i32.add
6337      local.tee 2
6338      i32.shr_u
6339      local.tee 7
6340      i32.store8
6341      local.get 7
6342      i32.const 255
6343      i32.and
6344      i32.const 255
6345      i32.ne
6346      if  ;; label = @2
737 ------------------------------------------------------------
6347        local.get 5
6348        i32.const 1
6349        i32.add
6350        local.set 5
6351        br 1 (;@1;)
738 ------------------------------------------------------------
6352      end
739 ------------------------------------------------------------
6353      local.get 5
6354      i32.const 0
6355      i32.store8
6356      local.get 5
6357      i32.const 2
6358      i32.add
6359      local.set 5
6360    end
740 ------------------------------------------------------------
6361    block  ;; label = @1
741 ------------------------------------------------------------
6362      local.get 1
6363      i32.load16_s
6364      local.tee 8
6365      i32.eqz
6366      if  ;; label = @2
742 ------------------------------------------------------------
6367        local.get 6
6368        i32.const 1
6369        i32.add
6370        local.set 6
6371        br 1 (;@1;)
743 ------------------------------------------------------------
6372      end
744 ------------------------------------------------------------
6373      local.get 8
6374      i32.const 31
6375      i32.shr_s
6376      local.tee 9
6377      local.get 8
6378      i32.xor
6379      local.get 9
6380      i32.sub
6381      i32.const 66832
6382      i32.add
6383      i32.load8_u
6384      local.set 7
6385      local.get 8
6386      local.get 9
6387      i32.add
6388      local.set 8
6389      local.get 6
6390      i32.const 16
6391      i32.ge_s
6392      if  ;; label = @2
745 ------------------------------------------------------------
6393        local.get 3
6394        local.get 10
6395        i32.shl
6396        local.get 12
6397        i32.or
6398        local.set 3
6399        block  ;; label = @3
746 ------------------------------------------------------------
6400          local.get 2
6401          local.get 10
6402          i32.add
6403          local.tee 2
6404          i32.const 16
6405          i32.lt_s
6406          br_if 0 (;@3;)
747 ------------------------------------------------------------
6407          local.get 5
6408          local.get 3
6409          local.get 2
6410          i32.const -8
6411          i32.add
6412          i32.shr_u
6413          local.tee 9
6414          i32.store8
6415          local.get 9
6416          i32.const 255
6417          i32.and
6418          i32.const 255
6419          i32.ne
6420          if (result i32)  ;; label = @4
748 ------------------------------------------------------------
6421            local.get 5
6422            i32.const 1
6423            i32.add
6424          else
749 ------------------------------------------------------------
6425            local.get 5
6426            i32.const 0
6427            i32.store8
6428            local.get 5
6429            i32.const 2
6430            i32.add
6431          end
750 ------------------------------------------------------------
6432          local.tee 5
6433          local.get 3
6434          local.get 2
6435          i32.const -16
6436          i32.add
6437          local.tee 2
6438          i32.shr_u
6439          local.tee 9
6440          i32.store8
6441          local.get 9
6442          i32.const 255
6443          i32.and
6444          i32.const 255
6445          i32.ne
6446          if  ;; label = @4
751 ------------------------------------------------------------
6447            local.get 5
6448            i32.const 1
6449            i32.add
6450            local.set 5
6451            br 1 (;@3;)
752 ------------------------------------------------------------
6452          end
753 ------------------------------------------------------------
6453          local.get 5
6454          i32.const 0
6455          i32.store8
6456          local.get 5
6457          i32.const 2
6458          i32.add
6459          local.set 5
6460        end
754 ------------------------------------------------------------
6461        local.get 6
6462        i32.const -16
6463        i32.add
6464        local.set 6
6465      end
755 ------------------------------------------------------------
6466      local.get 3
6467      local.get 4
6468      local.get 6
6469      i32.const 4
6470      i32.shl
6471      local.get 7
6472      i32.add
6473      local.tee 3
6474      i32.add
6475      i32.const 1024
6476      i32.add
6477      i32.load8_s
6478      local.tee 6
6479      i32.shl
6480      local.get 4
6481      local.get 3
6482      i32.const 2
6483      i32.shl
6484      i32.add
6485      i32.load
6486      i32.or
6487      local.set 3
6488      local.get 8
6489      i32.const -1
6490      local.get 7
6491      i32.shl
6492      i32.const -1
6493      i32.xor
6494      i32.and
6495      local.set 8
6496      block  ;; label = @2
756 ------------------------------------------------------------
6497        local.get 2
6498        local.get 6
6499        i32.add
6500        local.tee 2
6501        i32.const 16
6502        i32.lt_s
6503        br_if 0 (;@2;)
757 ------------------------------------------------------------
6504        local.get 5
6505        local.get 3
6506        local.get 2
6507        i32.const -8
6508        i32.add
6509        i32.shr_u
6510        local.tee 6
6511        i32.store8
6512        local.get 6
6513        i32.const 255
6514        i32.and
6515        i32.const 255
6516        i32.ne
6517        if (result i32)  ;; label = @3
758 ------------------------------------------------------------
6518          local.get 5
6519          i32.const 1
6520          i32.add
6521        else
759 ------------------------------------------------------------
6522          local.get 5
6523          i32.const 0
6524          i32.store8
6525          local.get 5
6526          i32.const 2
6527          i32.add
6528        end
760 ------------------------------------------------------------
6529        local.tee 5
6530        local.get 3
6531        local.get 2
6532        i32.const -16
6533        i32.add
6534        local.tee 2
6535        i32.shr_u
6536        local.tee 6
6537        i32.store8
6538        local.get 6
6539        i32.const 255
6540        i32.and
6541        i32.const 255
6542        i32.ne
6543        if  ;; label = @3
761 ------------------------------------------------------------
6544          local.get 5
6545          i32.const 1
6546          i32.add
6547          local.set 5
6548          br 1 (;@2;)
762 ------------------------------------------------------------
6549        end
763 ------------------------------------------------------------
6550        local.get 5
6551        i32.const 0
6552        i32.store8
6553        local.get 5
6554        i32.const 2
6555        i32.add
6556        local.set 5
6557      end
764 ------------------------------------------------------------
6558      local.get 3
6559      local.get 7
6560      i32.shl
6561      local.get 8
6562      i32.or
6563      local.set 3
6564      i32.const 0
6565      local.set 6
6566      local.get 2
6567      local.get 7
6568      i32.add
6569      local.tee 2
6570      i32.const 16
6571      i32.lt_s
6572      br_if 0 (;@1;)
765 ------------------------------------------------------------
6573      local.get 5
6574      local.get 3
6575      local.get 2
6576      i32.const -8
6577      i32.add
6578      i32.shr_u
6579      local.tee 7
6580      i32.store8
6581      local.get 7
6582      i32.const 255
6583      i32.and
6584      i32.const 255
6585      i32.ne
6586      if (result i32)  ;; label = @2
766 ------------------------------------------------------------
6587        local.get 5
6588        i32.const 1
6589        i32.add
6590      else
767 ------------------------------------------------------------
6591        local.get 5
6592        i32.const 0
6593        i32.store8
6594        local.get 5
6595        i32.const 2
6596        i32.add
6597      end
768 ------------------------------------------------------------
6598      local.tee 5
6599      local.get 3
6600      local.get 2
6601      i32.const -16
6602      i32.add
6603      local.tee 2
6604      i32.shr_u
6605      local.tee 7
6606      i32.store8
6607      local.get 7
6608      i32.const 255
6609      i32.and
6610      i32.const 255
6611      i32.ne
6612      if  ;; label = @2
769 ------------------------------------------------------------
6613        local.get 5
6614        i32.const 1
6615        i32.add
6616        local.set 5
6617        br 1 (;@1;)
770 ------------------------------------------------------------
6618      end
771 ------------------------------------------------------------
6619      local.get 5
6620      i32.const 0
6621      i32.store8
6622      local.get 5
6623      i32.const 2
6624      i32.add
6625      local.set 5
6626    end
772 ------------------------------------------------------------
6627    block  ;; label = @1
773 ------------------------------------------------------------
6628      local.get 1
6629      i32.load16_s
6630      local.tee 8
6631      i32.eqz
6632      if  ;; label = @2
774 ------------------------------------------------------------
6633        local.get 6
6634        i32.const 1
6635        i32.add
6636        local.set 6
6637        br 1 (;@1;)
775 ------------------------------------------------------------
6638      end
776 ------------------------------------------------------------
6639      local.get 8
6640      i32.const 31
6641      i32.shr_s
6642      local.tee 9
6643      local.get 8
6644      i32.xor
6645      local.get 9
6646      i32.sub
6647      i32.const 66832
6648      i32.add
6649      i32.load8_u
6650      local.set 7
6651      local.get 8
6652      local.get 9
6653      i32.add
6654      local.set 8
6655      local.get 6
6656      i32.const 16
6657      i32.ge_s
6658      if  ;; label = @2
777 ------------------------------------------------------------
6659        local.get 3
6660        local.get 10
6661        i32.shl
6662        local.get 12
6663        i32.or
6664        local.set 3
6665        block  ;; label = @3
778 ------------------------------------------------------------
6666          local.get 2
6667          local.get 10
6668          i32.add
6669          local.tee 2
6670          i32.const 16
6671          i32.lt_s
6672          br_if 0 (;@3;)
779 ------------------------------------------------------------
6673          local.get 5
6674          local.get 3
6675          local.get 2
6676          i32.const -8
6677          i32.add
6678          i32.shr_u
6679          local.tee 9
6680          i32.store8
6681          local.get 9
6682          i32.const 255
6683          i32.and
6684          i32.const 255
6685          i32.ne
6686          if (result i32)  ;; label = @4
780 ------------------------------------------------------------
6687            local.get 5
6688            i32.const 1
6689            i32.add
6690          else
781 ------------------------------------------------------------
6691            local.get 5
6692            i32.const 0
6693            i32.store8
6694            local.get 5
6695            i32.const 2
6696            i32.add
6697          end
782 ------------------------------------------------------------
6698          local.tee 5
6699          local.get 3
6700          local.get 2
6701          i32.const -16
6702          i32.add
6703          local.tee 2
6704          i32.shr_u
6705          local.tee 9
6706          i32.store8
6707          local.get 9
6708          i32.const 255
6709          i32.and
6710          i32.const 255
6711          i32.ne
6712          if  ;; label = @4
783 ------------------------------------------------------------
6713            local.get 5
6714            i32.const 1
6715            i32.add
6716            local.set 5
6717            br 1 (;@3;)
784 ------------------------------------------------------------
6718          end
785 ------------------------------------------------------------
6719          local.get 5
6720          i32.const 0
6721          i32.store8
6722          local.get 5
6723          i32.const 2
6724          i32.add
6725          local.set 5
6726        end
786 ------------------------------------------------------------
6727        local.get 6
6728        i32.const -16
6729        i32.add
6730        local.set 6
6731      end
787 ------------------------------------------------------------
6732      local.get 3
6733      local.get 4
6734      local.get 6
6735      i32.const 4
6736      i32.shl
6737      local.get 7
6738      i32.add
6739      local.tee 3
6740      i32.add
6741      i32.const 1024
6742      i32.add
6743      i32.load8_s
6744      local.tee 6
6745      i32.shl
6746      local.get 4
6747      local.get 3
6748      i32.const 2
6749      i32.shl
6750      i32.add
6751      i32.load
6752      i32.or
6753      local.set 3
6754      local.get 8
6755      i32.const -1
6756      local.get 7
6757      i32.shl
6758      i32.const -1
6759      i32.xor
6760      i32.and
6761      local.set 8
6762      block  ;; label = @2
788 ------------------------------------------------------------
6763        local.get 2
6764        local.get 6
6765        i32.add
6766        local.tee 2
6767        i32.const 16
6768        i32.lt_s
6769        br_if 0 (;@2;)
789 ------------------------------------------------------------
6770        local.get 5
6771        local.get 3
6772        local.get 2
6773        i32.const -8
6774        i32.add
6775        i32.shr_u
6776        local.tee 6
6777        i32.store8
6778        local.get 6
6779        i32.const 255
6780        i32.and
6781        i32.const 255
6782        i32.ne
6783        if (result i32)  ;; label = @3
790 ------------------------------------------------------------
6784          local.get 5
6785          i32.const 1
6786          i32.add
6787        else
791 ------------------------------------------------------------
6788          local.get 5
6789          i32.const 0
6790          i32.store8
6791          local.get 5
6792          i32.const 2
6793          i32.add
6794        end
792 ------------------------------------------------------------
6795        local.tee 5
6796        local.get 3
6797        local.get 2
6798        i32.const -16
6799        i32.add
6800        local.tee 2
6801        i32.shr_u
6802        local.tee 6
6803        i32.store8
6804        local.get 6
6805        i32.const 255
6806        i32.and
6807        i32.const 255
6808        i32.ne
6809        if  ;; label = @3
793 ------------------------------------------------------------
6810          local.get 5
6811          i32.const 1
6812          i32.add
6813          local.set 5
6814          br 1 (;@2;)
794 ------------------------------------------------------------
6815        end
795 ------------------------------------------------------------
6816        local.get 5
6817        i32.const 0
6818        i32.store8
6819        local.get 5
6820        i32.const 2
6821        i32.add
6822        local.set 5
6823      end
796 ------------------------------------------------------------
6824      local.get 3
6825      local.get 7
6826      i32.shl
6827      local.get 8
6828      i32.or
6829      local.set 3
6830      i32.const 0
6831      local.set 6
6832      local.get 2
6833      local.get 7
6834      i32.add
6835      local.tee 2
6836      i32.const 16
6837      i32.lt_s
6838      br_if 0 (;@1;)
797 ------------------------------------------------------------
6839      local.get 5
6840      local.get 3
6841      local.get 2
6842      i32.const -8
6843      i32.add
6844      i32.shr_u
6845      local.tee 7
6846      i32.store8
6847      local.get 7
6848      i32.const 255
6849      i32.and
6850      i32.const 255
6851      i32.ne
6852      if (result i32)  ;; label = @2
798 ------------------------------------------------------------
6853        local.get 5
6854        i32.const 1
6855        i32.add
6856      else
799 ------------------------------------------------------------
6857        local.get 5
6858        i32.const 0
6859        i32.store8
6860        local.get 5
6861        i32.const 2
6862        i32.add
6863      end
800 ------------------------------------------------------------
6864      local.tee 5
6865      local.get 3
6866      local.get 2
6867      i32.const -16
6868      i32.add
6869      local.tee 2
6870      i32.shr_u
6871      local.tee 7
6872      i32.store8
6873      local.get 7
6874      i32.const 255
6875      i32.and
6876      i32.const 255
6877      i32.ne
6878      if  ;; label = @2
801 ------------------------------------------------------------
6879        local.get 5
6880        i32.const 1
6881        i32.add
6882        local.set 5
6883        br 1 (;@1;)
802 ------------------------------------------------------------
6884      end
803 ------------------------------------------------------------
6885      local.get 5
6886      i32.const 0
6887      i32.store8
6888      local.get 5
6889      i32.const 2
6890      i32.add
6891      local.set 5
6892    end
804 ------------------------------------------------------------
6893    block  ;; label = @1
805 ------------------------------------------------------------
6894      local.get 1
6895      i32.load16_s
6896      local.tee 8
6897      i32.eqz
6898      if  ;; label = @2
806 ------------------------------------------------------------
6899        local.get 6
6900        i32.const 1
6901        i32.add
6902        local.set 6
6903        br 1 (;@1;)
807 ------------------------------------------------------------
6904      end
808 ------------------------------------------------------------
6905      local.get 8
6906      i32.const 31
6907      i32.shr_s
6908      local.tee 9
6909      local.get 8
6910      i32.xor
6911      local.get 9
6912      i32.sub
6913      i32.const 66832
6914      i32.add
6915      i32.load8_u
6916      local.set 7
6917      local.get 8
6918      local.get 9
6919      i32.add
6920      local.set 8
6921      local.get 6
6922      i32.const 16
6923      i32.ge_s
6924      if  ;; label = @2
809 ------------------------------------------------------------
6925        local.get 3
6926        local.get 10
6927        i32.shl
6928        local.get 12
6929        i32.or
6930        local.set 3
6931        block  ;; label = @3
810 ------------------------------------------------------------
6932          local.get 2
6933          local.get 10
6934          i32.add
6935          local.tee 2
6936          i32.const 16
6937          i32.lt_s
6938          br_if 0 (;@3;)
811 ------------------------------------------------------------
6939          local.get 5
6940          local.get 3
6941          local.get 2
6942          i32.const -8
6943          i32.add
6944          i32.shr_u
6945          local.tee 9
6946          i32.store8
6947          local.get 9
6948          i32.const 255
6949          i32.and
6950          i32.const 255
6951          i32.ne
6952          if (result i32)  ;; label = @4
812 ------------------------------------------------------------
6953            local.get 5
6954            i32.const 1
6955            i32.add
6956          else
813 ------------------------------------------------------------
6957            local.get 5
6958            i32.const 0
6959            i32.store8
6960            local.get 5
6961            i32.const 2
6962            i32.add
6963          end
814 ------------------------------------------------------------
6964          local.tee 5
6965          local.get 3
6966          local.get 2
6967          i32.const -16
6968          i32.add
6969          local.tee 2
6970          i32.shr_u
6971          local.tee 9
6972          i32.store8
6973          local.get 9
6974          i32.const 255
6975          i32.and
6976          i32.const 255
6977          i32.ne
6978          if  ;; label = @4
815 ------------------------------------------------------------
6979            local.get 5
6980            i32.const 1
6981            i32.add
6982            local.set 5
6983            br 1 (;@3;)
816 ------------------------------------------------------------
6984          end
817 ------------------------------------------------------------
6985          local.get 5
6986          i32.const 0
6987          i32.store8
6988          local.get 5
6989          i32.const 2
6990          i32.add
6991          local.set 5
6992        end
818 ------------------------------------------------------------
6993        local.get 6
6994        i32.const -16
6995        i32.add
6996        local.set 6
6997      end
819 ------------------------------------------------------------
6998      local.get 3
6999      local.get 4
7000      local.get 6
7001      i32.const 4
7002      i32.shl
7003      local.get 7
7004      i32.add
7005      local.tee 3
7006      i32.add
7007      i32.const 1024
7008      i32.add
7009      i32.load8_s
7010      local.tee 6
7011      i32.shl
7012      local.get 4
7013      local.get 3
7014      i32.const 2
7015      i32.shl
7016      i32.add
7017      i32.load
7018      i32.or
7019      local.set 3
7020      local.get 8
7021      i32.const -1
7022      local.get 7
7023      i32.shl
7024      i32.const -1
7025      i32.xor
7026      i32.and
7027      local.set 8
7028      block  ;; label = @2
820 ------------------------------------------------------------
7029        local.get 2
7030        local.get 6
7031        i32.add
7032        local.tee 2
7033        i32.const 16
7034        i32.lt_s
7035        br_if 0 (;@2;)
821 ------------------------------------------------------------
7036        local.get 5
7037        local.get 3
7038        local.get 2
7039        i32.const -8
7040        i32.add
7041        i32.shr_u
7042        local.tee 6
7043        i32.store8
7044        local.get 6
7045        i32.const 255
7046        i32.and
7047        i32.const 255
7048        i32.ne
7049        if (result i32)  ;; label = @3
822 ------------------------------------------------------------
7050          local.get 5
7051          i32.const 1
7052          i32.add
7053        else
823 ------------------------------------------------------------
7054          local.get 5
7055          i32.const 0
7056          i32.store8
7057          local.get 5
7058          i32.const 2
7059          i32.add
7060        end
824 ------------------------------------------------------------
7061        local.tee 5
7062        local.get 3
7063        local.get 2
7064        i32.const -16
7065        i32.add
7066        local.tee 2
7067        i32.shr_u
7068        local.tee 6
7069        i32.store8
7070        local.get 6
7071        i32.const 255
7072        i32.and
7073        i32.const 255
7074        i32.ne
7075        if  ;; label = @3
825 ------------------------------------------------------------
7076          local.get 5
7077          i32.const 1
7078          i32.add
7079          local.set 5
7080          br 1 (;@2;)
826 ------------------------------------------------------------
7081        end
827 ------------------------------------------------------------
7082        local.get 5
7083        i32.const 0
7084        i32.store8
7085        local.get 5
7086        i32.const 2
7087        i32.add
7088        local.set 5
7089      end
828 ------------------------------------------------------------
7090      local.get 3
7091      local.get 7
7092      i32.shl
7093      local.get 8
7094      i32.or
7095      local.set 3
7096      i32.const 0
7097      local.set 6
7098      local.get 2
7099      local.get 7
7100      i32.add
7101      local.tee 2
7102      i32.const 16
7103      i32.lt_s
7104      br_if 0 (;@1;)
829 ------------------------------------------------------------
7105      local.get 5
7106      local.get 3
7107      local.get 2
7108      i32.const -8
7109      i32.add
7110      i32.shr_u
7111      local.tee 7
7112      i32.store8
7113      local.get 7
7114      i32.const 255
7115      i32.and
7116      i32.const 255
7117      i32.ne
7118      if (result i32)  ;; label = @2
830 ------------------------------------------------------------
7119        local.get 5
7120        i32.const 1
7121        i32.add
7122      else
831 ------------------------------------------------------------
7123        local.get 5
7124        i32.const 0
7125        i32.store8
7126        local.get 5
7127        i32.const 2
7128        i32.add
7129      end
832 ------------------------------------------------------------
7130      local.tee 5
7131      local.get 3
7132      local.get 2
7133      i32.const -16
7134      i32.add
7135      local.tee 2
7136      i32.shr_u
7137      local.tee 7
7138      i32.store8
7139      local.get 7
7140      i32.const 255
7141      i32.and
7142      i32.const 255
7143      i32.ne
7144      if  ;; label = @2
833 ------------------------------------------------------------
7145        local.get 5
7146        i32.const 1
7147        i32.add
7148        local.set 5
7149        br 1 (;@1;)
834 ------------------------------------------------------------
7150      end
835 ------------------------------------------------------------
7151      local.get 5
7152      i32.const 0
7153      i32.store8
7154      local.get 5
7155      i32.const 2
7156      i32.add
7157      local.set 5
7158    end
836 ------------------------------------------------------------
7159    block  ;; label = @1
837 ------------------------------------------------------------
7160      local.get 1
7161      i32.load16_s
7162      local.tee 8
7163      i32.eqz
7164      if  ;; label = @2
838 ------------------------------------------------------------
7165        local.get 6
7166        i32.const 1
7167        i32.add
7168        local.set 6
7169        br 1 (;@1;)
839 ------------------------------------------------------------
7170      end
840 ------------------------------------------------------------
7171      local.get 8
7172      i32.const 31
7173      i32.shr_s
7174      local.tee 9
7175      local.get 8
7176      i32.xor
7177      local.get 9
7178      i32.sub
7179      i32.const 66832
7180      i32.add
7181      i32.load8_u
7182      local.set 7
7183      local.get 8
7184      local.get 9
7185      i32.add
7186      local.set 8
7187      local.get 6
7188      i32.const 16
7189      i32.ge_s
7190      if  ;; label = @2
841 ------------------------------------------------------------
7191        local.get 3
7192        local.get 10
7193        i32.shl
7194        local.get 12
7195        i32.or
7196        local.set 3
7197        block  ;; label = @3
842 ------------------------------------------------------------
7198          local.get 2
7199          local.get 10
7200          i32.add
7201          local.tee 2
7202          i32.const 16
7203          i32.lt_s
7204          br_if 0 (;@3;)
843 ------------------------------------------------------------
7205          local.get 5
7206          local.get 3
7207          local.get 2
7208          i32.const -8
7209          i32.add
7210          i32.shr_u
7211          local.tee 9
7212          i32.store8
7213          local.get 9
7214          i32.const 255
7215          i32.and
7216          i32.const 255
7217          i32.ne
7218          if (result i32)  ;; label = @4
844 ------------------------------------------------------------
7219            local.get 5
7220            i32.const 1
7221            i32.add
7222          else
845 ------------------------------------------------------------
7223            local.get 5
7224            i32.const 0
7225            i32.store8
7226            local.get 5
7227            i32.const 2
7228            i32.add
7229          end
846 ------------------------------------------------------------
7230          local.tee 5
7231          local.get 3
7232          local.get 2
7233          i32.const -16
7234          i32.add
7235          local.tee 2
7236          i32.shr_u
7237          local.tee 9
7238          i32.store8
7239          local.get 9
7240          i32.const 255
7241          i32.and
7242          i32.const 255
7243          i32.ne
7244          if  ;; label = @4
847 ------------------------------------------------------------
7245            local.get 5
7246            i32.const 1
7247            i32.add
7248            local.set 5
7249            br 1 (;@3;)
848 ------------------------------------------------------------
7250          end
849 ------------------------------------------------------------
7251          local.get 5
7252          i32.const 0
7253          i32.store8
7254          local.get 5
7255          i32.const 2
7256          i32.add
7257          local.set 5
7258        end
850 ------------------------------------------------------------
7259        local.get 6
7260        i32.const -16
7261        i32.add
7262        local.set 6
7263      end
851 ------------------------------------------------------------
7264      local.get 3
7265      local.get 4
7266      local.get 6
7267      i32.const 4
7268      i32.shl
7269      local.get 7
7270      i32.add
7271      local.tee 3
7272      i32.add
7273      i32.const 1024
7274      i32.add
7275      i32.load8_s
7276      local.tee 6
7277      i32.shl
7278      local.get 4
7279      local.get 3
7280      i32.const 2
7281      i32.shl
7282      i32.add
7283      i32.load
7284      i32.or
7285      local.set 3
7286      local.get 8
7287      i32.const -1
7288      local.get 7
7289      i32.shl
7290      i32.const -1
7291      i32.xor
7292      i32.and
7293      local.set 8
7294      block  ;; label = @2
852 ------------------------------------------------------------
7295        local.get 2
7296        local.get 6
7297        i32.add
7298        local.tee 2
7299        i32.const 16
7300        i32.lt_s
7301        br_if 0 (;@2;)
853 ------------------------------------------------------------
7302        local.get 5
7303        local.get 3
7304        local.get 2
7305        i32.const -8
7306        i32.add
7307        i32.shr_u
7308        local.tee 6
7309        i32.store8
7310        local.get 6
7311        i32.const 255
7312        i32.and
7313        i32.const 255
7314        i32.ne
7315        if (result i32)  ;; label = @3
854 ------------------------------------------------------------
7316          local.get 5
7317          i32.const 1
7318          i32.add
7319        else
855 ------------------------------------------------------------
7320          local.get 5
7321          i32.const 0
7322          i32.store8
7323          local.get 5
7324          i32.const 2
7325          i32.add
7326        end
856 ------------------------------------------------------------
7327        local.tee 5
7328        local.get 3
7329        local.get 2
7330        i32.const -16
7331        i32.add
7332        local.tee 2
7333        i32.shr_u
7334        local.tee 6
7335        i32.store8
7336        local.get 6
7337        i32.const 255
7338        i32.and
7339        i32.const 255
7340        i32.ne
7341        if  ;; label = @3
857 ------------------------------------------------------------
7342          local.get 5
7343          i32.const 1
7344          i32.add
7345          local.set 5
7346          br 1 (;@2;)
858 ------------------------------------------------------------
7347        end
859 ------------------------------------------------------------
7348        local.get 5
7349        i32.const 0
7350        i32.store8
7351        local.get 5
7352        i32.const 2
7353        i32.add
7354        local.set 5
7355      end
860 ------------------------------------------------------------
7356      local.get 3
7357      local.get 7
7358      i32.shl
7359      local.get 8
7360      i32.or
7361      local.set 3
7362      i32.const 0
7363      local.set 6
7364      local.get 2
7365      local.get 7
7366      i32.add
7367      local.tee 2
7368      i32.const 16
7369      i32.lt_s
7370      br_if 0 (;@1;)
861 ------------------------------------------------------------
7371      local.get 5
7372      local.get 3
7373      local.get 2
7374      i32.const -8
7375      i32.add
7376      i32.shr_u
7377      local.tee 7
7378      i32.store8
7379      local.get 7
7380      i32.const 255
7381      i32.and
7382      i32.const 255
7383      i32.ne
7384      if (result i32)  ;; label = @2
862 ------------------------------------------------------------
7385        local.get 5
7386        i32.const 1
7387        i32.add
7388      else
863 ------------------------------------------------------------
7389        local.get 5
7390        i32.const 0
7391        i32.store8
7392        local.get 5
7393        i32.const 2
7394        i32.add
7395      end
864 ------------------------------------------------------------
7396      local.tee 5
7397      local.get 3
7398      local.get 2
7399      i32.const -16
7400      i32.add
7401      local.tee 2
7402      i32.shr_u
7403      local.tee 7
7404      i32.store8
7405      local.get 7
7406      i32.const 255
7407      i32.and
7408      i32.const 255
7409      i32.ne
7410      if  ;; label = @2
865 ------------------------------------------------------------
7411        local.get 5
7412        i32.const 1
7413        i32.add
7414        local.set 5
7415        br 1 (;@1;)
866 ------------------------------------------------------------
7416      end
867 ------------------------------------------------------------
7417      local.get 5
7418      i32.const 0
7419      i32.store8
7420      local.get 5
7421      i32.const 2
7422      i32.add
7423      local.set 5
7424    end
868 ------------------------------------------------------------
7425    block  ;; label = @1
869 ------------------------------------------------------------
7426      local.get 1
7427      i32.load16_s
7428      local.tee 9
7429      i32.eqz
7430      if  ;; label = @2
870 ------------------------------------------------------------
7431        local.get 6
7432        i32.const 1
7433        i32.add
7434        local.set 6
7435        br 1 (;@1;)
871 ------------------------------------------------------------
7436      end
872 ------------------------------------------------------------
7437      local.get 9
7438      i32.const 31
7439      i32.shr_s
7440      local.tee 11
7441      local.get 9
7442      i32.xor
7443      local.get 11
7444      i32.sub
7445      i32.const 66832
7446      i32.add
7447      i32.load8_u
7448      local.set 8
7449      local.get 6
7450      i32.const 16
7451      i32.ge_s
7452      if  ;; label = @2
873 ------------------------------------------------------------
7453        loop  ;; label = @3
874 ------------------------------------------------------------
7454          local.get 6
7455          local.set 7
7456          local.get 3
7457          local.get 10
7458          i32.shl
7459          local.get 12
7460          i32.or
7461          local.set 3
7462          block  ;; label = @4
875 ------------------------------------------------------------
7463            local.get 2
7464            local.get 10
7465            i32.add
7466            local.tee 2
7467            i32.const 16
7468            i32.lt_s
7469            br_if 0 (;@4;)
876 ------------------------------------------------------------
7470            local.get 5
7471            local.get 3
7472            local.get 2
7473            i32.const -8
7474            i32.add
7475            i32.shr_u
7476            local.tee 6
7477            i32.store8
7478            local.get 6
7479            i32.const 255
7480            i32.and
7481            i32.const 255
7482            i32.ne
7483            if (result i32)  ;; label = @5
877 ------------------------------------------------------------
7484              local.get 5
7485              i32.const 1
7486              i32.add
7487            else
878 ------------------------------------------------------------
7488              local.get 5
7489              i32.const 0
7490              i32.store8
7491              local.get 5
7492              i32.const 2
7493              i32.add
7494            end
879 ------------------------------------------------------------
7495            local.tee 5
7496            local.get 3
7497            local.get 2
7498            i32.const -16
7499            i32.add
7500            local.tee 2
7501            i32.shr_u
7502            local.tee 6
7503            i32.store8
7504            local.get 6
7505            i32.const 255
7506            i32.and
7507            i32.const 255
7508            i32.ne
7509            if  ;; label = @5
880 ------------------------------------------------------------
7510              local.get 5
7511              i32.const 1
7512              i32.add
7513              local.set 5
7514              br 1 (;@4;)
881 ------------------------------------------------------------
7515            end
882 ------------------------------------------------------------
7516            local.get 5
7517            i32.const 0
7518            i32.store8
7519            local.get 5
7520            i32.const 2
7521            i32.add
7522            local.set 5
7523          end
883 ------------------------------------------------------------
7524          local.get 7
7525          i32.const -16
7526          i32.add
7527          local.set 6
7528          local.get 7
7529          i32.const 31
7530          i32.gt_s
7531          br_if 0 (;@3;)
884 ------------------------------------------------------------
7532        end
885 ------------------------------------------------------------
7533      end
886 ------------------------------------------------------------
7534      local.get 3
7535      local.get 4
7536      local.get 6
7537      i32.const 4
7538      i32.shl
7539      local.get 8
7540      i32.add
7541      local.tee 3
7542      i32.add
7543      i32.const 1024
7544      i32.add
7545      i32.load8_s
7546      local.tee 6
7547      i32.shl
7548      local.get 4
7549      local.get 3
7550      i32.const 2
7551      i32.shl
7552      i32.add
7553      i32.load
7554      i32.or
7555      local.set 3
7556      local.get 9
7557      local.get 11
7558      i32.add
7559      i32.const -1
7560      local.get 8
7561      i32.shl
7562      i32.const -1
7563      i32.xor
7564      i32.and
7565      local.set 7
7566      block  ;; label = @2
887 ------------------------------------------------------------
7567        local.get 2
7568        local.get 6
7569        i32.add
7570        local.tee 2
7571        i32.const 16
7572        i32.lt_s
7573        br_if 0 (;@2;)
888 ------------------------------------------------------------
7574        local.get 5
7575        local.get 3
7576        local.get 2
7577        i32.const -8
7578        i32.add
7579        i32.shr_u
7580        local.tee 6
7581        i32.store8
7582        local.get 6
7583        i32.const 255
7584        i32.and
7585        i32.const 255
7586        i32.ne
7587        if (result i32)  ;; label = @3
889 ------------------------------------------------------------
7588          local.get 5
7589          i32.const 1
7590          i32.add
7591        else
890 ------------------------------------------------------------
7592          local.get 5
7593          i32.const 0
7594          i32.store8
7595          local.get 5
7596          i32.const 2
7597          i32.add
7598        end
891 ------------------------------------------------------------
7599        local.tee 5
7600        local.get 3
7601        local.get 2
7602        i32.const -16
7603        i32.add
7604        local.tee 2
7605        i32.shr_u
7606        local.tee 6
7607        i32.store8
7608        local.get 6
7609        i32.const 255
7610        i32.and
7611        i32.const 255
7612        i32.ne
7613        if  ;; label = @3
892 ------------------------------------------------------------
7614          local.get 5
7615          i32.const 1
7616          i32.add
7617          local.set 5
7618          br 1 (;@2;)
893 ------------------------------------------------------------
7619        end
894 ------------------------------------------------------------
7620        local.get 5
7621        i32.const 0
7622        i32.store8
7623        local.get 5
7624        i32.const 2
7625        i32.add
7626        local.set 5
7627      end
895 ------------------------------------------------------------
7628      local.get 3
7629      local.get 8
7630      i32.shl
7631      local.get 7
7632      i32.or
7633      local.set 3
7634      i32.const 0
7635      local.set 6
7636      local.get 2
7637      local.get 8
7638      i32.add
7639      local.tee 2
7640      i32.const 16
7641      i32.lt_s
7642      br_if 0 (;@1;)
896 ------------------------------------------------------------
7643      local.get 5
7644      local.get 3
7645      local.get 2
7646      i32.const -8
7647      i32.add
7648      i32.shr_u
7649      local.tee 7
7650      i32.store8
7651      local.get 7
7652      i32.const 255
7653      i32.and
7654      i32.const 255
7655      i32.ne
7656      if (result i32)  ;; label = @2
897 ------------------------------------------------------------
7657        local.get 5
7658        i32.const 1
7659        i32.add
7660      else
898 ------------------------------------------------------------
7661        local.get 5
7662        i32.const 0
7663        i32.store8
7664        local.get 5
7665        i32.const 2
7666        i32.add
7667      end
899 ------------------------------------------------------------
7668      local.tee 5
7669      local.get 3
7670      local.get 2
7671      i32.const -16
7672      i32.add
7673      local.tee 2
7674      i32.shr_u
7675      local.tee 7
7676      i32.store8
7677      local.get 7
7678      i32.const 255
7679      i32.and
7680      i32.const 255
7681      i32.ne
7682      if  ;; label = @2
900 ------------------------------------------------------------
7683        local.get 5
7684        i32.const 1
7685        i32.add
7686        local.set 5
7687        br 1 (;@1;)
901 ------------------------------------------------------------
7688      end
902 ------------------------------------------------------------
7689      local.get 5
7690      i32.const 0
7691      i32.store8
7692      local.get 5
7693      i32.const 2
7694      i32.add
7695      local.set 5
7696    end
903 ------------------------------------------------------------
7697    block  ;; label = @1
904 ------------------------------------------------------------
7698      local.get 1
7699      i32.load16_s
7700      local.tee 9
7701      i32.eqz
7702      if  ;; label = @2
905 ------------------------------------------------------------
7703        local.get 6
7704        i32.const 1
7705        i32.add
7706        local.set 6
7707        br 1 (;@1;)
906 ------------------------------------------------------------
7708      end
907 ------------------------------------------------------------
7709      local.get 9
7710      i32.const 31
7711      i32.shr_s
7712      local.tee 11
7713      local.get 9
7714      i32.xor
7715      local.get 11
7716      i32.sub
7717      i32.const 66832
7718      i32.add
7719      i32.load8_u
7720      local.set 8
7721      local.get 6
7722      i32.const 16
7723      i32.ge_s
7724      if  ;; label = @2
908 ------------------------------------------------------------
7725        loop  ;; label = @3
909 ------------------------------------------------------------
7726          local.get 6
7727          local.set 7
7728          local.get 3
7729          local.get 10
7730          i32.shl
7731          local.get 12
7732          i32.or
7733          local.set 3
7734          block  ;; label = @4
910 ------------------------------------------------------------
7735            local.get 2
7736            local.get 10
7737            i32.add
7738            local.tee 2
7739            i32.const 16
7740            i32.lt_s
7741            br_if 0 (;@4;)
911 ------------------------------------------------------------
7742            local.get 5
7743            local.get 3
7744            local.get 2
7745            i32.const -8
7746            i32.add
7747            i32.shr_u
7748            local.tee 6
7749            i32.store8
7750            local.get 6
7751            i32.const 255
7752            i32.and
7753            i32.const 255
7754            i32.ne
7755            if (result i32)  ;; label = @5
912 ------------------------------------------------------------
7756              local.get 5
7757              i32.const 1
7758              i32.add
7759            else
913 ------------------------------------------------------------
7760              local.get 5
7761              i32.const 0
7762              i32.store8
7763              local.get 5
7764              i32.const 2
7765              i32.add
7766            end
914 ------------------------------------------------------------
7767            local.tee 5
7768            local.get 3
7769            local.get 2
7770            i32.const -16
7771            i32.add
7772            local.tee 2
7773            i32.shr_u
7774            local.tee 6
7775            i32.store8
7776            local.get 6
7777            i32.const 255
7778            i32.and
7779            i32.const 255
7780            i32.ne
7781            if  ;; label = @5
915 ------------------------------------------------------------
7782              local.get 5
7783              i32.const 1
7784              i32.add
7785              local.set 5
7786              br 1 (;@4;)
916 ------------------------------------------------------------
7787            end
917 ------------------------------------------------------------
7788            local.get 5
7789            i32.const 0
7790            i32.store8
7791            local.get 5
7792            i32.const 2
7793            i32.add
7794            local.set 5
7795          end
918 ------------------------------------------------------------
7796          local.get 7
7797          i32.const -16
7798          i32.add
7799          local.set 6
7800          local.get 7
7801          i32.const 31
7802          i32.gt_s
7803          br_if 0 (;@3;)
919 ------------------------------------------------------------
7804        end
920 ------------------------------------------------------------
7805      end
921 ------------------------------------------------------------
7806      local.get 3
7807      local.get 4
7808      local.get 6
7809      i32.const 4
7810      i32.shl
7811      local.get 8
7812      i32.add
7813      local.tee 3
7814      i32.add
7815      i32.const 1024
7816      i32.add
7817      i32.load8_s
7818      local.tee 6
7819      i32.shl
7820      local.get 4
7821      local.get 3
7822      i32.const 2
7823      i32.shl
7824      i32.add
7825      i32.load
7826      i32.or
7827      local.set 3
7828      local.get 9
7829      local.get 11
7830      i32.add
7831      i32.const -1
7832      local.get 8
7833      i32.shl
7834      i32.const -1
7835      i32.xor
7836      i32.and
7837      local.set 7
7838      block  ;; label = @2
922 ------------------------------------------------------------
7839        local.get 2
7840        local.get 6
7841        i32.add
7842        local.tee 2
7843        i32.const 16
7844        i32.lt_s
7845        br_if 0 (;@2;)
923 ------------------------------------------------------------
7846        local.get 5
7847        local.get 3
7848        local.get 2
7849        i32.const -8
7850        i32.add
7851        i32.shr_u
7852        local.tee 6
7853        i32.store8
7854        local.get 6
7855        i32.const 255
7856        i32.and
7857        i32.const 255
7858        i32.ne
7859        if (result i32)  ;; label = @3
924 ------------------------------------------------------------
7860          local.get 5
7861          i32.const 1
7862          i32.add
7863        else
925 ------------------------------------------------------------
7864          local.get 5
7865          i32.const 0
7866          i32.store8
7867          local.get 5
7868          i32.const 2
7869          i32.add
7870        end
926 ------------------------------------------------------------
7871        local.tee 5
7872        local.get 3
7873        local.get 2
7874        i32.const -16
7875        i32.add
7876        local.tee 2
7877        i32.shr_u
7878        local.tee 6
7879        i32.store8
7880        local.get 6
7881        i32.const 255
7882        i32.and
7883        i32.const 255
7884        i32.ne
7885        if  ;; label = @3
927 ------------------------------------------------------------
7886          local.get 5
7887          i32.const 1
7888          i32.add
7889          local.set 5
7890          br 1 (;@2;)
928 ------------------------------------------------------------
7891        end
929 ------------------------------------------------------------
7892        local.get 5
7893        i32.const 0
7894        i32.store8
7895        local.get 5
7896        i32.const 2
7897        i32.add
7898        local.set 5
7899      end
930 ------------------------------------------------------------
7900      local.get 3
7901      local.get 8
7902      i32.shl
7903      local.get 7
7904      i32.or
7905      local.set 3
7906      i32.const 0
7907      local.set 6
7908      local.get 2
7909      local.get 8
7910      i32.add
7911      local.tee 2
7912      i32.const 16
7913      i32.lt_s
7914      br_if 0 (;@1;)
931 ------------------------------------------------------------
7915      local.get 5
7916      local.get 3
7917      local.get 2
7918      i32.const -8
7919      i32.add
7920      i32.shr_u
7921      local.tee 7
7922      i32.store8
7923      local.get 7
7924      i32.const 255
7925      i32.and
7926      i32.const 255
7927      i32.ne
7928      if (result i32)  ;; label = @2
932 ------------------------------------------------------------
7929        local.get 5
7930        i32.const 1
7931        i32.add
7932      else
933 ------------------------------------------------------------
7933        local.get 5
7934        i32.const 0
7935        i32.store8
7936        local.get 5
7937        i32.const 2
7938        i32.add
7939      end
934 ------------------------------------------------------------
7940      local.tee 5
7941      local.get 3
7942      local.get 2
7943      i32.const -16
7944      i32.add
7945      local.tee 2
7946      i32.shr_u
7947      local.tee 7
7948      i32.store8
7949      local.get 7
7950      i32.const 255
7951      i32.and
7952      i32.const 255
7953      i32.ne
7954      if  ;; label = @2
935 ------------------------------------------------------------
7955        local.get 5
7956        i32.const 1
7957        i32.add
7958        local.set 5
7959        br 1 (;@1;)
936 ------------------------------------------------------------
7960      end
937 ------------------------------------------------------------
7961      local.get 5
7962      i32.const 0
7963      i32.store8
7964      local.get 5
7965      i32.const 2
7966      i32.add
7967      local.set 5
7968    end
938 ------------------------------------------------------------
7969    block  ;; label = @1
939 ------------------------------------------------------------
7970      local.get 1
7971      i32.load16_s
7972      local.tee 9
7973      i32.eqz
7974      if  ;; label = @2
940 ------------------------------------------------------------
7975        local.get 6
7976        i32.const 1
7977        i32.add
7978        local.set 6
7979        br 1 (;@1;)
941 ------------------------------------------------------------
7980      end
942 ------------------------------------------------------------
7981      local.get 9
7982      i32.const 31
7983      i32.shr_s
7984      local.tee 11
7985      local.get 9
7986      i32.xor
7987      local.get 11
7988      i32.sub
7989      i32.const 66832
7990      i32.add
7991      i32.load8_u
7992      local.set 8
7993      local.get 6
7994      i32.const 16
7995      i32.ge_s
7996      if  ;; label = @2
943 ------------------------------------------------------------
7997        loop  ;; label = @3
944 ------------------------------------------------------------
7998          local.get 6
7999          local.set 7
8000          local.get 3
8001          local.get 10
8002          i32.shl
8003          local.get 12
8004          i32.or
8005          local.set 3
8006          block  ;; label = @4
945 ------------------------------------------------------------
8007            local.get 2
8008            local.get 10
8009            i32.add
8010            local.tee 2
8011            i32.const 16
8012            i32.lt_s
8013            br_if 0 (;@4;)
946 ------------------------------------------------------------
8014            local.get 5
8015            local.get 3
8016            local.get 2
8017            i32.const -8
8018            i32.add
8019            i32.shr_u
8020            local.tee 6
8021            i32.store8
8022            local.get 6
8023            i32.const 255
8024            i32.and
8025            i32.const 255
8026            i32.ne
8027            if (result i32)  ;; label = @5
947 ------------------------------------------------------------
8028              local.get 5
8029              i32.const 1
8030              i32.add
8031            else
948 ------------------------------------------------------------
8032              local.get 5
8033              i32.const 0
8034              i32.store8
8035              local.get 5
8036              i32.const 2
8037              i32.add
8038            end
949 ------------------------------------------------------------
8039            local.tee 5
8040            local.get 3
8041            local.get 2
8042            i32.const -16
8043            i32.add
8044            local.tee 2
8045            i32.shr_u
8046            local.tee 6
8047            i32.store8
8048            local.get 6
8049            i32.const 255
8050            i32.and
8051            i32.const 255
8052            i32.ne
8053            if  ;; label = @5
950 ------------------------------------------------------------
8054              local.get 5
8055              i32.const 1
8056              i32.add
8057              local.set 5
8058              br 1 (;@4;)
951 ------------------------------------------------------------
8059            end
952 ------------------------------------------------------------
8060            local.get 5
8061            i32.const 0
8062            i32.store8
8063            local.get 5
8064            i32.const 2
8065            i32.add
8066            local.set 5
8067          end
953 ------------------------------------------------------------
8068          local.get 7
8069          i32.const -16
8070          i32.add
8071          local.set 6
8072          local.get 7
8073          i32.const 31
8074          i32.gt_s
8075          br_if 0 (;@3;)
954 ------------------------------------------------------------
8076        end
955 ------------------------------------------------------------
8077      end
956 ------------------------------------------------------------
8078      local.get 3
8079      local.get 4
8080      local.get 6
8081      i32.const 4
8082      i32.shl
8083      local.get 8
8084      i32.add
8085      local.tee 3
8086      i32.add
8087      i32.const 1024
8088      i32.add
8089      i32.load8_s
8090      local.tee 6
8091      i32.shl
8092      local.get 4
8093      local.get 3
8094      i32.const 2
8095      i32.shl
8096      i32.add
8097      i32.load
8098      i32.or
8099      local.set 3
8100      local.get 9
8101      local.get 11
8102      i32.add
8103      i32.const -1
8104      local.get 8
8105      i32.shl
8106      i32.const -1
8107      i32.xor
8108      i32.and
8109      local.set 7
8110      block  ;; label = @2
957 ------------------------------------------------------------
8111        local.get 2
8112        local.get 6
8113        i32.add
8114        local.tee 2
8115        i32.const 16
8116        i32.lt_s
8117        br_if 0 (;@2;)
958 ------------------------------------------------------------
8118        local.get 5
8119        local.get 3
8120        local.get 2
8121        i32.const -8
8122        i32.add
8123        i32.shr_u
8124        local.tee 6
8125        i32.store8
8126        local.get 6
8127        i32.const 255
8128        i32.and
8129        i32.const 255
8130        i32.ne
8131        if (result i32)  ;; label = @3
959 ------------------------------------------------------------
8132          local.get 5
8133          i32.const 1
8134          i32.add
8135        else
960 ------------------------------------------------------------
8136          local.get 5
8137          i32.const 0
8138          i32.store8
8139          local.get 5
8140          i32.const 2
8141          i32.add
8142        end
961 ------------------------------------------------------------
8143        local.tee 5
8144        local.get 3
8145        local.get 2
8146        i32.const -16
8147        i32.add
8148        local.tee 2
8149        i32.shr_u
8150        local.tee 6
8151        i32.store8
8152        local.get 6
8153        i32.const 255
8154        i32.and
8155        i32.const 255
8156        i32.ne
8157        if  ;; label = @3
962 ------------------------------------------------------------
8158          local.get 5
8159          i32.const 1
8160          i32.add
8161          local.set 5
8162          br 1 (;@2;)
963 ------------------------------------------------------------
8163        end
964 ------------------------------------------------------------
8164        local.get 5
8165        i32.const 0
8166        i32.store8
8167        local.get 5
8168        i32.const 2
8169        i32.add
8170        local.set 5
8171      end
965 ------------------------------------------------------------
8172      local.get 3
8173      local.get 8
8174      i32.shl
8175      local.get 7
8176      i32.or
8177      local.set 3
8178      i32.const 0
8179      local.set 6
8180      local.get 2
8181      local.get 8
8182      i32.add
8183      local.tee 2
8184      i32.const 16
8185      i32.lt_s
8186      br_if 0 (;@1;)
966 ------------------------------------------------------------
8187      local.get 5
8188      local.get 3
8189      local.get 2
8190      i32.const -8
8191      i32.add
8192      i32.shr_u
8193      local.tee 7
8194      i32.store8
8195      local.get 7
8196      i32.const 255
8197      i32.and
8198      i32.const 255
8199      i32.ne
8200      if (result i32)  ;; label = @2
967 ------------------------------------------------------------
8201        local.get 5
8202        i32.const 1
8203        i32.add
8204      else
968 ------------------------------------------------------------
8205        local.get 5
8206        i32.const 0
8207        i32.store8
8208        local.get 5
8209        i32.const 2
8210        i32.add
8211      end
969 ------------------------------------------------------------
8212      local.tee 5
8213      local.get 3
8214      local.get 2
8215      i32.const -16
8216      i32.add
8217      local.tee 2
8218      i32.shr_u
8219      local.tee 7
8220      i32.store8
8221      local.get 7
8222      i32.const 255
8223      i32.and
8224      i32.const 255
8225      i32.ne
8226      if  ;; label = @2
970 ------------------------------------------------------------
8227        local.get 5
8228        i32.const 1
8229        i32.add
8230        local.set 5
8231        br 1 (;@1;)
971 ------------------------------------------------------------
8232      end
972 ------------------------------------------------------------
8233      local.get 5
8234      i32.const 0
8235      i32.store8
8236      local.get 5
8237      i32.const 2
8238      i32.add
8239      local.set 5
8240    end
973 ------------------------------------------------------------
8241    block  ;; label = @1
974 ------------------------------------------------------------
8242      local.get 1
8243      i32.load16_s
8244      local.tee 9
8245      i32.eqz
8246      if  ;; label = @2
975 ------------------------------------------------------------
8247        local.get 6
8248        i32.const 1
8249        i32.add
8250        local.set 6
8251        br 1 (;@1;)
976 ------------------------------------------------------------
8252      end
977 ------------------------------------------------------------
8253      local.get 9
8254      i32.const 31
8255      i32.shr_s
8256      local.tee 11
8257      local.get 9
8258      i32.xor
8259      local.get 11
8260      i32.sub
8261      i32.const 66832
8262      i32.add
8263      i32.load8_u
8264      local.set 8
8265      local.get 6
8266      i32.const 16
8267      i32.ge_s
8268      if  ;; label = @2
978 ------------------------------------------------------------
8269        loop  ;; label = @3
979 ------------------------------------------------------------
8270          local.get 6
8271          local.set 7
8272          local.get 3
8273          local.get 10
8274          i32.shl
8275          local.get 12
8276          i32.or
8277          local.set 3
8278          block  ;; label = @4
980 ------------------------------------------------------------
8279            local.get 2
8280            local.get 10
8281            i32.add
8282            local.tee 2
8283            i32.const 16
8284            i32.lt_s
8285            br_if 0 (;@4;)
981 ------------------------------------------------------------
8286            local.get 5
8287            local.get 3
8288            local.get 2
8289            i32.const -8
8290            i32.add
8291            i32.shr_u
8292            local.tee 6
8293            i32.store8
8294            local.get 6
8295            i32.const 255
8296            i32.and
8297            i32.const 255
8298            i32.ne
8299            if (result i32)  ;; label = @5
982 ------------------------------------------------------------
8300              local.get 5
8301              i32.const 1
8302              i32.add
8303            else
983 ------------------------------------------------------------
8304              local.get 5
8305              i32.const 0
8306              i32.store8
8307              local.get 5
8308              i32.const 2
8309              i32.add
8310            end
984 ------------------------------------------------------------
8311            local.tee 5
8312            local.get 3
8313            local.get 2
8314            i32.const -16
8315            i32.add
8316            local.tee 2
8317            i32.shr_u
8318            local.tee 6
8319            i32.store8
8320            local.get 6
8321            i32.const 255
8322            i32.and
8323            i32.const 255
8324            i32.ne
8325            if  ;; label = @5
985 ------------------------------------------------------------
8326              local.get 5
8327              i32.const 1
8328              i32.add
8329              local.set 5
8330              br 1 (;@4;)
986 ------------------------------------------------------------
8331            end
987 ------------------------------------------------------------
8332            local.get 5
8333            i32.const 0
8334            i32.store8
8335            local.get 5
8336            i32.const 2
8337            i32.add
8338            local.set 5
8339          end
988 ------------------------------------------------------------
8340          local.get 7
8341          i32.const -16
8342          i32.add
8343          local.set 6
8344          local.get 7
8345          i32.const 31
8346          i32.gt_s
8347          br_if 0 (;@3;)
989 ------------------------------------------------------------
8348        end
990 ------------------------------------------------------------
8349      end
991 ------------------------------------------------------------
8350      local.get 3
8351      local.get 4
8352      local.get 6
8353      i32.const 4
8354      i32.shl
8355      local.get 8
8356      i32.add
8357      local.tee 3
8358      i32.add
8359      i32.const 1024
8360      i32.add
8361      i32.load8_s
8362      local.tee 6
8363      i32.shl
8364      local.get 4
8365      local.get 3
8366      i32.const 2
8367      i32.shl
8368      i32.add
8369      i32.load
8370      i32.or
8371      local.set 3
8372      local.get 9
8373      local.get 11
8374      i32.add
8375      i32.const -1
8376      local.get 8
8377      i32.shl
8378      i32.const -1
8379      i32.xor
8380      i32.and
8381      local.set 7
8382      block  ;; label = @2
992 ------------------------------------------------------------
8383        local.get 2
8384        local.get 6
8385        i32.add
8386        local.tee 2
8387        i32.const 16
8388        i32.lt_s
8389        br_if 0 (;@2;)
993 ------------------------------------------------------------
8390        local.get 5
8391        local.get 3
8392        local.get 2
8393        i32.const -8
8394        i32.add
8395        i32.shr_u
8396        local.tee 6
8397        i32.store8
8398        local.get 6
8399        i32.const 255
8400        i32.and
8401        i32.const 255
8402        i32.ne
8403        if (result i32)  ;; label = @3
994 ------------------------------------------------------------
8404          local.get 5
8405          i32.const 1
8406          i32.add
8407        else
995 ------------------------------------------------------------
8408          local.get 5
8409          i32.const 0
8410          i32.store8
8411          local.get 5
8412          i32.const 2
8413          i32.add
8414        end
996 ------------------------------------------------------------
8415        local.tee 5
8416        local.get 3
8417        local.get 2
8418        i32.const -16
8419        i32.add
8420        local.tee 2
8421        i32.shr_u
8422        local.tee 6
8423        i32.store8
8424        local.get 6
8425        i32.const 255
8426        i32.and
8427        i32.const 255
8428        i32.ne
8429        if  ;; label = @3
997 ------------------------------------------------------------
8430          local.get 5
8431          i32.const 1
8432          i32.add
8433          local.set 5
8434          br 1 (;@2;)
998 ------------------------------------------------------------
8435        end
999 ------------------------------------------------------------
8436        local.get 5
8437        i32.const 0
8438        i32.store8
8439        local.get 5
8440        i32.const 2
8441        i32.add
8442        local.set 5
8443      end
1000 ------------------------------------------------------------
8444      local.get 3
8445      local.get 8
8446      i32.shl
8447      local.get 7
8448      i32.or
8449      local.set 3
8450      i32.const 0
8451      local.set 6
8452      local.get 2
8453      local.get 8
8454      i32.add
8455      local.tee 2
8456      i32.const 16
8457      i32.lt_s
8458      br_if 0 (;@1;)
1001 ------------------------------------------------------------
8459      local.get 5
8460      local.get 3
8461      local.get 2
8462      i32.const -8
8463      i32.add
8464      i32.shr_u
8465      local.tee 7
8466      i32.store8
8467      local.get 7
8468      i32.const 255
8469      i32.and
8470      i32.const 255
8471      i32.ne
8472      if (result i32)  ;; label = @2
1002 ------------------------------------------------------------
8473        local.get 5
8474        i32.const 1
8475        i32.add
8476      else
1003 ------------------------------------------------------------
8477        local.get 5
8478        i32.const 0
8479        i32.store8
8480        local.get 5
8481        i32.const 2
8482        i32.add
8483      end
1004 ------------------------------------------------------------
8484      local.tee 5
8485      local.get 3
8486      local.get 2
8487      i32.const -16
8488      i32.add
8489      local.tee 2
8490      i32.shr_u
8491      local.tee 7
8492      i32.store8
8493      local.get 7
8494      i32.const 255
8495      i32.and
8496      i32.const 255
8497      i32.ne
8498      if  ;; label = @2
1005 ------------------------------------------------------------
8499        local.get 5
8500        i32.const 1
8501        i32.add
8502        local.set 5
8503        br 1 (;@1;)
1006 ------------------------------------------------------------
8504      end
1007 ------------------------------------------------------------
8505      local.get 5
8506      i32.const 0
8507      i32.store8
8508      local.get 5
8509      i32.const 2
8510      i32.add
8511      local.set 5
8512    end
1008 ------------------------------------------------------------
8513    block  ;; label = @1
1009 ------------------------------------------------------------
8514      local.get 1
8515      i32.load16_s
8516      local.tee 9
8517      i32.eqz
8518      if  ;; label = @2
1010 ------------------------------------------------------------
8519        local.get 6
8520        i32.const 1
8521        i32.add
8522        local.set 6
8523        br 1 (;@1;)
1011 ------------------------------------------------------------
8524      end
1012 ------------------------------------------------------------
8525      local.get 9
8526      i32.const 31
8527      i32.shr_s
8528      local.tee 11
8529      local.get 9
8530      i32.xor
8531      local.get 11
8532      i32.sub
8533      i32.const 66832
8534      i32.add
8535      i32.load8_u
8536      local.set 8
8537      local.get 6
8538      i32.const 16
8539      i32.ge_s
8540      if  ;; label = @2
1013 ------------------------------------------------------------
8541        loop  ;; label = @3
1014 ------------------------------------------------------------
8542          local.get 6
8543          local.set 7
8544          local.get 3
8545          local.get 10
8546          i32.shl
8547          local.get 12
8548          i32.or
8549          local.set 3
8550          block  ;; label = @4
1015 ------------------------------------------------------------
8551            local.get 2
8552            local.get 10
8553            i32.add
8554            local.tee 2
8555            i32.const 16
8556            i32.lt_s
8557            br_if 0 (;@4;)
1016 ------------------------------------------------------------
8558            local.get 5
8559            local.get 3
8560            local.get 2
8561            i32.const -8
8562            i32.add
8563            i32.shr_u
8564            local.tee 6
8565            i32.store8
8566            local.get 6
8567            i32.const 255
8568            i32.and
8569            i32.const 255
8570            i32.ne
8571            if (result i32)  ;; label = @5
1017 ------------------------------------------------------------
8572              local.get 5
8573              i32.const 1
8574              i32.add
8575            else
1018 ------------------------------------------------------------
8576              local.get 5
8577              i32.const 0
8578              i32.store8
8579              local.get 5
8580              i32.const 2
8581              i32.add
8582            end
1019 ------------------------------------------------------------
8583            local.tee 5
8584            local.get 3
8585            local.get 2
8586            i32.const -16
8587            i32.add
8588            local.tee 2
8589            i32.shr_u
8590            local.tee 6
8591            i32.store8
8592            local.get 6
8593            i32.const 255
8594            i32.and
8595            i32.const 255
8596            i32.ne
8597            if  ;; label = @5
1020 ------------------------------------------------------------
8598              local.get 5
8599              i32.const 1
8600              i32.add
8601              local.set 5
8602              br 1 (;@4;)
1021 ------------------------------------------------------------
8603            end
1022 ------------------------------------------------------------
8604            local.get 5
8605            i32.const 0
8606            i32.store8
8607            local.get 5
8608            i32.const 2
8609            i32.add
8610            local.set 5
8611          end
1023 ------------------------------------------------------------
8612          local.get 7
8613          i32.const -16
8614          i32.add
8615          local.set 6
8616          local.get 7
8617          i32.const 31
8618          i32.gt_s
8619          br_if 0 (;@3;)
1024 ------------------------------------------------------------
8620        end
1025 ------------------------------------------------------------
8621      end
1026 ------------------------------------------------------------
8622      local.get 3
8623      local.get 4
8624      local.get 6
8625      i32.const 4
8626      i32.shl
8627      local.get 8
8628      i32.add
8629      local.tee 3
8630      i32.add
8631      i32.const 1024
8632      i32.add
8633      i32.load8_s
8634      local.tee 6
8635      i32.shl
8636      local.get 4
8637      local.get 3
8638      i32.const 2
8639      i32.shl
8640      i32.add
8641      i32.load
8642      i32.or
8643      local.set 3
8644      local.get 9
8645      local.get 11
8646      i32.add
8647      i32.const -1
8648      local.get 8
8649      i32.shl
8650      i32.const -1
8651      i32.xor
8652      i32.and
8653      local.set 7
8654      block  ;; label = @2
1027 ------------------------------------------------------------
8655        local.get 2
8656        local.get 6
8657        i32.add
8658        local.tee 2
8659        i32.const 16
8660        i32.lt_s
8661        br_if 0 (;@2;)
1028 ------------------------------------------------------------
8662        local.get 5
8663        local.get 3
8664        local.get 2
8665        i32.const -8
8666        i32.add
8667        i32.shr_u
8668        local.tee 6
8669        i32.store8
8670        local.get 6
8671        i32.const 255
8672        i32.and
8673        i32.const 255
8674        i32.ne
8675        if (result i32)  ;; label = @3
1029 ------------------------------------------------------------
8676          local.get 5
8677          i32.const 1
8678          i32.add
8679        else
1030 ------------------------------------------------------------
8680          local.get 5
8681          i32.const 0
8682          i32.store8
8683          local.get 5
8684          i32.const 2
8685          i32.add
8686        end
1031 ------------------------------------------------------------
8687        local.tee 5
8688        local.get 3
8689        local.get 2
8690        i32.const -16
8691        i32.add
8692        local.tee 2
8693        i32.shr_u
8694        local.tee 6
8695        i32.store8
8696        local.get 6
8697        i32.const 255
8698        i32.and
8699        i32.const 255
8700        i32.ne
8701        if  ;; label = @3
1032 ------------------------------------------------------------
8702          local.get 5
8703          i32.const 1
8704          i32.add
8705          local.set 5
8706          br 1 (;@2;)
1033 ------------------------------------------------------------
8707        end
1034 ------------------------------------------------------------
8708        local.get 5
8709        i32.const 0
8710        i32.store8
8711        local.get 5
8712        i32.const 2
8713        i32.add
8714        local.set 5
8715      end
1035 ------------------------------------------------------------
8716      local.get 3
8717      local.get 8
8718      i32.shl
8719      local.get 7
8720      i32.or
8721      local.set 3
8722      i32.const 0
8723      local.set 6
8724      local.get 2
8725      local.get 8
8726      i32.add
8727      local.tee 2
8728      i32.const 16
8729      i32.lt_s
8730      br_if 0 (;@1;)
1036 ------------------------------------------------------------
8731      local.get 5
8732      local.get 3
8733      local.get 2
8734      i32.const -8
8735      i32.add
8736      i32.shr_u
8737      local.tee 7
8738      i32.store8
8739      local.get 7
8740      i32.const 255
8741      i32.and
8742      i32.const 255
8743      i32.ne
8744      if (result i32)  ;; label = @2
1037 ------------------------------------------------------------
8745        local.get 5
8746        i32.const 1
8747        i32.add
8748      else
1038 ------------------------------------------------------------
8749        local.get 5
8750        i32.const 0
8751        i32.store8
8752        local.get 5
8753        i32.const 2
8754        i32.add
8755      end
1039 ------------------------------------------------------------
8756      local.tee 5
8757      local.get 3
8758      local.get 2
8759      i32.const -16
8760      i32.add
8761      local.tee 2
8762      i32.shr_u
8763      local.tee 7
8764      i32.store8
8765      local.get 7
8766      i32.const 255
8767      i32.and
8768      i32.const 255
8769      i32.ne
8770      if  ;; label = @2
1040 ------------------------------------------------------------
8771        local.get 5
8772        i32.const 1
8773        i32.add
8774        local.set 5
8775        br 1 (;@1;)
1041 ------------------------------------------------------------
8776      end
1042 ------------------------------------------------------------
8777      local.get 5
8778      i32.const 0
8779      i32.store8
8780      local.get 5
8781      i32.const 2
8782      i32.add
8783      local.set 5
8784    end
1043 ------------------------------------------------------------
8785    block  ;; label = @1
1044 ------------------------------------------------------------
8786      local.get 1
8787      i32.load16_s
8788      local.tee 9
8789      i32.eqz
8790      if  ;; label = @2
1045 ------------------------------------------------------------
8791        local.get 6
8792        i32.const 1
8793        i32.add
8794        local.set 6
8795        br 1 (;@1;)
1046 ------------------------------------------------------------
8796      end
1047 ------------------------------------------------------------
8797      local.get 9
8798      i32.const 31
8799      i32.shr_s
8800      local.tee 11
8801      local.get 9
8802      i32.xor
8803      local.get 11
8804      i32.sub
8805      i32.const 66832
8806      i32.add
8807      i32.load8_u
8808      local.set 8
8809      local.get 6
8810      i32.const 16
8811      i32.ge_s
8812      if  ;; label = @2
1048 ------------------------------------------------------------
8813        loop  ;; label = @3
1049 ------------------------------------------------------------
8814          local.get 6
8815          local.set 7
8816          local.get 3
8817          local.get 10
8818          i32.shl
8819          local.get 12
8820          i32.or
8821          local.set 3
8822          block  ;; label = @4
1050 ------------------------------------------------------------
8823            local.get 2
8824            local.get 10
8825            i32.add
8826            local.tee 2
8827            i32.const 16
8828            i32.lt_s
8829            br_if 0 (;@4;)
1051 ------------------------------------------------------------
8830            local.get 5
8831            local.get 3
8832            local.get 2
8833            i32.const -8
8834            i32.add
8835            i32.shr_u
8836            local.tee 6
8837            i32.store8
8838            local.get 6
8839            i32.const 255
8840            i32.and
8841            i32.const 255
8842            i32.ne
8843            if (result i32)  ;; label = @5
1052 ------------------------------------------------------------
8844              local.get 5
8845              i32.const 1
8846              i32.add
8847            else
1053 ------------------------------------------------------------
8848              local.get 5
8849              i32.const 0
8850              i32.store8
8851              local.get 5
8852              i32.const 2
8853              i32.add
8854            end
1054 ------------------------------------------------------------
8855            local.tee 5
8856            local.get 3
8857            local.get 2
8858            i32.const -16
8859            i32.add
8860            local.tee 2
8861            i32.shr_u
8862            local.tee 6
8863            i32.store8
8864            local.get 6
8865            i32.const 255
8866            i32.and
8867            i32.const 255
8868            i32.ne
8869            if  ;; label = @5
1055 ------------------------------------------------------------
8870              local.get 5
8871              i32.const 1
8872              i32.add
8873              local.set 5
8874              br 1 (;@4;)
1056 ------------------------------------------------------------
8875            end
1057 ------------------------------------------------------------
8876            local.get 5
8877            i32.const 0
8878            i32.store8
8879            local.get 5
8880            i32.const 2
8881            i32.add
8882            local.set 5
8883          end
1058 ------------------------------------------------------------
8884          local.get 7
8885          i32.const -16
8886          i32.add
8887          local.set 6
8888          local.get 7
8889          i32.const 31
8890          i32.gt_s
8891          br_if 0 (;@3;)
1059 ------------------------------------------------------------
8892        end
1060 ------------------------------------------------------------
8893      end
1061 ------------------------------------------------------------
8894      local.get 3
8895      local.get 4
8896      local.get 6
8897      i32.const 4
8898      i32.shl
8899      local.get 8
8900      i32.add
8901      local.tee 3
8902      i32.add
8903      i32.const 1024
8904      i32.add
8905      i32.load8_s
8906      local.tee 6
8907      i32.shl
8908      local.get 4
8909      local.get 3
8910      i32.const 2
8911      i32.shl
8912      i32.add
8913      i32.load
8914      i32.or
8915      local.set 3
8916      local.get 9
8917      local.get 11
8918      i32.add
8919      i32.const -1
8920      local.get 8
8921      i32.shl
8922      i32.const -1
8923      i32.xor
8924      i32.and
8925      local.set 7
8926      block  ;; label = @2
1062 ------------------------------------------------------------
8927        local.get 2
8928        local.get 6
8929        i32.add
8930        local.tee 2
8931        i32.const 16
8932        i32.lt_s
8933        br_if 0 (;@2;)
1063 ------------------------------------------------------------
8934        local.get 5
8935        local.get 3
8936        local.get 2
8937        i32.const -8
8938        i32.add
8939        i32.shr_u
8940        local.tee 6
8941        i32.store8
8942        local.get 6
8943        i32.const 255
8944        i32.and
8945        i32.const 255
8946        i32.ne
8947        if (result i32)  ;; label = @3
1064 ------------------------------------------------------------
8948          local.get 5
8949          i32.const 1
8950          i32.add
8951        else
1065 ------------------------------------------------------------
8952          local.get 5
8953          i32.const 0
8954          i32.store8
8955          local.get 5
8956          i32.const 2
8957          i32.add
8958        end
1066 ------------------------------------------------------------
8959        local.tee 5
8960        local.get 3
8961        local.get 2
8962        i32.const -16
8963        i32.add
8964        local.tee 2
8965        i32.shr_u
8966        local.tee 6
8967        i32.store8
8968        local.get 6
8969        i32.const 255
8970        i32.and
8971        i32.const 255
8972        i32.ne
8973        if  ;; label = @3
1067 ------------------------------------------------------------
8974          local.get 5
8975          i32.const 1
8976          i32.add
8977          local.set 5
8978          br 1 (;@2;)
1068 ------------------------------------------------------------
8979        end
1069 ------------------------------------------------------------
8980        local.get 5
8981        i32.const 0
8982        i32.store8
8983        local.get 5
8984        i32.const 2
8985        i32.add
8986        local.set 5
8987      end
1070 ------------------------------------------------------------
8988      local.get 3
8989      local.get 8
8990      i32.shl
8991      local.get 7
8992      i32.or
8993      local.set 3
8994      i32.const 0
8995      local.set 6
8996      local.get 2
8997      local.get 8
8998      i32.add
8999      local.tee 2
9000      i32.const 16
9001      i32.lt_s
9002      br_if 0 (;@1;)
1071 ------------------------------------------------------------
9003      local.get 5
9004      local.get 3
9005      local.get 2
9006      i32.const -8
9007      i32.add
9008      i32.shr_u
9009      local.tee 7
9010      i32.store8
9011      local.get 7
9012      i32.const 255
9013      i32.and
9014      i32.const 255
9015      i32.ne
9016      if (result i32)  ;; label = @2
1072 ------------------------------------------------------------
9017        local.get 5
9018        i32.const 1
9019        i32.add
9020      else
1073 ------------------------------------------------------------
9021        local.get 5
9022        i32.const 0
9023        i32.store8
9024        local.get 5
9025        i32.const 2
9026        i32.add
9027      end
1074 ------------------------------------------------------------
9028      local.tee 5
9029      local.get 3
9030      local.get 2
9031      i32.const -16
9032      i32.add
9033      local.tee 2
9034      i32.shr_u
9035      local.tee 7
9036      i32.store8
9037      local.get 7
9038      i32.const 255
9039      i32.and
9040      i32.const 255
9041      i32.ne
9042      if  ;; label = @2
1075 ------------------------------------------------------------
9043        local.get 5
9044        i32.const 1
9045        i32.add
9046        local.set 5
9047        br 1 (;@1;)
1076 ------------------------------------------------------------
9048      end
1077 ------------------------------------------------------------
9049      local.get 5
9050      i32.const 0
9051      i32.store8
9052      local.get 5
9053      i32.const 2
9054      i32.add
9055      local.set 5
9056    end
1078 ------------------------------------------------------------
9057    block  ;; label = @1
1079 ------------------------------------------------------------
9058      local.get 1
9059      i32.load16_s
9060      local.tee 9
9061      i32.eqz
9062      if  ;; label = @2
1080 ------------------------------------------------------------
9063        local.get 6
9064        i32.const 1
9065        i32.add
9066        local.set 6
9067        br 1 (;@1;)
1081 ------------------------------------------------------------
9068      end
1082 ------------------------------------------------------------
9069      local.get 9
9070      i32.const 31
9071      i32.shr_s
9072      local.tee 11
9073      local.get 9
9074      i32.xor
9075      local.get 11
9076      i32.sub
9077      i32.const 66832
9078      i32.add
9079      i32.load8_u
9080      local.set 8
9081      local.get 6
9082      i32.const 16
9083      i32.ge_s
9084      if  ;; label = @2
1083 ------------------------------------------------------------
9085        loop  ;; label = @3
1084 ------------------------------------------------------------
9086          local.get 6
9087          local.set 7
9088          local.get 3
9089          local.get 10
9090          i32.shl
9091          local.get 12
9092          i32.or
9093          local.set 3
9094          block  ;; label = @4
1085 ------------------------------------------------------------
9095            local.get 2
9096            local.get 10
9097            i32.add
9098            local.tee 2
9099            i32.const 16
9100            i32.lt_s
9101            br_if 0 (;@4;)
1086 ------------------------------------------------------------
9102            local.get 5
9103            local.get 3
9104            local.get 2
9105            i32.const -8
9106            i32.add
9107            i32.shr_u
9108            local.tee 6
9109            i32.store8
9110            local.get 6
9111            i32.const 255
9112            i32.and
9113            i32.const 255
9114            i32.ne
9115            if (result i32)  ;; label = @5
1087 ------------------------------------------------------------
9116              local.get 5
9117              i32.const 1
9118              i32.add
9119            else
1088 ------------------------------------------------------------
9120              local.get 5
9121              i32.const 0
9122              i32.store8
9123              local.get 5
9124              i32.const 2
9125              i32.add
9126            end
1089 ------------------------------------------------------------
9127            local.tee 5
9128            local.get 3
9129            local.get 2
9130            i32.const -16
9131            i32.add
9132            local.tee 2
9133            i32.shr_u
9134            local.tee 6
9135            i32.store8
9136            local.get 6
9137            i32.const 255
9138            i32.and
9139            i32.const 255
9140            i32.ne
9141            if  ;; label = @5
1090 ------------------------------------------------------------
9142              local.get 5
9143              i32.const 1
9144              i32.add
9145              local.set 5
9146              br 1 (;@4;)
1091 ------------------------------------------------------------
9147            end
1092 ------------------------------------------------------------
9148            local.get 5
9149            i32.const 0
9150            i32.store8
9151            local.get 5
9152            i32.const 2
9153            i32.add
9154            local.set 5
9155          end
1093 ------------------------------------------------------------
9156          local.get 7
9157          i32.const -16
9158          i32.add
9159          local.set 6
9160          local.get 7
9161          i32.const 31
9162          i32.gt_s
9163          br_if 0 (;@3;)
1094 ------------------------------------------------------------
9164        end
1095 ------------------------------------------------------------
9165      end
1096 ------------------------------------------------------------
9166      local.get 3
9167      local.get 4
9168      local.get 6
9169      i32.const 4
9170      i32.shl
9171      local.get 8
9172      i32.add
9173      local.tee 3
9174      i32.add
9175      i32.const 1024
9176      i32.add
9177      i32.load8_s
9178      local.tee 6
9179      i32.shl
9180      local.get 4
9181      local.get 3
9182      i32.const 2
9183      i32.shl
9184      i32.add
9185      i32.load
9186      i32.or
9187      local.set 3
9188      local.get 9
9189      local.get 11
9190      i32.add
9191      i32.const -1
9192      local.get 8
9193      i32.shl
9194      i32.const -1
9195      i32.xor
9196      i32.and
9197      local.set 7
9198      block  ;; label = @2
1097 ------------------------------------------------------------
9199        local.get 2
9200        local.get 6
9201        i32.add
9202        local.tee 2
9203        i32.const 16
9204        i32.lt_s
9205        br_if 0 (;@2;)
1098 ------------------------------------------------------------
9206        local.get 5
9207        local.get 3
9208        local.get 2
9209        i32.const -8
9210        i32.add
9211        i32.shr_u
9212        local.tee 6
9213        i32.store8
9214        local.get 6
9215        i32.const 255
9216        i32.and
9217        i32.const 255
9218        i32.ne
9219        if (result i32)  ;; label = @3
1099 ------------------------------------------------------------
9220          local.get 5
9221          i32.const 1
9222          i32.add
9223        else
1100 ------------------------------------------------------------
9224          local.get 5
9225          i32.const 0
9226          i32.store8
9227          local.get 5
9228          i32.const 2
9229          i32.add
9230        end
1101 ------------------------------------------------------------
9231        local.tee 5
9232        local.get 3
9233        local.get 2
9234        i32.const -16
9235        i32.add
9236        local.tee 2
9237        i32.shr_u
9238        local.tee 6
9239        i32.store8
9240        local.get 6
9241        i32.const 255
9242        i32.and
9243        i32.const 255
9244        i32.ne
9245        if  ;; label = @3
1102 ------------------------------------------------------------
9246          local.get 5
9247          i32.const 1
9248          i32.add
9249          local.set 5
9250          br 1 (;@2;)
1103 ------------------------------------------------------------
9251        end
1104 ------------------------------------------------------------
9252        local.get 5
9253        i32.const 0
9254        i32.store8
9255        local.get 5
9256        i32.const 2
9257        i32.add
9258        local.set 5
9259      end
1105 ------------------------------------------------------------
9260      local.get 3
9261      local.get 8
9262      i32.shl
9263      local.get 7
9264      i32.or
9265      local.set 3
9266      i32.const 0
9267      local.set 6
9268      local.get 2
9269      local.get 8
9270      i32.add
9271      local.tee 2
9272      i32.const 16
9273      i32.lt_s
9274      br_if 0 (;@1;)
1106 ------------------------------------------------------------
9275      local.get 5
9276      local.get 3
9277      local.get 2
9278      i32.const -8
9279      i32.add
9280      i32.shr_u
9281      local.tee 7
9282      i32.store8
9283      local.get 7
9284      i32.const 255
9285      i32.and
9286      i32.const 255
9287      i32.ne
9288      if (result i32)  ;; label = @2
1107 ------------------------------------------------------------
9289        local.get 5
9290        i32.const 1
9291        i32.add
9292      else
1108 ------------------------------------------------------------
9293        local.get 5
9294        i32.const 0
9295        i32.store8
9296        local.get 5
9297        i32.const 2
9298        i32.add
9299      end
1109 ------------------------------------------------------------
9300      local.tee 5
9301      local.get 3
9302      local.get 2
9303      i32.const -16
9304      i32.add
9305      local.tee 2
9306      i32.shr_u
9307      local.tee 7
9308      i32.store8
9309      local.get 7
9310      i32.const 255
9311      i32.and
9312      i32.const 255
9313      i32.ne
9314      if  ;; label = @2
1110 ------------------------------------------------------------
9315        local.get 5
9316        i32.const 1
9317        i32.add
9318        local.set 5
9319        br 1 (;@1;)
1111 ------------------------------------------------------------
9320      end
1112 ------------------------------------------------------------
9321      local.get 5
9322      i32.const 0
9323      i32.store8
9324      local.get 5
9325      i32.const 2
9326      i32.add
9327      local.set 5
9328    end
1113 ------------------------------------------------------------
9329    block  ;; label = @1
1114 ------------------------------------------------------------
9330      local.get 1
9331      i32.load16_s
9332      local.tee 9
9333      i32.eqz
9334      if  ;; label = @2
1115 ------------------------------------------------------------
9335        local.get 6
9336        i32.const 1
9337        i32.add
9338        local.set 6
9339        br 1 (;@1;)
1116 ------------------------------------------------------------
9340      end
1117 ------------------------------------------------------------
9341      local.get 9
9342      i32.const 31
9343      i32.shr_s
9344      local.tee 11
9345      local.get 9
9346      i32.xor
9347      local.get 11
9348      i32.sub
9349      i32.const 66832
9350      i32.add
9351      i32.load8_u
9352      local.set 8
9353      local.get 6
9354      i32.const 16
9355      i32.ge_s
9356      if  ;; label = @2
1118 ------------------------------------------------------------
9357        loop  ;; label = @3
1119 ------------------------------------------------------------
9358          local.get 6
9359          local.set 7
9360          local.get 3
9361          local.get 10
9362          i32.shl
9363          local.get 12
9364          i32.or
9365          local.set 3
9366          block  ;; label = @4
1120 ------------------------------------------------------------
9367            local.get 2
9368            local.get 10
9369            i32.add
9370            local.tee 2
9371            i32.const 16
9372            i32.lt_s
9373            br_if 0 (;@4;)
1121 ------------------------------------------------------------
9374            local.get 5
9375            local.get 3
9376            local.get 2
9377            i32.const -8
9378            i32.add
9379            i32.shr_u
9380            local.tee 6
9381            i32.store8
9382            local.get 6
9383            i32.const 255
9384            i32.and
9385            i32.const 255
9386            i32.ne
9387            if (result i32)  ;; label = @5
1122 ------------------------------------------------------------
9388              local.get 5
9389              i32.const 1
9390              i32.add
9391            else
1123 ------------------------------------------------------------
9392              local.get 5
9393              i32.const 0
9394              i32.store8
9395              local.get 5
9396              i32.const 2
9397              i32.add
9398            end
1124 ------------------------------------------------------------
9399            local.tee 5
9400            local.get 3
9401            local.get 2
9402            i32.const -16
9403            i32.add
9404            local.tee 2
9405            i32.shr_u
9406            local.tee 6
9407            i32.store8
9408            local.get 6
9409            i32.const 255
9410            i32.and
9411            i32.const 255
9412            i32.ne
9413            if  ;; label = @5
1125 ------------------------------------------------------------
9414              local.get 5
9415              i32.const 1
9416              i32.add
9417              local.set 5
9418              br 1 (;@4;)
1126 ------------------------------------------------------------
9419            end
1127 ------------------------------------------------------------
9420            local.get 5
9421            i32.const 0
9422            i32.store8
9423            local.get 5
9424            i32.const 2
9425            i32.add
9426            local.set 5
9427          end
1128 ------------------------------------------------------------
9428          local.get 7
9429          i32.const -16
9430          i32.add
9431          local.set 6
9432          local.get 7
9433          i32.const 31
9434          i32.gt_s
9435          br_if 0 (;@3;)
1129 ------------------------------------------------------------
9436        end
1130 ------------------------------------------------------------
9437      end
1131 ------------------------------------------------------------
9438      local.get 3
9439      local.get 4
9440      local.get 6
9441      i32.const 4
9442      i32.shl
9443      local.get 8
9444      i32.add
9445      local.tee 3
9446      i32.add
9447      i32.const 1024
9448      i32.add
9449      i32.load8_s
9450      local.tee 6
9451      i32.shl
9452      local.get 4
9453      local.get 3
9454      i32.const 2
9455      i32.shl
9456      i32.add
9457      i32.load
9458      i32.or
9459      local.set 3
9460      local.get 9
9461      local.get 11
9462      i32.add
9463      i32.const -1
9464      local.get 8
9465      i32.shl
9466      i32.const -1
9467      i32.xor
9468      i32.and
9469      local.set 7
9470      block  ;; label = @2
1132 ------------------------------------------------------------
9471        local.get 2
9472        local.get 6
9473        i32.add
9474        local.tee 2
9475        i32.const 16
9476        i32.lt_s
9477        br_if 0 (;@2;)
1133 ------------------------------------------------------------
9478        local.get 5
9479        local.get 3
9480        local.get 2
9481        i32.const -8
9482        i32.add
9483        i32.shr_u
9484        local.tee 6
9485        i32.store8
9486        local.get 6
9487        i32.const 255
9488        i32.and
9489        i32.const 255
9490        i32.ne
9491        if (result i32)  ;; label = @3
1134 ------------------------------------------------------------
9492          local.get 5
9493          i32.const 1
9494          i32.add
9495        else
1135 ------------------------------------------------------------
9496          local.get 5
9497          i32.const 0
9498          i32.store8
9499          local.get 5
9500          i32.const 2
9501          i32.add
9502        end
1136 ------------------------------------------------------------
9503        local.tee 5
9504        local.get 3
9505        local.get 2
9506        i32.const -16
9507        i32.add
9508        local.tee 2
9509        i32.shr_u
9510        local.tee 6
9511        i32.store8
9512        local.get 6
9513        i32.const 255
9514        i32.and
9515        i32.const 255
9516        i32.ne
9517        if  ;; label = @3
1137 ------------------------------------------------------------
9518          local.get 5
9519          i32.const 1
9520          i32.add
9521          local.set 5
9522          br 1 (;@2;)
1138 ------------------------------------------------------------
9523        end
1139 ------------------------------------------------------------
9524        local.get 5
9525        i32.const 0
9526        i32.store8
9527        local.get 5
9528        i32.const 2
9529        i32.add
9530        local.set 5
9531      end
1140 ------------------------------------------------------------
9532      local.get 3
9533      local.get 8
9534      i32.shl
9535      local.get 7
9536      i32.or
9537      local.set 3
9538      i32.const 0
9539      local.set 6
9540      local.get 2
9541      local.get 8
9542      i32.add
9543      local.tee 2
9544      i32.const 16
9545      i32.lt_s
9546      br_if 0 (;@1;)
1141 ------------------------------------------------------------
9547      local.get 5
9548      local.get 3
9549      local.get 2
9550      i32.const -8
9551      i32.add
9552      i32.shr_u
9553      local.tee 7
9554      i32.store8
9555      local.get 7
9556      i32.const 255
9557      i32.and
9558      i32.const 255
9559      i32.ne
9560      if (result i32)  ;; label = @2
1142 ------------------------------------------------------------
9561        local.get 5
9562        i32.const 1
9563        i32.add
9564      else
1143 ------------------------------------------------------------
9565        local.get 5
9566        i32.const 0
9567        i32.store8
9568        local.get 5
9569        i32.const 2
9570        i32.add
9571      end
1144 ------------------------------------------------------------
9572      local.tee 5
9573      local.get 3
9574      local.get 2
9575      i32.const -16
9576      i32.add
9577      local.tee 2
9578      i32.shr_u
9579      local.tee 7
9580      i32.store8
9581      local.get 7
9582      i32.const 255
9583      i32.and
9584      i32.const 255
9585      i32.ne
9586      if  ;; label = @2
1145 ------------------------------------------------------------
9587        local.get 5
9588        i32.const 1
9589        i32.add
9590        local.set 5
9591        br 1 (;@1;)
1146 ------------------------------------------------------------
9592      end
1147 ------------------------------------------------------------
9593      local.get 5
9594      i32.const 0
9595      i32.store8
9596      local.get 5
9597      i32.const 2
9598      i32.add
9599      local.set 5
9600    end
1148 ------------------------------------------------------------
9601    block  ;; label = @1
1149 ------------------------------------------------------------
9602      local.get 1
9603      i32.load16_s
9604      local.tee 9
9605      i32.eqz
9606      if  ;; label = @2
1150 ------------------------------------------------------------
9607        local.get 6
9608        i32.const 1
9609        i32.add
9610        local.set 6
9611        br 1 (;@1;)
1151 ------------------------------------------------------------
9612      end
1152 ------------------------------------------------------------
9613      local.get 9
9614      i32.const 31
9615      i32.shr_s
9616      local.tee 11
9617      local.get 9
9618      i32.xor
9619      local.get 11
9620      i32.sub
9621      i32.const 66832
9622      i32.add
9623      i32.load8_u
9624      local.set 8
9625      local.get 6
9626      i32.const 16
9627      i32.ge_s
9628      if  ;; label = @2
1153 ------------------------------------------------------------
9629        loop  ;; label = @3
1154 ------------------------------------------------------------
9630          local.get 6
9631          local.set 7
9632          local.get 3
9633          local.get 10
9634          i32.shl
9635          local.get 12
9636          i32.or
9637          local.set 3
9638          block  ;; label = @4
1155 ------------------------------------------------------------
9639            local.get 2
9640            local.get 10
9641            i32.add
9642            local.tee 2
9643            i32.const 16
9644            i32.lt_s
9645            br_if 0 (;@4;)
1156 ------------------------------------------------------------
9646            local.get 5
9647            local.get 3
9648            local.get 2
9649            i32.const -8
9650            i32.add
9651            i32.shr_u
9652            local.tee 6
9653            i32.store8
9654            local.get 6
9655            i32.const 255
9656            i32.and
9657            i32.const 255
9658            i32.ne
9659            if (result i32)  ;; label = @5
1157 ------------------------------------------------------------
9660              local.get 5
9661              i32.const 1
9662              i32.add
9663            else
1158 ------------------------------------------------------------
9664              local.get 5
9665              i32.const 0
9666              i32.store8
9667              local.get 5
9668              i32.const 2
9669              i32.add
9670            end
1159 ------------------------------------------------------------
9671            local.tee 5
9672            local.get 3
9673            local.get 2
9674            i32.const -16
9675            i32.add
9676            local.tee 2
9677            i32.shr_u
9678            local.tee 6
9679            i32.store8
9680            local.get 6
9681            i32.const 255
9682            i32.and
9683            i32.const 255
9684            i32.ne
9685            if  ;; label = @5
1160 ------------------------------------------------------------
9686              local.get 5
9687              i32.const 1
9688              i32.add
9689              local.set 5
9690              br 1 (;@4;)
1161 ------------------------------------------------------------
9691            end
1162 ------------------------------------------------------------
9692            local.get 5
9693            i32.const 0
9694            i32.store8
9695            local.get 5
9696            i32.const 2
9697            i32.add
9698            local.set 5
9699          end
1163 ------------------------------------------------------------
9700          local.get 7
9701          i32.const -16
9702          i32.add
9703          local.set 6
9704          local.get 7
9705          i32.const 31
9706          i32.gt_s
9707          br_if 0 (;@3;)
1164 ------------------------------------------------------------
9708        end
1165 ------------------------------------------------------------
9709      end
1166 ------------------------------------------------------------
9710      local.get 3
9711      local.get 4
9712      local.get 6
9713      i32.const 4
9714      i32.shl
9715      local.get 8
9716      i32.add
9717      local.tee 3
9718      i32.add
9719      i32.const 1024
9720      i32.add
9721      i32.load8_s
9722      local.tee 6
9723      i32.shl
9724      local.get 4
9725      local.get 3
9726      i32.const 2
9727      i32.shl
9728      i32.add
9729      i32.load
9730      i32.or
9731      local.set 3
9732      local.get 9
9733      local.get 11
9734      i32.add
9735      i32.const -1
9736      local.get 8
9737      i32.shl
9738      i32.const -1
9739      i32.xor
9740      i32.and
9741      local.set 7
9742      block  ;; label = @2
1167 ------------------------------------------------------------
9743        local.get 2
9744        local.get 6
9745        i32.add
9746        local.tee 2
9747        i32.const 16
9748        i32.lt_s
9749        br_if 0 (;@2;)
1168 ------------------------------------------------------------
9750        local.get 5
9751        local.get 3
9752        local.get 2
9753        i32.const -8
9754        i32.add
9755        i32.shr_u
9756        local.tee 6
9757        i32.store8
9758        local.get 6
9759        i32.const 255
9760        i32.and
9761        i32.const 255
9762        i32.ne
9763        if (result i32)  ;; label = @3
1169 ------------------------------------------------------------
9764          local.get 5
9765          i32.const 1
9766          i32.add
9767        else
1170 ------------------------------------------------------------
9768          local.get 5
9769          i32.const 0
9770          i32.store8
9771          local.get 5
9772          i32.const 2
9773          i32.add
9774        end
1171 ------------------------------------------------------------
9775        local.tee 5
9776        local.get 3
9777        local.get 2
9778        i32.const -16
9779        i32.add
9780        local.tee 2
9781        i32.shr_u
9782        local.tee 6
9783        i32.store8
9784        local.get 6
9785        i32.const 255
9786        i32.and
9787        i32.const 255
9788        i32.ne
9789        if  ;; label = @3
1172 ------------------------------------------------------------
9790          local.get 5
9791          i32.const 1
9792          i32.add
9793          local.set 5
9794          br 1 (;@2;)
1173 ------------------------------------------------------------
9795        end
1174 ------------------------------------------------------------
9796        local.get 5
9797        i32.const 0
9798        i32.store8
9799        local.get 5
9800        i32.const 2
9801        i32.add
9802        local.set 5
9803      end
1175 ------------------------------------------------------------
9804      local.get 3
9805      local.get 8
9806      i32.shl
9807      local.get 7
9808      i32.or
9809      local.set 3
9810      i32.const 0
9811      local.set 6
9812      local.get 2
9813      local.get 8
9814      i32.add
9815      local.tee 2
9816      i32.const 16
9817      i32.lt_s
9818      br_if 0 (;@1;)
1176 ------------------------------------------------------------
9819      local.get 5
9820      local.get 3
9821      local.get 2
9822      i32.const -8
9823      i32.add
9824      i32.shr_u
9825      local.tee 7
9826      i32.store8
9827      local.get 7
9828      i32.const 255
9829      i32.and
9830      i32.const 255
9831      i32.ne
9832      if (result i32)  ;; label = @2
1177 ------------------------------------------------------------
9833        local.get 5
9834        i32.const 1
9835        i32.add
9836      else
1178 ------------------------------------------------------------
9837        local.get 5
9838        i32.const 0
9839        i32.store8
9840        local.get 5
9841        i32.const 2
9842        i32.add
9843      end
1179 ------------------------------------------------------------
9844      local.tee 5
9845      local.get 3
9846      local.get 2
9847      i32.const -16
9848      i32.add
9849      local.tee 2
9850      i32.shr_u
9851      local.tee 7
9852      i32.store8
9853      local.get 7
9854      i32.const 255
9855      i32.and
9856      i32.const 255
9857      i32.ne
9858      if  ;; label = @2
1180 ------------------------------------------------------------
9859        local.get 5
9860        i32.const 1
9861        i32.add
9862        local.set 5
9863        br 1 (;@1;)
1181 ------------------------------------------------------------
9864      end
1182 ------------------------------------------------------------
9865      local.get 5
9866      i32.const 0
9867      i32.store8
9868      local.get 5
9869      i32.const 2
9870      i32.add
9871      local.set 5
9872    end
1183 ------------------------------------------------------------
9873    block  ;; label = @1
1184 ------------------------------------------------------------
9874      local.get 1
9875      i32.load16_s
9876      local.tee 9
9877      i32.eqz
9878      if  ;; label = @2
1185 ------------------------------------------------------------
9879        local.get 6
9880        i32.const 1
9881        i32.add
9882        local.set 6
9883        br 1 (;@1;)
1186 ------------------------------------------------------------
9884      end
1187 ------------------------------------------------------------
9885      local.get 9
9886      i32.const 31
9887      i32.shr_s
9888      local.tee 11
9889      local.get 9
9890      i32.xor
9891      local.get 11
9892      i32.sub
9893      i32.const 66832
9894      i32.add
9895      i32.load8_u
9896      local.set 8
9897      local.get 6
9898      i32.const 16
9899      i32.ge_s
9900      if  ;; label = @2
1188 ------------------------------------------------------------
9901        loop  ;; label = @3
1189 ------------------------------------------------------------
9902          local.get 6
9903          local.set 7
9904          local.get 3
9905          local.get 10
9906          i32.shl
9907          local.get 12
9908          i32.or
9909          local.set 3
9910          block  ;; label = @4
1190 ------------------------------------------------------------
9911            local.get 2
9912            local.get 10
9913            i32.add
9914            local.tee 2
9915            i32.const 16
9916            i32.lt_s
9917            br_if 0 (;@4;)
1191 ------------------------------------------------------------
9918            local.get 5
9919            local.get 3
9920            local.get 2
9921            i32.const -8
9922            i32.add
9923            i32.shr_u
9924            local.tee 6
9925            i32.store8
9926            local.get 6
9927            i32.const 255
9928            i32.and
9929            i32.const 255
9930            i32.ne
9931            if (result i32)  ;; label = @5
1192 ------------------------------------------------------------
9932              local.get 5
9933              i32.const 1
9934              i32.add
9935            else
1193 ------------------------------------------------------------
9936              local.get 5
9937              i32.const 0
9938              i32.store8
9939              local.get 5
9940              i32.const 2
9941              i32.add
9942            end
1194 ------------------------------------------------------------
9943            local.tee 5
9944            local.get 3
9945            local.get 2
9946            i32.const -16
9947            i32.add
9948            local.tee 2
9949            i32.shr_u
9950            local.tee 6
9951            i32.store8
9952            local.get 6
9953            i32.const 255
9954            i32.and
9955            i32.const 255
9956            i32.ne
9957            if  ;; label = @5
1195 ------------------------------------------------------------
9958              local.get 5
9959              i32.const 1
9960              i32.add
9961              local.set 5
9962              br 1 (;@4;)
1196 ------------------------------------------------------------
9963            end
1197 ------------------------------------------------------------
9964            local.get 5
9965            i32.const 0
9966            i32.store8
9967            local.get 5
9968            i32.const 2
9969            i32.add
9970            local.set 5
9971          end
1198 ------------------------------------------------------------
9972          local.get 7
9973          i32.const -16
9974          i32.add
9975          local.set 6
9976          local.get 7
9977          i32.const 31
9978          i32.gt_s
9979          br_if 0 (;@3;)
1199 ------------------------------------------------------------
9980        end
1200 ------------------------------------------------------------
9981      end
1201 ------------------------------------------------------------
9982      local.get 3
9983      local.get 4
9984      local.get 6
9985      i32.const 4
9986      i32.shl
9987      local.get 8
9988      i32.add
9989      local.tee 3
9990      i32.add
9991      i32.const 1024
9992      i32.add
9993      i32.load8_s
9994      local.tee 6
9995      i32.shl
9996      local.get 4
9997      local.get 3
9998      i32.const 2
9999      i32.shl
10000      i32.add
10001      i32.load
10002      i32.or
10003      local.set 3
10004      local.get 9
10005      local.get 11
10006      i32.add
10007      i32.const -1
10008      local.get 8
10009      i32.shl
10010      i32.const -1
10011      i32.xor
10012      i32.and
10013      local.set 7
10014      block  ;; label = @2
1202 ------------------------------------------------------------
10015        local.get 2
10016        local.get 6
10017        i32.add
10018        local.tee 2
10019        i32.const 16
10020        i32.lt_s
10021        br_if 0 (;@2;)
1203 ------------------------------------------------------------
10022        local.get 5
10023        local.get 3
10024        local.get 2
10025        i32.const -8
10026        i32.add
10027        i32.shr_u
10028        local.tee 6
10029        i32.store8
10030        local.get 6
10031        i32.const 255
10032        i32.and
10033        i32.const 255
10034        i32.ne
10035        if (result i32)  ;; label = @3
1204 ------------------------------------------------------------
10036          local.get 5
10037          i32.const 1
10038          i32.add
10039        else
1205 ------------------------------------------------------------
10040          local.get 5
10041          i32.const 0
10042          i32.store8
10043          local.get 5
10044          i32.const 2
10045          i32.add
10046        end
1206 ------------------------------------------------------------
10047        local.tee 5
10048        local.get 3
10049        local.get 2
10050        i32.const -16
10051        i32.add
10052        local.tee 2
10053        i32.shr_u
10054        local.tee 6
10055        i32.store8
10056        local.get 6
10057        i32.const 255
10058        i32.and
10059        i32.const 255
10060        i32.ne
10061        if  ;; label = @3
1207 ------------------------------------------------------------
10062          local.get 5
10063          i32.const 1
10064          i32.add
10065          local.set 5
10066          br 1 (;@2;)
1208 ------------------------------------------------------------
10067        end
1209 ------------------------------------------------------------
10068        local.get 5
10069        i32.const 0
10070        i32.store8
10071        local.get 5
10072        i32.const 2
10073        i32.add
10074        local.set 5
10075      end
1210 ------------------------------------------------------------
10076      local.get 3
10077      local.get 8
10078      i32.shl
10079      local.get 7
10080      i32.or
10081      local.set 3
10082      i32.const 0
10083      local.set 6
10084      local.get 2
10085      local.get 8
10086      i32.add
10087      local.tee 2
10088      i32.const 16
10089      i32.lt_s
10090      br_if 0 (;@1;)
1211 ------------------------------------------------------------
10091      local.get 5
10092      local.get 3
10093      local.get 2
10094      i32.const -8
10095      i32.add
10096      i32.shr_u
10097      local.tee 7
10098      i32.store8
10099      local.get 7
10100      i32.const 255
10101      i32.and
10102      i32.const 255
10103      i32.ne
10104      if (result i32)  ;; label = @2
1212 ------------------------------------------------------------
10105        local.get 5
10106        i32.const 1
10107        i32.add
10108      else
1213 ------------------------------------------------------------
10109        local.get 5
10110        i32.const 0
10111        i32.store8
10112        local.get 5
10113        i32.const 2
10114        i32.add
10115      end
1214 ------------------------------------------------------------
10116      local.tee 5
10117      local.get 3
10118      local.get 2
10119      i32.const -16
10120      i32.add
10121      local.tee 2
10122      i32.shr_u
10123      local.tee 7
10124      i32.store8
10125      local.get 7
10126      i32.const 255
10127      i32.and
10128      i32.const 255
10129      i32.ne
10130      if  ;; label = @2
1215 ------------------------------------------------------------
10131        local.get 5
10132        i32.const 1
10133        i32.add
10134        local.set 5
10135        br 1 (;@1;)
1216 ------------------------------------------------------------
10136      end
1217 ------------------------------------------------------------
10137      local.get 5
10138      i32.const 0
10139      i32.store8
10140      local.get 5
10141      i32.const 2
10142      i32.add
10143      local.set 5
10144    end
1218 ------------------------------------------------------------
10145    block  ;; label = @1
1219 ------------------------------------------------------------
10146      local.get 1
10147      i32.load16_s
10148      local.tee 9
10149      i32.eqz
10150      if  ;; label = @2
1220 ------------------------------------------------------------
10151        local.get 6
10152        i32.const 1
10153        i32.add
10154        local.set 6
10155        br 1 (;@1;)
1221 ------------------------------------------------------------
10156      end
1222 ------------------------------------------------------------
10157      local.get 9
10158      i32.const 31
10159      i32.shr_s
10160      local.tee 11
10161      local.get 9
10162      i32.xor
10163      local.get 11
10164      i32.sub
10165      i32.const 66832
10166      i32.add
10167      i32.load8_u
10168      local.set 8
10169      local.get 6
10170      i32.const 16
10171      i32.ge_s
10172      if  ;; label = @2
1223 ------------------------------------------------------------
10173        loop  ;; label = @3
1224 ------------------------------------------------------------
10174          local.get 6
10175          local.set 7
10176          local.get 3
10177          local.get 10
10178          i32.shl
10179          local.get 12
10180          i32.or
10181          local.set 3
10182          block  ;; label = @4
1225 ------------------------------------------------------------
10183            local.get 2
10184            local.get 10
10185            i32.add
10186            local.tee 2
10187            i32.const 16
10188            i32.lt_s
10189            br_if 0 (;@4;)
1226 ------------------------------------------------------------
10190            local.get 5
10191            local.get 3
10192            local.get 2
10193            i32.const -8
10194            i32.add
10195            i32.shr_u
10196            local.tee 6
10197            i32.store8
10198            local.get 6
10199            i32.const 255
10200            i32.and
10201            i32.const 255
10202            i32.ne
10203            if (result i32)  ;; label = @5
1227 ------------------------------------------------------------
10204              local.get 5
10205              i32.const 1
10206              i32.add
10207            else
1228 ------------------------------------------------------------
10208              local.get 5
10209              i32.const 0
10210              i32.store8
10211              local.get 5
10212              i32.const 2
10213              i32.add
10214            end
1229 ------------------------------------------------------------
10215            local.tee 5
10216            local.get 3
10217            local.get 2
10218            i32.const -16
10219            i32.add
10220            local.tee 2
10221            i32.shr_u
10222            local.tee 6
10223            i32.store8
10224            local.get 6
10225            i32.const 255
10226            i32.and
10227            i32.const 255
10228            i32.ne
10229            if  ;; label = @5
1230 ------------------------------------------------------------
10230              local.get 5
10231              i32.const 1
10232              i32.add
10233              local.set 5
10234              br 1 (;@4;)
1231 ------------------------------------------------------------
10235            end
1232 ------------------------------------------------------------
10236            local.get 5
10237            i32.const 0
10238            i32.store8
10239            local.get 5
10240            i32.const 2
10241            i32.add
10242            local.set 5
10243          end
1233 ------------------------------------------------------------
10244          local.get 7
10245          i32.const -16
10246          i32.add
10247          local.set 6
10248          local.get 7
10249          i32.const 31
10250          i32.gt_s
10251          br_if 0 (;@3;)
1234 ------------------------------------------------------------
10252        end
1235 ------------------------------------------------------------
10253      end
1236 ------------------------------------------------------------
10254      local.get 3
10255      local.get 4
10256      local.get 6
10257      i32.const 4
10258      i32.shl
10259      local.get 8
10260      i32.add
10261      local.tee 3
10262      i32.add
10263      i32.const 1024
10264      i32.add
10265      i32.load8_s
10266      local.tee 6
10267      i32.shl
10268      local.get 4
10269      local.get 3
10270      i32.const 2
10271      i32.shl
10272      i32.add
10273      i32.load
10274      i32.or
10275      local.set 3
10276      local.get 9
10277      local.get 11
10278      i32.add
10279      i32.const -1
10280      local.get 8
10281      i32.shl
10282      i32.const -1
10283      i32.xor
10284      i32.and
10285      local.set 7
10286      block  ;; label = @2
1237 ------------------------------------------------------------
10287        local.get 2
10288        local.get 6
10289        i32.add
10290        local.tee 2
10291        i32.const 16
10292        i32.lt_s
10293        br_if 0 (;@2;)
1238 ------------------------------------------------------------
10294        local.get 5
10295        local.get 3
10296        local.get 2
10297        i32.const -8
10298        i32.add
10299        i32.shr_u
10300        local.tee 6
10301        i32.store8
10302        local.get 6
10303        i32.const 255
10304        i32.and
10305        i32.const 255
10306        i32.ne
10307        if (result i32)  ;; label = @3
1239 ------------------------------------------------------------
10308          local.get 5
10309          i32.const 1
10310          i32.add
10311        else
1240 ------------------------------------------------------------
10312          local.get 5
10313          i32.const 0
10314          i32.store8
10315          local.get 5
10316          i32.const 2
10317          i32.add
10318        end
1241 ------------------------------------------------------------
10319        local.tee 5
10320        local.get 3
10321        local.get 2
10322        i32.const -16
10323        i32.add
10324        local.tee 2
10325        i32.shr_u
10326        local.tee 6
10327        i32.store8
10328        local.get 6
10329        i32.const 255
10330        i32.and
10331        i32.const 255
10332        i32.ne
10333        if  ;; label = @3
1242 ------------------------------------------------------------
10334          local.get 5
10335          i32.const 1
10336          i32.add
10337          local.set 5
10338          br 1 (;@2;)
1243 ------------------------------------------------------------
10339        end
1244 ------------------------------------------------------------
10340        local.get 5
10341        i32.const 0
10342        i32.store8
10343        local.get 5
10344        i32.const 2
10345        i32.add
10346        local.set 5
10347      end
1245 ------------------------------------------------------------
10348      local.get 3
10349      local.get 8
10350      i32.shl
10351      local.get 7
10352      i32.or
10353      local.set 3
10354      i32.const 0
10355      local.set 6
10356      local.get 2
10357      local.get 8
10358      i32.add
10359      local.tee 2
10360      i32.const 16
10361      i32.lt_s
10362      br_if 0 (;@1;)
1246 ------------------------------------------------------------
10363      local.get 5
10364      local.get 3
10365      local.get 2
10366      i32.const -8
10367      i32.add
10368      i32.shr_u
10369      local.tee 7
10370      i32.store8
10371      local.get 7
10372      i32.const 255
10373      i32.and
10374      i32.const 255
10375      i32.ne
10376      if (result i32)  ;; label = @2
1247 ------------------------------------------------------------
10377        local.get 5
10378        i32.const 1
10379        i32.add
10380      else
1248 ------------------------------------------------------------
10381        local.get 5
10382        i32.const 0
10383        i32.store8
10384        local.get 5
10385        i32.const 2
10386        i32.add
10387      end
1249 ------------------------------------------------------------
10388      local.tee 5
10389      local.get 3
10390      local.get 2
10391      i32.const -16
10392      i32.add
10393      local.tee 2
10394      i32.shr_u
10395      local.tee 7
10396      i32.store8
10397      local.get 7
10398      i32.const 255
10399      i32.and
10400      i32.const 255
10401      i32.ne
10402      if  ;; label = @2
1250 ------------------------------------------------------------
10403        local.get 5
10404        i32.const 1
10405        i32.add
10406        local.set 5
10407        br 1 (;@1;)
1251 ------------------------------------------------------------
10408      end
1252 ------------------------------------------------------------
10409      local.get 5
10410      i32.const 0
10411      i32.store8
10412      local.get 5
10413      i32.const 2
10414      i32.add
10415      local.set 5
10416    end
1253 ------------------------------------------------------------
10417    block  ;; label = @1
1254 ------------------------------------------------------------
10418      local.get 1
10419      i32.load16_s
10420      local.tee 9
10421      i32.eqz
10422      if  ;; label = @2
1255 ------------------------------------------------------------
10423        local.get 6
10424        i32.const 1
10425        i32.add
10426        local.set 6
10427        br 1 (;@1;)
1256 ------------------------------------------------------------
10428      end
1257 ------------------------------------------------------------
10429      local.get 9
10430      i32.const 31
10431      i32.shr_s
10432      local.tee 11
10433      local.get 9
10434      i32.xor
10435      local.get 11
10436      i32.sub
10437      i32.const 66832
10438      i32.add
10439      i32.load8_u
10440      local.set 8
10441      local.get 6
10442      i32.const 16
10443      i32.ge_s
10444      if  ;; label = @2
1258 ------------------------------------------------------------
10445        loop  ;; label = @3
1259 ------------------------------------------------------------
10446          local.get 6
10447          local.set 7
10448          local.get 3
10449          local.get 10
10450          i32.shl
10451          local.get 12
10452          i32.or
10453          local.set 3
10454          block  ;; label = @4
1260 ------------------------------------------------------------
10455            local.get 2
10456            local.get 10
10457            i32.add
10458            local.tee 2
10459            i32.const 16
10460            i32.lt_s
10461            br_if 0 (;@4;)
1261 ------------------------------------------------------------
10462            local.get 5
10463            local.get 3
10464            local.get 2
10465            i32.const -8
10466            i32.add
10467            i32.shr_u
10468            local.tee 6
10469            i32.store8
10470            local.get 6
10471            i32.const 255
10472            i32.and
10473            i32.const 255
10474            i32.ne
10475            if (result i32)  ;; label = @5
1262 ------------------------------------------------------------
10476              local.get 5
10477              i32.const 1
10478              i32.add
10479            else
1263 ------------------------------------------------------------
10480              local.get 5
10481              i32.const 0
10482              i32.store8
10483              local.get 5
10484              i32.const 2
10485              i32.add
10486            end
1264 ------------------------------------------------------------
10487            local.tee 5
10488            local.get 3
10489            local.get 2
10490            i32.const -16
10491            i32.add
10492            local.tee 2
10493            i32.shr_u
10494            local.tee 6
10495            i32.store8
10496            local.get 6
10497            i32.const 255
10498            i32.and
10499            i32.const 255
10500            i32.ne
10501            if  ;; label = @5
1265 ------------------------------------------------------------
10502              local.get 5
10503              i32.const 1
10504              i32.add
10505              local.set 5
10506              br 1 (;@4;)
1266 ------------------------------------------------------------
10507            end
1267 ------------------------------------------------------------
10508            local.get 5
10509            i32.const 0
10510            i32.store8
10511            local.get 5
10512            i32.const 2
10513            i32.add
10514            local.set 5
10515          end
1268 ------------------------------------------------------------
10516          local.get 7
10517          i32.const -16
10518          i32.add
10519          local.set 6
10520          local.get 7
10521          i32.const 31
10522          i32.gt_s
10523          br_if 0 (;@3;)
1269 ------------------------------------------------------------
10524        end
1270 ------------------------------------------------------------
10525      end
1271 ------------------------------------------------------------
10526      local.get 3
10527      local.get 4
10528      local.get 6
10529      i32.const 4
10530      i32.shl
10531      local.get 8
10532      i32.add
10533      local.tee 3
10534      i32.add
10535      i32.const 1024
10536      i32.add
10537      i32.load8_s
10538      local.tee 6
10539      i32.shl
10540      local.get 4
10541      local.get 3
10542      i32.const 2
10543      i32.shl
10544      i32.add
10545      i32.load
10546      i32.or
10547      local.set 3
10548      local.get 9
10549      local.get 11
10550      i32.add
10551      i32.const -1
10552      local.get 8
10553      i32.shl
10554      i32.const -1
10555      i32.xor
10556      i32.and
10557      local.set 7
10558      block  ;; label = @2
1272 ------------------------------------------------------------
10559        local.get 2
10560        local.get 6
10561        i32.add
10562        local.tee 2
10563        i32.const 16
10564        i32.lt_s
10565        br_if 0 (;@2;)
1273 ------------------------------------------------------------
10566        local.get 5
10567        local.get 3
10568        local.get 2
10569        i32.const -8
10570        i32.add
10571        i32.shr_u
10572        local.tee 6
10573        i32.store8
10574        local.get 6
10575        i32.const 255
10576        i32.and
10577        i32.const 255
10578        i32.ne
10579        if (result i32)  ;; label = @3
1274 ------------------------------------------------------------
10580          local.get 5
10581          i32.const 1
10582          i32.add
10583        else
1275 ------------------------------------------------------------
10584          local.get 5
10585          i32.const 0
10586          i32.store8
10587          local.get 5
10588          i32.const 2
10589          i32.add
10590        end
1276 ------------------------------------------------------------
10591        local.tee 5
10592        local.get 3
10593        local.get 2
10594        i32.const -16
10595        i32.add
10596        local.tee 2
10597        i32.shr_u
10598        local.tee 6
10599        i32.store8
10600        local.get 6
10601        i32.const 255
10602        i32.and
10603        i32.const 255
10604        i32.ne
10605        if  ;; label = @3
1277 ------------------------------------------------------------
10606          local.get 5
10607          i32.const 1
10608          i32.add
10609          local.set 5
10610          br 1 (;@2;)
1278 ------------------------------------------------------------
10611        end
1279 ------------------------------------------------------------
10612        local.get 5
10613        i32.const 0
10614        i32.store8
10615        local.get 5
10616        i32.const 2
10617        i32.add
10618        local.set 5
10619      end
1280 ------------------------------------------------------------
10620      local.get 3
10621      local.get 8
10622      i32.shl
10623      local.get 7
10624      i32.or
10625      local.set 3
10626      i32.const 0
10627      local.set 6
10628      local.get 2
10629      local.get 8
10630      i32.add
10631      local.tee 2
10632      i32.const 16
10633      i32.lt_s
10634      br_if 0 (;@1;)
1281 ------------------------------------------------------------
10635      local.get 5
10636      local.get 3
10637      local.get 2
10638      i32.const -8
10639      i32.add
10640      i32.shr_u
10641      local.tee 7
10642      i32.store8
10643      local.get 7
10644      i32.const 255
10645      i32.and
10646      i32.const 255
10647      i32.ne
10648      if (result i32)  ;; label = @2
1282 ------------------------------------------------------------
10649        local.get 5
10650        i32.const 1
10651        i32.add
10652      else
1283 ------------------------------------------------------------
10653        local.get 5
10654        i32.const 0
10655        i32.store8
10656        local.get 5
10657        i32.const 2
10658        i32.add
10659      end
1284 ------------------------------------------------------------
10660      local.tee 5
10661      local.get 3
10662      local.get 2
10663      i32.const -16
10664      i32.add
10665      local.tee 2
10666      i32.shr_u
10667      local.tee 7
10668      i32.store8
10669      local.get 7
10670      i32.const 255
10671      i32.and
10672      i32.const 255
10673      i32.ne
10674      if  ;; label = @2
1285 ------------------------------------------------------------
10675        local.get 5
10676        i32.const 1
10677        i32.add
10678        local.set 5
10679        br 1 (;@1;)
1286 ------------------------------------------------------------
10680      end
1287 ------------------------------------------------------------
10681      local.get 5
10682      i32.const 0
10683      i32.store8
10684      local.get 5
10685      i32.const 2
10686      i32.add
10687      local.set 5
10688    end
1288 ------------------------------------------------------------
10689    block  ;; label = @1
1289 ------------------------------------------------------------
10690      local.get 1
10691      i32.load16_s
10692      local.tee 9
10693      i32.eqz
10694      if  ;; label = @2
1290 ------------------------------------------------------------
10695        local.get 6
10696        i32.const 1
10697        i32.add
10698        local.set 6
10699        br 1 (;@1;)
1291 ------------------------------------------------------------
10700      end
1292 ------------------------------------------------------------
10701      local.get 9
10702      i32.const 31
10703      i32.shr_s
10704      local.tee 11
10705      local.get 9
10706      i32.xor
10707      local.get 11
10708      i32.sub
10709      i32.const 66832
10710      i32.add
10711      i32.load8_u
10712      local.set 8
10713      local.get 6
10714      i32.const 16
10715      i32.ge_s
10716      if  ;; label = @2
1293 ------------------------------------------------------------
10717        loop  ;; label = @3
1294 ------------------------------------------------------------
10718          local.get 6
10719          local.set 7
10720          local.get 3
10721          local.get 10
10722          i32.shl
10723          local.get 12
10724          i32.or
10725          local.set 3
10726          block  ;; label = @4
1295 ------------------------------------------------------------
10727            local.get 2
10728            local.get 10
10729            i32.add
10730            local.tee 2
10731            i32.const 16
10732            i32.lt_s
10733            br_if 0 (;@4;)
1296 ------------------------------------------------------------
10734            local.get 5
10735            local.get 3
10736            local.get 2
10737            i32.const -8
10738            i32.add
10739            i32.shr_u
10740            local.tee 6
10741            i32.store8
10742            local.get 6
10743            i32.const 255
10744            i32.and
10745            i32.const 255
10746            i32.ne
10747            if (result i32)  ;; label = @5
1297 ------------------------------------------------------------
10748              local.get 5
10749              i32.const 1
10750              i32.add
10751            else
1298 ------------------------------------------------------------
10752              local.get 5
10753              i32.const 0
10754              i32.store8
10755              local.get 5
10756              i32.const 2
10757              i32.add
10758            end
1299 ------------------------------------------------------------
10759            local.tee 5
10760            local.get 3
10761            local.get 2
10762            i32.const -16
10763            i32.add
10764            local.tee 2
10765            i32.shr_u
10766            local.tee 6
10767            i32.store8
10768            local.get 6
10769            i32.const 255
10770            i32.and
10771            i32.const 255
10772            i32.ne
10773            if  ;; label = @5
1300 ------------------------------------------------------------
10774              local.get 5
10775              i32.const 1
10776              i32.add
10777              local.set 5
10778              br 1 (;@4;)
1301 ------------------------------------------------------------
10779            end
1302 ------------------------------------------------------------
10780            local.get 5
10781            i32.const 0
10782            i32.store8
10783            local.get 5
10784            i32.const 2
10785            i32.add
10786            local.set 5
10787          end
1303 ------------------------------------------------------------
10788          local.get 7
10789          i32.const -16
10790          i32.add
10791          local.set 6
10792          local.get 7
10793          i32.const 31
10794          i32.gt_s
10795          br_if 0 (;@3;)
1304 ------------------------------------------------------------
10796        end
1305 ------------------------------------------------------------
10797      end
1306 ------------------------------------------------------------
10798      local.get 3
10799      local.get 4
10800      local.get 6
10801      i32.const 4
10802      i32.shl
10803      local.get 8
10804      i32.add
10805      local.tee 3
10806      i32.add
10807      i32.const 1024
10808      i32.add
10809      i32.load8_s
10810      local.tee 6
10811      i32.shl
10812      local.get 4
10813      local.get 3
10814      i32.const 2
10815      i32.shl
10816      i32.add
10817      i32.load
10818      i32.or
10819      local.set 3
10820      local.get 9
10821      local.get 11
10822      i32.add
10823      i32.const -1
10824      local.get 8
10825      i32.shl
10826      i32.const -1
10827      i32.xor
10828      i32.and
10829      local.set 7
10830      block  ;; label = @2
1307 ------------------------------------------------------------
10831        local.get 2
10832        local.get 6
10833        i32.add
10834        local.tee 2
10835        i32.const 16
10836        i32.lt_s
10837        br_if 0 (;@2;)
1308 ------------------------------------------------------------
10838        local.get 5
10839        local.get 3
10840        local.get 2
10841        i32.const -8
10842        i32.add
10843        i32.shr_u
10844        local.tee 6
10845        i32.store8
10846        local.get 6
10847        i32.const 255
10848        i32.and
10849        i32.const 255
10850        i32.ne
10851        if (result i32)  ;; label = @3
1309 ------------------------------------------------------------
10852          local.get 5
10853          i32.const 1
10854          i32.add
10855        else
1310 ------------------------------------------------------------
10856          local.get 5
10857          i32.const 0
10858          i32.store8
10859          local.get 5
10860          i32.const 2
10861          i32.add
10862        end
1311 ------------------------------------------------------------
10863        local.tee 5
10864        local.get 3
10865        local.get 2
10866        i32.const -16
10867        i32.add
10868        local.tee 2
10869        i32.shr_u
10870        local.tee 6
10871        i32.store8
10872        local.get 6
10873        i32.const 255
10874        i32.and
10875        i32.const 255
10876        i32.ne
10877        if  ;; label = @3
1312 ------------------------------------------------------------
10878          local.get 5
10879          i32.const 1
10880          i32.add
10881          local.set 5
10882          br 1 (;@2;)
1313 ------------------------------------------------------------
10883        end
1314 ------------------------------------------------------------
10884        local.get 5
10885        i32.const 0
10886        i32.store8
10887        local.get 5
10888        i32.const 2
10889        i32.add
10890        local.set 5
10891      end
1315 ------------------------------------------------------------
10892      local.get 3
10893      local.get 8
10894      i32.shl
10895      local.get 7
10896      i32.or
10897      local.set 3
10898      i32.const 0
10899      local.set 6
10900      local.get 2
10901      local.get 8
10902      i32.add
10903      local.tee 2
10904      i32.const 16
10905      i32.lt_s
10906      br_if 0 (;@1;)
1316 ------------------------------------------------------------
10907      local.get 5
10908      local.get 3
10909      local.get 2
10910      i32.const -8
10911      i32.add
10912      i32.shr_u
10913      local.tee 7
10914      i32.store8
10915      local.get 7
10916      i32.const 255
10917      i32.and
10918      i32.const 255
10919      i32.ne
10920      if (result i32)  ;; label = @2
1317 ------------------------------------------------------------
10921        local.get 5
10922        i32.const 1
10923        i32.add
10924      else
1318 ------------------------------------------------------------
10925        local.get 5
10926        i32.const 0
10927        i32.store8
10928        local.get 5
10929        i32.const 2
10930        i32.add
10931      end
1319 ------------------------------------------------------------
10932      local.tee 5
10933      local.get 3
10934      local.get 2
10935      i32.const -16
10936      i32.add
10937      local.tee 2
10938      i32.shr_u
10939      local.tee 7
10940      i32.store8
10941      local.get 7
10942      i32.const 255
10943      i32.and
10944      i32.const 255
10945      i32.ne
10946      if  ;; label = @2
1320 ------------------------------------------------------------
10947        local.get 5
10948        i32.const 1
10949        i32.add
10950        local.set 5
10951        br 1 (;@1;)
1321 ------------------------------------------------------------
10952      end
1322 ------------------------------------------------------------
10953      local.get 5
10954      i32.const 0
10955      i32.store8
10956      local.get 5
10957      i32.const 2
10958      i32.add
10959      local.set 5
10960    end
1323 ------------------------------------------------------------
10961    block  ;; label = @1
1324 ------------------------------------------------------------
10962      local.get 1
10963      i32.load16_s
10964      local.tee 9
10965      i32.eqz
10966      if  ;; label = @2
1325 ------------------------------------------------------------
10967        local.get 6
10968        i32.const 1
10969        i32.add
10970        local.set 6
10971        br 1 (;@1;)
1326 ------------------------------------------------------------
10972      end
1327 ------------------------------------------------------------
10973      local.get 9
10974      i32.const 31
10975      i32.shr_s
10976      local.tee 11
10977      local.get 9
10978      i32.xor
10979      local.get 11
10980      i32.sub
10981      i32.const 66832
10982      i32.add
10983      i32.load8_u
10984      local.set 8
10985      local.get 6
10986      i32.const 16
10987      i32.ge_s
10988      if  ;; label = @2
1328 ------------------------------------------------------------
10989        loop  ;; label = @3
1329 ------------------------------------------------------------
10990          local.get 6
10991          local.set 7
10992          local.get 3
10993          local.get 10
10994          i32.shl
10995          local.get 12
10996          i32.or
10997          local.set 3
10998          block  ;; label = @4
1330 ------------------------------------------------------------
10999            local.get 2
11000            local.get 10
11001            i32.add
11002            local.tee 2
11003            i32.const 16
11004            i32.lt_s
11005            br_if 0 (;@4;)
1331 ------------------------------------------------------------
11006            local.get 5
11007            local.get 3
11008            local.get 2
11009            i32.const -8
11010            i32.add
11011            i32.shr_u
11012            local.tee 6
11013            i32.store8
11014            local.get 6
11015            i32.const 255
11016            i32.and
11017            i32.const 255
11018            i32.ne
11019            if (result i32)  ;; label = @5
1332 ------------------------------------------------------------
11020              local.get 5
11021              i32.const 1
11022              i32.add
11023            else
1333 ------------------------------------------------------------
11024              local.get 5
11025              i32.const 0
11026              i32.store8
11027              local.get 5
11028              i32.const 2
11029              i32.add
11030            end
1334 ------------------------------------------------------------
11031            local.tee 5
11032            local.get 3
11033            local.get 2
11034            i32.const -16
11035            i32.add
11036            local.tee 2
11037            i32.shr_u
11038            local.tee 6
11039            i32.store8
11040            local.get 6
11041            i32.const 255
11042            i32.and
11043            i32.const 255
11044            i32.ne
11045            if  ;; label = @5
1335 ------------------------------------------------------------
11046              local.get 5
11047              i32.const 1
11048              i32.add
11049              local.set 5
11050              br 1 (;@4;)
1336 ------------------------------------------------------------
11051            end
1337 ------------------------------------------------------------
11052            local.get 5
11053            i32.const 0
11054            i32.store8
11055            local.get 5
11056            i32.const 2
11057            i32.add
11058            local.set 5
11059          end
1338 ------------------------------------------------------------
11060          local.get 7
11061          i32.const -16
11062          i32.add
11063          local.set 6
11064          local.get 7
11065          i32.const 31
11066          i32.gt_s
11067          br_if 0 (;@3;)
1339 ------------------------------------------------------------
11068        end
1340 ------------------------------------------------------------
11069      end
1341 ------------------------------------------------------------
11070      local.get 3
11071      local.get 4
11072      local.get 6
11073      i32.const 4
11074      i32.shl
11075      local.get 8
11076      i32.add
11077      local.tee 3
11078      i32.add
11079      i32.const 1024
11080      i32.add
11081      i32.load8_s
11082      local.tee 6
11083      i32.shl
11084      local.get 4
11085      local.get 3
11086      i32.const 2
11087      i32.shl
11088      i32.add
11089      i32.load
11090      i32.or
11091      local.set 3
11092      local.get 9
11093      local.get 11
11094      i32.add
11095      i32.const -1
11096      local.get 8
11097      i32.shl
11098      i32.const -1
11099      i32.xor
11100      i32.and
11101      local.set 7
11102      block  ;; label = @2
1342 ------------------------------------------------------------
11103        local.get 2
11104        local.get 6
11105        i32.add
11106        local.tee 2
11107        i32.const 16
11108        i32.lt_s
11109        br_if 0 (;@2;)
1343 ------------------------------------------------------------
11110        local.get 5
11111        local.get 3
11112        local.get 2
11113        i32.const -8
11114        i32.add
11115        i32.shr_u
11116        local.tee 6
11117        i32.store8
11118        local.get 6
11119        i32.const 255
11120        i32.and
11121        i32.const 255
11122        i32.ne
11123        if (result i32)  ;; label = @3
1344 ------------------------------------------------------------
11124          local.get 5
11125          i32.const 1
11126          i32.add
11127        else
1345 ------------------------------------------------------------
11128          local.get 5
11129          i32.const 0
11130          i32.store8
11131          local.get 5
11132          i32.const 2
11133          i32.add
11134        end
1346 ------------------------------------------------------------
11135        local.tee 5
11136        local.get 3
11137        local.get 2
11138        i32.const -16
11139        i32.add
11140        local.tee 2
11141        i32.shr_u
11142        local.tee 6
11143        i32.store8
11144        local.get 6
11145        i32.const 255
11146        i32.and
11147        i32.const 255
11148        i32.ne
11149        if  ;; label = @3
1347 ------------------------------------------------------------
11150          local.get 5
11151          i32.const 1
11152          i32.add
11153          local.set 5
11154          br 1 (;@2;)
1348 ------------------------------------------------------------
11155        end
1349 ------------------------------------------------------------
11156        local.get 5
11157        i32.const 0
11158        i32.store8
11159        local.get 5
11160        i32.const 2
11161        i32.add
11162        local.set 5
11163      end
1350 ------------------------------------------------------------
11164      local.get 3
11165      local.get 8
11166      i32.shl
11167      local.get 7
11168      i32.or
11169      local.set 3
11170      i32.const 0
11171      local.set 6
11172      local.get 2
11173      local.get 8
11174      i32.add
11175      local.tee 2
11176      i32.const 16
11177      i32.lt_s
11178      br_if 0 (;@1;)
1351 ------------------------------------------------------------
11179      local.get 5
11180      local.get 3
11181      local.get 2
11182      i32.const -8
11183      i32.add
11184      i32.shr_u
11185      local.tee 7
11186      i32.store8
11187      local.get 7
11188      i32.const 255
11189      i32.and
11190      i32.const 255
11191      i32.ne
11192      if (result i32)  ;; label = @2
1352 ------------------------------------------------------------
11193        local.get 5
11194        i32.const 1
11195        i32.add
11196      else
1353 ------------------------------------------------------------
11197        local.get 5
11198        i32.const 0
11199        i32.store8
11200        local.get 5
11201        i32.const 2
11202        i32.add
11203      end
1354 ------------------------------------------------------------
11204      local.tee 5
11205      local.get 3
11206      local.get 2
11207      i32.const -16
11208      i32.add
11209      local.tee 2
11210      i32.shr_u
11211      local.tee 7
11212      i32.store8
11213      local.get 7
11214      i32.const 255
11215      i32.and
11216      i32.const 255
11217      i32.ne
11218      if  ;; label = @2
1355 ------------------------------------------------------------
11219        local.get 5
11220        i32.const 1
11221        i32.add
11222        local.set 5
11223        br 1 (;@1;)
1356 ------------------------------------------------------------
11224      end
1357 ------------------------------------------------------------
11225      local.get 5
11226      i32.const 0
11227      i32.store8
11228      local.get 5
11229      i32.const 2
11230      i32.add
11231      local.set 5
11232    end
1358 ------------------------------------------------------------
11233    block  ;; label = @1
1359 ------------------------------------------------------------
11234      local.get 1
11235      i32.load16_s
11236      local.tee 9
11237      i32.eqz
11238      if  ;; label = @2
1360 ------------------------------------------------------------
11239        local.get 6
11240        i32.const 1
11241        i32.add
11242        local.set 6
11243        br 1 (;@1;)
1361 ------------------------------------------------------------
11244      end
1362 ------------------------------------------------------------
11245      local.get 9
11246      i32.const 31
11247      i32.shr_s
11248      local.tee 11
11249      local.get 9
11250      i32.xor
11251      local.get 11
11252      i32.sub
11253      i32.const 66832
11254      i32.add
11255      i32.load8_u
11256      local.set 8
11257      local.get 6
11258      i32.const 16
11259      i32.ge_s
11260      if  ;; label = @2
1363 ------------------------------------------------------------
11261        loop  ;; label = @3
1364 ------------------------------------------------------------
11262          local.get 6
11263          local.set 7
11264          local.get 3
11265          local.get 10
11266          i32.shl
11267          local.get 12
11268          i32.or
11269          local.set 3
11270          block  ;; label = @4
1365 ------------------------------------------------------------
11271            local.get 2
11272            local.get 10
11273            i32.add
11274            local.tee 2
11275            i32.const 16
11276            i32.lt_s
11277            br_if 0 (;@4;)
1366 ------------------------------------------------------------
11278            local.get 5
11279            local.get 3
11280            local.get 2
11281            i32.const -8
11282            i32.add
11283            i32.shr_u
11284            local.tee 6
11285            i32.store8
11286            local.get 6
11287            i32.const 255
11288            i32.and
11289            i32.const 255
11290            i32.ne
11291            if (result i32)  ;; label = @5
1367 ------------------------------------------------------------
11292              local.get 5
11293              i32.const 1
11294              i32.add
11295            else
1368 ------------------------------------------------------------
11296              local.get 5
11297              i32.const 0
11298              i32.store8
11299              local.get 5
11300              i32.const 2
11301              i32.add
11302            end
1369 ------------------------------------------------------------
11303            local.tee 5
11304            local.get 3
11305            local.get 2
11306            i32.const -16
11307            i32.add
11308            local.tee 2
11309            i32.shr_u
11310            local.tee 6
11311            i32.store8
11312            local.get 6
11313            i32.const 255
11314            i32.and
11315            i32.const 255
11316            i32.ne
11317            if  ;; label = @5
1370 ------------------------------------------------------------
11318              local.get 5
11319              i32.const 1
11320              i32.add
11321              local.set 5
11322              br 1 (;@4;)
1371 ------------------------------------------------------------
11323            end
1372 ------------------------------------------------------------
11324            local.get 5
11325            i32.const 0
11326            i32.store8
11327            local.get 5
11328            i32.const 2
11329            i32.add
11330            local.set 5
11331          end
1373 ------------------------------------------------------------
11332          local.get 7
11333          i32.const -16
11334          i32.add
11335          local.set 6
11336          local.get 7
11337          i32.const 31
11338          i32.gt_s
11339          br_if 0 (;@3;)
1374 ------------------------------------------------------------
11340        end
1375 ------------------------------------------------------------
11341      end
1376 ------------------------------------------------------------
11342      local.get 3
11343      local.get 4
11344      local.get 6
11345      i32.const 4
11346      i32.shl
11347      local.get 8
11348      i32.add
11349      local.tee 3
11350      i32.add
11351      i32.const 1024
11352      i32.add
11353      i32.load8_s
11354      local.tee 6
11355      i32.shl
11356      local.get 4
11357      local.get 3
11358      i32.const 2
11359      i32.shl
11360      i32.add
11361      i32.load
11362      i32.or
11363      local.set 3
11364      local.get 9
11365      local.get 11
11366      i32.add
11367      i32.const -1
11368      local.get 8
11369      i32.shl
11370      i32.const -1
11371      i32.xor
11372      i32.and
11373      local.set 7
11374      block  ;; label = @2
1377 ------------------------------------------------------------
11375        local.get 2
11376        local.get 6
11377        i32.add
11378        local.tee 2
11379        i32.const 16
11380        i32.lt_s
11381        br_if 0 (;@2;)
1378 ------------------------------------------------------------
11382        local.get 5
11383        local.get 3
11384        local.get 2
11385        i32.const -8
11386        i32.add
11387        i32.shr_u
11388        local.tee 6
11389        i32.store8
11390        local.get 6
11391        i32.const 255
11392        i32.and
11393        i32.const 255
11394        i32.ne
11395        if (result i32)  ;; label = @3
1379 ------------------------------------------------------------
11396          local.get 5
11397          i32.const 1
11398          i32.add
11399        else
1380 ------------------------------------------------------------
11400          local.get 5
11401          i32.const 0
11402          i32.store8
11403          local.get 5
11404          i32.const 2
11405          i32.add
11406        end
1381 ------------------------------------------------------------
11407        local.tee 5
11408        local.get 3
11409        local.get 2
11410        i32.const -16
11411        i32.add
11412        local.tee 2
11413        i32.shr_u
11414        local.tee 6
11415        i32.store8
11416        local.get 6
11417        i32.const 255
11418        i32.and
11419        i32.const 255
11420        i32.ne
11421        if  ;; label = @3
1382 ------------------------------------------------------------
11422          local.get 5
11423          i32.const 1
11424          i32.add
11425          local.set 5
11426          br 1 (;@2;)
1383 ------------------------------------------------------------
11427        end
1384 ------------------------------------------------------------
11428        local.get 5
11429        i32.const 0
11430        i32.store8
11431        local.get 5
11432        i32.const 2
11433        i32.add
11434        local.set 5
11435      end
1385 ------------------------------------------------------------
11436      local.get 3
11437      local.get 8
11438      i32.shl
11439      local.get 7
11440      i32.or
11441      local.set 3
11442      i32.const 0
11443      local.set 6
11444      local.get 2
11445      local.get 8
11446      i32.add
11447      local.tee 2
11448      i32.const 16
11449      i32.lt_s
11450      br_if 0 (;@1;)
1386 ------------------------------------------------------------
11451      local.get 5
11452      local.get 3
11453      local.get 2
11454      i32.const -8
11455      i32.add
11456      i32.shr_u
11457      local.tee 7
11458      i32.store8
11459      local.get 7
11460      i32.const 255
11461      i32.and
11462      i32.const 255
11463      i32.ne
11464      if (result i32)  ;; label = @2
1387 ------------------------------------------------------------
11465        local.get 5
11466        i32.const 1
11467        i32.add
11468      else
1388 ------------------------------------------------------------
11469        local.get 5
11470        i32.const 0
11471        i32.store8
11472        local.get 5
11473        i32.const 2
11474        i32.add
11475      end
1389 ------------------------------------------------------------
11476      local.tee 5
11477      local.get 3
11478      local.get 2
11479      i32.const -16
11480      i32.add
11481      local.tee 2
11482      i32.shr_u
11483      local.tee 7
11484      i32.store8
11485      local.get 7
11486      i32.const 255
11487      i32.and
11488      i32.const 255
11489      i32.ne
11490      if  ;; label = @2
1390 ------------------------------------------------------------
11491        local.get 5
11492        i32.const 1
11493        i32.add
11494        local.set 5
11495        br 1 (;@1;)
1391 ------------------------------------------------------------
11496      end
1392 ------------------------------------------------------------
11497      local.get 5
11498      i32.const 0
11499      i32.store8
11500      local.get 5
11501      i32.const 2
11502      i32.add
11503      local.set 5
11504    end
1393 ------------------------------------------------------------
11505    block  ;; label = @1
1394 ------------------------------------------------------------
11506      local.get 1
11507      i32.load16_s
11508      local.tee 9
11509      i32.eqz
11510      if  ;; label = @2
1395 ------------------------------------------------------------
11511        local.get 6
11512        i32.const 1
11513        i32.add
11514        local.set 6
11515        br 1 (;@1;)
1396 ------------------------------------------------------------
11516      end
1397 ------------------------------------------------------------
11517      local.get 9
11518      i32.const 31
11519      i32.shr_s
11520      local.tee 11
11521      local.get 9
11522      i32.xor
11523      local.get 11
11524      i32.sub
11525      i32.const 66832
11526      i32.add
11527      i32.load8_u
11528      local.set 8
11529      local.get 6
11530      i32.const 16
11531      i32.ge_s
11532      if  ;; label = @2
1398 ------------------------------------------------------------
11533        loop  ;; label = @3
1399 ------------------------------------------------------------
11534          local.get 6
11535          local.set 7
11536          local.get 3
11537          local.get 10
11538          i32.shl
11539          local.get 12
11540          i32.or
11541          local.set 3
11542          block  ;; label = @4
1400 ------------------------------------------------------------
11543            local.get 2
11544            local.get 10
11545            i32.add
11546            local.tee 2
11547            i32.const 16
11548            i32.lt_s
11549            br_if 0 (;@4;)
1401 ------------------------------------------------------------
11550            local.get 5
11551            local.get 3
11552            local.get 2
11553            i32.const -8
11554            i32.add
11555            i32.shr_u
11556            local.tee 6
11557            i32.store8
11558            local.get 6
11559            i32.const 255
11560            i32.and
11561            i32.const 255
11562            i32.ne
11563            if (result i32)  ;; label = @5
1402 ------------------------------------------------------------
11564              local.get 5
11565              i32.const 1
11566              i32.add
11567            else
1403 ------------------------------------------------------------
11568              local.get 5
11569              i32.const 0
11570              i32.store8
11571              local.get 5
11572              i32.const 2
11573              i32.add
11574            end
1404 ------------------------------------------------------------
11575            local.tee 5
11576            local.get 3
11577            local.get 2
11578            i32.const -16
11579            i32.add
11580            local.tee 2
11581            i32.shr_u
11582            local.tee 6
11583            i32.store8
11584            local.get 6
11585            i32.const 255
11586            i32.and
11587            i32.const 255
11588            i32.ne
11589            if  ;; label = @5
1405 ------------------------------------------------------------
11590              local.get 5
11591              i32.const 1
11592              i32.add
11593              local.set 5
11594              br 1 (;@4;)
1406 ------------------------------------------------------------
11595            end
1407 ------------------------------------------------------------
11596            local.get 5
11597            i32.const 0
11598            i32.store8
11599            local.get 5
11600            i32.const 2
11601            i32.add
11602            local.set 5
11603          end
1408 ------------------------------------------------------------
11604          local.get 7
11605          i32.const -16
11606          i32.add
11607          local.set 6
11608          local.get 7
11609          i32.const 31
11610          i32.gt_s
11611          br_if 0 (;@3;)
1409 ------------------------------------------------------------
11612        end
1410 ------------------------------------------------------------
11613      end
1411 ------------------------------------------------------------
11614      local.get 3
11615      local.get 4
11616      local.get 6
11617      i32.const 4
11618      i32.shl
11619      local.get 8
11620      i32.add
11621      local.tee 3
11622      i32.add
11623      i32.const 1024
11624      i32.add
11625      i32.load8_s
11626      local.tee 6
11627      i32.shl
11628      local.get 4
11629      local.get 3
11630      i32.const 2
11631      i32.shl
11632      i32.add
11633      i32.load
11634      i32.or
11635      local.set 3
11636      local.get 9
11637      local.get 11
11638      i32.add
11639      i32.const -1
11640      local.get 8
11641      i32.shl
11642      i32.const -1
11643      i32.xor
11644      i32.and
11645      local.set 7
11646      block  ;; label = @2
1412 ------------------------------------------------------------
11647        local.get 2
11648        local.get 6
11649        i32.add
11650        local.tee 2
11651        i32.const 16
11652        i32.lt_s
11653        br_if 0 (;@2;)
1413 ------------------------------------------------------------
11654        local.get 5
11655        local.get 3
11656        local.get 2
11657        i32.const -8
11658        i32.add
11659        i32.shr_u
11660        local.tee 6
11661        i32.store8
11662        local.get 6
11663        i32.const 255
11664        i32.and
11665        i32.const 255
11666        i32.ne
11667        if (result i32)  ;; label = @3
1414 ------------------------------------------------------------
11668          local.get 5
11669          i32.const 1
11670          i32.add
11671        else
1415 ------------------------------------------------------------
11672          local.get 5
11673          i32.const 0
11674          i32.store8
11675          local.get 5
11676          i32.const 2
11677          i32.add
11678        end
1416 ------------------------------------------------------------
11679        local.tee 5
11680        local.get 3
11681        local.get 2
11682        i32.const -16
11683        i32.add
11684        local.tee 2
11685        i32.shr_u
11686        local.tee 6
11687        i32.store8
11688        local.get 6
11689        i32.const 255
11690        i32.and
11691        i32.const 255
11692        i32.ne
11693        if  ;; label = @3
1417 ------------------------------------------------------------
11694          local.get 5
11695          i32.const 1
11696          i32.add
11697          local.set 5
11698          br 1 (;@2;)
1418 ------------------------------------------------------------
11699        end
1419 ------------------------------------------------------------
11700        local.get 5
11701        i32.const 0
11702        i32.store8
11703        local.get 5
11704        i32.const 2
11705        i32.add
11706        local.set 5
11707      end
1420 ------------------------------------------------------------
11708      local.get 3
11709      local.get 8
11710      i32.shl
11711      local.get 7
11712      i32.or
11713      local.set 3
11714      i32.const 0
11715      local.set 6
11716      local.get 2
11717      local.get 8
11718      i32.add
11719      local.tee 2
11720      i32.const 16
11721      i32.lt_s
11722      br_if 0 (;@1;)
1421 ------------------------------------------------------------
11723      local.get 5
11724      local.get 3
11725      local.get 2
11726      i32.const -8
11727      i32.add
11728      i32.shr_u
11729      local.tee 7
11730      i32.store8
11731      local.get 7
11732      i32.const 255
11733      i32.and
11734      i32.const 255
11735      i32.ne
11736      if (result i32)  ;; label = @2
1422 ------------------------------------------------------------
11737        local.get 5
11738        i32.const 1
11739        i32.add
11740      else
1423 ------------------------------------------------------------
11741        local.get 5
11742        i32.const 0
11743        i32.store8
11744        local.get 5
11745        i32.const 2
11746        i32.add
11747      end
1424 ------------------------------------------------------------
11748      local.tee 5
11749      local.get 3
11750      local.get 2
11751      i32.const -16
11752      i32.add
11753      local.tee 2
11754      i32.shr_u
11755      local.tee 7
11756      i32.store8
11757      local.get 7
11758      i32.const 255
11759      i32.and
11760      i32.const 255
11761      i32.ne
11762      if  ;; label = @2
1425 ------------------------------------------------------------
11763        local.get 5
11764        i32.const 1
11765        i32.add
11766        local.set 5
11767        br 1 (;@1;)
1426 ------------------------------------------------------------
11768      end
1427 ------------------------------------------------------------
11769      local.get 5
11770      i32.const 0
11771      i32.store8
11772      local.get 5
11773      i32.const 2
11774      i32.add
11775      local.set 5
11776    end
1428 ------------------------------------------------------------
11777    block  ;; label = @1
1429 ------------------------------------------------------------
11778      local.get 1
11779      i32.load16_s
11780      local.tee 9
11781      i32.eqz
11782      if  ;; label = @2
1430 ------------------------------------------------------------
11783        local.get 6
11784        i32.const 1
11785        i32.add
11786        local.set 6
11787        br 1 (;@1;)
1431 ------------------------------------------------------------
11788      end
1432 ------------------------------------------------------------
11789      local.get 9
11790      i32.const 31
11791      i32.shr_s
11792      local.tee 11
11793      local.get 9
11794      i32.xor
11795      local.get 11
11796      i32.sub
11797      i32.const 66832
11798      i32.add
11799      i32.load8_u
11800      local.set 8
11801      local.get 6
11802      i32.const 16
11803      i32.ge_s
11804      if  ;; label = @2
1433 ------------------------------------------------------------
11805        loop  ;; label = @3
1434 ------------------------------------------------------------
11806          local.get 6
11807          local.set 7
11808          local.get 3
11809          local.get 10
11810          i32.shl
11811          local.get 12
11812          i32.or
11813          local.set 3
11814          block  ;; label = @4
1435 ------------------------------------------------------------
11815            local.get 2
11816            local.get 10
11817            i32.add
11818            local.tee 2
11819            i32.const 16
11820            i32.lt_s
11821            br_if 0 (;@4;)
1436 ------------------------------------------------------------
11822            local.get 5
11823            local.get 3
11824            local.get 2
11825            i32.const -8
11826            i32.add
11827            i32.shr_u
11828            local.tee 6
11829            i32.store8
11830            local.get 6
11831            i32.const 255
11832            i32.and
11833            i32.const 255
11834            i32.ne
11835            if (result i32)  ;; label = @5
1437 ------------------------------------------------------------
11836              local.get 5
11837              i32.const 1
11838              i32.add
11839            else
1438 ------------------------------------------------------------
11840              local.get 5
11841              i32.const 0
11842              i32.store8
11843              local.get 5
11844              i32.const 2
11845              i32.add
11846            end
1439 ------------------------------------------------------------
11847            local.tee 5
11848            local.get 3
11849            local.get 2
11850            i32.const -16
11851            i32.add
11852            local.tee 2
11853            i32.shr_u
11854            local.tee 6
11855            i32.store8
11856            local.get 6
11857            i32.const 255
11858            i32.and
11859            i32.const 255
11860            i32.ne
11861            if  ;; label = @5
1440 ------------------------------------------------------------
11862              local.get 5
11863              i32.const 1
11864              i32.add
11865              local.set 5
11866              br 1 (;@4;)
1441 ------------------------------------------------------------
11867            end
1442 ------------------------------------------------------------
11868            local.get 5
11869            i32.const 0
11870            i32.store8
11871            local.get 5
11872            i32.const 2
11873            i32.add
11874            local.set 5
11875          end
1443 ------------------------------------------------------------
11876          local.get 7
11877          i32.const -16
11878          i32.add
11879          local.set 6
11880          local.get 7
11881          i32.const 31
11882          i32.gt_s
11883          br_if 0 (;@3;)
1444 ------------------------------------------------------------
11884        end
1445 ------------------------------------------------------------
11885      end
1446 ------------------------------------------------------------
11886      local.get 3
11887      local.get 4
11888      local.get 6
11889      i32.const 4
11890      i32.shl
11891      local.get 8
11892      i32.add
11893      local.tee 3
11894      i32.add
11895      i32.const 1024
11896      i32.add
11897      i32.load8_s
11898      local.tee 6
11899      i32.shl
11900      local.get 4
11901      local.get 3
11902      i32.const 2
11903      i32.shl
11904      i32.add
11905      i32.load
11906      i32.or
11907      local.set 3
11908      local.get 9
11909      local.get 11
11910      i32.add
11911      i32.const -1
11912      local.get 8
11913      i32.shl
11914      i32.const -1
11915      i32.xor
11916      i32.and
11917      local.set 7
11918      block  ;; label = @2
1447 ------------------------------------------------------------
11919        local.get 2
11920        local.get 6
11921        i32.add
11922        local.tee 2
11923        i32.const 16
11924        i32.lt_s
11925        br_if 0 (;@2;)
1448 ------------------------------------------------------------
11926        local.get 5
11927        local.get 3
11928        local.get 2
11929        i32.const -8
11930        i32.add
11931        i32.shr_u
11932        local.tee 6
11933        i32.store8
11934        local.get 6
11935        i32.const 255
11936        i32.and
11937        i32.const 255
11938        i32.ne
11939        if (result i32)  ;; label = @3
1449 ------------------------------------------------------------
11940          local.get 5
11941          i32.const 1
11942          i32.add
11943        else
1450 ------------------------------------------------------------
11944          local.get 5
11945          i32.const 0
11946          i32.store8
11947          local.get 5
11948          i32.const 2
11949          i32.add
11950        end
1451 ------------------------------------------------------------
11951        local.tee 5
11952        local.get 3
11953        local.get 2
11954        i32.const -16
11955        i32.add
11956        local.tee 2
11957        i32.shr_u
11958        local.tee 6
11959        i32.store8
11960        local.get 6
11961        i32.const 255
11962        i32.and
11963        i32.const 255
11964        i32.ne
11965        if  ;; label = @3
1452 ------------------------------------------------------------
11966          local.get 5
11967          i32.const 1
11968          i32.add
11969          local.set 5
11970          br 1 (;@2;)
1453 ------------------------------------------------------------
11971        end
1454 ------------------------------------------------------------
11972        local.get 5
11973        i32.const 0
11974        i32.store8
11975        local.get 5
11976        i32.const 2
11977        i32.add
11978        local.set 5
11979      end
1455 ------------------------------------------------------------
11980      local.get 3
11981      local.get 8
11982      i32.shl
11983      local.get 7
11984      i32.or
11985      local.set 3
11986      i32.const 0
11987      local.set 6
11988      local.get 2
11989      local.get 8
11990      i32.add
11991      local.tee 2
11992      i32.const 16
11993      i32.lt_s
11994      br_if 0 (;@1;)
1456 ------------------------------------------------------------
11995      local.get 5
11996      local.get 3
11997      local.get 2
11998      i32.const -8
11999      i32.add
12000      i32.shr_u
12001      local.tee 7
12002      i32.store8
12003      local.get 7
12004      i32.const 255
12005      i32.and
12006      i32.const 255
12007      i32.ne
12008      if (result i32)  ;; label = @2
1457 ------------------------------------------------------------
12009        local.get 5
12010        i32.const 1
12011        i32.add
12012      else
1458 ------------------------------------------------------------
12013        local.get 5
12014        i32.const 0
12015        i32.store8
12016        local.get 5
12017        i32.const 2
12018        i32.add
12019      end
1459 ------------------------------------------------------------
12020      local.tee 5
12021      local.get 3
12022      local.get 2
12023      i32.const -16
12024      i32.add
12025      local.tee 2
12026      i32.shr_u
12027      local.tee 7
12028      i32.store8
12029      local.get 7
12030      i32.const 255
12031      i32.and
12032      i32.const 255
12033      i32.ne
12034      if  ;; label = @2
1460 ------------------------------------------------------------
12035        local.get 5
12036        i32.const 1
12037        i32.add
12038        local.set 5
12039        br 1 (;@1;)
1461 ------------------------------------------------------------
12040      end
1462 ------------------------------------------------------------
12041      local.get 5
12042      i32.const 0
12043      i32.store8
12044      local.get 5
12045      i32.const 2
12046      i32.add
12047      local.set 5
12048    end
1463 ------------------------------------------------------------
12049    block  ;; label = @1
1464 ------------------------------------------------------------
12050      local.get 1
12051      i32.load16_s
12052      local.tee 9
12053      i32.eqz
12054      if  ;; label = @2
1465 ------------------------------------------------------------
12055        local.get 6
12056        i32.const 1
12057        i32.add
12058        local.set 6
12059        br 1 (;@1;)
1466 ------------------------------------------------------------
12060      end
1467 ------------------------------------------------------------
12061      local.get 9
12062      i32.const 31
12063      i32.shr_s
12064      local.tee 11
12065      local.get 9
12066      i32.xor
12067      local.get 11
12068      i32.sub
12069      i32.const 66832
12070      i32.add
12071      i32.load8_u
12072      local.set 8
12073      local.get 6
12074      i32.const 16
12075      i32.ge_s
12076      if  ;; label = @2
1468 ------------------------------------------------------------
12077        loop  ;; label = @3
1469 ------------------------------------------------------------
12078          local.get 6
12079          local.set 7
12080          local.get 3
12081          local.get 10
12082          i32.shl
12083          local.get 12
12084          i32.or
12085          local.set 3
12086          block  ;; label = @4
1470 ------------------------------------------------------------
12087            local.get 2
12088            local.get 10
12089            i32.add
12090            local.tee 2
12091            i32.const 16
12092            i32.lt_s
12093            br_if 0 (;@4;)
1471 ------------------------------------------------------------
12094            local.get 5
12095            local.get 3
12096            local.get 2
12097            i32.const -8
12098            i32.add
12099            i32.shr_u
12100            local.tee 6
12101            i32.store8
12102            local.get 6
12103            i32.const 255
12104            i32.and
12105            i32.const 255
12106            i32.ne
12107            if (result i32)  ;; label = @5
1472 ------------------------------------------------------------
12108              local.get 5
12109              i32.const 1
12110              i32.add
12111            else
1473 ------------------------------------------------------------
12112              local.get 5
12113              i32.const 0
12114              i32.store8
12115              local.get 5
12116              i32.const 2
12117              i32.add
12118            end
1474 ------------------------------------------------------------
12119            local.tee 5
12120            local.get 3
12121            local.get 2
12122            i32.const -16
12123            i32.add
12124            local.tee 2
12125            i32.shr_u
12126            local.tee 6
12127            i32.store8
12128            local.get 6
12129            i32.const 255
12130            i32.and
12131            i32.const 255
12132            i32.ne
12133            if  ;; label = @5
1475 ------------------------------------------------------------
12134              local.get 5
12135              i32.const 1
12136              i32.add
12137              local.set 5
12138              br 1 (;@4;)
1476 ------------------------------------------------------------
12139            end
1477 ------------------------------------------------------------
12140            local.get 5
12141            i32.const 0
12142            i32.store8
12143            local.get 5
12144            i32.const 2
12145            i32.add
12146            local.set 5
12147          end
1478 ------------------------------------------------------------
12148          local.get 7
12149          i32.const -16
12150          i32.add
12151          local.set 6
12152          local.get 7
12153          i32.const 31
12154          i32.gt_s
12155          br_if 0 (;@3;)
1479 ------------------------------------------------------------
12156        end
1480 ------------------------------------------------------------
12157      end
1481 ------------------------------------------------------------
12158      local.get 3
12159      local.get 4
12160      local.get 6
12161      i32.const 4
12162      i32.shl
12163      local.get 8
12164      i32.add
12165      local.tee 3
12166      i32.add
12167      i32.const 1024
12168      i32.add
12169      i32.load8_s
12170      local.tee 6
12171      i32.shl
12172      local.get 4
12173      local.get 3
12174      i32.const 2
12175      i32.shl
12176      i32.add
12177      i32.load
12178      i32.or
12179      local.set 3
12180      local.get 9
12181      local.get 11
12182      i32.add
12183      i32.const -1
12184      local.get 8
12185      i32.shl
12186      i32.const -1
12187      i32.xor
12188      i32.and
12189      local.set 7
12190      block  ;; label = @2
1482 ------------------------------------------------------------
12191        local.get 2
12192        local.get 6
12193        i32.add
12194        local.tee 2
12195        i32.const 16
12196        i32.lt_s
12197        br_if 0 (;@2;)
1483 ------------------------------------------------------------
12198        local.get 5
12199        local.get 3
12200        local.get 2
12201        i32.const -8
12202        i32.add
12203        i32.shr_u
12204        local.tee 6
12205        i32.store8
12206        local.get 6
12207        i32.const 255
12208        i32.and
12209        i32.const 255
12210        i32.ne
12211        if (result i32)  ;; label = @3
1484 ------------------------------------------------------------
12212          local.get 5
12213          i32.const 1
12214          i32.add
12215        else
1485 ------------------------------------------------------------
12216          local.get 5
12217          i32.const 0
12218          i32.store8
12219          local.get 5
12220          i32.const 2
12221          i32.add
12222        end
1486 ------------------------------------------------------------
12223        local.tee 5
12224        local.get 3
12225        local.get 2
12226        i32.const -16
12227        i32.add
12228        local.tee 2
12229        i32.shr_u
12230        local.tee 6
12231        i32.store8
12232        local.get 6
12233        i32.const 255
12234        i32.and
12235        i32.const 255
12236        i32.ne
12237        if  ;; label = @3
1487 ------------------------------------------------------------
12238          local.get 5
12239          i32.const 1
12240          i32.add
12241          local.set 5
12242          br 1 (;@2;)
1488 ------------------------------------------------------------
12243        end
1489 ------------------------------------------------------------
12244        local.get 5
12245        i32.const 0
12246        i32.store8
12247        local.get 5
12248        i32.const 2
12249        i32.add
12250        local.set 5
12251      end
1490 ------------------------------------------------------------
12252      local.get 3
12253      local.get 8
12254      i32.shl
12255      local.get 7
12256      i32.or
12257      local.set 3
12258      i32.const 0
12259      local.set 6
12260      local.get 2
12261      local.get 8
12262      i32.add
12263      local.tee 2
12264      i32.const 16
12265      i32.lt_s
12266      br_if 0 (;@1;)
1491 ------------------------------------------------------------
12267      local.get 5
12268      local.get 3
12269      local.get 2
12270      i32.const -8
12271      i32.add
12272      i32.shr_u
12273      local.tee 7
12274      i32.store8
12275      local.get 7
12276      i32.const 255
12277      i32.and
12278      i32.const 255
12279      i32.ne
12280      if (result i32)  ;; label = @2
1492 ------------------------------------------------------------
12281        local.get 5
12282        i32.const 1
12283        i32.add
12284      else
1493 ------------------------------------------------------------
12285        local.get 5
12286        i32.const 0
12287        i32.store8
12288        local.get 5
12289        i32.const 2
12290        i32.add
12291      end
1494 ------------------------------------------------------------
12292      local.tee 5
12293      local.get 3
12294      local.get 2
12295      i32.const -16
12296      i32.add
12297      local.tee 2
12298      i32.shr_u
12299      local.tee 7
12300      i32.store8
12301      local.get 7
12302      i32.const 255
12303      i32.and
12304      i32.const 255
12305      i32.ne
12306      if  ;; label = @2
1495 ------------------------------------------------------------
12307        local.get 5
12308        i32.const 1
12309        i32.add
12310        local.set 5
12311        br 1 (;@1;)
1496 ------------------------------------------------------------
12312      end
1497 ------------------------------------------------------------
12313      local.get 5
12314      i32.const 0
12315      i32.store8
12316      local.get 5
12317      i32.const 2
12318      i32.add
12319      local.set 5
12320    end
1498 ------------------------------------------------------------
12321    block  ;; label = @1
1499 ------------------------------------------------------------
12322      local.get 1
12323      i32.load16_s
12324      local.tee 9
12325      i32.eqz
12326      if  ;; label = @2
1500 ------------------------------------------------------------
12327        local.get 6
12328        i32.const 1
12329        i32.add
12330        local.set 6
12331        br 1 (;@1;)
1501 ------------------------------------------------------------
12332      end
1502 ------------------------------------------------------------
12333      local.get 9
12334      i32.const 31
12335      i32.shr_s
12336      local.tee 11
12337      local.get 9
12338      i32.xor
12339      local.get 11
12340      i32.sub
12341      i32.const 66832
12342      i32.add
12343      i32.load8_u
12344      local.set 8
12345      local.get 6
12346      i32.const 16
12347      i32.ge_s
12348      if  ;; label = @2
1503 ------------------------------------------------------------
12349        loop  ;; label = @3
1504 ------------------------------------------------------------
12350          local.get 6
12351          local.set 7
12352          local.get 3
12353          local.get 10
12354          i32.shl
12355          local.get 12
12356          i32.or
12357          local.set 3
12358          block  ;; label = @4
1505 ------------------------------------------------------------
12359            local.get 2
12360            local.get 10
12361            i32.add
12362            local.tee 2
12363            i32.const 16
12364            i32.lt_s
12365            br_if 0 (;@4;)
1506 ------------------------------------------------------------
12366            local.get 5
12367            local.get 3
12368            local.get 2
12369            i32.const -8
12370            i32.add
12371            i32.shr_u
12372            local.tee 6
12373            i32.store8
12374            local.get 6
12375            i32.const 255
12376            i32.and
12377            i32.const 255
12378            i32.ne
12379            if (result i32)  ;; label = @5
1507 ------------------------------------------------------------
12380              local.get 5
12381              i32.const 1
12382              i32.add
12383            else
1508 ------------------------------------------------------------
12384              local.get 5
12385              i32.const 0
12386              i32.store8
12387              local.get 5
12388              i32.const 2
12389              i32.add
12390            end
1509 ------------------------------------------------------------
12391            local.tee 5
12392            local.get 3
12393            local.get 2
12394            i32.const -16
12395            i32.add
12396            local.tee 2
12397            i32.shr_u
12398            local.tee 6
12399            i32.store8
12400            local.get 6
12401            i32.const 255
12402            i32.and
12403            i32.const 255
12404            i32.ne
12405            if  ;; label = @5
1510 ------------------------------------------------------------
12406              local.get 5
12407              i32.const 1
12408              i32.add
12409              local.set 5
12410              br 1 (;@4;)
1511 ------------------------------------------------------------
12411            end
1512 ------------------------------------------------------------
12412            local.get 5
12413            i32.const 0
12414            i32.store8
12415            local.get 5
12416            i32.const 2
12417            i32.add
12418            local.set 5
12419          end
1513 ------------------------------------------------------------
12420          local.get 7
12421          i32.const -16
12422          i32.add
12423          local.set 6
12424          local.get 7
12425          i32.const 31
12426          i32.gt_s
12427          br_if 0 (;@3;)
1514 ------------------------------------------------------------
12428        end
1515 ------------------------------------------------------------
12429      end
1516 ------------------------------------------------------------
12430      local.get 3
12431      local.get 4
12432      local.get 6
12433      i32.const 4
12434      i32.shl
12435      local.get 8
12436      i32.add
12437      local.tee 3
12438      i32.add
12439      i32.const 1024
12440      i32.add
12441      i32.load8_s
12442      local.tee 6
12443      i32.shl
12444      local.get 4
12445      local.get 3
12446      i32.const 2
12447      i32.shl
12448      i32.add
12449      i32.load
12450      i32.or
12451      local.set 3
12452      local.get 9
12453      local.get 11
12454      i32.add
12455      i32.const -1
12456      local.get 8
12457      i32.shl
12458      i32.const -1
12459      i32.xor
12460      i32.and
12461      local.set 7
12462      block  ;; label = @2
1517 ------------------------------------------------------------
12463        local.get 2
12464        local.get 6
12465        i32.add
12466        local.tee 2
12467        i32.const 16
12468        i32.lt_s
12469        br_if 0 (;@2;)
1518 ------------------------------------------------------------
12470        local.get 5
12471        local.get 3
12472        local.get 2
12473        i32.const -8
12474        i32.add
12475        i32.shr_u
12476        local.tee 6
12477        i32.store8
12478        local.get 6
12479        i32.const 255
12480        i32.and
12481        i32.const 255
12482        i32.ne
12483        if (result i32)  ;; label = @3
1519 ------------------------------------------------------------
12484          local.get 5
12485          i32.const 1
12486          i32.add
12487        else
1520 ------------------------------------------------------------
12488          local.get 5
12489          i32.const 0
12490          i32.store8
12491          local.get 5
12492          i32.const 2
12493          i32.add
12494        end
1521 ------------------------------------------------------------
12495        local.tee 5
12496        local.get 3
12497        local.get 2
12498        i32.const -16
12499        i32.add
12500        local.tee 2
12501        i32.shr_u
12502        local.tee 6
12503        i32.store8
12504        local.get 6
12505        i32.const 255
12506        i32.and
12507        i32.const 255
12508        i32.ne
12509        if  ;; label = @3
1522 ------------------------------------------------------------
12510          local.get 5
12511          i32.const 1
12512          i32.add
12513          local.set 5
12514          br 1 (;@2;)
1523 ------------------------------------------------------------
12515        end
1524 ------------------------------------------------------------
12516        local.get 5
12517        i32.const 0
12518        i32.store8
12519        local.get 5
12520        i32.const 2
12521        i32.add
12522        local.set 5
12523      end
1525 ------------------------------------------------------------
12524      local.get 3
12525      local.get 8
12526      i32.shl
12527      local.get 7
12528      i32.or
12529      local.set 3
12530      i32.const 0
12531      local.set 6
12532      local.get 2
12533      local.get 8
12534      i32.add
12535      local.tee 2
12536      i32.const 16
12537      i32.lt_s
12538      br_if 0 (;@1;)
1526 ------------------------------------------------------------
12539      local.get 5
12540      local.get 3
12541      local.get 2
12542      i32.const -8
12543      i32.add
12544      i32.shr_u
12545      local.tee 7
12546      i32.store8
12547      local.get 7
12548      i32.const 255
12549      i32.and
12550      i32.const 255
12551      i32.ne
12552      if (result i32)  ;; label = @2
1527 ------------------------------------------------------------
12553        local.get 5
12554        i32.const 1
12555        i32.add
12556      else
1528 ------------------------------------------------------------
12557        local.get 5
12558        i32.const 0
12559        i32.store8
12560        local.get 5
12561        i32.const 2
12562        i32.add
12563      end
1529 ------------------------------------------------------------
12564      local.tee 5
12565      local.get 3
12566      local.get 2
12567      i32.const -16
12568      i32.add
12569      local.tee 2
12570      i32.shr_u
12571      local.tee 7
12572      i32.store8
12573      local.get 7
12574      i32.const 255
12575      i32.and
12576      i32.const 255
12577      i32.ne
12578      if  ;; label = @2
1530 ------------------------------------------------------------
12579        local.get 5
12580        i32.const 1
12581        i32.add
12582        local.set 5
12583        br 1 (;@1;)
1531 ------------------------------------------------------------
12584      end
1532 ------------------------------------------------------------
12585      local.get 5
12586      i32.const 0
12587      i32.store8
12588      local.get 5
12589      i32.const 2
12590      i32.add
12591      local.set 5
12592    end
1533 ------------------------------------------------------------
12593    block  ;; label = @1
1534 ------------------------------------------------------------
12594      local.get 1
12595      i32.load16_s
12596      local.tee 7
12597      i32.eqz
12598      if  ;; label = @2
1535 ------------------------------------------------------------
12599        local.get 6
12600        i32.const 1
12601        i32.add
12602        local.set 6
12603        br 1 (;@1;)
1536 ------------------------------------------------------------
12604      end
1537 ------------------------------------------------------------
12605      local.get 7
12606      i32.const 31
12607      i32.shr_s
12608      local.tee 9
12609      local.get 7
12610      i32.xor
12611      local.get 9
12612      i32.sub
12613      i32.const 66832
12614      i32.add
12615      i32.load8_u
12616      local.set 8
12617      local.get 7
12618      local.get 9
12619      i32.add
12620      local.set 9
12621      local.get 6
12622      i32.const 16
12623      i32.ge_s
12624      if  ;; label = @2
1538 ------------------------------------------------------------
12625        loop  ;; label = @3
1539 ------------------------------------------------------------
12626          local.get 6
12627          local.set 7
12628          local.get 3
12629          local.get 10
12630          i32.shl
12631          local.get 12
12632          i32.or
12633          local.set 3
12634          block  ;; label = @4
1540 ------------------------------------------------------------
12635            local.get 2
12636            local.get 10
12637            i32.add
12638            local.tee 2
12639            i32.const 16
12640            i32.lt_s
12641            br_if 0 (;@4;)
1541 ------------------------------------------------------------
12642            local.get 5
12643            local.get 3
12644            local.get 2
12645            i32.const -8
12646            i32.add
12647            i32.shr_u
12648            local.tee 6
12649            i32.store8
12650            local.get 6
12651            i32.const 255
12652            i32.and
12653            i32.const 255
12654            i32.ne
12655            if (result i32)  ;; label = @5
1542 ------------------------------------------------------------
12656              local.get 5
12657              i32.const 1
12658              i32.add
12659            else
1543 ------------------------------------------------------------
12660              local.get 5
12661              i32.const 0
12662              i32.store8
12663              local.get 5
12664              i32.const 2
12665              i32.add
12666            end
1544 ------------------------------------------------------------
12667            local.tee 5
12668            local.get 3
12669            local.get 2
12670            i32.const -16
12671            i32.add
12672            local.tee 2
12673            i32.shr_u
12674            local.tee 6
12675            i32.store8
12676            local.get 6
12677            i32.const 255
12678            i32.and
12679            i32.const 255
12680            i32.ne
12681            if  ;; label = @5
1545 ------------------------------------------------------------
12682              local.get 5
12683              i32.const 1
12684              i32.add
12685              local.set 5
12686              br 1 (;@4;)
1546 ------------------------------------------------------------
12687            end
1547 ------------------------------------------------------------
12688            local.get 5
12689            i32.const 0
12690            i32.store8
12691            local.get 5
12692            i32.const 2
12693            i32.add
12694            local.set 5
12695          end
1548 ------------------------------------------------------------
12696          local.get 7
12697          i32.const -16
12698          i32.add
12699          local.set 6
12700          local.get 7
12701          i32.const 31
12702          i32.gt_s
12703          br_if 0 (;@3;)
1549 ------------------------------------------------------------
12704        end
1550 ------------------------------------------------------------
12705      end
1551 ------------------------------------------------------------
12706      local.get 3
12707      local.get 4
12708      local.get 6
12709      i32.const 4
12710      i32.shl
12711      local.get 8
12712      i32.add
12713      local.tee 3
12714      i32.add
12715      i32.const 1024
12716      i32.add
12717      i32.load8_s
12718      local.tee 6
12719      i32.shl
12720      local.get 4
12721      local.get 3
12722      i32.const 2
12723      i32.shl
12724      i32.add
12725      i32.load
12726      i32.or
12727      local.set 3
12728      local.get 9
12729      i32.const -1
12730      local.get 8
12731      i32.shl
12732      i32.const -1
12733      i32.xor
12734      i32.and
12735      local.set 7
12736      block  ;; label = @2
1552 ------------------------------------------------------------
12737        local.get 2
12738        local.get 6
12739        i32.add
12740        local.tee 2
12741        i32.const 16
12742        i32.lt_s
12743        br_if 0 (;@2;)
1553 ------------------------------------------------------------
12744        local.get 5
12745        local.get 3
12746        local.get 2
12747        i32.const -8
12748        i32.add
12749        i32.shr_u
12750        local.tee 6
12751        i32.store8
12752        local.get 6
12753        i32.const 255
12754        i32.and
12755        i32.const 255
12756        i32.ne
12757        if (result i32)  ;; label = @3
1554 ------------------------------------------------------------
12758          local.get 5
12759          i32.const 1
12760          i32.add
12761        else
1555 ------------------------------------------------------------
12762          local.get 5
12763          i32.const 0
12764          i32.store8
12765          local.get 5
12766          i32.const 2
12767          i32.add
12768        end
1556 ------------------------------------------------------------
12769        local.tee 5
12770        local.get 3
12771        local.get 2
12772        i32.const -16
12773        i32.add
12774        local.tee 2
12775        i32.shr_u
12776        local.tee 6
12777        i32.store8
12778        local.get 6
12779        i32.const 255
12780        i32.and
12781        i32.const 255
12782        i32.ne
12783        if  ;; label = @3
1557 ------------------------------------------------------------
12784          local.get 5
12785          i32.const 1
12786          i32.add
12787          local.set 5
12788          br 1 (;@2;)
1558 ------------------------------------------------------------
12789        end
1559 ------------------------------------------------------------
12790        local.get 5
12791        i32.const 0
12792        i32.store8
12793        local.get 5
12794        i32.const 2
12795        i32.add
12796        local.set 5
12797      end
1560 ------------------------------------------------------------
12798      local.get 3
12799      local.get 8
12800      i32.shl
12801      local.get 7
12802      i32.or
12803      local.set 3
12804      i32.const 0
12805      local.set 6
12806      local.get 2
12807      local.get 8
12808      i32.add
12809      local.tee 2
12810      i32.const 16
12811      i32.lt_s
12812      br_if 0 (;@1;)
1561 ------------------------------------------------------------
12813      local.get 5
12814      local.get 3
12815      local.get 2
12816      i32.const -8
12817      i32.add
12818      i32.shr_u
12819      local.tee 7
12820      i32.store8
12821      local.get 7
12822      i32.const 255
12823      i32.and
12824      i32.const 255
12825      i32.ne
12826      if (result i32)  ;; label = @2
1562 ------------------------------------------------------------
12827        local.get 5
12828        i32.const 1
12829        i32.add
12830      else
1563 ------------------------------------------------------------
12831        local.get 5
12832        i32.const 0
12833        i32.store8
12834        local.get 5
12835        i32.const 2
12836        i32.add
12837      end
1564 ------------------------------------------------------------
12838      local.tee 5
12839      local.get 3
12840      local.get 2
12841      i32.const -16
12842      i32.add
12843      local.tee 2
12844      i32.shr_u
12845      local.tee 7
12846      i32.store8
12847      local.get 7
12848      i32.const 255
12849      i32.and
12850      i32.const 255
12851      i32.ne
12852      if  ;; label = @2
1565 ------------------------------------------------------------
12853        local.get 5
12854        i32.const 1
12855        i32.add
12856        local.set 5
12857        br 1 (;@1;)
1566 ------------------------------------------------------------
12858      end
1567 ------------------------------------------------------------
12859      local.get 5
12860      i32.const 0
12861      i32.store8
12862      local.get 5
12863      i32.const 2
12864      i32.add
12865      local.set 5
12866    end
1568 ------------------------------------------------------------
12867    block  ;; label = @1
1569 ------------------------------------------------------------
12868      local.get 1
12869      i32.load16_s
12870      local.tee 9
12871      i32.eqz
12872      if  ;; label = @2
1570 ------------------------------------------------------------
12873        local.get 6
12874        i32.const 1
12875        i32.add
12876        local.set 6
12877        br 1 (;@1;)
1571 ------------------------------------------------------------
12878      end
1572 ------------------------------------------------------------
12879      local.get 9
12880      i32.const 31
12881      i32.shr_s
12882      local.tee 11
12883      local.get 9
12884      i32.xor
12885      local.get 11
12886      i32.sub
12887      i32.const 66832
12888      i32.add
12889      i32.load8_u
12890      local.set 8
12891      local.get 6
12892      i32.const 16
12893      i32.ge_s
12894      if  ;; label = @2
1573 ------------------------------------------------------------
12895        loop  ;; label = @3
1574 ------------------------------------------------------------
12896          local.get 6
12897          local.set 7
12898          local.get 3
12899          local.get 10
12900          i32.shl
12901          local.get 12
12902          i32.or
12903          local.set 3
12904          block  ;; label = @4
1575 ------------------------------------------------------------
12905            local.get 2
12906            local.get 10
12907            i32.add
12908            local.tee 2
12909            i32.const 16
12910            i32.lt_s
12911            br_if 0 (;@4;)
1576 ------------------------------------------------------------
12912            local.get 5
12913            local.get 3
12914            local.get 2
12915            i32.const -8
12916            i32.add
12917            i32.shr_u
12918            local.tee 6
12919            i32.store8
12920            local.get 6
12921            i32.const 255
12922            i32.and
12923            i32.const 255
12924            i32.ne
12925            if (result i32)  ;; label = @5
1577 ------------------------------------------------------------
12926              local.get 5
12927              i32.const 1
12928              i32.add
12929            else
1578 ------------------------------------------------------------
12930              local.get 5
12931              i32.const 0
12932              i32.store8
12933              local.get 5
12934              i32.const 2
12935              i32.add
12936            end
1579 ------------------------------------------------------------
12937            local.tee 5
12938            local.get 3
12939            local.get 2
12940            i32.const -16
12941            i32.add
12942            local.tee 2
12943            i32.shr_u
12944            local.tee 6
12945            i32.store8
12946            local.get 6
12947            i32.const 255
12948            i32.and
12949            i32.const 255
12950            i32.ne
12951            if  ;; label = @5
1580 ------------------------------------------------------------
12952              local.get 5
12953              i32.const 1
12954              i32.add
12955              local.set 5
12956              br 1 (;@4;)
1581 ------------------------------------------------------------
12957            end
1582 ------------------------------------------------------------
12958            local.get 5
12959            i32.const 0
12960            i32.store8
12961            local.get 5
12962            i32.const 2
12963            i32.add
12964            local.set 5
12965          end
1583 ------------------------------------------------------------
12966          local.get 7
12967          i32.const -16
12968          i32.add
12969          local.set 6
12970          local.get 7
12971          i32.const 31
12972          i32.gt_s
12973          br_if 0 (;@3;)
1584 ------------------------------------------------------------
12974        end
1585 ------------------------------------------------------------
12975      end
1586 ------------------------------------------------------------
12976      local.get 3
12977      local.get 4
12978      local.get 6
12979      i32.const 4
12980      i32.shl
12981      local.get 8
12982      i32.add
12983      local.tee 3
12984      i32.add
12985      i32.const 1024
12986      i32.add
12987      i32.load8_s
12988      local.tee 6
12989      i32.shl
12990      local.get 4
12991      local.get 3
12992      i32.const 2
12993      i32.shl
12994      i32.add
12995      i32.load
12996      i32.or
12997      local.set 3
12998      local.get 9
12999      local.get 11
13000      i32.add
13001      i32.const -1
13002      local.get 8
13003      i32.shl
13004      i32.const -1
13005      i32.xor
13006      i32.and
13007      local.set 7
13008      block  ;; label = @2
1587 ------------------------------------------------------------
13009        local.get 2
13010        local.get 6
13011        i32.add
13012        local.tee 2
13013        i32.const 16
13014        i32.lt_s
13015        br_if 0 (;@2;)
1588 ------------------------------------------------------------
13016        local.get 5
13017        local.get 3
13018        local.get 2
13019        i32.const -8
13020        i32.add
13021        i32.shr_u
13022        local.tee 6
13023        i32.store8
13024        local.get 6
13025        i32.const 255
13026        i32.and
13027        i32.const 255
13028        i32.ne
13029        if (result i32)  ;; label = @3
1589 ------------------------------------------------------------
13030          local.get 5
13031          i32.const 1
13032          i32.add
13033        else
1590 ------------------------------------------------------------
13034          local.get 5
13035          i32.const 0
13036          i32.store8
13037          local.get 5
13038          i32.const 2
13039          i32.add
13040        end
1591 ------------------------------------------------------------
13041        local.tee 5
13042        local.get 3
13043        local.get 2
13044        i32.const -16
13045        i32.add
13046        local.tee 2
13047        i32.shr_u
13048        local.tee 6
13049        i32.store8
13050        local.get 6
13051        i32.const 255
13052        i32.and
13053        i32.const 255
13054        i32.ne
13055        if  ;; label = @3
1592 ------------------------------------------------------------
13056          local.get 5
13057          i32.const 1
13058          i32.add
13059          local.set 5
13060          br 1 (;@2;)
1593 ------------------------------------------------------------
13061        end
1594 ------------------------------------------------------------
13062        local.get 5
13063        i32.const 0
13064        i32.store8
13065        local.get 5
13066        i32.const 2
13067        i32.add
13068        local.set 5
13069      end
1595 ------------------------------------------------------------
13070      local.get 3
13071      local.get 8
13072      i32.shl
13073      local.get 7
13074      i32.or
13075      local.set 3
13076      i32.const 0
13077      local.set 6
13078      local.get 2
13079      local.get 8
13080      i32.add
13081      local.tee 2
13082      i32.const 16
13083      i32.lt_s
13084      br_if 0 (;@1;)
1596 ------------------------------------------------------------
13085      local.get 5
13086      local.get 3
13087      local.get 2
13088      i32.const -8
13089      i32.add
13090      i32.shr_u
13091      local.tee 7
13092      i32.store8
13093      local.get 7
13094      i32.const 255
13095      i32.and
13096      i32.const 255
13097      i32.ne
13098      if (result i32)  ;; label = @2
1597 ------------------------------------------------------------
13099        local.get 5
13100        i32.const 1
13101        i32.add
13102      else
1598 ------------------------------------------------------------
13103        local.get 5
13104        i32.const 0
13105        i32.store8
13106        local.get 5
13107        i32.const 2
13108        i32.add
13109      end
1599 ------------------------------------------------------------
13110      local.tee 5
13111      local.get 3
13112      local.get 2
13113      i32.const -16
13114      i32.add
13115      local.tee 2
13116      i32.shr_u
13117      local.tee 7
13118      i32.store8
13119      local.get 7
13120      i32.const 255
13121      i32.and
13122      i32.const 255
13123      i32.ne
13124      if  ;; label = @2
1600 ------------------------------------------------------------
13125        local.get 5
13126        i32.const 1
13127        i32.add
13128        local.set 5
13129        br 1 (;@1;)
1601 ------------------------------------------------------------
13130      end
1602 ------------------------------------------------------------
13131      local.get 5
13132      i32.const 0
13133      i32.store8
13134      local.get 5
13135      i32.const 2
13136      i32.add
13137      local.set 5
13138    end
1603 ------------------------------------------------------------
13139    block  ;; label = @1
1604 ------------------------------------------------------------
13140      local.get 1
13141      i32.load16_s
13142      local.tee 9
13143      i32.eqz
13144      if  ;; label = @2
1605 ------------------------------------------------------------
13145        local.get 6
13146        i32.const 1
13147        i32.add
13148        local.set 6
13149        br 1 (;@1;)
1606 ------------------------------------------------------------
13150      end
1607 ------------------------------------------------------------
13151      local.get 9
13152      i32.const 31
13153      i32.shr_s
13154      local.tee 11
13155      local.get 9
13156      i32.xor
13157      local.get 11
13158      i32.sub
13159      i32.const 66832
13160      i32.add
13161      i32.load8_u
13162      local.set 8
13163      local.get 6
13164      i32.const 16
13165      i32.ge_s
13166      if  ;; label = @2
1608 ------------------------------------------------------------
13167        loop  ;; label = @3
1609 ------------------------------------------------------------
13168          local.get 6
13169          local.set 7
13170          local.get 3
13171          local.get 10
13172          i32.shl
13173          local.get 12
13174          i32.or
13175          local.set 3
13176          block  ;; label = @4
1610 ------------------------------------------------------------
13177            local.get 2
13178            local.get 10
13179            i32.add
13180            local.tee 2
13181            i32.const 16
13182            i32.lt_s
13183            br_if 0 (;@4;)
1611 ------------------------------------------------------------
13184            local.get 5
13185            local.get 3
13186            local.get 2
13187            i32.const -8
13188            i32.add
13189            i32.shr_u
13190            local.tee 6
13191            i32.store8
13192            local.get 6
13193            i32.const 255
13194            i32.and
13195            i32.const 255
13196            i32.ne
13197            if (result i32)  ;; label = @5
1612 ------------------------------------------------------------
13198              local.get 5
13199              i32.const 1
13200              i32.add
13201            else
1613 ------------------------------------------------------------
13202              local.get 5
13203              i32.const 0
13204              i32.store8
13205              local.get 5
13206              i32.const 2
13207              i32.add
13208            end
1614 ------------------------------------------------------------
13209            local.tee 5
13210            local.get 3
13211            local.get 2
13212            i32.const -16
13213            i32.add
13214            local.tee 2
13215            i32.shr_u
13216            local.tee 6
13217            i32.store8
13218            local.get 6
13219            i32.const 255
13220            i32.and
13221            i32.const 255
13222            i32.ne
13223            if  ;; label = @5
1615 ------------------------------------------------------------
13224              local.get 5
13225              i32.const 1
13226              i32.add
13227              local.set 5
13228              br 1 (;@4;)
1616 ------------------------------------------------------------
13229            end
1617 ------------------------------------------------------------
13230            local.get 5
13231            i32.const 0
13232            i32.store8
13233            local.get 5
13234            i32.const 2
13235            i32.add
13236            local.set 5
13237          end
1618 ------------------------------------------------------------
13238          local.get 7
13239          i32.const -16
13240          i32.add
13241          local.set 6
13242          local.get 7
13243          i32.const 31
13244          i32.gt_s
13245          br_if 0 (;@3;)
1619 ------------------------------------------------------------
13246        end
1620 ------------------------------------------------------------
13247      end
1621 ------------------------------------------------------------
13248      local.get 3
13249      local.get 4
13250      local.get 6
13251      i32.const 4
13252      i32.shl
13253      local.get 8
13254      i32.add
13255      local.tee 3
13256      i32.add
13257      i32.const 1024
13258      i32.add
13259      i32.load8_s
13260      local.tee 6
13261      i32.shl
13262      local.get 4
13263      local.get 3
13264      i32.const 2
13265      i32.shl
13266      i32.add
13267      i32.load
13268      i32.or
13269      local.set 3
13270      local.get 9
13271      local.get 11
13272      i32.add
13273      i32.const -1
13274      local.get 8
13275      i32.shl
13276      i32.const -1
13277      i32.xor
13278      i32.and
13279      local.set 7
13280      block  ;; label = @2
1622 ------------------------------------------------------------
13281        local.get 2
13282        local.get 6
13283        i32.add
13284        local.tee 2
13285        i32.const 16
13286        i32.lt_s
13287        br_if 0 (;@2;)
1623 ------------------------------------------------------------
13288        local.get 5
13289        local.get 3
13290        local.get 2
13291        i32.const -8
13292        i32.add
13293        i32.shr_u
13294        local.tee 6
13295        i32.store8
13296        local.get 6
13297        i32.const 255
13298        i32.and
13299        i32.const 255
13300        i32.ne
13301        if (result i32)  ;; label = @3
1624 ------------------------------------------------------------
13302          local.get 5
13303          i32.const 1
13304          i32.add
13305        else
1625 ------------------------------------------------------------
13306          local.get 5
13307          i32.const 0
13308          i32.store8
13309          local.get 5
13310          i32.const 2
13311          i32.add
13312        end
1626 ------------------------------------------------------------
13313        local.tee 5
13314        local.get 3
13315        local.get 2
13316        i32.const -16
13317        i32.add
13318        local.tee 2
13319        i32.shr_u
13320        local.tee 6
13321        i32.store8
13322        local.get 6
13323        i32.const 255
13324        i32.and
13325        i32.const 255
13326        i32.ne
13327        if  ;; label = @3
1627 ------------------------------------------------------------
13328          local.get 5
13329          i32.const 1
13330          i32.add
13331          local.set 5
13332          br 1 (;@2;)
1628 ------------------------------------------------------------
13333        end
1629 ------------------------------------------------------------
13334        local.get 5
13335        i32.const 0
13336        i32.store8
13337        local.get 5
13338        i32.const 2
13339        i32.add
13340        local.set 5
13341      end
1630 ------------------------------------------------------------
13342      local.get 3
13343      local.get 8
13344      i32.shl
13345      local.get 7
13346      i32.or
13347      local.set 3
13348      i32.const 0
13349      local.set 6
13350      local.get 2
13351      local.get 8
13352      i32.add
13353      local.tee 2
13354      i32.const 16
13355      i32.lt_s
13356      br_if 0 (;@1;)
1631 ------------------------------------------------------------
13357      local.get 5
13358      local.get 3
13359      local.get 2
13360      i32.const -8
13361      i32.add
13362      i32.shr_u
13363      local.tee 7
13364      i32.store8
13365      local.get 7
13366      i32.const 255
13367      i32.and
13368      i32.const 255
13369      i32.ne
13370      if (result i32)  ;; label = @2
1632 ------------------------------------------------------------
13371        local.get 5
13372        i32.const 1
13373        i32.add
13374      else
1633 ------------------------------------------------------------
13375        local.get 5
13376        i32.const 0
13377        i32.store8
13378        local.get 5
13379        i32.const 2
13380        i32.add
13381      end
1634 ------------------------------------------------------------
13382      local.tee 5
13383      local.get 3
13384      local.get 2
13385      i32.const -16
13386      i32.add
13387      local.tee 2
13388      i32.shr_u
13389      local.tee 7
13390      i32.store8
13391      local.get 7
13392      i32.const 255
13393      i32.and
13394      i32.const 255
13395      i32.ne
13396      if  ;; label = @2
1635 ------------------------------------------------------------
13397        local.get 5
13398        i32.const 1
13399        i32.add
13400        local.set 5
13401        br 1 (;@1;)
1636 ------------------------------------------------------------
13402      end
1637 ------------------------------------------------------------
13403      local.get 5
13404      i32.const 0
13405      i32.store8
13406      local.get 5
13407      i32.const 2
13408      i32.add
13409      local.set 5
13410    end
1638 ------------------------------------------------------------
13411    block  ;; label = @1
1639 ------------------------------------------------------------
13412      local.get 1
13413      i32.load16_s
13414      local.tee 9
13415      i32.eqz
13416      if  ;; label = @2
1640 ------------------------------------------------------------
13417        local.get 6
13418        i32.const 1
13419        i32.add
13420        local.set 6
13421        br 1 (;@1;)
1641 ------------------------------------------------------------
13422      end
1642 ------------------------------------------------------------
13423      local.get 9
13424      i32.const 31
13425      i32.shr_s
13426      local.tee 11
13427      local.get 9
13428      i32.xor
13429      local.get 11
13430      i32.sub
13431      i32.const 66832
13432      i32.add
13433      i32.load8_u
13434      local.set 8
13435      local.get 6
13436      i32.const 16
13437      i32.ge_s
13438      if  ;; label = @2
1643 ------------------------------------------------------------
13439        loop  ;; label = @3
1644 ------------------------------------------------------------
13440          local.get 6
13441          local.set 7
13442          local.get 3
13443          local.get 10
13444          i32.shl
13445          local.get 12
13446          i32.or
13447          local.set 3
13448          block  ;; label = @4
1645 ------------------------------------------------------------
13449            local.get 2
13450            local.get 10
13451            i32.add
13452            local.tee 2
13453            i32.const 16
13454            i32.lt_s
13455            br_if 0 (;@4;)
1646 ------------------------------------------------------------
13456            local.get 5
13457            local.get 3
13458            local.get 2
13459            i32.const -8
13460            i32.add
13461            i32.shr_u
13462            local.tee 6
13463            i32.store8
13464            local.get 6
13465            i32.const 255
13466            i32.and
13467            i32.const 255
13468            i32.ne
13469            if (result i32)  ;; label = @5
1647 ------------------------------------------------------------
13470              local.get 5
13471              i32.const 1
13472              i32.add
13473            else
1648 ------------------------------------------------------------
13474              local.get 5
13475              i32.const 0
13476              i32.store8
13477              local.get 5
13478              i32.const 2
13479              i32.add
13480            end
1649 ------------------------------------------------------------
13481            local.tee 5
13482            local.get 3
13483            local.get 2
13484            i32.const -16
13485            i32.add
13486            local.tee 2
13487            i32.shr_u
13488            local.tee 6
13489            i32.store8
13490            local.get 6
13491            i32.const 255
13492            i32.and
13493            i32.const 255
13494            i32.ne
13495            if  ;; label = @5
1650 ------------------------------------------------------------
13496              local.get 5
13497              i32.const 1
13498              i32.add
13499              local.set 5
13500              br 1 (;@4;)
1651 ------------------------------------------------------------
13501            end
1652 ------------------------------------------------------------
13502            local.get 5
13503            i32.const 0
13504            i32.store8
13505            local.get 5
13506            i32.const 2
13507            i32.add
13508            local.set 5
13509          end
1653 ------------------------------------------------------------
13510          local.get 7
13511          i32.const -16
13512          i32.add
13513          local.set 6
13514          local.get 7
13515          i32.const 31
13516          i32.gt_s
13517          br_if 0 (;@3;)
1654 ------------------------------------------------------------
13518        end
1655 ------------------------------------------------------------
13519      end
1656 ------------------------------------------------------------
13520      local.get 3
13521      local.get 4
13522      local.get 6
13523      i32.const 4
13524      i32.shl
13525      local.get 8
13526      i32.add
13527      local.tee 3
13528      i32.add
13529      i32.const 1024
13530      i32.add
13531      i32.load8_s
13532      local.tee 6
13533      i32.shl
13534      local.get 4
13535      local.get 3
13536      i32.const 2
13537      i32.shl
13538      i32.add
13539      i32.load
13540      i32.or
13541      local.set 3
13542      local.get 9
13543      local.get 11
13544      i32.add
13545      i32.const -1
13546      local.get 8
13547      i32.shl
13548      i32.const -1
13549      i32.xor
13550      i32.and
13551      local.set 7
13552      block  ;; label = @2
1657 ------------------------------------------------------------
13553        local.get 2
13554        local.get 6
13555        i32.add
13556        local.tee 2
13557        i32.const 16
13558        i32.lt_s
13559        br_if 0 (;@2;)
1658 ------------------------------------------------------------
13560        local.get 5
13561        local.get 3
13562        local.get 2
13563        i32.const -8
13564        i32.add
13565        i32.shr_u
13566        local.tee 6
13567        i32.store8
13568        local.get 6
13569        i32.const 255
13570        i32.and
13571        i32.const 255
13572        i32.ne
13573        if (result i32)  ;; label = @3
1659 ------------------------------------------------------------
13574          local.get 5
13575          i32.const 1
13576          i32.add
13577        else
1660 ------------------------------------------------------------
13578          local.get 5
13579          i32.const 0
13580          i32.store8
13581          local.get 5
13582          i32.const 2
13583          i32.add
13584        end
1661 ------------------------------------------------------------
13585        local.tee 5
13586        local.get 3
13587        local.get 2
13588        i32.const -16
13589        i32.add
13590        local.tee 2
13591        i32.shr_u
13592        local.tee 6
13593        i32.store8
13594        local.get 6
13595        i32.const 255
13596        i32.and
13597        i32.const 255
13598        i32.ne
13599        if  ;; label = @3
1662 ------------------------------------------------------------
13600          local.get 5
13601          i32.const 1
13602          i32.add
13603          local.set 5
13604          br 1 (;@2;)
1663 ------------------------------------------------------------
13605        end
1664 ------------------------------------------------------------
13606        local.get 5
13607        i32.const 0
13608        i32.store8
13609        local.get 5
13610        i32.const 2
13611        i32.add
13612        local.set 5
13613      end
1665 ------------------------------------------------------------
13614      local.get 3
13615      local.get 8
13616      i32.shl
13617      local.get 7
13618      i32.or
13619      local.set 3
13620      i32.const 0
13621      local.set 6
13622      local.get 2
13623      local.get 8
13624      i32.add
13625      local.tee 2
13626      i32.const 16
13627      i32.lt_s
13628      br_if 0 (;@1;)
1666 ------------------------------------------------------------
13629      local.get 5
13630      local.get 3
13631      local.get 2
13632      i32.const -8
13633      i32.add
13634      i32.shr_u
13635      local.tee 7
13636      i32.store8
13637      local.get 7
13638      i32.const 255
13639      i32.and
13640      i32.const 255
13641      i32.ne
13642      if (result i32)  ;; label = @2
1667 ------------------------------------------------------------
13643        local.get 5
13644        i32.const 1
13645        i32.add
13646      else
1668 ------------------------------------------------------------
13647        local.get 5
13648        i32.const 0
13649        i32.store8
13650        local.get 5
13651        i32.const 2
13652        i32.add
13653      end
1669 ------------------------------------------------------------
13654      local.tee 5
13655      local.get 3
13656      local.get 2
13657      i32.const -16
13658      i32.add
13659      local.tee 2
13660      i32.shr_u
13661      local.tee 7
13662      i32.store8
13663      local.get 7
13664      i32.const 255
13665      i32.and
13666      i32.const 255
13667      i32.ne
13668      if  ;; label = @2
1670 ------------------------------------------------------------
13669        local.get 5
13670        i32.const 1
13671        i32.add
13672        local.set 5
13673        br 1 (;@1;)
1671 ------------------------------------------------------------
13674      end
1672 ------------------------------------------------------------
13675      local.get 5
13676      i32.const 0
13677      i32.store8
13678      local.get 5
13679      i32.const 2
13680      i32.add
13681      local.set 5
13682    end
1673 ------------------------------------------------------------
13683    block  ;; label = @1
1674 ------------------------------------------------------------
13684      local.get 1
13685      i32.load16_s
13686      local.tee 9
13687      i32.eqz
13688      if  ;; label = @2
1675 ------------------------------------------------------------
13689        local.get 6
13690        i32.const 1
13691        i32.add
13692        local.set 6
13693        br 1 (;@1;)
1676 ------------------------------------------------------------
13694      end
1677 ------------------------------------------------------------
13695      local.get 9
13696      i32.const 31
13697      i32.shr_s
13698      local.tee 11
13699      local.get 9
13700      i32.xor
13701      local.get 11
13702      i32.sub
13703      i32.const 66832
13704      i32.add
13705      i32.load8_u
13706      local.set 8
13707      local.get 6
13708      i32.const 16
13709      i32.ge_s
13710      if  ;; label = @2
1678 ------------------------------------------------------------
13711        loop  ;; label = @3
1679 ------------------------------------------------------------
13712          local.get 6
13713          local.set 7
13714          local.get 3
13715          local.get 10
13716          i32.shl
13717          local.get 12
13718          i32.or
13719          local.set 3
13720          block  ;; label = @4
1680 ------------------------------------------------------------
13721            local.get 2
13722            local.get 10
13723            i32.add
13724            local.tee 2
13725            i32.const 16
13726            i32.lt_s
13727            br_if 0 (;@4;)
1681 ------------------------------------------------------------
13728            local.get 5
13729            local.get 3
13730            local.get 2
13731            i32.const -8
13732            i32.add
13733            i32.shr_u
13734            local.tee 6
13735            i32.store8
13736            local.get 6
13737            i32.const 255
13738            i32.and
13739            i32.const 255
13740            i32.ne
13741            if (result i32)  ;; label = @5
1682 ------------------------------------------------------------
13742              local.get 5
13743              i32.const 1
13744              i32.add
13745            else
1683 ------------------------------------------------------------
13746              local.get 5
13747              i32.const 0
13748              i32.store8
13749              local.get 5
13750              i32.const 2
13751              i32.add
13752            end
1684 ------------------------------------------------------------
13753            local.tee 5
13754            local.get 3
13755            local.get 2
13756            i32.const -16
13757            i32.add
13758            local.tee 2
13759            i32.shr_u
13760            local.tee 6
13761            i32.store8
13762            local.get 6
13763            i32.const 255
13764            i32.and
13765            i32.const 255
13766            i32.ne
13767            if  ;; label = @5
1685 ------------------------------------------------------------
13768              local.get 5
13769              i32.const 1
13770              i32.add
13771              local.set 5
13772              br 1 (;@4;)
1686 ------------------------------------------------------------
13773            end
1687 ------------------------------------------------------------
13774            local.get 5
13775            i32.const 0
13776            i32.store8
13777            local.get 5
13778            i32.const 2
13779            i32.add
13780            local.set 5
13781          end
1688 ------------------------------------------------------------
13782          local.get 7
13783          i32.const -16
13784          i32.add
13785          local.set 6
13786          local.get 7
13787          i32.const 31
13788          i32.gt_s
13789          br_if 0 (;@3;)
1689 ------------------------------------------------------------
13790        end
1690 ------------------------------------------------------------
13791      end
1691 ------------------------------------------------------------
13792      local.get 3
13793      local.get 4
13794      local.get 6
13795      i32.const 4
13796      i32.shl
13797      local.get 8
13798      i32.add
13799      local.tee 3
13800      i32.add
13801      i32.const 1024
13802      i32.add
13803      i32.load8_s
13804      local.tee 6
13805      i32.shl
13806      local.get 4
13807      local.get 3
13808      i32.const 2
13809      i32.shl
13810      i32.add
13811      i32.load
13812      i32.or
13813      local.set 3
13814      local.get 9
13815      local.get 11
13816      i32.add
13817      i32.const -1
13818      local.get 8
13819      i32.shl
13820      i32.const -1
13821      i32.xor
13822      i32.and
13823      local.set 7
13824      block  ;; label = @2
1692 ------------------------------------------------------------
13825        local.get 2
13826        local.get 6
13827        i32.add
13828        local.tee 2
13829        i32.const 16
13830        i32.lt_s
13831        br_if 0 (;@2;)
1693 ------------------------------------------------------------
13832        local.get 5
13833        local.get 3
13834        local.get 2
13835        i32.const -8
13836        i32.add
13837        i32.shr_u
13838        local.tee 6
13839        i32.store8
13840        local.get 6
13841        i32.const 255
13842        i32.and
13843        i32.const 255
13844        i32.ne
13845        if (result i32)  ;; label = @3
1694 ------------------------------------------------------------
13846          local.get 5
13847          i32.const 1
13848          i32.add
13849        else
1695 ------------------------------------------------------------
13850          local.get 5
13851          i32.const 0
13852          i32.store8
13853          local.get 5
13854          i32.const 2
13855          i32.add
13856        end
1696 ------------------------------------------------------------
13857        local.tee 5
13858        local.get 3
13859        local.get 2
13860        i32.const -16
13861        i32.add
13862        local.tee 2
13863        i32.shr_u
13864        local.tee 6
13865        i32.store8
13866        local.get 6
13867        i32.const 255
13868        i32.and
13869        i32.const 255
13870        i32.ne
13871        if  ;; label = @3
1697 ------------------------------------------------------------
13872          local.get 5
13873          i32.const 1
13874          i32.add
13875          local.set 5
13876          br 1 (;@2;)
1698 ------------------------------------------------------------
13877        end
1699 ------------------------------------------------------------
13878        local.get 5
13879        i32.const 0
13880        i32.store8
13881        local.get 5
13882        i32.const 2
13883        i32.add
13884        local.set 5
13885      end
1700 ------------------------------------------------------------
13886      local.get 3
13887      local.get 8
13888      i32.shl
13889      local.get 7
13890      i32.or
13891      local.set 3
13892      i32.const 0
13893      local.set 6
13894      local.get 2
13895      local.get 8
13896      i32.add
13897      local.tee 2
13898      i32.const 16
13899      i32.lt_s
13900      br_if 0 (;@1;)
1701 ------------------------------------------------------------
13901      local.get 5
13902      local.get 3
13903      local.get 2
13904      i32.const -8
13905      i32.add
13906      i32.shr_u
13907      local.tee 7
13908      i32.store8
13909      local.get 7
13910      i32.const 255
13911      i32.and
13912      i32.const 255
13913      i32.ne
13914      if (result i32)  ;; label = @2
1702 ------------------------------------------------------------
13915        local.get 5
13916        i32.const 1
13917        i32.add
13918      else
1703 ------------------------------------------------------------
13919        local.get 5
13920        i32.const 0
13921        i32.store8
13922        local.get 5
13923        i32.const 2
13924        i32.add
13925      end
1704 ------------------------------------------------------------
13926      local.tee 5
13927      local.get 3
13928      local.get 2
13929      i32.const -16
13930      i32.add
13931      local.tee 2
13932      i32.shr_u
13933      local.tee 7
13934      i32.store8
13935      local.get 7
13936      i32.const 255
13937      i32.and
13938      i32.const 255
13939      i32.ne
13940      if  ;; label = @2
1705 ------------------------------------------------------------
13941        local.get 5
13942        i32.const 1
13943        i32.add
13944        local.set 5
13945        br 1 (;@1;)
1706 ------------------------------------------------------------
13946      end
1707 ------------------------------------------------------------
13947      local.get 5
13948      i32.const 0
13949      i32.store8
13950      local.get 5
13951      i32.const 2
13952      i32.add
13953      local.set 5
13954    end
1708 ------------------------------------------------------------
13955    block  ;; label = @1
1709 ------------------------------------------------------------
13956      local.get 1
13957      i32.load16_s
13958      local.tee 9
13959      i32.eqz
13960      if  ;; label = @2
1710 ------------------------------------------------------------
13961        local.get 6
13962        i32.const 1
13963        i32.add
13964        local.set 6
13965        br 1 (;@1;)
1711 ------------------------------------------------------------
13966      end
1712 ------------------------------------------------------------
13967      local.get 9
13968      i32.const 31
13969      i32.shr_s
13970      local.tee 11
13971      local.get 9
13972      i32.xor
13973      local.get 11
13974      i32.sub
13975      i32.const 66832
13976      i32.add
13977      i32.load8_u
13978      local.set 8
13979      local.get 6
13980      i32.const 16
13981      i32.ge_s
13982      if  ;; label = @2
1713 ------------------------------------------------------------
13983        loop  ;; label = @3
1714 ------------------------------------------------------------
13984          local.get 6
13985          local.set 7
13986          local.get 3
13987          local.get 10
13988          i32.shl
13989          local.get 12
13990          i32.or
13991          local.set 3
13992          block  ;; label = @4
1715 ------------------------------------------------------------
13993            local.get 2
13994            local.get 10
13995            i32.add
13996            local.tee 2
13997            i32.const 16
13998            i32.lt_s
13999            br_if 0 (;@4;)
1716 ------------------------------------------------------------
14000            local.get 5
14001            local.get 3
14002            local.get 2
14003            i32.const -8
14004            i32.add
14005            i32.shr_u
14006            local.tee 6
14007            i32.store8
14008            local.get 6
14009            i32.const 255
14010            i32.and
14011            i32.const 255
14012            i32.ne
14013            if (result i32)  ;; label = @5
1717 ------------------------------------------------------------
14014              local.get 5
14015              i32.const 1
14016              i32.add
14017            else
1718 ------------------------------------------------------------
14018              local.get 5
14019              i32.const 0
14020              i32.store8
14021              local.get 5
14022              i32.const 2
14023              i32.add
14024            end
1719 ------------------------------------------------------------
14025            local.tee 5
14026            local.get 3
14027            local.get 2
14028            i32.const -16
14029            i32.add
14030            local.tee 2
14031            i32.shr_u
14032            local.tee 6
14033            i32.store8
14034            local.get 6
14035            i32.const 255
14036            i32.and
14037            i32.const 255
14038            i32.ne
14039            if  ;; label = @5
1720 ------------------------------------------------------------
14040              local.get 5
14041              i32.const 1
14042              i32.add
14043              local.set 5
14044              br 1 (;@4;)
1721 ------------------------------------------------------------
14045            end
1722 ------------------------------------------------------------
14046            local.get 5
14047            i32.const 0
14048            i32.store8
14049            local.get 5
14050            i32.const 2
14051            i32.add
14052            local.set 5
14053          end
1723 ------------------------------------------------------------
14054          local.get 7
14055          i32.const -16
14056          i32.add
14057          local.set 6
14058          local.get 7
14059          i32.const 31
14060          i32.gt_s
14061          br_if 0 (;@3;)
1724 ------------------------------------------------------------
14062        end
1725 ------------------------------------------------------------
14063      end
1726 ------------------------------------------------------------
14064      local.get 3
14065      local.get 4
14066      local.get 6
14067      i32.const 4
14068      i32.shl
14069      local.get 8
14070      i32.add
14071      local.tee 3
14072      i32.add
14073      i32.const 1024
14074      i32.add
14075      i32.load8_s
14076      local.tee 6
14077      i32.shl
14078      local.get 4
14079      local.get 3
14080      i32.const 2
14081      i32.shl
14082      i32.add
14083      i32.load
14084      i32.or
14085      local.set 3
14086      local.get 9
14087      local.get 11
14088      i32.add
14089      i32.const -1
14090      local.get 8
14091      i32.shl
14092      i32.const -1
14093      i32.xor
14094      i32.and
14095      local.set 7
14096      block  ;; label = @2
1727 ------------------------------------------------------------
14097        local.get 2
14098        local.get 6
14099        i32.add
14100        local.tee 2
14101        i32.const 16
14102        i32.lt_s
14103        br_if 0 (;@2;)
1728 ------------------------------------------------------------
14104        local.get 5
14105        local.get 3
14106        local.get 2
14107        i32.const -8
14108        i32.add
14109        i32.shr_u
14110        local.tee 6
14111        i32.store8
14112        local.get 6
14113        i32.const 255
14114        i32.and
14115        i32.const 255
14116        i32.ne
14117        if (result i32)  ;; label = @3
1729 ------------------------------------------------------------
14118          local.get 5
14119          i32.const 1
14120          i32.add
14121        else
1730 ------------------------------------------------------------
14122          local.get 5
14123          i32.const 0
14124          i32.store8
14125          local.get 5
14126          i32.const 2
14127          i32.add
14128        end
1731 ------------------------------------------------------------
14129        local.tee 5
14130        local.get 3
14131        local.get 2
14132        i32.const -16
14133        i32.add
14134        local.tee 2
14135        i32.shr_u
14136        local.tee 6
14137        i32.store8
14138        local.get 6
14139        i32.const 255
14140        i32.and
14141        i32.const 255
14142        i32.ne
14143        if  ;; label = @3
1732 ------------------------------------------------------------
14144          local.get 5
14145          i32.const 1
14146          i32.add
14147          local.set 5
14148          br 1 (;@2;)
1733 ------------------------------------------------------------
14149        end
1734 ------------------------------------------------------------
14150        local.get 5
14151        i32.const 0
14152        i32.store8
14153        local.get 5
14154        i32.const 2
14155        i32.add
14156        local.set 5
14157      end
1735 ------------------------------------------------------------
14158      local.get 3
14159      local.get 8
14160      i32.shl
14161      local.get 7
14162      i32.or
14163      local.set 3
14164      i32.const 0
14165      local.set 6
14166      local.get 2
14167      local.get 8
14168      i32.add
14169      local.tee 2
14170      i32.const 16
14171      i32.lt_s
14172      br_if 0 (;@1;)
1736 ------------------------------------------------------------
14173      local.get 5
14174      local.get 3
14175      local.get 2
14176      i32.const -8
14177      i32.add
14178      i32.shr_u
14179      local.tee 7
14180      i32.store8
14181      local.get 7
14182      i32.const 255
14183      i32.and
14184      i32.const 255
14185      i32.ne
14186      if (result i32)  ;; label = @2
1737 ------------------------------------------------------------
14187        local.get 5
14188        i32.const 1
14189        i32.add
14190      else
1738 ------------------------------------------------------------
14191        local.get 5
14192        i32.const 0
14193        i32.store8
14194        local.get 5
14195        i32.const 2
14196        i32.add
14197      end
1739 ------------------------------------------------------------
14198      local.tee 5
14199      local.get 3
14200      local.get 2
14201      i32.const -16
14202      i32.add
14203      local.tee 2
14204      i32.shr_u
14205      local.tee 7
14206      i32.store8
14207      local.get 7
14208      i32.const 255
14209      i32.and
14210      i32.const 255
14211      i32.ne
14212      if  ;; label = @2
1740 ------------------------------------------------------------
14213        local.get 5
14214        i32.const 1
14215        i32.add
14216        local.set 5
14217        br 1 (;@1;)
1741 ------------------------------------------------------------
14218      end
1742 ------------------------------------------------------------
14219      local.get 5
14220      i32.const 0
14221      i32.store8
14222      local.get 5
14223      i32.const 2
14224      i32.add
14225      local.set 5
14226    end
1743 ------------------------------------------------------------
14227    block  ;; label = @1
1744 ------------------------------------------------------------
14228      local.get 1
14229      i32.load16_s
14230      local.tee 9
14231      i32.eqz
14232      if  ;; label = @2
1745 ------------------------------------------------------------
14233        local.get 6
14234        i32.const 1
14235        i32.add
14236        local.set 6
14237        br 1 (;@1;)
1746 ------------------------------------------------------------
14238      end
1747 ------------------------------------------------------------
14239      local.get 9
14240      i32.const 31
14241      i32.shr_s
14242      local.tee 11
14243      local.get 9
14244      i32.xor
14245      local.get 11
14246      i32.sub
14247      i32.const 66832
14248      i32.add
14249      i32.load8_u
14250      local.set 8
14251      local.get 6
14252      i32.const 16
14253      i32.ge_s
14254      if  ;; label = @2
1748 ------------------------------------------------------------
14255        loop  ;; label = @3
1749 ------------------------------------------------------------
14256          local.get 6
14257          local.set 7
14258          local.get 3
14259          local.get 10
14260          i32.shl
14261          local.get 12
14262          i32.or
14263          local.set 3
14264          block  ;; label = @4
1750 ------------------------------------------------------------
14265            local.get 2
14266            local.get 10
14267            i32.add
14268            local.tee 2
14269            i32.const 16
14270            i32.lt_s
14271            br_if 0 (;@4;)
1751 ------------------------------------------------------------
14272            local.get 5
14273            local.get 3
14274            local.get 2
14275            i32.const -8
14276            i32.add
14277            i32.shr_u
14278            local.tee 6
14279            i32.store8
14280            local.get 6
14281            i32.const 255
14282            i32.and
14283            i32.const 255
14284            i32.ne
14285            if (result i32)  ;; label = @5
1752 ------------------------------------------------------------
14286              local.get 5
14287              i32.const 1
14288              i32.add
14289            else
1753 ------------------------------------------------------------
14290              local.get 5
14291              i32.const 0
14292              i32.store8
14293              local.get 5
14294              i32.const 2
14295              i32.add
14296            end
1754 ------------------------------------------------------------
14297            local.tee 5
14298            local.get 3
14299            local.get 2
14300            i32.const -16
14301            i32.add
14302            local.tee 2
14303            i32.shr_u
14304            local.tee 6
14305            i32.store8
14306            local.get 6
14307            i32.const 255
14308            i32.and
14309            i32.const 255
14310            i32.ne
14311            if  ;; label = @5
1755 ------------------------------------------------------------
14312              local.get 5
14313              i32.const 1
14314              i32.add
14315              local.set 5
14316              br 1 (;@4;)
1756 ------------------------------------------------------------
14317            end
1757 ------------------------------------------------------------
14318            local.get 5
14319            i32.const 0
14320            i32.store8
14321            local.get 5
14322            i32.const 2
14323            i32.add
14324            local.set 5
14325          end
1758 ------------------------------------------------------------
14326          local.get 7
14327          i32.const -16
14328          i32.add
14329          local.set 6
14330          local.get 7
14331          i32.const 31
14332          i32.gt_s
14333          br_if 0 (;@3;)
1759 ------------------------------------------------------------
14334        end
1760 ------------------------------------------------------------
14335      end
1761 ------------------------------------------------------------
14336      local.get 3
14337      local.get 4
14338      local.get 6
14339      i32.const 4
14340      i32.shl
14341      local.get 8
14342      i32.add
14343      local.tee 3
14344      i32.add
14345      i32.const 1024
14346      i32.add
14347      i32.load8_s
14348      local.tee 6
14349      i32.shl
14350      local.get 4
14351      local.get 3
14352      i32.const 2
14353      i32.shl
14354      i32.add
14355      i32.load
14356      i32.or
14357      local.set 3
14358      local.get 9
14359      local.get 11
14360      i32.add
14361      i32.const -1
14362      local.get 8
14363      i32.shl
14364      i32.const -1
14365      i32.xor
14366      i32.and
14367      local.set 7
14368      block  ;; label = @2
1762 ------------------------------------------------------------
14369        local.get 2
14370        local.get 6
14371        i32.add
14372        local.tee 2
14373        i32.const 16
14374        i32.lt_s
14375        br_if 0 (;@2;)
1763 ------------------------------------------------------------
14376        local.get 5
14377        local.get 3
14378        local.get 2
14379        i32.const -8
14380        i32.add
14381        i32.shr_u
14382        local.tee 6
14383        i32.store8
14384        local.get 6
14385        i32.const 255
14386        i32.and
14387        i32.const 255
14388        i32.ne
14389        if (result i32)  ;; label = @3
1764 ------------------------------------------------------------
14390          local.get 5
14391          i32.const 1
14392          i32.add
14393        else
1765 ------------------------------------------------------------
14394          local.get 5
14395          i32.const 0
14396          i32.store8
14397          local.get 5
14398          i32.const 2
14399          i32.add
14400        end
1766 ------------------------------------------------------------
14401        local.tee 5
14402        local.get 3
14403        local.get 2
14404        i32.const -16
14405        i32.add
14406        local.tee 2
14407        i32.shr_u
14408        local.tee 6
14409        i32.store8
14410        local.get 6
14411        i32.const 255
14412        i32.and
14413        i32.const 255
14414        i32.ne
14415        if  ;; label = @3
1767 ------------------------------------------------------------
14416          local.get 5
14417          i32.const 1
14418          i32.add
14419          local.set 5
14420          br 1 (;@2;)
1768 ------------------------------------------------------------
14421        end
1769 ------------------------------------------------------------
14422        local.get 5
14423        i32.const 0
14424        i32.store8
14425        local.get 5
14426        i32.const 2
14427        i32.add
14428        local.set 5
14429      end
1770 ------------------------------------------------------------
14430      local.get 3
14431      local.get 8
14432      i32.shl
14433      local.get 7
14434      i32.or
14435      local.set 3
14436      i32.const 0
14437      local.set 6
14438      local.get 2
14439      local.get 8
14440      i32.add
14441      local.tee 2
14442      i32.const 16
14443      i32.lt_s
14444      br_if 0 (;@1;)
1771 ------------------------------------------------------------
14445      local.get 5
14446      local.get 3
14447      local.get 2
14448      i32.const -8
14449      i32.add
14450      i32.shr_u
14451      local.tee 7
14452      i32.store8
14453      local.get 7
14454      i32.const 255
14455      i32.and
14456      i32.const 255
14457      i32.ne
14458      if (result i32)  ;; label = @2
1772 ------------------------------------------------------------
14459        local.get 5
14460        i32.const 1
14461        i32.add
14462      else
1773 ------------------------------------------------------------
14463        local.get 5
14464        i32.const 0
14465        i32.store8
14466        local.get 5
14467        i32.const 2
14468        i32.add
14469      end
1774 ------------------------------------------------------------
14470      local.tee 5
14471      local.get 3
14472      local.get 2
14473      i32.const -16
14474      i32.add
14475      local.tee 2
14476      i32.shr_u
14477      local.tee 7
14478      i32.store8
14479      local.get 7
14480      i32.const 255
14481      i32.and
14482      i32.const 255
14483      i32.ne
14484      if  ;; label = @2
1775 ------------------------------------------------------------
14485        local.get 5
14486        i32.const 1
14487        i32.add
14488        local.set 5
14489        br 1 (;@1;)
1776 ------------------------------------------------------------
14490      end
1777 ------------------------------------------------------------
14491      local.get 5
14492      i32.const 0
14493      i32.store8
14494      local.get 5
14495      i32.const 2
14496      i32.add
14497      local.set 5
14498    end
1778 ------------------------------------------------------------
14499    block  ;; label = @1
1779 ------------------------------------------------------------
14500      local.get 1
14501      i32.load16_s
14502      local.tee 9
14503      i32.eqz
14504      if  ;; label = @2
1780 ------------------------------------------------------------
14505        local.get 6
14506        i32.const 1
14507        i32.add
14508        local.set 6
14509        br 1 (;@1;)
1781 ------------------------------------------------------------
14510      end
1782 ------------------------------------------------------------
14511      local.get 9
14512      i32.const 31
14513      i32.shr_s
14514      local.tee 11
14515      local.get 9
14516      i32.xor
14517      local.get 11
14518      i32.sub
14519      i32.const 66832
14520      i32.add
14521      i32.load8_u
14522      local.set 8
14523      local.get 6
14524      i32.const 16
14525      i32.ge_s
14526      if  ;; label = @2
1783 ------------------------------------------------------------
14527        loop  ;; label = @3
1784 ------------------------------------------------------------
14528          local.get 6
14529          local.set 7
14530          local.get 3
14531          local.get 10
14532          i32.shl
14533          local.get 12
14534          i32.or
14535          local.set 3
14536          block  ;; label = @4
1785 ------------------------------------------------------------
14537            local.get 2
14538            local.get 10
14539            i32.add
14540            local.tee 2
14541            i32.const 16
14542            i32.lt_s
14543            br_if 0 (;@4;)
1786 ------------------------------------------------------------
14544            local.get 5
14545            local.get 3
14546            local.get 2
14547            i32.const -8
14548            i32.add
14549            i32.shr_u
14550            local.tee 6
14551            i32.store8
14552            local.get 6
14553            i32.const 255
14554            i32.and
14555            i32.const 255
14556            i32.ne
14557            if (result i32)  ;; label = @5
1787 ------------------------------------------------------------
14558              local.get 5
14559              i32.const 1
14560              i32.add
14561            else
1788 ------------------------------------------------------------
14562              local.get 5
14563              i32.const 0
14564              i32.store8
14565              local.get 5
14566              i32.const 2
14567              i32.add
14568            end
1789 ------------------------------------------------------------
14569            local.tee 5
14570            local.get 3
14571            local.get 2
14572            i32.const -16
14573            i32.add
14574            local.tee 2
14575            i32.shr_u
14576            local.tee 6
14577            i32.store8
14578            local.get 6
14579            i32.const 255
14580            i32.and
14581            i32.const 255
14582            i32.ne
14583            if  ;; label = @5
1790 ------------------------------------------------------------
14584              local.get 5
14585              i32.const 1
14586              i32.add
14587              local.set 5
14588              br 1 (;@4;)
1791 ------------------------------------------------------------
14589            end
1792 ------------------------------------------------------------
14590            local.get 5
14591            i32.const 0
14592            i32.store8
14593            local.get 5
14594            i32.const 2
14595            i32.add
14596            local.set 5
14597          end
1793 ------------------------------------------------------------
14598          local.get 7
14599          i32.const -16
14600          i32.add
14601          local.set 6
14602          local.get 7
14603          i32.const 31
14604          i32.gt_s
14605          br_if 0 (;@3;)
1794 ------------------------------------------------------------
14606        end
1795 ------------------------------------------------------------
14607      end
1796 ------------------------------------------------------------
14608      local.get 3
14609      local.get 4
14610      local.get 6
14611      i32.const 4
14612      i32.shl
14613      local.get 8
14614      i32.add
14615      local.tee 3
14616      i32.add
14617      i32.const 1024
14618      i32.add
14619      i32.load8_s
14620      local.tee 6
14621      i32.shl
14622      local.get 4
14623      local.get 3
14624      i32.const 2
14625      i32.shl
14626      i32.add
14627      i32.load
14628      i32.or
14629      local.set 3
14630      local.get 9
14631      local.get 11
14632      i32.add
14633      i32.const -1
14634      local.get 8
14635      i32.shl
14636      i32.const -1
14637      i32.xor
14638      i32.and
14639      local.set 7
14640      block  ;; label = @2
1797 ------------------------------------------------------------
14641        local.get 2
14642        local.get 6
14643        i32.add
14644        local.tee 2
14645        i32.const 16
14646        i32.lt_s
14647        br_if 0 (;@2;)
1798 ------------------------------------------------------------
14648        local.get 5
14649        local.get 3
14650        local.get 2
14651        i32.const -8
14652        i32.add
14653        i32.shr_u
14654        local.tee 6
14655        i32.store8
14656        local.get 6
14657        i32.const 255
14658        i32.and
14659        i32.const 255
14660        i32.ne
14661        if (result i32)  ;; label = @3
1799 ------------------------------------------------------------
14662          local.get 5
14663          i32.const 1
14664          i32.add
14665        else
1800 ------------------------------------------------------------
14666          local.get 5
14667          i32.const 0
14668          i32.store8
14669          local.get 5
14670          i32.const 2
14671          i32.add
14672        end
1801 ------------------------------------------------------------
14673        local.tee 5
14674        local.get 3
14675        local.get 2
14676        i32.const -16
14677        i32.add
14678        local.tee 2
14679        i32.shr_u
14680        local.tee 6
14681        i32.store8
14682        local.get 6
14683        i32.const 255
14684        i32.and
14685        i32.const 255
14686        i32.ne
14687        if  ;; label = @3
1802 ------------------------------------------------------------
14688          local.get 5
14689          i32.const 1
14690          i32.add
14691          local.set 5
14692          br 1 (;@2;)
1803 ------------------------------------------------------------
14693        end
1804 ------------------------------------------------------------
14694        local.get 5
14695        i32.const 0
14696        i32.store8
14697        local.get 5
14698        i32.const 2
14699        i32.add
14700        local.set 5
14701      end
1805 ------------------------------------------------------------
14702      local.get 3
14703      local.get 8
14704      i32.shl
14705      local.get 7
14706      i32.or
14707      local.set 3
14708      i32.const 0
14709      local.set 6
14710      local.get 2
14711      local.get 8
14712      i32.add
14713      local.tee 2
14714      i32.const 16
14715      i32.lt_s
14716      br_if 0 (;@1;)
1806 ------------------------------------------------------------
14717      local.get 5
14718      local.get 3
14719      local.get 2
14720      i32.const -8
14721      i32.add
14722      i32.shr_u
14723      local.tee 7
14724      i32.store8
14725      local.get 7
14726      i32.const 255
14727      i32.and
14728      i32.const 255
14729      i32.ne
14730      if (result i32)  ;; label = @2
1807 ------------------------------------------------------------
14731        local.get 5
14732        i32.const 1
14733        i32.add
14734      else
1808 ------------------------------------------------------------
14735        local.get 5
14736        i32.const 0
14737        i32.store8
14738        local.get 5
14739        i32.const 2
14740        i32.add
14741      end
1809 ------------------------------------------------------------
14742      local.tee 5
14743      local.get 3
14744      local.get 2
14745      i32.const -16
14746      i32.add
14747      local.tee 2
14748      i32.shr_u
14749      local.tee 7
14750      i32.store8
14751      local.get 7
14752      i32.const 255
14753      i32.and
14754      i32.const 255
14755      i32.ne
14756      if  ;; label = @2
1810 ------------------------------------------------------------
14757        local.get 5
14758        i32.const 1
14759        i32.add
14760        local.set 5
14761        br 1 (;@1;)
1811 ------------------------------------------------------------
14762      end
1812 ------------------------------------------------------------
14763      local.get 5
14764      i32.const 0
14765      i32.store8
14766      local.get 5
14767      i32.const 2
14768      i32.add
14769      local.set 5
14770    end
1813 ------------------------------------------------------------
14771    block  ;; label = @1
1814 ------------------------------------------------------------
14772      local.get 1
14773      i32.load16_s
14774      local.tee 9
14775      i32.eqz
14776      if  ;; label = @2
1815 ------------------------------------------------------------
14777        local.get 6
14778        i32.const 1
14779        i32.add
14780        local.set 6
14781        br 1 (;@1;)
1816 ------------------------------------------------------------
14782      end
1817 ------------------------------------------------------------
14783      local.get 9
14784      i32.const 31
14785      i32.shr_s
14786      local.tee 11
14787      local.get 9
14788      i32.xor
14789      local.get 11
14790      i32.sub
14791      i32.const 66832
14792      i32.add
14793      i32.load8_u
14794      local.set 8
14795      local.get 6
14796      i32.const 16
14797      i32.ge_s
14798      if  ;; label = @2
1818 ------------------------------------------------------------
14799        loop  ;; label = @3
1819 ------------------------------------------------------------
14800          local.get 6
14801          local.set 7
14802          local.get 3
14803          local.get 10
14804          i32.shl
14805          local.get 12
14806          i32.or
14807          local.set 3
14808          block  ;; label = @4
1820 ------------------------------------------------------------
14809            local.get 2
14810            local.get 10
14811            i32.add
14812            local.tee 2
14813            i32.const 16
14814            i32.lt_s
14815            br_if 0 (;@4;)
1821 ------------------------------------------------------------
14816            local.get 5
14817            local.get 3
14818            local.get 2
14819            i32.const -8
14820            i32.add
14821            i32.shr_u
14822            local.tee 6
14823            i32.store8
14824            local.get 6
14825            i32.const 255
14826            i32.and
14827            i32.const 255
14828            i32.ne
14829            if (result i32)  ;; label = @5
1822 ------------------------------------------------------------
14830              local.get 5
14831              i32.const 1
14832              i32.add
14833            else
1823 ------------------------------------------------------------
14834              local.get 5
14835              i32.const 0
14836              i32.store8
14837              local.get 5
14838              i32.const 2
14839              i32.add
14840            end
1824 ------------------------------------------------------------
14841            local.tee 5
14842            local.get 3
14843            local.get 2
14844            i32.const -16
14845            i32.add
14846            local.tee 2
14847            i32.shr_u
14848            local.tee 6
14849            i32.store8
14850            local.get 6
14851            i32.const 255
14852            i32.and
14853            i32.const 255
14854            i32.ne
14855            if  ;; label = @5
1825 ------------------------------------------------------------
14856              local.get 5
14857              i32.const 1
14858              i32.add
14859              local.set 5
14860              br 1 (;@4;)
1826 ------------------------------------------------------------
14861            end
1827 ------------------------------------------------------------
14862            local.get 5
14863            i32.const 0
14864            i32.store8
14865            local.get 5
14866            i32.const 2
14867            i32.add
14868            local.set 5
14869          end
1828 ------------------------------------------------------------
14870          local.get 7
14871          i32.const -16
14872          i32.add
14873          local.set 6
14874          local.get 7
14875          i32.const 31
14876          i32.gt_s
14877          br_if 0 (;@3;)
1829 ------------------------------------------------------------
14878        end
1830 ------------------------------------------------------------
14879      end
1831 ------------------------------------------------------------
14880      local.get 3
14881      local.get 4
14882      local.get 6
14883      i32.const 4
14884      i32.shl
14885      local.get 8
14886      i32.add
14887      local.tee 3
14888      i32.add
14889      i32.const 1024
14890      i32.add
14891      i32.load8_s
14892      local.tee 6
14893      i32.shl
14894      local.get 4
14895      local.get 3
14896      i32.const 2
14897      i32.shl
14898      i32.add
14899      i32.load
14900      i32.or
14901      local.set 3
14902      local.get 9
14903      local.get 11
14904      i32.add
14905      i32.const -1
14906      local.get 8
14907      i32.shl
14908      i32.const -1
14909      i32.xor
14910      i32.and
14911      local.set 7
14912      block  ;; label = @2
1832 ------------------------------------------------------------
14913        local.get 2
14914        local.get 6
14915        i32.add
14916        local.tee 2
14917        i32.const 16
14918        i32.lt_s
14919        br_if 0 (;@2;)
1833 ------------------------------------------------------------
14920        local.get 5
14921        local.get 3
14922        local.get 2
14923        i32.const -8
14924        i32.add
14925        i32.shr_u
14926        local.tee 6
14927        i32.store8
14928        local.get 6
14929        i32.const 255
14930        i32.and
14931        i32.const 255
14932        i32.ne
14933        if (result i32)  ;; label = @3
1834 ------------------------------------------------------------
14934          local.get 5
14935          i32.const 1
14936          i32.add
14937        else
1835 ------------------------------------------------------------
14938          local.get 5
14939          i32.const 0
14940          i32.store8
14941          local.get 5
14942          i32.const 2
14943          i32.add
14944        end
1836 ------------------------------------------------------------
14945        local.tee 5
14946        local.get 3
14947        local.get 2
14948        i32.const -16
14949        i32.add
14950        local.tee 2
14951        i32.shr_u
14952        local.tee 6
14953        i32.store8
14954        local.get 6
14955        i32.const 255
14956        i32.and
14957        i32.const 255
14958        i32.ne
14959        if  ;; label = @3
1837 ------------------------------------------------------------
14960          local.get 5
14961          i32.const 1
14962          i32.add
14963          local.set 5
14964          br 1 (;@2;)
1838 ------------------------------------------------------------
14965        end
1839 ------------------------------------------------------------
14966        local.get 5
14967        i32.const 0
14968        i32.store8
14969        local.get 5
14970        i32.const 2
14971        i32.add
14972        local.set 5
14973      end
1840 ------------------------------------------------------------
14974      local.get 3
14975      local.get 8
14976      i32.shl
14977      local.get 7
14978      i32.or
14979      local.set 3
14980      i32.const 0
14981      local.set 6
14982      local.get 2
14983      local.get 8
14984      i32.add
14985      local.tee 2
14986      i32.const 16
14987      i32.lt_s
14988      br_if 0 (;@1;)
1841 ------------------------------------------------------------
14989      local.get 5
14990      local.get 3
14991      local.get 2
14992      i32.const -8
14993      i32.add
14994      i32.shr_u
14995      local.tee 7
14996      i32.store8
14997      local.get 7
14998      i32.const 255
14999      i32.and
15000      i32.const 255
15001      i32.ne
15002      if (result i32)  ;; label = @2
1842 ------------------------------------------------------------
15003        local.get 5
15004        i32.const 1
15005        i32.add
15006      else
1843 ------------------------------------------------------------
15007        local.get 5
15008        i32.const 0
15009        i32.store8
15010        local.get 5
15011        i32.const 2
15012        i32.add
15013      end
1844 ------------------------------------------------------------
15014      local.tee 5
15015      local.get 3
15016      local.get 2
15017      i32.const -16
15018      i32.add
15019      local.tee 2
15020      i32.shr_u
15021      local.tee 7
15022      i32.store8
15023      local.get 7
15024      i32.const 255
15025      i32.and
15026      i32.const 255
15027      i32.ne
15028      if  ;; label = @2
1845 ------------------------------------------------------------
15029        local.get 5
15030        i32.const 1
15031        i32.add
15032        local.set 5
15033        br 1 (;@1;)
1846 ------------------------------------------------------------
15034      end
1847 ------------------------------------------------------------
15035      local.get 5
15036      i32.const 0
15037      i32.store8
15038      local.get 5
15039      i32.const 2
15040      i32.add
15041      local.set 5
15042    end
1848 ------------------------------------------------------------
15043    block  ;; label = @1
1849 ------------------------------------------------------------
15044      local.get 1
15045      i32.load16_s
15046      local.tee 9
15047      i32.eqz
15048      if  ;; label = @2
1850 ------------------------------------------------------------
15049        local.get 6
15050        i32.const 1
15051        i32.add
15052        local.set 6
15053        br 1 (;@1;)
1851 ------------------------------------------------------------
15054      end
1852 ------------------------------------------------------------
15055      local.get 9
15056      i32.const 31
15057      i32.shr_s
15058      local.tee 11
15059      local.get 9
15060      i32.xor
15061      local.get 11
15062      i32.sub
15063      i32.const 66832
15064      i32.add
15065      i32.load8_u
15066      local.set 8
15067      local.get 6
15068      i32.const 16
15069      i32.ge_s
15070      if  ;; label = @2
1853 ------------------------------------------------------------
15071        loop  ;; label = @3
1854 ------------------------------------------------------------
15072          local.get 6
15073          local.set 7
15074          local.get 3
15075          local.get 10
15076          i32.shl
15077          local.get 12
15078          i32.or
15079          local.set 3
15080          block  ;; label = @4
1855 ------------------------------------------------------------
15081            local.get 2
15082            local.get 10
15083            i32.add
15084            local.tee 2
15085            i32.const 16
15086            i32.lt_s
15087            br_if 0 (;@4;)
1856 ------------------------------------------------------------
15088            local.get 5
15089            local.get 3
15090            local.get 2
15091            i32.const -8
15092            i32.add
15093            i32.shr_u
15094            local.tee 6
15095            i32.store8
15096            local.get 6
15097            i32.const 255
15098            i32.and
15099            i32.const 255
15100            i32.ne
15101            if (result i32)  ;; label = @5
1857 ------------------------------------------------------------
15102              local.get 5
15103              i32.const 1
15104              i32.add
15105            else
1858 ------------------------------------------------------------
15106              local.get 5
15107              i32.const 0
15108              i32.store8
15109              local.get 5
15110              i32.const 2
15111              i32.add
15112            end
1859 ------------------------------------------------------------
15113            local.tee 5
15114            local.get 3
15115            local.get 2
15116            i32.const -16
15117            i32.add
15118            local.tee 2
15119            i32.shr_u
15120            local.tee 6
15121            i32.store8
15122            local.get 6
15123            i32.const 255
15124            i32.and
15125            i32.const 255
15126            i32.ne
15127            if  ;; label = @5
1860 ------------------------------------------------------------
15128              local.get 5
15129              i32.const 1
15130              i32.add
15131              local.set 5
15132              br 1 (;@4;)
1861 ------------------------------------------------------------
15133            end
1862 ------------------------------------------------------------
15134            local.get 5
15135            i32.const 0
15136            i32.store8
15137            local.get 5
15138            i32.const 2
15139            i32.add
15140            local.set 5
15141          end
1863 ------------------------------------------------------------
15142          local.get 7
15143          i32.const -16
15144          i32.add
15145          local.set 6
15146          local.get 7
15147          i32.const 31
15148          i32.gt_s
15149          br_if 0 (;@3;)
1864 ------------------------------------------------------------
15150        end
1865 ------------------------------------------------------------
15151      end
1866 ------------------------------------------------------------
15152      local.get 3
15153      local.get 4
15154      local.get 6
15155      i32.const 4
15156      i32.shl
15157      local.get 8
15158      i32.add
15159      local.tee 3
15160      i32.add
15161      i32.const 1024
15162      i32.add
15163      i32.load8_s
15164      local.tee 6
15165      i32.shl
15166      local.get 4
15167      local.get 3
15168      i32.const 2
15169      i32.shl
15170      i32.add
15171      i32.load
15172      i32.or
15173      local.set 3
15174      local.get 9
15175      local.get 11
15176      i32.add
15177      i32.const -1
15178      local.get 8
15179      i32.shl
15180      i32.const -1
15181      i32.xor
15182      i32.and
15183      local.set 7
15184      block  ;; label = @2
1867 ------------------------------------------------------------
15185        local.get 2
15186        local.get 6
15187        i32.add
15188        local.tee 2
15189        i32.const 16
15190        i32.lt_s
15191        br_if 0 (;@2;)
1868 ------------------------------------------------------------
15192        local.get 5
15193        local.get 3
15194        local.get 2
15195        i32.const -8
15196        i32.add
15197        i32.shr_u
15198        local.tee 6
15199        i32.store8
15200        local.get 6
15201        i32.const 255
15202        i32.and
15203        i32.const 255
15204        i32.ne
15205        if (result i32)  ;; label = @3
1869 ------------------------------------------------------------
15206          local.get 5
15207          i32.const 1
15208          i32.add
15209        else
1870 ------------------------------------------------------------
15210          local.get 5
15211          i32.const 0
15212          i32.store8
15213          local.get 5
15214          i32.const 2
15215          i32.add
15216        end
1871 ------------------------------------------------------------
15217        local.tee 5
15218        local.get 3
15219        local.get 2
15220        i32.const -16
15221        i32.add
15222        local.tee 2
15223        i32.shr_u
15224        local.tee 6
15225        i32.store8
15226        local.get 6
15227        i32.const 255
15228        i32.and
15229        i32.const 255
15230        i32.ne
15231        if  ;; label = @3
1872 ------------------------------------------------------------
15232          local.get 5
15233          i32.const 1
15234          i32.add
15235          local.set 5
15236          br 1 (;@2;)
1873 ------------------------------------------------------------
15237        end
1874 ------------------------------------------------------------
15238        local.get 5
15239        i32.const 0
15240        i32.store8
15241        local.get 5
15242        i32.const 2
15243        i32.add
15244        local.set 5
15245      end
1875 ------------------------------------------------------------
15246      local.get 3
15247      local.get 8
15248      i32.shl
15249      local.get 7
15250      i32.or
15251      local.set 3
15252      i32.const 0
15253      local.set 6
15254      local.get 2
15255      local.get 8
15256      i32.add
15257      local.tee 2
15258      i32.const 16
15259      i32.lt_s
15260      br_if 0 (;@1;)
1876 ------------------------------------------------------------
15261      local.get 5
15262      local.get 3
15263      local.get 2
15264      i32.const -8
15265      i32.add
15266      i32.shr_u
15267      local.tee 7
15268      i32.store8
15269      local.get 7
15270      i32.const 255
15271      i32.and
15272      i32.const 255
15273      i32.ne
15274      if (result i32)  ;; label = @2
1877 ------------------------------------------------------------
15275        local.get 5
15276        i32.const 1
15277        i32.add
15278      else
1878 ------------------------------------------------------------
15279        local.get 5
15280        i32.const 0
15281        i32.store8
15282        local.get 5
15283        i32.const 2
15284        i32.add
15285      end
1879 ------------------------------------------------------------
15286      local.tee 5
15287      local.get 3
15288      local.get 2
15289      i32.const -16
15290      i32.add
15291      local.tee 2
15292      i32.shr_u
15293      local.tee 7
15294      i32.store8
15295      local.get 7
15296      i32.const 255
15297      i32.and
15298      i32.const 255
15299      i32.ne
15300      if  ;; label = @2
1880 ------------------------------------------------------------
15301        local.get 5
15302        i32.const 1
15303        i32.add
15304        local.set 5
15305        br 1 (;@1;)
1881 ------------------------------------------------------------
15306      end
1882 ------------------------------------------------------------
15307      local.get 5
15308      i32.const 0
15309      i32.store8
15310      local.get 5
15311      i32.const 2
15312      i32.add
15313      local.set 5
15314    end
1883 ------------------------------------------------------------
15315    block  ;; label = @1
1884 ------------------------------------------------------------
15316      local.get 1
15317      i32.load16_s
15318      local.tee 9
15319      i32.eqz
15320      if  ;; label = @2
1885 ------------------------------------------------------------
15321        local.get 6
15322        i32.const 1
15323        i32.add
15324        local.set 6
15325        br 1 (;@1;)
1886 ------------------------------------------------------------
15326      end
1887 ------------------------------------------------------------
15327      local.get 9
15328      i32.const 31
15329      i32.shr_s
15330      local.tee 11
15331      local.get 9
15332      i32.xor
15333      local.get 11
15334      i32.sub
15335      i32.const 66832
15336      i32.add
15337      i32.load8_u
15338      local.set 8
15339      local.get 6
15340      i32.const 16
15341      i32.ge_s
15342      if  ;; label = @2
1888 ------------------------------------------------------------
15343        loop  ;; label = @3
1889 ------------------------------------------------------------
15344          local.get 6
15345          local.set 7
15346          local.get 3
15347          local.get 10
15348          i32.shl
15349          local.get 12
15350          i32.or
15351          local.set 3
15352          block  ;; label = @4
1890 ------------------------------------------------------------
15353            local.get 2
15354            local.get 10
15355            i32.add
15356            local.tee 2
15357            i32.const 16
15358            i32.lt_s
15359            br_if 0 (;@4;)
1891 ------------------------------------------------------------
15360            local.get 5
15361            local.get 3
15362            local.get 2
15363            i32.const -8
15364            i32.add
15365            i32.shr_u
15366            local.tee 6
15367            i32.store8
15368            local.get 6
15369            i32.const 255
15370            i32.and
15371            i32.const 255
15372            i32.ne
15373            if (result i32)  ;; label = @5
1892 ------------------------------------------------------------
15374              local.get 5
15375              i32.const 1
15376              i32.add
15377            else
1893 ------------------------------------------------------------
15378              local.get 5
15379              i32.const 0
15380              i32.store8
15381              local.get 5
15382              i32.const 2
15383              i32.add
15384            end
1894 ------------------------------------------------------------
15385            local.tee 5
15386            local.get 3
15387            local.get 2
15388            i32.const -16
15389            i32.add
15390            local.tee 2
15391            i32.shr_u
15392            local.tee 6
15393            i32.store8
15394            local.get 6
15395            i32.const 255
15396            i32.and
15397            i32.const 255
15398            i32.ne
15399            if  ;; label = @5
1895 ------------------------------------------------------------
15400              local.get 5
15401              i32.const 1
15402              i32.add
15403              local.set 5
15404              br 1 (;@4;)
1896 ------------------------------------------------------------
15405            end
1897 ------------------------------------------------------------
15406            local.get 5
15407            i32.const 0
15408            i32.store8
15409            local.get 5
15410            i32.const 2
15411            i32.add
15412            local.set 5
15413          end
1898 ------------------------------------------------------------
15414          local.get 7
15415          i32.const -16
15416          i32.add
15417          local.set 6
15418          local.get 7
15419          i32.const 31
15420          i32.gt_s
15421          br_if 0 (;@3;)
1899 ------------------------------------------------------------
15422        end
1900 ------------------------------------------------------------
15423      end
1901 ------------------------------------------------------------
15424      local.get 3
15425      local.get 4
15426      local.get 6
15427      i32.const 4
15428      i32.shl
15429      local.get 8
15430      i32.add
15431      local.tee 3
15432      i32.add
15433      i32.const 1024
15434      i32.add
15435      i32.load8_s
15436      local.tee 6
15437      i32.shl
15438      local.get 4
15439      local.get 3
15440      i32.const 2
15441      i32.shl
15442      i32.add
15443      i32.load
15444      i32.or
15445      local.set 3
15446      local.get 9
15447      local.get 11
15448      i32.add
15449      i32.const -1
15450      local.get 8
15451      i32.shl
15452      i32.const -1
15453      i32.xor
15454      i32.and
15455      local.set 7
15456      block  ;; label = @2
1902 ------------------------------------------------------------
15457        local.get 2
15458        local.get 6
15459        i32.add
15460        local.tee 2
15461        i32.const 16
15462        i32.lt_s
15463        br_if 0 (;@2;)
1903 ------------------------------------------------------------
15464        local.get 5
15465        local.get 3
15466        local.get 2
15467        i32.const -8
15468        i32.add
15469        i32.shr_u
15470        local.tee 6
15471        i32.store8
15472        local.get 6
15473        i32.const 255
15474        i32.and
15475        i32.const 255
15476        i32.ne
15477        if (result i32)  ;; label = @3
1904 ------------------------------------------------------------
15478          local.get 5
15479          i32.const 1
15480          i32.add
15481        else
1905 ------------------------------------------------------------
15482          local.get 5
15483          i32.const 0
15484          i32.store8
15485          local.get 5
15486          i32.const 2
15487          i32.add
15488        end
1906 ------------------------------------------------------------
15489        local.tee 5
15490        local.get 3
15491        local.get 2
15492        i32.const -16
15493        i32.add
15494        local.tee 2
15495        i32.shr_u
15496        local.tee 6
15497        i32.store8
15498        local.get 6
15499        i32.const 255
15500        i32.and
15501        i32.const 255
15502        i32.ne
15503        if  ;; label = @3
1907 ------------------------------------------------------------
15504          local.get 5
15505          i32.const 1
15506          i32.add
15507          local.set 5
15508          br 1 (;@2;)
1908 ------------------------------------------------------------
15509        end
1909 ------------------------------------------------------------
15510        local.get 5
15511        i32.const 0
15512        i32.store8
15513        local.get 5
15514        i32.const 2
15515        i32.add
15516        local.set 5
15517      end
1910 ------------------------------------------------------------
15518      local.get 3
15519      local.get 8
15520      i32.shl
15521      local.get 7
15522      i32.or
15523      local.set 3
15524      i32.const 0
15525      local.set 6
15526      local.get 2
15527      local.get 8
15528      i32.add
15529      local.tee 2
15530      i32.const 16
15531      i32.lt_s
15532      br_if 0 (;@1;)
1911 ------------------------------------------------------------
15533      local.get 5
15534      local.get 3
15535      local.get 2
15536      i32.const -8
15537      i32.add
15538      i32.shr_u
15539      local.tee 7
15540      i32.store8
15541      local.get 7
15542      i32.const 255
15543      i32.and
15544      i32.const 255
15545      i32.ne
15546      if (result i32)  ;; label = @2
1912 ------------------------------------------------------------
15547        local.get 5
15548        i32.const 1
15549        i32.add
15550      else
1913 ------------------------------------------------------------
15551        local.get 5
15552        i32.const 0
15553        i32.store8
15554        local.get 5
15555        i32.const 2
15556        i32.add
15557      end
1914 ------------------------------------------------------------
15558      local.tee 5
15559      local.get 3
15560      local.get 2
15561      i32.const -16
15562      i32.add
15563      local.tee 2
15564      i32.shr_u
15565      local.tee 7
15566      i32.store8
15567      local.get 7
15568      i32.const 255
15569      i32.and
15570      i32.const 255
15571      i32.ne
15572      if  ;; label = @2
1915 ------------------------------------------------------------
15573        local.get 5
15574        i32.const 1
15575        i32.add
15576        local.set 5
15577        br 1 (;@1;)
1916 ------------------------------------------------------------
15578      end
1917 ------------------------------------------------------------
15579      local.get 5
15580      i32.const 0
15581      i32.store8
15582      local.get 5
15583      i32.const 2
15584      i32.add
15585      local.set 5
15586    end
1918 ------------------------------------------------------------
15587    block  ;; label = @1
1919 ------------------------------------------------------------
15588      local.get 1
15589      i32.load16_s
15590      local.tee 8
15591      if  ;; label = @2
1920 ------------------------------------------------------------
15592        local.get 8
15593        i32.const 31
15594        i32.shr_s
15595        local.tee 9
15596        local.get 8
15597        i32.xor
15598        local.get 9
15599        i32.sub
15600        i32.const 66832
15601        i32.add
15602        i32.load8_u
15603        local.set 7
15604        local.get 6
15605        i32.const 16
15606        i32.ge_s
15607        if  ;; label = @3
1921 ------------------------------------------------------------
15608          loop  ;; label = @4
1922 ------------------------------------------------------------
15609            local.get 6
15610            local.set 1
15611            local.get 3
15612            local.get 10
15613            i32.shl
15614            local.get 12
15615            i32.or
15616            local.set 3
15617            block  ;; label = @5
1923 ------------------------------------------------------------
15618              local.get 2
15619              local.get 10
15620              i32.add
15621              local.tee 2
15622              i32.const 16
15623              i32.lt_s
15624              br_if 0 (;@5;)
1924 ------------------------------------------------------------
15625              local.get 5
15626              local.get 3
15627              local.get 2
15628              i32.const -8
15629              i32.add
15630              i32.shr_u
15631              local.tee 6
15632              i32.store8
15633              local.get 6
15634              i32.const 255
15635              i32.and
15636              i32.const 255
15637              i32.ne
15638              if (result i32)  ;; label = @6
1925 ------------------------------------------------------------
15639                local.get 5
15640                i32.const 1
15641                i32.add
15642              else
1926 ------------------------------------------------------------
15643                local.get 5
15644                i32.const 0
15645                i32.store8
15646                local.get 5
15647                i32.const 2
15648                i32.add
15649              end
1927 ------------------------------------------------------------
15650              local.tee 5
15651              local.get 3
15652              local.get 2
15653              i32.const -16
15654              i32.add
15655              local.tee 2
15656              i32.shr_u
15657              local.tee 6
15658              i32.store8
15659              local.get 6
15660              i32.const 255
15661              i32.and
15662              i32.const 255
15663              i32.ne
15664              if  ;; label = @6
1928 ------------------------------------------------------------
15665                local.get 5
15666                i32.const 1
15667                i32.add
15668                local.set 5
15669                br 1 (;@5;)
1929 ------------------------------------------------------------
15670              end
1930 ------------------------------------------------------------
15671              local.get 5
15672              i32.const 0
15673              i32.store8
15674              local.get 5
15675              i32.const 2
15676              i32.add
15677              local.set 5
15678            end
1931 ------------------------------------------------------------
15679            local.get 1
15680            i32.const -16
15681            i32.add
15682            local.set 6
15683            local.get 1
15684            i32.const 31
15685            i32.gt_s
15686            br_if 0 (;@4;)
1932 ------------------------------------------------------------
15687          end
1933 ------------------------------------------------------------
15688        end
1934 ------------------------------------------------------------
15689        local.get 3
15690        local.get 4
15691        local.get 6
15692        i32.const 4
15693        i32.shl
15694        local.get 7
15695        i32.add
15696        local.tee 1
15697        i32.add
15698        i32.const 1024
15699        i32.add
15700        i32.load8_s
15701        local.tee 3
15702        i32.shl
15703        local.get 4
15704        local.get 1
15705        i32.const 2
15706        i32.shl
15707        i32.add
15708        i32.load
15709        i32.or
15710        local.set 1
15711        local.get 8
15712        local.get 9
15713        i32.add
15714        i32.const -1
15715        local.get 7
15716        i32.shl
15717        i32.const -1
15718        i32.xor
15719        i32.and
15720        local.set 4
15721        block  ;; label = @3
1935 ------------------------------------------------------------
15722          local.get 2
15723          local.get 3
15724          i32.add
15725          local.tee 2
15726          i32.const 16
15727          i32.lt_s
15728          br_if 0 (;@3;)
1936 ------------------------------------------------------------
15729          local.get 5
15730          local.get 1
15731          local.get 2
15732          i32.const -8
15733          i32.add
15734          i32.shr_u
15735          local.tee 3
15736          i32.store8
15737          local.get 3
15738          i32.const 255
15739          i32.and
15740          i32.const 255
15741          i32.ne
15742          if (result i32)  ;; label = @4
1937 ------------------------------------------------------------
15743            local.get 5
15744            i32.const 1
15745            i32.add
15746          else
1938 ------------------------------------------------------------
15747            local.get 5
15748            i32.const 0
15749            i32.store8
15750            local.get 5
15751            i32.const 2
15752            i32.add
15753          end
1939 ------------------------------------------------------------
15754          local.tee 5
15755          local.get 1
15756          local.get 2
15757          i32.const -16
15758          i32.add
15759          local.tee 2
15760          i32.shr_u
15761          local.tee 3
15762          i32.store8
15763          local.get 3
15764          i32.const 255
15765          i32.and
15766          i32.const 255
15767          i32.ne
15768          if  ;; label = @4
1940 ------------------------------------------------------------
15769            local.get 5
15770            i32.const 1
15771            i32.add
15772            local.set 5
15773            br 1 (;@3;)
1941 ------------------------------------------------------------
15774          end
1942 ------------------------------------------------------------
15775          local.get 5
15776          i32.const 0
15777          i32.store8
15778          local.get 5
15779          i32.const 2
15780          i32.add
15781          local.set 5
15782        end
1943 ------------------------------------------------------------
15783        local.get 1
15784        local.get 7
15785        i32.shl
15786        local.get 4
15787        i32.or
15788        local.set 3
15789        local.get 2
15790        local.get 7
15791        i32.add
15792        local.tee 2
15793        i32.const 16
15794        i32.lt_s
15795        br_if 1 (;@1;)
1944 ------------------------------------------------------------
15796        local.get 5
15797        local.get 3
15798        local.get 2
15799        i32.const -8
15800        i32.add
15801        i32.shr_u
15802        local.tee 1
15803        i32.store8
15804        local.get 1
15805        i32.const 255
15806        i32.and
15807        i32.const 255
15808        i32.ne
15809        if (result i32)  ;; label = @3
1945 ------------------------------------------------------------
15810          local.get 5
15811          i32.const 1
15812          i32.add
15813        else
1946 ------------------------------------------------------------
15814          local.get 5
15815          i32.const 0
15816          i32.store8
15817          local.get 5
15818          i32.const 2
15819          i32.add
15820        end
1947 ------------------------------------------------------------
15821        local.tee 1
15822        local.get 3
15823        local.get 2
15824        i32.const -16
15825        i32.add
15826        local.tee 2
15827        i32.shr_u
15828        local.tee 4
15829        i32.store8
15830        local.get 4
15831        i32.const 255
15832        i32.and
15833        i32.const 255
15834        i32.ne
15835        if  ;; label = @3
1948 ------------------------------------------------------------
15836          local.get 1
15837          i32.const 1
15838          i32.add
15839          local.set 5
15840          br 2 (;@1;)
1949 ------------------------------------------------------------
15841        end
1950 ------------------------------------------------------------
15842        local.get 1
15843        i32.const 0
15844        i32.store8
15845        local.get 1
15846        i32.const 2
15847        i32.add
15848        local.set 5
15849        br 1 (;@1;)
1951 ------------------------------------------------------------
15850      end
1952 ------------------------------------------------------------
15851      local.get 4
15852      i32.load
15853      local.get 3
15854      local.get 4
15855      i32.load8_s
15856      local.tee 1
15857      i32.shl
15858      i32.or
15859      local.set 3
15860      local.get 1
15861      local.get 2
15862      i32.add
15863      local.tee 2
15864      i32.const 16
15865      i32.lt_s
15866      br_if 0 (;@1;)
1953 ------------------------------------------------------------
15867      local.get 5
15868      local.get 3
15869      local.get 2
15870      i32.const -8
15871      i32.add
15872      i32.shr_u
15873      local.tee 1
15874      i32.store8
15875      local.get 1
15876      i32.const 255
15877      i32.and
15878      i32.const 255
15879      i32.ne
15880      if (result i32)  ;; label = @2
1954 ------------------------------------------------------------
15881        local.get 5
15882        i32.const 1
15883        i32.add
15884      else
1955 ------------------------------------------------------------
15885        local.get 5
15886        i32.const 0
15887        i32.store8
15888        local.get 5
15889        i32.const 2
15890        i32.add
15891      end
1956 ------------------------------------------------------------
15892      local.tee 1
15893      local.get 3
15894      local.get 2
15895      i32.const -16
15896      i32.add
15897      local.tee 2
15898      i32.shr_u
15899      local.tee 4
15900      i32.store8
15901      local.get 4
15902      i32.const 255
15903      i32.and
15904      i32.const 255
15905      i32.ne
15906      if  ;; label = @2
1957 ------------------------------------------------------------
15907        local.get 1
15908        i32.const 1
15909        i32.add
15910        local.set 5
15911        br 1 (;@1;)
1958 ------------------------------------------------------------
15912      end
1959 ------------------------------------------------------------
15913      local.get 1
15914      i32.const 0
15915      i32.store8
15916      local.get 1
15917      i32.const 2
15918      i32.add
15919      local.set 5
15920    end
1960 ------------------------------------------------------------
15921    local.get 0
15922    local.get 2
15923    i32.store
15924    local.get 0
15925    local.get 3
15926    i32.store
15927    block  ;; label = @1
1961 ------------------------------------------------------------
15928      local.get 14
15929      if  ;; label = @2
1962 ------------------------------------------------------------
15930        i32.const 1
15931        local.set 4
15932        local.get 5
15933        local.get 13
15934        i32.sub
15935        local.tee 3
15936        i32.eqz
15937        br_if 1 (;@1;)
1963 ------------------------------------------------------------
15938        local.get 13
15939        local.set 1
15940        loop  ;; label = @3
1964 ------------------------------------------------------------
15941          local.get 0
15942          i32.load
15943          local.get 1
15944          local.get 3
15945          local.get 0
15946          i32.load
15947          local.tee 2
15948          local.get 3
15949          local.get 2
15950          i32.lt_u
15951          select
15952          local.tee 2
15953          call 34
15954          drop
15955          local.get 0
15956          local.get 0
15957          i32.load
15958          local.get 2
15959          i32.add
15960          i32.store
15961          local.get 0
15962          local.get 0
15963          i32.load
15964          local.get 2
15965          i32.sub
15966          local.tee 6
15967          i32.store
15968          local.get 6
15969          i32.eqz
15970          if  ;; label = @4
1965 ------------------------------------------------------------
15971            local.get 0
15972            i32.load
15973            local.tee 6
15974            local.get 6
15975            i32.load
15976            local.tee 6
15977            i32.load
15978            call_indirect (type 1)
15979            i32.eqz
15980            if  ;; label = @5
1966 ------------------------------------------------------------
15981              i32.const 0
15982              local.set 4
15983              br 4 (;@1;)
1967 ------------------------------------------------------------
15984            end
1968 ------------------------------------------------------------
15985            local.get 0
15986            local.get 6
15987            i32.load
15988            i32.store
15989            local.get 0
15990            local.get 6
15991            i32.load
15992            i32.store
15993          end
1969 ------------------------------------------------------------
15994          local.get 1
15995          local.get 2
15996          i32.add
15997          local.set 1
15998          local.get 3
15999          local.get 2
16000          i32.sub
16001          local.tee 3
16002          br_if 0 (;@3;)
1970 ------------------------------------------------------------
16003        end
1971 ------------------------------------------------------------
16004        br 1 (;@1;)
1972 ------------------------------------------------------------
16005      end
1973 ------------------------------------------------------------
16006      local.get 0
16007      i32.load
16008      local.set 1
16009      local.get 0
16010      local.get 5
16011      i32.store
16012      local.get 0
16013      local.get 0
16014      i32.load
16015      local.get 1
16016      local.get 5
16017      i32.sub
16018      i32.add
16019      i32.store
16020      i32.const 1
16021      local.set 4
16022    end
1974 ------------------------------------------------------------
16023    local.get 13
16024    i32.const 256
16025    i32.add
16026    global.set 0
16027    local.get 4)
