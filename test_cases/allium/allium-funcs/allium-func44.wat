  (func (;44;) (type 10) (param i32 i32 i32 i32 i64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
0009    local.set 5
0010    local.get 0
0011    i32.const 16
0012    i32.add
0013    local.set 6
0014    local.get 0
0015    i32.const 24
0016    i32.add
0017    local.set 7
0018    local.get 0
0019    i32.const 32
0020    i32.add
0021    local.set 8
0022    local.get 0
0023    i32.const 40
0024    i32.add
0025    local.set 9
0026    local.get 0
0027    i32.const 48
0028    i32.add
0029    local.set 10
0030    local.get 0
0031    i32.const 56
0032    i32.add
0033    local.set 11
0034    local.get 0
0035    i32.const -64
0036    i32.sub
0037    local.set 12
0038    local.get 0
0039    i32.const 72
0040    i32.add
0041    local.set 13
0042    local.get 0
0043    i32.const 80
0044    i32.add
0045    local.set 14
0046    local.get 0
0047    i32.const 88
0048    i32.add
0049    local.set 15
0050    local.get 3
0051    local.get 4
0052    i32.wrap_i64
0053    i32.const 12
0054    i32.mul
0055    i32.const -12
0056    i32.add
0057    i32.const 3
0058    i32.shl
0059    i32.add
0060    local.set 3
0061    loop  ;; label = @1
4 ------------------------------------------------------------
0062      local.get 0
0063      i32.const 0
0064      local.get 0
0065      i32.const 0
0066      call 16
0067      local.get 2
0068      i32.const 0
0069      call 16
0070      local.get 1
0071      i32.const 0
0072      call 16
0073      i64.add
0074      i64.xor
0075      call 18
0076      local.get 5
0077      i32.const 0
0078      local.get 5
0079      i32.const 0
0080      call 16
0081      local.get 2
0082      i32.const 8
0083      i32.add
0084      local.tee 17
0085      i32.const 0
0086      call 16
0087      local.get 1
0088      i32.const 8
0089      i32.add
0090      local.tee 28
0091      i32.const 0
0092      call 16
0093      i64.add
0094      i64.xor
0095      call 18
0096      local.get 6
0097      i32.const 0
0098      local.get 6
0099      i32.const 0
0100      call 16
0101      local.get 2
0102      i32.const 16
0103      i32.add
0104      local.tee 18
0105      i32.const 0
0106      call 16
0107      local.get 1
0108      i32.const 16
0109      i32.add
0110      local.tee 29
0111      i32.const 0
0112      call 16
0113      i64.add
0114      i64.xor
0115      call 18
0116      local.get 7
0117      i32.const 0
0118      local.get 7
0119      i32.const 0
0120      call 16
0121      local.get 2
0122      i32.const 24
0123      i32.add
0124      local.tee 19
0125      i32.const 0
0126      call 16
0127      local.get 1
0128      i32.const 24
0129      i32.add
0130      local.tee 30
0131      i32.const 0
0132      call 16
0133      i64.add
0134      i64.xor
0135      call 18
0136      local.get 8
0137      i32.const 0
0138      local.get 8
0139      i32.const 0
0140      call 16
0141      local.get 2
0142      i32.const 32
0143      i32.add
0144      local.tee 20
0145      i32.const 0
0146      call 16
0147      local.get 1
0148      i32.const 32
0149      i32.add
0150      local.tee 31
0151      i32.const 0
0152      call 16
0153      i64.add
0154      i64.xor
0155      call 18
0156      local.get 9
0157      i32.const 0
0158      local.get 9
0159      i32.const 0
0160      call 16
0161      local.get 2
0162      i32.const 40
0163      i32.add
0164      local.tee 21
0165      i32.const 0
0166      call 16
0167      local.get 1
0168      i32.const 40
0169      i32.add
0170      local.tee 32
0171      i32.const 0
0172      call 16
0173      i64.add
0174      i64.xor
0175      call 18
0176      local.get 10
0177      i32.const 0
0178      local.get 10
0179      i32.const 0
0180      call 16
0181      local.get 2
0182      i32.const 48
0183      i32.add
0184      local.tee 22
0185      i32.const 0
0186      call 16
0187      local.get 1
0188      i32.const 48
0189      i32.add
0190      local.tee 33
0191      i32.const 0
0192      call 16
0193      i64.add
0194      i64.xor
0195      call 18
0196      local.get 11
0197      i32.const 0
0198      local.get 11
0199      i32.const 0
0200      call 16
0201      local.get 2
0202      i32.const 56
0203      i32.add
0204      local.tee 23
0205      i32.const 0
0206      call 16
0207      local.get 1
0208      i32.const 56
0209      i32.add
0210      local.tee 34
0211      i32.const 0
0212      call 16
0213      i64.add
0214      i64.xor
0215      call 18
0216      local.get 12
0217      i32.const 0
0218      local.get 12
0219      i32.const 0
0220      call 16
0221      local.get 2
0222      i32.const -64
0223      i32.sub
0224      local.tee 24
0225      i32.const 0
0226      call 16
0227      local.get 1
0228      i32.const -64
0229      i32.sub
0230      local.tee 35
0231      i32.const 0
0232      call 16
0233      i64.add
0234      i64.xor
0235      call 18
0236      local.get 13
0237      i32.const 0
0238      local.get 13
0239      i32.const 0
0240      call 16
0241      local.get 2
0242      i32.const 72
0243      i32.add
0244      local.tee 25
0245      i32.const 0
0246      call 16
0247      local.get 1
0248      i32.const 72
0249      i32.add
0250      local.tee 36
0251      i32.const 0
0252      call 16
0253      i64.add
0254      i64.xor
0255      call 18
0256      local.get 14
0257      i32.const 0
0258      local.get 14
0259      i32.const 0
0260      call 16
0261      local.get 2
0262      i32.const 80
0263      i32.add
0264      local.tee 26
0265      i32.const 0
0266      call 16
0267      local.get 1
0268      i32.const 80
0269      i32.add
0270      local.tee 37
0271      i32.const 0
0272      call 16
0273      i64.add
0274      i64.xor
0275      call 18
0276      local.get 15
0277      i32.const 0
0278      local.get 15
0279      i32.const 0
0280      call 16
0281      local.get 2
0282      i32.const 88
0283      i32.add
0284      local.tee 27
0285      i32.const 0
0286      call 16
0287      local.get 1
0288      i32.const 88
0289      i32.add
0290      local.tee 38
0291      i32.const 0
0292      call 16
0293      i64.add
0294      i64.xor
0295      call 18
0296      local.get 0
0297      call 36
0298      local.get 3
0299      i32.const 0
0300      local.get 0
0301      i32.const 0
0302      call 16
0303      local.get 1
0304      i32.const 0
0305      call 16
0306      i64.xor
0307      call 18
0308      local.get 3
0309      i32.const 8
0310      local.get 5
0311      i32.const 0
0312      call 16
0313      local.get 28
0314      i32.const 0
0315      call 16
0316      i64.xor
0317      call 18
0318      local.get 3
0319      i32.const 16
0320      local.get 6
0321      i32.const 0
0322      call 16
0323      local.get 29
0324      i32.const 0
0325      call 16
0326      i64.xor
0327      call 18
0328      local.get 3
0329      i32.const 24
0330      local.get 7
0331      i32.const 0
0332      call 16
0333      local.get 30
0334      i32.const 0
0335      call 16
0336      i64.xor
0337      call 18
0338      local.get 3
0339      i32.const 32
0340      local.get 8
0341      i32.const 0
0342      call 16
0343      local.get 31
0344      i32.const 0
0345      call 16
0346      i64.xor
0347      call 18
0348      local.get 3
0349      i32.const 40
0350      local.get 9
0351      i32.const 0
0352      call 16
0353      local.get 32
0354      i32.const 0
0355      call 16
0356      i64.xor
0357      call 18
0358      local.get 3
0359      i32.const 48
0360      local.get 10
0361      i32.const 0
0362      call 16
0363      local.get 33
0364      i32.const 0
0365      call 16
0366      i64.xor
0367      call 18
0368      local.get 3
0369      i32.const 56
0370      local.get 11
0371      i32.const 0
0372      call 16
0373      local.get 34
0374      i32.const 0
0375      call 16
0376      i64.xor
0377      call 18
0378      local.get 3
0379      i32.const -64
0380      i32.sub
0381      i32.const 0
0382      local.get 12
0383      i32.const 0
0384      call 16
0385      local.get 35
0386      i32.const 0
0387      call 16
0388      i64.xor
0389      call 18
0390      local.get 3
0391      i32.const 72
0392      local.get 13
0393      i32.const 0
0394      call 16
0395      local.get 36
0396      i32.const 0
0397      call 16
0398      i64.xor
0399      call 18
0400      local.get 3
0401      i32.const 80
0402      local.get 14
0403      i32.const 0
0404      call 16
0405      local.get 37
0406      i32.const 0
0407      call 16
0408      i64.xor
0409      call 18
0410      local.get 3
0411      i32.const 88
0412      local.get 15
0413      i32.const 0
0414      call 16
0415      local.get 38
0416      i32.const 0
0417      call 16
0418      i64.xor
0419      call 18
0420      local.get 2
0421      i32.const 0
0422      local.get 2
0423      i32.const 0
0424      call 16
0425      local.get 15
0426      i32.const 0
0427      call 16
0428      i64.xor
0429      call 18
0430      local.get 17
0431      i32.const 0
0432      local.get 17
0433      i32.const 0
0434      call 16
0435      local.get 0
0436      i32.const 0
0437      call 16
0438      i64.xor
0439      call 18
0440      local.get 18
0441      i32.const 0
0442      local.get 18
0443      i32.const 0
0444      call 16
0445      local.get 5
0446      i32.const 0
0447      call 16
0448      i64.xor
0449      call 18
0450      local.get 19
0451      i32.const 0
0452      local.get 19
0453      i32.const 0
0454      call 16
0455      local.get 6
0456      i32.const 0
0457      call 16
0458      i64.xor
0459      call 18
0460      local.get 20
0461      i32.const 0
0462      local.get 20
0463      i32.const 0
0464      call 16
0465      local.get 7
0466      i32.const 0
0467      call 16
0468      i64.xor
0469      call 18
0470      local.get 21
0471      i32.const 0
0472      local.get 21
0473      i32.const 0
0474      call 16
0475      local.get 8
0476      i32.const 0
0477      call 16
0478      i64.xor
0479      call 18
0480      local.get 22
0481      i32.const 0
0482      local.get 22
0483      i32.const 0
0484      call 16
0485      local.get 9
0486      i32.const 0
0487      call 16
0488      i64.xor
0489      call 18
0490      local.get 23
0491      i32.const 0
0492      local.get 23
0493      i32.const 0
0494      call 16
0495      local.get 10
0496      i32.const 0
0497      call 16
0498      i64.xor
0499      call 18
0500      local.get 24
0501      i32.const 0
0502      local.get 24
0503      i32.const 0
0504      call 16
0505      local.get 11
0506      i32.const 0
0507      call 16
0508      i64.xor
0509      call 18
0510      local.get 25
0511      i32.const 0
0512      local.get 25
0513      i32.const 0
0514      call 16
0515      local.get 12
0516      i32.const 0
0517      call 16
0518      i64.xor
0519      call 18
0520      local.get 26
0521      i32.const 0
0522      local.get 26
0523      i32.const 0
0524      call 16
0525      local.get 13
0526      i32.const 0
0527      call 16
0528      i64.xor
0529      call 18
0530      local.get 27
0531      i32.const 0
0532      local.get 27
0533      i32.const 0
0534      call 16
0535      local.get 14
0536      i32.const 0
0537      call 16
0538      i64.xor
0539      call 18
0540      local.get 2
0541      i32.const 96
0542      i32.add
0543      local.set 2
0544      local.get 1
0545      i32.const 96
0546      i32.add
0547      local.set 1
0548      local.get 3
0549      i32.const -96
0550      i32.add
0551      local.set 3
0552      local.get 16
0553      i32.const 1
0554      i32.add
0555      local.tee 16
0556      i64.extend_i32_u
0557      local.get 4
0558      i64.lt_u
0559      br_if 0 (;@1;)
5 ------------------------------------------------------------
0560    end
6 ------------------------------------------------------------)
