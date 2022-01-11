  (func (;186;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load
0002    local.tee 2
0003    local.get 2
0004    i32.load
0005    local.tee 3
0006    i32.const 1
0007    i32.add
0008    i32.store
0009    local.get 3
0010    i32.const 255
0011    i32.store8
0012    local.get 2
0013    local.get 2
0014    i32.load
0015    i32.const -1
0016    i32.add
0017    local.tee 3
0018    i32.store
0019    block  ;; label = @1
1 ------------------------------------------------------------
0020      local.get 3
0021      br_if 0 (;@1;)
2 ------------------------------------------------------------
0022      local.get 0
0023      local.get 2
0024      i32.load
0025      call_indirect (type 1)
0026      br_if 0 (;@1;)
3 ------------------------------------------------------------
0027      local.get 0
0028      i32.load
0029      local.tee 2
0030      i32.const 24
0031      i32.store
0032      local.get 0
0033      local.get 2
0034      i32.load
0035      call_indirect (type 0)
0036    end
4 ------------------------------------------------------------
0037    local.get 0
0038    i32.load
0039    local.tee 2
0040    local.get 2
0041    i32.load
0042    local.tee 3
0043    i32.const 1
0044    i32.add
0045    i32.store
0046    local.get 3
0047    local.get 1
0048    i32.store8
0049    local.get 2
0050    local.get 2
0051    i32.load
0052    i32.const -1
0053    i32.add
0054    local.tee 1
0055    i32.store
0056    block  ;; label = @1
5 ------------------------------------------------------------
0057      local.get 1
0058      br_if 0 (;@1;)
6 ------------------------------------------------------------
0059      local.get 0
0060      local.get 2
0061      i32.load
0062      call_indirect (type 1)
0063      br_if 0 (;@1;)
7 ------------------------------------------------------------
0064      local.get 0
0065      i32.load
0066      local.tee 1
0067      i32.const 24
0068      i32.store
0069      local.get 0
0070      local.get 1
0071      i32.load
0072      call_indirect (type 0)
0073    end
8 ------------------------------------------------------------
0074    local.get 0
0075    i32.load
0076    local.set 2
0077    local.get 0
0078    i32.load
0079    local.tee 1
0080    local.get 1
0081    i32.load
0082    local.tee 3
0083    i32.const 1
0084    i32.add
0085    i32.store
0086    local.get 3
0087    local.get 2
0088    i32.const 3
0089    i32.mul
0090    i32.const 8
0091    i32.add
0092    local.tee 2
0093    i32.const 8
0094    i32.shr_u
0095    i32.store8
0096    local.get 1
0097    local.get 1
0098    i32.load
0099    i32.const -1
0100    i32.add
0101    local.tee 3
0102    i32.store
0103    block  ;; label = @1
9 ------------------------------------------------------------
0104      local.get 3
0105      br_if 0 (;@1;)
10 ------------------------------------------------------------
0106      local.get 0
0107      local.get 1
0108      i32.load
0109      call_indirect (type 1)
0110      br_if 0 (;@1;)
11 ------------------------------------------------------------
0111      local.get 0
0112      i32.load
0113      local.tee 1
0114      i32.const 24
0115      i32.store
0116      local.get 0
0117      local.get 1
0118      i32.load
0119      call_indirect (type 0)
0120    end
12 ------------------------------------------------------------
0121    local.get 0
0122    i32.load
0123    local.tee 1
0124    local.get 1
0125    i32.load
0126    local.tee 3
0127    i32.const 1
0128    i32.add
0129    i32.store
0130    local.get 3
0131    local.get 2
0132    i32.store8
0133    local.get 1
0134    local.get 1
0135    i32.load
0136    i32.const -1
0137    i32.add
0138    local.tee 2
0139    i32.store
0140    block  ;; label = @1
13 ------------------------------------------------------------
0141      local.get 2
0142      br_if 0 (;@1;)
14 ------------------------------------------------------------
0143      local.get 0
0144      local.get 1
0145      i32.load
0146      call_indirect (type 1)
0147      br_if 0 (;@1;)
15 ------------------------------------------------------------
0148      local.get 0
0149      i32.load
0150      local.tee 1
0151      i32.const 24
0152      i32.store
0153      local.get 0
0154      local.get 1
0155      i32.load
0156      call_indirect (type 0)
0157    end
16 ------------------------------------------------------------
0158    block  ;; label = @1
17 ------------------------------------------------------------
0159      local.get 0
0160      i32.load
0161      i32.const 65535
0162      i32.le_s
0163      if  ;; label = @2
18 ------------------------------------------------------------
0164        local.get 0
0165        i32.load
0166        i32.const 65536
0167        i32.lt_s
0168        br_if 1 (;@1;)
19 ------------------------------------------------------------
0169      end
20 ------------------------------------------------------------
0170      local.get 0
0171      i32.load
0172      i64.const 281470681743401
0173      i64.store align=4
0174      local.get 0
0175      local.get 0
0176      i32.load
0177      i32.load
0178      call_indirect (type 0)
0179    end
21 ------------------------------------------------------------
0180    local.get 0
0181    i32.load
0182    local.set 2
0183    local.get 0
0184    i32.load
0185    local.tee 1
0186    local.get 1
0187    i32.load
0188    local.tee 3
0189    i32.const 1
0190    i32.add
0191    i32.store
0192    local.get 3
0193    local.get 2
0194    i32.store8
0195    local.get 1
0196    local.get 1
0197    i32.load
0198    i32.const -1
0199    i32.add
0200    local.tee 2
0201    i32.store
0202    block  ;; label = @1
22 ------------------------------------------------------------
0203      local.get 2
0204      br_if 0 (;@1;)
23 ------------------------------------------------------------
0205      local.get 0
0206      local.get 1
0207      i32.load
0208      call_indirect (type 1)
0209      br_if 0 (;@1;)
24 ------------------------------------------------------------
0210      local.get 0
0211      i32.load
0212      local.tee 1
0213      i32.const 24
0214      i32.store
0215      local.get 0
0216      local.get 1
0217      i32.load
0218      call_indirect (type 0)
0219    end
25 ------------------------------------------------------------
0220    local.get 0
0221    i32.load
0222    local.set 2
0223    local.get 0
0224    i32.load
0225    local.tee 1
0226    local.get 1
0227    i32.load
0228    local.tee 3
0229    i32.const 1
0230    i32.add
0231    i32.store
0232    local.get 3
0233    local.get 2
0234    i32.const 8
0235    i32.shr_u
0236    i32.store8
0237    local.get 1
0238    local.get 1
0239    i32.load
0240    i32.const -1
0241    i32.add
0242    local.tee 3
0243    i32.store
0244    block  ;; label = @1
26 ------------------------------------------------------------
0245      local.get 3
0246      br_if 0 (;@1;)
27 ------------------------------------------------------------
0247      local.get 0
0248      local.get 1
0249      i32.load
0250      call_indirect (type 1)
0251      br_if 0 (;@1;)
28 ------------------------------------------------------------
0252      local.get 0
0253      i32.load
0254      local.tee 1
0255      i32.const 24
0256      i32.store
0257      local.get 0
0258      local.get 1
0259      i32.load
0260      call_indirect (type 0)
0261    end
29 ------------------------------------------------------------
0262    local.get 0
0263    i32.load
0264    local.tee 1
0265    local.get 1
0266    i32.load
0267    local.tee 3
0268    i32.const 1
0269    i32.add
0270    i32.store
0271    local.get 3
0272    local.get 2
0273    i32.store8
0274    local.get 1
0275    local.get 1
0276    i32.load
0277    i32.const -1
0278    i32.add
0279    local.tee 2
0280    i32.store
0281    block  ;; label = @1
30 ------------------------------------------------------------
0282      local.get 2
0283      br_if 0 (;@1;)
31 ------------------------------------------------------------
0284      local.get 0
0285      local.get 1
0286      i32.load
0287      call_indirect (type 1)
0288      br_if 0 (;@1;)
32 ------------------------------------------------------------
0289      local.get 0
0290      i32.load
0291      local.tee 1
0292      i32.const 24
0293      i32.store
0294      local.get 0
0295      local.get 1
0296      i32.load
0297      call_indirect (type 0)
0298    end
33 ------------------------------------------------------------
0299    local.get 0
0300    i32.load
0301    local.set 2
0302    local.get 0
0303    i32.load
0304    local.tee 1
0305    local.get 1
0306    i32.load
0307    local.tee 3
0308    i32.const 1
0309    i32.add
0310    i32.store
0311    local.get 3
0312    local.get 2
0313    i32.const 8
0314    i32.shr_u
0315    i32.store8
0316    local.get 1
0317    local.get 1
0318    i32.load
0319    i32.const -1
0320    i32.add
0321    local.tee 3
0322    i32.store
0323    block  ;; label = @1
34 ------------------------------------------------------------
0324      local.get 3
0325      br_if 0 (;@1;)
35 ------------------------------------------------------------
0326      local.get 0
0327      local.get 1
0328      i32.load
0329      call_indirect (type 1)
0330      br_if 0 (;@1;)
36 ------------------------------------------------------------
0331      local.get 0
0332      i32.load
0333      local.tee 1
0334      i32.const 24
0335      i32.store
0336      local.get 0
0337      local.get 1
0338      i32.load
0339      call_indirect (type 0)
0340    end
37 ------------------------------------------------------------
0341    local.get 0
0342    i32.load
0343    local.tee 1
0344    local.get 1
0345    i32.load
0346    local.tee 3
0347    i32.const 1
0348    i32.add
0349    i32.store
0350    local.get 3
0351    local.get 2
0352    i32.store8
0353    local.get 1
0354    local.get 1
0355    i32.load
0356    i32.const -1
0357    i32.add
0358    local.tee 2
0359    i32.store
0360    block  ;; label = @1
38 ------------------------------------------------------------
0361      local.get 2
0362      br_if 0 (;@1;)
39 ------------------------------------------------------------
0363      local.get 0
0364      local.get 1
0365      i32.load
0366      call_indirect (type 1)
0367      br_if 0 (;@1;)
40 ------------------------------------------------------------
0368      local.get 0
0369      i32.load
0370      local.tee 1
0371      i32.const 24
0372      i32.store
0373      local.get 0
0374      local.get 1
0375      i32.load
0376      call_indirect (type 0)
0377    end
41 ------------------------------------------------------------
0378    local.get 0
0379    i32.load
0380    local.set 2
0381    local.get 0
0382    i32.load
0383    local.tee 1
0384    local.get 1
0385    i32.load
0386    local.tee 3
0387    i32.const 1
0388    i32.add
0389    i32.store
0390    local.get 3
0391    local.get 2
0392    i32.store8
0393    local.get 1
0394    local.get 1
0395    i32.load
0396    i32.const -1
0397    i32.add
0398    local.tee 2
0399    i32.store
0400    block  ;; label = @1
42 ------------------------------------------------------------
0401      local.get 2
0402      br_if 0 (;@1;)
43 ------------------------------------------------------------
0403      local.get 0
0404      local.get 1
0405      i32.load
0406      call_indirect (type 1)
0407      br_if 0 (;@1;)
44 ------------------------------------------------------------
0408      local.get 0
0409      i32.load
0410      local.tee 1
0411      i32.const 24
0412      i32.store
0413      local.get 0
0414      local.get 1
0415      i32.load
0416      call_indirect (type 0)
0417    end
45 ------------------------------------------------------------
0418    local.get 0
0419    i32.load
0420    i32.const 1
0421    i32.ge_s
0422    if  ;; label = @1
46 ------------------------------------------------------------
0423      local.get 0
0424      i32.load
0425      local.set 1
0426      i32.const 0
0427      local.set 3
0428      loop  ;; label = @2
47 ------------------------------------------------------------
0429        local.get 1
0430        i32.load
0431        local.set 4
0432        local.get 0
0433        i32.load
0434        local.tee 2
0435        local.get 2
0436        i32.load
0437        local.tee 5
0438        i32.const 1
0439        i32.add
0440        i32.store
0441        local.get 5
0442        local.get 4
0443        i32.store8
0444        local.get 2
0445        local.get 2
0446        i32.load
0447        i32.const -1
0448        i32.add
0449        local.tee 4
0450        i32.store
0451        block  ;; label = @3
48 ------------------------------------------------------------
0452          local.get 4
0453          br_if 0 (;@3;)
49 ------------------------------------------------------------
0454          local.get 0
0455          local.get 2
0456          i32.load
0457          call_indirect (type 1)
0458          br_if 0 (;@3;)
50 ------------------------------------------------------------
0459          local.get 0
0460          i32.load
0461          local.tee 2
0462          i32.const 24
0463          i32.store
0464          local.get 0
0465          local.get 2
0466          i32.load
0467          call_indirect (type 0)
0468        end
51 ------------------------------------------------------------
0469        local.get 1
0470        i32.load
0471        local.set 4
0472        local.get 1
0473        i32.load
0474        local.set 5
0475        local.get 0
0476        i32.load
0477        local.tee 2
0478        local.get 2
0479        i32.load
0480        local.tee 6
0481        i32.const 1
0482        i32.add
0483        i32.store
0484        local.get 6
0485        local.get 4
0486        local.get 5
0487        i32.const 4
0488        i32.shl
0489        i32.add
0490        i32.store8
0491        local.get 2
0492        local.get 2
0493        i32.load
0494        i32.const -1
0495        i32.add
0496        local.tee 4
0497        i32.store
0498        block  ;; label = @3
52 ------------------------------------------------------------
0499          local.get 4
0500          br_if 0 (;@3;)
53 ------------------------------------------------------------
0501          local.get 0
0502          local.get 2
0503          i32.load
0504          call_indirect (type 1)
0505          br_if 0 (;@3;)
54 ------------------------------------------------------------
0506          local.get 0
0507          i32.load
0508          local.tee 2
0509          i32.const 24
0510          i32.store
0511          local.get 0
0512          local.get 2
0513          i32.load
0514          call_indirect (type 0)
0515        end
55 ------------------------------------------------------------
0516        local.get 1
0517        i32.load
0518        local.set 4
0519        local.get 0
0520        i32.load
0521        local.tee 2
0522        local.get 2
0523        i32.load
0524        local.tee 5
0525        i32.const 1
0526        i32.add
0527        i32.store
0528        local.get 5
0529        local.get 4
0530        i32.store8
0531        local.get 2
0532        local.get 2
0533        i32.load
0534        i32.const -1
0535        i32.add
0536        local.tee 4
0537        i32.store
0538        block  ;; label = @3
56 ------------------------------------------------------------
0539          local.get 4
0540          br_if 0 (;@3;)
57 ------------------------------------------------------------
0541          local.get 0
0542          local.get 2
0543          i32.load
0544          call_indirect (type 1)
0545          br_if 0 (;@3;)
58 ------------------------------------------------------------
0546          local.get 0
0547          i32.load
0548          local.tee 2
0549          i32.const 24
0550          i32.store
0551          local.get 0
0552          local.get 2
0553          i32.load
0554          call_indirect (type 0)
0555        end
59 ------------------------------------------------------------
0556        local.get 1
0557        i32.const 84
0558        i32.add
0559        local.set 1
0560        local.get 3
0561        i32.const 1
0562        i32.add
0563        local.tee 3
0564        local.get 0
0565        i32.load
0566        i32.lt_s
0567        br_if 0 (;@2;)
60 ------------------------------------------------------------
0568      end
61 ------------------------------------------------------------
0569    end
62 ------------------------------------------------------------)
