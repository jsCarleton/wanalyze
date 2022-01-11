  (func (;361;) (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    i32.const 7
0001    local.set 15
0002    i32.const 7
0003    local.set 9
0004    local.get 0
0005    local.set 1
0006    loop  ;; label = @1
1 ------------------------------------------------------------
0007      local.get 1
0008      local.get 1
0009      i32.load
0010      local.tee 2
0011      local.get 1
0012      i32.load
0013      local.tee 4
0014      i32.add
0015      local.tee 3
0016      local.get 1
0017      i32.load
0018      local.tee 8
0019      local.get 1
0020      i32.load
0021      local.tee 5
0022      i32.add
0023      local.tee 6
0024      i32.add
0025      local.tee 7
0026      local.get 1
0027      i32.load
0028      local.tee 10
0029      local.get 1
0030      i32.load
0031      local.tee 11
0032      i32.add
0033      local.tee 12
0034      local.get 1
0035      i32.load
0036      local.tee 13
0037      local.get 1
0038      i32.load
0039      local.tee 14
0040      i32.add
0041      local.tee 16
0042      i32.add
0043      local.tee 17
0044      i32.sub
0045      i32.const 2
0046      i32.shl
0047      i32.store
0048      local.get 1
0049      local.get 7
0050      local.get 17
0051      i32.add
0052      i32.const 2
0053      i32.shl
0054      i32.store
0055      local.get 1
0056      local.get 4
0057      local.get 2
0058      i32.sub
0059      local.tee 2
0060      local.get 5
0061      local.get 8
0062      i32.sub
0063      local.tee 4
0064      i32.add
0065      i32.const -7373
0066      i32.mul
0067      i32.const 1024
0068      i32.add
0069      local.tee 5
0070      local.get 2
0071      i32.const 2446
0072      i32.mul
0073      i32.add
0074      local.get 2
0075      local.get 14
0076      local.get 13
0077      i32.sub
0078      local.tee 8
0079      i32.add
0080      local.tee 7
0081      local.get 11
0082      local.get 10
0083      i32.sub
0084      local.tee 2
0085      local.get 4
0086      i32.add
0087      local.tee 10
0088      i32.add
0089      i32.const 9633
0090      i32.mul
0091      local.tee 11
0092      local.get 7
0093      i32.const -16069
0094      i32.mul
0095      i32.add
0096      local.tee 7
0097      i32.add
0098      i32.const 11
0099      i32.shr_s
0100      i32.store
0101      local.get 1
0102      local.get 6
0103      local.get 3
0104      i32.sub
0105      local.tee 3
0106      local.get 16
0107      local.get 12
0108      i32.sub
0109      local.tee 6
0110      i32.add
0111      i32.const 4433
0112      i32.mul
0113      i32.const 1024
0114      i32.add
0115      local.tee 12
0116      local.get 6
0117      i32.const -15137
0118      i32.mul
0119      i32.add
0120      i32.const 11
0121      i32.shr_s
0122      i32.store
0123      local.get 1
0124      local.get 12
0125      local.get 3
0126      i32.const 6270
0127      i32.mul
0128      i32.add
0129      i32.const 11
0130      i32.shr_s
0131      i32.store
0132      local.get 1
0133      local.get 11
0134      local.get 10
0135      i32.const -3196
0136      i32.mul
0137      i32.add
0138      local.tee 3
0139      local.get 2
0140      local.get 8
0141      i32.add
0142      i32.const -20995
0143      i32.mul
0144      i32.const 1024
0145      i32.add
0146      local.tee 6
0147      local.get 2
0148      i32.const 16819
0149      i32.mul
0150      i32.add
0151      i32.add
0152      i32.const 11
0153      i32.shr_s
0154      i32.store
0155      local.get 1
0156      local.get 6
0157      local.get 8
0158      i32.const 25172
0159      i32.mul
0160      i32.add
0161      local.get 7
0162      i32.add
0163      i32.const 11
0164      i32.shr_s
0165      i32.store
0166      local.get 1
0167      local.get 5
0168      local.get 4
0169      i32.const 12299
0170      i32.mul
0171      i32.add
0172      local.get 3
0173      i32.add
0174      i32.const 11
0175      i32.shr_s
0176      i32.store
0177      local.get 9
0178      local.tee 2
0179      i32.const -1
0180      i32.add
0181      local.set 9
0182      local.get 1
0183      i32.const 32
0184      i32.add
0185      local.set 1
0186      local.get 2
0187      br_if 0 (;@1;)
2 ------------------------------------------------------------
0188    end
3 ------------------------------------------------------------
0189    loop  ;; label = @1
4 ------------------------------------------------------------
0190      local.get 0
0191      local.get 0
0192      i32.load
0193      local.tee 1
0194      local.get 0
0195      i32.load
0196      local.tee 9
0197      i32.add
0198      local.tee 4
0199      local.get 0
0200      i32.load
0201      local.tee 2
0202      local.get 0
0203      i32.load
0204      local.tee 8
0205      i32.add
0206      local.tee 3
0207      i32.add
0208      local.tee 5
0209      local.get 0
0210      i32.load
0211      local.tee 6
0212      local.get 0
0213      i32.load
0214      local.tee 7
0215      i32.add
0216      local.tee 10
0217      local.get 0
0218      i32.load
0219      local.tee 11
0220      local.get 0
0221      i32.load
0222      local.tee 12
0223      i32.add
0224      local.tee 13
0225      i32.add
0226      local.tee 14
0227      i32.sub
0228      i32.const 2
0229      i32.add
0230      i32.const 2
0231      i32.shr_s
0232      i32.store
0233      local.get 0
0234      local.get 5
0235      local.get 14
0236      i32.add
0237      i32.const 2
0238      i32.add
0239      i32.const 2
0240      i32.shr_s
0241      i32.store
0242      local.get 0
0243      local.get 9
0244      local.get 1
0245      i32.sub
0246      local.tee 1
0247      local.get 8
0248      local.get 2
0249      i32.sub
0250      local.tee 9
0251      i32.add
0252      i32.const -7373
0253      i32.mul
0254      i32.const 16384
0255      i32.add
0256      local.tee 8
0257      local.get 1
0258      i32.const 2446
0259      i32.mul
0260      i32.add
0261      local.get 1
0262      local.get 12
0263      local.get 11
0264      i32.sub
0265      local.tee 2
0266      i32.add
0267      local.tee 5
0268      local.get 7
0269      local.get 6
0270      i32.sub
0271      local.tee 1
0272      local.get 9
0273      i32.add
0274      local.tee 6
0275      i32.add
0276      i32.const 9633
0277      i32.mul
0278      local.tee 7
0279      local.get 5
0280      i32.const -16069
0281      i32.mul
0282      i32.add
0283      local.tee 5
0284      i32.add
0285      i32.const 15
0286      i32.shr_s
0287      i32.store
0288      local.get 0
0289      local.get 3
0290      local.get 4
0291      i32.sub
0292      local.tee 4
0293      local.get 13
0294      local.get 10
0295      i32.sub
0296      local.tee 3
0297      i32.add
0298      i32.const 4433
0299      i32.mul
0300      i32.const 16384
0301      i32.add
0302      local.tee 10
0303      local.get 3
0304      i32.const -15137
0305      i32.mul
0306      i32.add
0307      i32.const 15
0308      i32.shr_s
0309      i32.store
0310      local.get 0
0311      local.get 10
0312      local.get 4
0313      i32.const 6270
0314      i32.mul
0315      i32.add
0316      i32.const 15
0317      i32.shr_s
0318      i32.store
0319      local.get 0
0320      local.get 7
0321      local.get 6
0322      i32.const -3196
0323      i32.mul
0324      i32.add
0325      local.tee 4
0326      local.get 1
0327      local.get 2
0328      i32.add
0329      i32.const -20995
0330      i32.mul
0331      i32.const 16384
0332      i32.add
0333      local.tee 3
0334      local.get 1
0335      i32.const 16819
0336      i32.mul
0337      i32.add
0338      i32.add
0339      i32.const 15
0340      i32.shr_s
0341      i32.store
0342      local.get 0
0343      local.get 3
0344      local.get 2
0345      i32.const 25172
0346      i32.mul
0347      i32.add
0348      local.get 5
0349      i32.add
0350      i32.const 15
0351      i32.shr_s
0352      i32.store
0353      local.get 0
0354      local.get 8
0355      local.get 9
0356      i32.const 12299
0357      i32.mul
0358      i32.add
0359      local.get 4
0360      i32.add
0361      i32.const 15
0362      i32.shr_s
0363      i32.store
0364      local.get 15
0365      local.tee 1
0366      i32.const -1
0367      i32.add
0368      local.set 15
0369      local.get 0
0370      i32.const 4
0371      i32.add
0372      local.set 0
0373      local.get 1
0374      br_if 0 (;@1;)
5 ------------------------------------------------------------
0375    end
6 ------------------------------------------------------------)
