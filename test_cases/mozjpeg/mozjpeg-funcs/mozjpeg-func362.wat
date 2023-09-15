  (func (;362;) (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    i32.const 7
0001    local.set 15
0002    i32.const 7
0003    local.set 5
0004    local.get 0
0005    local.set 1
0006    loop  ;; label = @1
1 ------------------------------------------------------------
0007      local.get 1
0008      local.get 1
0009      i32.load offset=16
0010      local.tee 3
0011      local.get 1
0012      i32.load offset=12
0013      local.tee 6
0014      i32.add
0015      local.tee 2
0016      local.get 1
0017      i32.load offset=28
0018      local.tee 4
0019      local.get 1
0020      i32.load
0021      local.tee 8
0022      i32.add
0023      local.tee 7
0024      i32.add
0025      local.tee 9
0026      local.get 1
0027      i32.load offset=20
0028      local.tee 10
0029      local.get 1
0030      i32.load offset=8
0031      local.tee 11
0032      i32.add
0033      local.tee 12
0034      local.get 1
0035      i32.load offset=24
0036      local.tee 13
0037      local.get 1
0038      i32.load offset=4
0039      local.tee 14
0040      i32.add
0041      local.tee 16
0042      i32.add
0043      local.tee 17
0044      i32.sub
0045      i32.store offset=16
0046      local.get 1
0047      local.get 9
0048      local.get 17
0049      i32.add
0050      i32.store
0051      local.get 1
0052      local.get 7
0053      local.get 2
0054      i32.sub
0055      local.tee 2
0056      local.get 2
0057      local.get 16
0058      local.get 12
0059      i32.sub
0060      i32.add
0061      i32.const 181
0062      i32.mul
0063      i32.const 8
0064      i32.shr_s
0065      local.tee 7
0066      i32.sub
0067      i32.store offset=24
0068      local.get 1
0069      local.get 2
0070      local.get 7
0071      i32.add
0072      i32.store offset=8
0073      local.get 1
0074      local.get 11
0075      local.get 10
0076      i32.sub
0077      local.tee 7
0078      local.get 6
0079      local.get 3
0080      i32.sub
0081      i32.add
0082      local.tee 3
0083      local.get 14
0084      local.get 13
0085      i32.sub
0086      local.tee 6
0087      local.get 8
0088      local.get 4
0089      i32.sub
0090      local.tee 2
0091      i32.add
0092      local.tee 4
0093      i32.sub
0094      i32.const 98
0095      i32.mul
0096      i32.const 8
0097      i32.shr_s
0098      local.tee 8
0099      local.get 3
0100      i32.const 139
0101      i32.mul
0102      i32.const 8
0103      i32.shr_s
0104      i32.add
0105      local.tee 3
0106      local.get 2
0107      local.get 6
0108      local.get 7
0109      i32.add
0110      i32.const 181
0111      i32.mul
0112      i32.const 8
0113      i32.shr_s
0114      local.tee 6
0115      i32.sub
0116      local.tee 7
0117      i32.add
0118      i32.store offset=20
0119      local.get 1
0120      local.get 7
0121      local.get 3
0122      i32.sub
0123      i32.store offset=12
0124      local.get 1
0125      local.get 2
0126      local.get 6
0127      i32.add
0128      local.tee 2
0129      local.get 8
0130      local.get 4
0131      i32.const 334
0132      i32.mul
0133      i32.const 8
0134      i32.shr_s
0135      i32.add
0136      local.tee 3
0137      i32.sub
0138      i32.store offset=28
0139      local.get 1
0140      local.get 2
0141      local.get 3
0142      i32.add
0143      i32.store offset=4
0144      local.get 5
0145      local.tee 2
0146      i32.const -1
0147      i32.add
0148      local.set 5
0149      local.get 1
0150      i32.const 32
0151      i32.add
0152      local.set 1
0153      local.get 2
0154      br_if 0 (;@1;)
2 ------------------------------------------------------------
0155    end
3 ------------------------------------------------------------
0156    loop  ;; label = @1
4 ------------------------------------------------------------
0157      local.get 0
0158      local.get 0
0159      i32.load offset=128
0160      local.tee 5
0161      local.get 0
0162      i32.load offset=96
0163      local.tee 2
0164      i32.add
0165      local.tee 1
0166      local.get 0
0167      i32.load offset=224
0168      local.tee 3
0169      local.get 0
0170      i32.load
0171      local.tee 6
0172      i32.add
0173      local.tee 4
0174      i32.add
0175      local.tee 8
0176      local.get 0
0177      i32.load offset=160
0178      local.tee 7
0179      local.get 0
0180      i32.load offset=64
0181      local.tee 9
0182      i32.add
0183      local.tee 10
0184      local.get 0
0185      i32.load offset=192
0186      local.tee 11
0187      local.get 0
0188      i32.load offset=32
0189      local.tee 12
0190      i32.add
0191      local.tee 13
0192      i32.add
0193      local.tee 14
0194      i32.sub
0195      i32.store offset=128
0196      local.get 0
0197      local.get 8
0198      local.get 14
0199      i32.add
0200      i32.store
0201      local.get 0
0202      local.get 4
0203      local.get 1
0204      i32.sub
0205      local.tee 1
0206      local.get 1
0207      local.get 13
0208      local.get 10
0209      i32.sub
0210      i32.add
0211      i32.const 181
0212      i32.mul
0213      i32.const 8
0214      i32.shr_s
0215      local.tee 4
0216      i32.sub
0217      i32.store offset=192
0218      local.get 0
0219      local.get 1
0220      local.get 4
0221      i32.add
0222      i32.store offset=64
0223      local.get 0
0224      local.get 9
0225      local.get 7
0226      i32.sub
0227      local.tee 4
0228      local.get 2
0229      local.get 5
0230      i32.sub
0231      i32.add
0232      local.tee 5
0233      local.get 12
0234      local.get 11
0235      i32.sub
0236      local.tee 2
0237      local.get 6
0238      local.get 3
0239      i32.sub
0240      local.tee 1
0241      i32.add
0242      local.tee 3
0243      i32.sub
0244      i32.const 98
0245      i32.mul
0246      i32.const 8
0247      i32.shr_s
0248      local.tee 6
0249      local.get 5
0250      i32.const 139
0251      i32.mul
0252      i32.const 8
0253      i32.shr_s
0254      i32.add
0255      local.tee 5
0256      local.get 1
0257      local.get 2
0258      local.get 4
0259      i32.add
0260      i32.const 181
0261      i32.mul
0262      i32.const 8
0263      i32.shr_s
0264      local.tee 2
0265      i32.sub
0266      local.tee 4
0267      i32.add
0268      i32.store offset=160
0269      local.get 0
0270      local.get 4
0271      local.get 5
0272      i32.sub
0273      i32.store offset=96
0274      local.get 0
0275      local.get 1
0276      local.get 2
0277      i32.add
0278      local.tee 1
0279      local.get 6
0280      local.get 3
0281      i32.const 334
0282      i32.mul
0283      i32.const 8
0284      i32.shr_s
0285      i32.add
0286      local.tee 5
0287      i32.sub
0288      i32.store offset=224
0289      local.get 0
0290      local.get 1
0291      local.get 5
0292      i32.add
0293      i32.store offset=32
0294      local.get 15
0295      local.tee 1
0296      i32.const -1
0297      i32.add
0298      local.set 15
0299      local.get 0
0300      i32.const 4
0301      i32.add
0302      local.set 0
0303      local.get 1
0304      br_if 0 (;@1;)
5 ------------------------------------------------------------
0305    end
6 ------------------------------------------------------------)
