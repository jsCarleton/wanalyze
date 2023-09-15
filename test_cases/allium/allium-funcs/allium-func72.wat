  (func (;72;) (type 10) (param i32 i32 i32 i32 i64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 4
0001    i64.const 0
0002    i64.eq
0003    if  ;; label = @1
1 ------------------------------------------------------------
0004      return
2 ------------------------------------------------------------
0005    end
3 ------------------------------------------------------------
0006    local.get 0
0007    i32.const 8
0008    i32.add
0009    local.set 6
0010    local.get 0
0011    i32.const 16
0012    i32.add
0013    local.set 7
0014    local.get 0
0015    i32.const 24
0016    i32.add
0017    local.set 8
0018    local.get 0
0019    i32.const 32
0020    i32.add
0021    local.set 9
0022    local.get 0
0023    i32.const 40
0024    i32.add
0025    local.set 10
0026    local.get 0
0027    i32.const 48
0028    i32.add
0029    local.set 11
0030    local.get 0
0031    i32.const 56
0032    i32.add
0033    local.set 12
0034    local.get 0
0035    i32.const -64
0036    i32.sub
0037    local.set 13
0038    local.get 0
0039    i32.const 72
0040    i32.add
0041    local.set 14
0042    local.get 0
0043    i32.const 80
0044    i32.add
0045    local.set 15
0046    local.get 0
0047    i32.const 88
0048    i32.add
0049    local.set 16
0050    loop  ;; label = @1
4 ------------------------------------------------------------
0051      local.get 0
0052      i32.const 0
0053      local.get 0
0054      i32.const 0
0055      call 16
0056      local.get 2
0057      i32.const 0
0058      call 16
0059      local.get 1
0060      i32.const 0
0061      call 16
0062      i64.add
0063      i64.xor
0064      call 18
0065      local.get 6
0066      i32.const 0
0067      local.get 6
0068      i32.const 0
0069      call 16
0070      local.get 2
0071      i32.const 8
0072      i32.add
0073      local.tee 18
0074      i32.const 0
0075      call 16
0076      local.get 1
0077      i32.const 8
0078      call 16
0079      i64.add
0080      i64.xor
0081      call 18
0082      local.get 7
0083      i32.const 0
0084      local.get 7
0085      i32.const 0
0086      call 16
0087      local.get 2
0088      i32.const 16
0089      i32.add
0090      local.tee 19
0091      i32.const 0
0092      call 16
0093      local.get 1
0094      i32.const 16
0095      call 16
0096      i64.add
0097      i64.xor
0098      call 18
0099      local.get 8
0100      i32.const 0
0101      local.get 8
0102      i32.const 0
0103      call 16
0104      local.get 2
0105      i32.const 24
0106      i32.add
0107      local.tee 20
0108      i32.const 0
0109      call 16
0110      local.get 1
0111      i32.const 24
0112      call 16
0113      i64.add
0114      i64.xor
0115      call 18
0116      local.get 9
0117      i32.const 0
0118      local.get 9
0119      i32.const 0
0120      call 16
0121      local.get 2
0122      i32.const 32
0123      i32.add
0124      local.tee 21
0125      i32.const 0
0126      call 16
0127      local.get 1
0128      i32.const 32
0129      call 16
0130      i64.add
0131      i64.xor
0132      call 18
0133      local.get 10
0134      i32.const 0
0135      local.get 10
0136      i32.const 0
0137      call 16
0138      local.get 2
0139      i32.const 40
0140      i32.add
0141      local.tee 22
0142      i32.const 0
0143      call 16
0144      local.get 1
0145      i32.const 40
0146      call 16
0147      i64.add
0148      i64.xor
0149      call 18
0150      local.get 11
0151      i32.const 0
0152      local.get 11
0153      i32.const 0
0154      call 16
0155      local.get 2
0156      i32.const 48
0157      i32.add
0158      local.tee 23
0159      i32.const 0
0160      call 16
0161      local.get 1
0162      i32.const 48
0163      call 16
0164      i64.add
0165      i64.xor
0166      call 18
0167      local.get 12
0168      i32.const 0
0169      local.get 12
0170      i32.const 0
0171      call 16
0172      local.get 2
0173      i32.const 56
0174      i32.add
0175      local.tee 24
0176      i32.const 0
0177      call 16
0178      local.get 1
0179      i32.const 56
0180      call 16
0181      i64.add
0182      i64.xor
0183      call 18
0184      local.get 13
0185      i32.const 0
0186      local.get 13
0187      i32.const 0
0188      call 16
0189      local.get 2
0190      i32.const -64
0191      i32.sub
0192      local.tee 25
0193      i32.const 0
0194      call 16
0195      local.get 1
0196      i32.const -64
0197      i32.sub
0198      i32.const 0
0199      call 16
0200      i64.add
0201      i64.xor
0202      call 18
0203      local.get 14
0204      i32.const 0
0205      local.get 14
0206      i32.const 0
0207      call 16
0208      local.get 2
0209      i32.const 72
0210      i32.add
0211      local.tee 26
0212      i32.const 0
0213      call 16
0214      local.get 1
0215      i32.const 72
0216      call 16
0217      i64.add
0218      i64.xor
0219      call 18
0220      local.get 15
0221      i32.const 0
0222      local.get 15
0223      i32.const 0
0224      call 16
0225      local.get 2
0226      i32.const 80
0227      i32.add
0228      local.tee 27
0229      i32.const 0
0230      call 16
0231      local.get 1
0232      i32.const 80
0233      call 16
0234      i64.add
0235      i64.xor
0236      call 18
0237      local.get 16
0238      i32.const 0
0239      local.get 16
0240      i32.const 0
0241      call 16
0242      local.get 2
0243      i32.const 88
0244      i32.add
0245      local.tee 28
0246      i32.const 0
0247      call 16
0248      local.get 1
0249      i32.const 88
0250      call 16
0251      i64.add
0252      i64.xor
0253      call 18
0254      local.get 0
0255      call 36
0256      local.get 3
0257      i32.const 0
0258      local.get 3
0259      i32.const 0
0260      call 16
0261      local.get 0
0262      i32.const 0
0263      call 16
0264      i64.xor
0265      call 18
0266      local.get 3
0267      i32.const 8
0268      i32.add
0269      local.tee 5
0270      i32.const 0
0271      local.get 5
0272      i32.const 0
0273      call 16
0274      local.get 6
0275      i32.const 0
0276      call 16
0277      i64.xor
0278      call 18
0279      local.get 3
0280      i32.const 16
0281      i32.add
0282      local.tee 5
0283      i32.const 0
0284      local.get 5
0285      i32.const 0
0286      call 16
0287      local.get 7
0288      i32.const 0
0289      call 16
0290      i64.xor
0291      call 18
0292      local.get 3
0293      i32.const 24
0294      i32.add
0295      local.tee 5
0296      i32.const 0
0297      local.get 5
0298      i32.const 0
0299      call 16
0300      local.get 8
0301      i32.const 0
0302      call 16
0303      i64.xor
0304      call 18
0305      local.get 3
0306      i32.const 32
0307      i32.add
0308      local.tee 5
0309      i32.const 0
0310      local.get 5
0311      i32.const 0
0312      call 16
0313      local.get 9
0314      i32.const 0
0315      call 16
0316      i64.xor
0317      call 18
0318      local.get 3
0319      i32.const 40
0320      i32.add
0321      local.tee 5
0322      i32.const 0
0323      local.get 5
0324      i32.const 0
0325      call 16
0326      local.get 10
0327      i32.const 0
0328      call 16
0329      i64.xor
0330      call 18
0331      local.get 3
0332      i32.const 48
0333      i32.add
0334      local.tee 5
0335      i32.const 0
0336      local.get 5
0337      i32.const 0
0338      call 16
0339      local.get 11
0340      i32.const 0
0341      call 16
0342      i64.xor
0343      call 18
0344      local.get 3
0345      i32.const 56
0346      i32.add
0347      local.tee 5
0348      i32.const 0
0349      local.get 5
0350      i32.const 0
0351      call 16
0352      local.get 12
0353      i32.const 0
0354      call 16
0355      i64.xor
0356      call 18
0357      local.get 3
0358      i32.const -64
0359      i32.sub
0360      local.tee 5
0361      i32.const 0
0362      local.get 5
0363      i32.const 0
0364      call 16
0365      local.get 13
0366      i32.const 0
0367      call 16
0368      i64.xor
0369      call 18
0370      local.get 3
0371      i32.const 72
0372      i32.add
0373      local.tee 5
0374      i32.const 0
0375      local.get 5
0376      i32.const 0
0377      call 16
0378      local.get 14
0379      i32.const 0
0380      call 16
0381      i64.xor
0382      call 18
0383      local.get 3
0384      i32.const 80
0385      i32.add
0386      local.tee 5
0387      i32.const 0
0388      local.get 5
0389      i32.const 0
0390      call 16
0391      local.get 15
0392      i32.const 0
0393      call 16
0394      i64.xor
0395      call 18
0396      local.get 3
0397      i32.const 88
0398      i32.add
0399      local.tee 5
0400      i32.const 0
0401      local.get 5
0402      i32.const 0
0403      call 16
0404      local.get 16
0405      i32.const 0
0406      call 16
0407      i64.xor
0408      call 18
0409      local.get 2
0410      i32.const 0
0411      local.get 2
0412      i32.const 0
0413      call 16
0414      local.get 16
0415      i32.const 0
0416      call 16
0417      i64.xor
0418      call 18
0419      local.get 18
0420      i32.const 0
0421      local.get 18
0422      i32.const 0
0423      call 16
0424      local.get 0
0425      i32.const 0
0426      call 16
0427      i64.xor
0428      call 18
0429      local.get 19
0430      i32.const 0
0431      local.get 19
0432      i32.const 0
0433      call 16
0434      local.get 6
0435      i32.const 0
0436      call 16
0437      i64.xor
0438      call 18
0439      local.get 20
0440      i32.const 0
0441      local.get 20
0442      i32.const 0
0443      call 16
0444      local.get 7
0445      i32.const 0
0446      call 16
0447      i64.xor
0448      call 18
0449      local.get 21
0450      i32.const 0
0451      local.get 21
0452      i32.const 0
0453      call 16
0454      local.get 8
0455      i32.const 0
0456      call 16
0457      i64.xor
0458      call 18
0459      local.get 22
0460      i32.const 0
0461      local.get 22
0462      i32.const 0
0463      call 16
0464      local.get 9
0465      i32.const 0
0466      call 16
0467      i64.xor
0468      call 18
0469      local.get 23
0470      i32.const 0
0471      local.get 23
0472      i32.const 0
0473      call 16
0474      local.get 10
0475      i32.const 0
0476      call 16
0477      i64.xor
0478      call 18
0479      local.get 24
0480      i32.const 0
0481      local.get 24
0482      i32.const 0
0483      call 16
0484      local.get 11
0485      i32.const 0
0486      call 16
0487      i64.xor
0488      call 18
0489      local.get 25
0490      i32.const 0
0491      local.get 25
0492      i32.const 0
0493      call 16
0494      local.get 12
0495      i32.const 0
0496      call 16
0497      i64.xor
0498      call 18
0499      local.get 26
0500      i32.const 0
0501      local.get 26
0502      i32.const 0
0503      call 16
0504      local.get 13
0505      i32.const 0
0506      call 16
0507      i64.xor
0508      call 18
0509      local.get 27
0510      i32.const 0
0511      local.get 27
0512      i32.const 0
0513      call 16
0514      local.get 14
0515      i32.const 0
0516      call 16
0517      i64.xor
0518      call 18
0519      local.get 28
0520      i32.const 0
0521      local.get 28
0522      i32.const 0
0523      call 16
0524      local.get 15
0525      i32.const 0
0526      call 16
0527      i64.xor
0528      call 18
0529      local.get 3
0530      i32.const 96
0531      i32.add
0532      local.set 3
0533      local.get 2
0534      i32.const 96
0535      i32.add
0536      local.set 2
0537      local.get 1
0538      i32.const 96
0539      i32.add
0540      local.set 1
0541      local.get 17
0542      i32.const 1
0543      i32.add
0544      local.tee 17
0545      i64.extend_i32_u
0546      local.get 4
0547      i64.lt_u
0548      br_if 0 (;@1;)
5 ------------------------------------------------------------
0549    end
6 ------------------------------------------------------------)
