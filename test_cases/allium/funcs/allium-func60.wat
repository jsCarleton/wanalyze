  (func (;60;) (type 6) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64)
0 ------------------------------------------------------------
0000    global.get 5
0001    local.set 2
0002    global.get 5
0003    i32.const 144
0004    i32.add
0005    global.set 5
0006    global.get 5
0007    global.get 6
0008    i32.ge_s
0009    if  ;; label = @1
1 ------------------------------------------------------------
0010      i32.const 144
0011      call 2
0012    end
2 ------------------------------------------------------------
0013    local.get 0
0014    i32.const 144
0015    i32.add
0016    local.tee 10
0017    i32.const 0
0018    call 20
0019    local.tee 4
0020    i32.const 135
0021    i32.eq
0022    if  ;; label = @1
3 ------------------------------------------------------------
0023      local.get 2
0024      i32.const 0
0025      i32.const 129
0026      call 25
0027      local.get 2
0028      i32.const 1
0029      i32.add
0030      local.set 6
0031      i32.const 1
0032      local.set 3
0033    else
4 ------------------------------------------------------------
0034      local.get 2
0035      i32.const 0
0036      i32.const 1
0037      call 25
0038      local.get 2
0039      i32.const 1
0040      i32.add
0041      local.tee 6
0042      i32.const 0
0043      i32.const 136
0044      local.get 4
0045      i32.sub
0046      local.tee 3
0047      i32.const -2
0048      i32.add
0049      call 30
0050      drop
0051      local.get 2
0052      local.get 3
0053      i32.const -1
0054      i32.add
0055      i32.add
0056      i32.const 0
0057      i32.const -128
0058      call 25
0059    end
5 ------------------------------------------------------------
0060    local.get 0
0061    local.get 2
0062    local.get 3
0063    call 42
0064    local.get 0
0065    i32.const 160
0066    i32.add
0067    local.tee 5
0068    i32.const 0
0069    call 16
0070    i64.const -1
0071    i64.xor
0072    local.set 12
0073    local.get 5
0074    i32.const 0
0075    local.get 12
0076    call 18
0077    local.get 0
0078    i32.const 168
0079    i32.add
0080    local.tee 3
0081    i32.const 0
0082    call 16
0083    i64.const -1
0084    i64.xor
0085    local.set 13
0086    local.get 3
0087    i32.const 0
0088    local.get 13
0089    call 18
0090    local.get 0
0091    i32.const 216
0092    i32.add
0093    local.tee 7
0094    i32.const 0
0095    local.get 7
0096    i32.const 0
0097    call 16
0098    i64.const -1
0099    i64.xor
0100    call 18
0101    local.get 0
0102    i32.const 248
0103    i32.add
0104    local.tee 8
0105    i32.const 0
0106    local.get 8
0107    i32.const 0
0108    call 16
0109    i64.const -1
0110    i64.xor
0111    call 18
0112    local.get 0
0113    i32.const 288
0114    i32.add
0115    local.tee 9
0116    i32.const 0
0117    local.get 9
0118    i32.const 0
0119    call 16
0120    i64.const -1
0121    i64.xor
0122    call 18
0123    local.get 0
0124    i32.const 312
0125    i32.add
0126    local.tee 4
0127    i32.const 0
0128    local.get 4
0129    i32.const 0
0130    call 16
0131    i64.const -1
0132    i64.xor
0133    call 18
0134    local.get 2
0135    i32.const 0
0136    local.get 0
0137    i32.const 152
0138    i32.add
0139    local.tee 3
0140    i32.const 0
0141    call 16
0142    local.tee 11
0143    call 21
0144    local.get 6
0145    i32.const 0
0146    local.get 11
0147    i64.const 8
0148    i64.shr_u
0149    call 21
0150    local.get 2
0151    i32.const 2
0152    local.get 11
0153    i64.const 16
0154    i64.shr_u
0155    call 21
0156    local.get 2
0157    i32.const 3
0158    local.get 11
0159    i64.const 24
0160    i64.shr_u
0161    call 21
0162    local.get 2
0163    i32.const 4
0164    local.get 11
0165    i64.const 32
0166    i64.shr_u
0167    call 21
0168    local.get 2
0169    i32.const 5
0170    local.get 11
0171    i64.const 40
0172    i64.shr_u
0173    call 21
0174    local.get 2
0175    i32.const 6
0176    local.get 11
0177    i64.const 48
0178    i64.shr_u
0179    call 21
0180    local.get 2
0181    i32.const 7
0182    local.get 11
0183    i64.const 56
0184    i64.shr_u
0185    call 21
0186    local.get 2
0187    i32.const 8
0188    local.get 12
0189    call 21
0190    local.get 2
0191    i32.const 9
0192    local.get 12
0193    i64.const 8
0194    i64.shr_u
0195    call 21
0196    local.get 2
0197    i32.const 10
0198    local.get 12
0199    i64.const 16
0200    i64.shr_u
0201    call 21
0202    local.get 2
0203    i32.const 11
0204    local.get 12
0205    i64.const 24
0206    i64.shr_u
0207    call 21
0208    local.get 2
0209    i32.const 12
0210    local.get 12
0211    i64.const 32
0212    i64.shr_u
0213    call 21
0214    local.get 2
0215    i32.const 13
0216    local.get 12
0217    i64.const 40
0218    i64.shr_u
0219    call 21
0220    local.get 2
0221    i32.const 14
0222    local.get 12
0223    i64.const 48
0224    i64.shr_u
0225    call 21
0226    local.get 2
0227    i32.const 15
0228    local.get 12
0229    i64.const 56
0230    i64.shr_u
0231    call 21
0232    local.get 2
0233    i32.const 16
0234    local.get 13
0235    call 21
0236    local.get 2
0237    i32.const 17
0238    local.get 13
0239    i64.const 8
0240    i64.shr_u
0241    call 21
0242    local.get 2
0243    i32.const 18
0244    local.get 13
0245    i64.const 16
0246    i64.shr_u
0247    call 21
0248    local.get 2
0249    i32.const 19
0250    local.get 13
0251    i64.const 24
0252    i64.shr_u
0253    call 21
0254    local.get 2
0255    i32.const 20
0256    local.get 13
0257    i64.const 32
0258    i64.shr_u
0259    call 21
0260    local.get 2
0261    i32.const 21
0262    local.get 13
0263    i64.const 40
0264    i64.shr_u
0265    call 21
0266    local.get 2
0267    i32.const 22
0268    local.get 13
0269    i64.const 48
0270    i64.shr_u
0271    call 21
0272    local.get 2
0273    i32.const 23
0274    local.get 13
0275    i64.const 56
0276    i64.shr_u
0277    call 21
0278    local.get 2
0279    i32.const 24
0280    local.get 0
0281    i32.const 176
0282    call 16
0283    local.tee 11
0284    call 21
0285    local.get 2
0286    i32.const 25
0287    local.get 11
0288    i64.const 8
0289    i64.shr_u
0290    call 21
0291    local.get 2
0292    i32.const 26
0293    local.get 11
0294    i64.const 16
0295    i64.shr_u
0296    call 21
0297    local.get 2
0298    i32.const 27
0299    local.get 11
0300    i64.const 24
0301    i64.shr_u
0302    call 21
0303    local.get 2
0304    i32.const 28
0305    local.get 11
0306    i64.const 32
0307    i64.shr_u
0308    call 21
0309    local.get 2
0310    i32.const 29
0311    local.get 11
0312    i64.const 40
0313    i64.shr_u
0314    call 21
0315    local.get 2
0316    i32.const 30
0317    local.get 11
0318    i64.const 48
0319    i64.shr_u
0320    call 21
0321    local.get 2
0322    i32.const 31
0323    local.get 11
0324    i64.const 56
0325    i64.shr_u
0326    call 21
0327    local.get 1
0328    i32.const 0
0329    local.get 2
0330    i32.const 0
0331    call 28
0332    call 26
0333    local.get 1
0334    i32.const 8
0335    local.get 2
0336    i32.const 8
0337    call 28
0338    call 26
0339    local.get 1
0340    i32.const 16
0341    local.get 2
0342    i32.const 16
0343    call 28
0344    call 26
0345    local.get 1
0346    i32.const 24
0347    local.get 2
0348    i32.const 24
0349    call 28
0350    call 26
0351    local.get 3
0352    i32.const 0
0353    i32.const 200
0354    call 30
0355    drop
0356    local.get 7
0357    i32.const 0
0358    i64.const -1
0359    call 18
0360    local.get 8
0361    i32.const 0
0362    i64.const -1
0363    call 18
0364    local.get 9
0365    i32.const 0
0366    i64.const -1
0367    call 18
0368    local.get 4
0369    i32.const 0
0370    i64.const -1
0371    call 18
0372    local.get 5
0373    i32.const 0
0374    i64.const -1
0375    call 18
0376    local.get 5
0377    i32.const 8
0378    i64.const -1
0379    call 18
0380    local.get 10
0381    i32.const 0
0382    i32.const 0
0383    call 17
0384    local.get 0
0385    i32.const 148
0386    i32.const 136
0387    call 17
0388    local.get 2
0389    global.set 5)
