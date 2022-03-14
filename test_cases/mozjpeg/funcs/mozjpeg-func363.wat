  (func (;363;) (type 0) (param i32)
    (local i32 i32 i32 i32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32)
0 ------------------------------------------------------------
0000    i32.const 7
0001    local.set 2
0002    i32.const 7
0003    local.set 3
0004    local.get 0
0005    local.set 1
0006    loop  ;; label = @1
1 ------------------------------------------------------------
0007      local.get 1
0008      local.get 1
0009      f32.load
0010      local.tee 6
0011      local.get 1
0012      f32.load offset=28
0013      local.tee 7
0014      f32.add
0015      local.tee 5
0016      local.get 1
0017      f32.load offset=12
0018      local.tee 9
0019      local.get 1
0020      f32.load offset=16
0021      local.tee 11
0022      f32.add
0023      local.tee 8
0024      f32.add
0025      local.tee 10
0026      local.get 1
0027      f32.load offset=4
0028      local.tee 12
0029      local.get 1
0030      f32.load offset=24
0031      local.tee 13
0032      f32.add
0033      local.tee 14
0034      local.get 1
0035      f32.load offset=8
0036      local.tee 15
0037      local.get 1
0038      f32.load offset=20
0039      local.tee 16
0040      f32.add
0041      local.tee 17
0042      f32.add
0043      local.tee 18
0044      f32.sub
0045      f32.store offset=16
0046      local.get 1
0047      local.get 18
0048      local.get 10
0049      f32.add
0050      f32.store
0051      local.get 1
0052      local.get 5
0053      local.get 8
0054      f32.sub
0055      local.tee 5
0056      local.get 5
0057      local.get 14
0058      local.get 17
0059      f32.sub
0060      f32.add
0061      f32.const 0.000320729566738
0062      f32.mul
0063      local.tee 8
0064      f32.sub
0065      f32.store offset=24
0066      local.get 1
0067      local.get 5
0068      local.get 8
0069      f32.add
0070      f32.store offset=8
0071      local.get 1
0072      local.get 6
0073      local.get 7
0074      f32.sub
0075      local.tee 5
0076      local.get 12
0077      local.get 13
0078      f32.sub
0079      local.tee 6
0080      local.get 15
0081      local.get 16
0082      f32.sub
0083      local.tee 7
0084      f32.add
0085      f32.const 0.000320729566738
0086      f32.mul
0087      local.tee 8
0088      f32.sub
0089      local.tee 10
0090      local.get 7
0091      local.get 9
0092      local.get 11
0093      f32.sub
0094      f32.add
0095      local.tee 7
0096      f32.const 5.06328651682e-05
0097      f32.mul
0098      local.get 7
0099      local.get 5
0100      local.get 6
0101      f32.add
0102      local.tee 6
0103      f32.sub
0104      f32.const 2.37630774791e-06
0105      f32.mul
0106      local.tee 7
0107      f32.add
0108      local.tee 9
0109      f32.add
0110      f32.store offset=20
0111      local.get 1
0112      local.get 10
0113      local.get 9
0114      f32.sub
0115      f32.store offset=12
0116      local.get 1
0117      local.get 5
0118      local.get 8
0119      f32.add
0120      local.tee 5
0121      local.get 6
0122      f32.const 0.0453907549381
0123      f32.mul
0124      local.get 7
0125      f32.add
0126      local.tee 6
0127      f32.sub
0128      f32.store offset=28
0129      local.get 1
0130      local.get 5
0131      local.get 6
0132      f32.add
0133      f32.store offset=4
0134      local.get 3
0135      local.tee 4
0136      i32.const -1
0137      i32.add
0138      local.set 3
0139      local.get 1
0140      i32.const 32
0141      i32.add
0142      local.set 1
0143      local.get 4
0144      br_if 0 (;@1;)
2 ------------------------------------------------------------
0145    end
3 ------------------------------------------------------------
0146    loop  ;; label = @1
4 ------------------------------------------------------------
0147      local.get 0
0148      local.get 0
0149      f32.load
0150      local.tee 6
0151      local.get 0
0152      f32.load offset=224
0153      local.tee 7
0154      f32.add
0155      local.tee 5
0156      local.get 0
0157      f32.load offset=96
0158      local.tee 9
0159      local.get 0
0160      f32.load offset=128
0161      local.tee 11
0162      f32.add
0163      local.tee 8
0164      f32.add
0165      local.tee 10
0166      local.get 0
0167      f32.load offset=32
0168      local.tee 12
0169      local.get 0
0170      f32.load offset=192
0171      local.tee 13
0172      f32.add
0173      local.tee 14
0174      local.get 0
0175      f32.load offset=64
0176      local.tee 15
0177      local.get 0
0178      f32.load offset=160
0179      local.tee 16
0180      f32.add
0181      local.tee 17
0182      f32.add
0183      local.tee 18
0184      f32.sub
0185      f32.store offset=128
0186      local.get 0
0187      local.get 18
0188      local.get 10
0189      f32.add
0190      f32.store
0191      local.get 0
0192      local.get 5
0193      local.get 8
0194      f32.sub
0195      local.tee 5
0196      local.get 5
0197      local.get 14
0198      local.get 17
0199      f32.sub
0200      f32.add
0201      f32.const 0.000320729566738
0202      f32.mul
0203      local.tee 8
0204      f32.sub
0205      f32.store offset=192
0206      local.get 0
0207      local.get 5
0208      local.get 8
0209      f32.add
0210      f32.store offset=64
0211      local.get 0
0212      local.get 6
0213      local.get 7
0214      f32.sub
0215      local.tee 5
0216      local.get 12
0217      local.get 13
0218      f32.sub
0219      local.tee 6
0220      local.get 15
0221      local.get 16
0222      f32.sub
0223      local.tee 7
0224      f32.add
0225      f32.const 0.000320729566738
0226      f32.mul
0227      local.tee 8
0228      f32.sub
0229      local.tee 10
0230      local.get 7
0231      local.get 9
0232      local.get 11
0233      f32.sub
0234      f32.add
0235      local.tee 7
0236      f32.const 5.06328651682e-05
0237      f32.mul
0238      local.get 7
0239      local.get 5
0240      local.get 6
0241      f32.add
0242      local.tee 6
0243      f32.sub
0244      f32.const 2.37630774791e-06
0245      f32.mul
0246      local.tee 7
0247      f32.add
0248      local.tee 9
0249      f32.add
0250      f32.store offset=160
0251      local.get 0
0252      local.get 10
0253      local.get 9
0254      f32.sub
0255      f32.store offset=96
0256      local.get 0
0257      local.get 5
0258      local.get 8
0259      f32.add
0260      local.tee 5
0261      local.get 6
0262      f32.const 0.0453907549381
0263      f32.mul
0264      local.get 7
0265      f32.add
0266      local.tee 6
0267      f32.sub
0268      f32.store offset=224
0269      local.get 0
0270      local.get 5
0271      local.get 6
0272      f32.add
0273      f32.store offset=32
0274      local.get 2
0275      local.tee 1
0276      i32.const -1
0277      i32.add
0278      local.set 2
0279      local.get 0
0280      i32.const 4
0281      i32.add
0282      local.set 0
0283      local.get 1
0284      br_if 0 (;@1;)
5 ------------------------------------------------------------
0285    end
6 ------------------------------------------------------------)
