  (func (;179;) (type 0) (param i32)
    (local i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load
0002    local.tee 1
0003    i32.const 100
0004    i32.ne
0005    if  ;; label = @1
1 ------------------------------------------------------------
0006      local.get 0
0007      i32.load
0008      local.tee 3
0009      local.get 1
0010      i32.store
0011      local.get 3
0012      i32.const 20
0013      i32.store
0014      local.get 0
0015      local.get 0
0016      i32.load
0017      i32.load
0018      call_indirect (type 0)
0019    end
2 ------------------------------------------------------------
0020    local.get 0
0021    i32.load
0022    i32.eqz
0023    if  ;; label = @1
3 ------------------------------------------------------------
0024      local.get 0
0025      local.get 0
0026      i32.const 0
0027      i32.const 840
0028      local.get 0
0029      i32.load
0030      i32.load
0031      call_indirect (type 3)
0032      i32.store
0033    end
4 ------------------------------------------------------------
0034    local.get 0
0035    i32.const 8
0036    i32.store
0037    local.get 0
0038    call 180
0039    i32.const 196
0040    i32.const 104
0041    local.get 0
0042    i32.load
0043    local.tee 3
0044    select
0045    local.set 4
0046    local.get 0
0047    i32.const 180
0048    i32.const 88
0049    local.get 3
0050    select
0051    i32.add
0052    local.tee 1
0053    i32.load
0054    i32.eqz
0055    if  ;; label = @1
5 ------------------------------------------------------------
0056      local.get 1
0057      local.get 0
0058      call 47
0059      local.tee 2
0060      i32.store
0061      local.get 2
0062      i32.const 137072
0063      i32.load8_u
0064      i32.store8
0065      local.get 2
0066      i32.const 137064
0067      i64.load
0068      i64.store align=4
0069      local.get 2
0070      i32.const 137056
0071      i64.load
0072      i64.store align=4
0073      local.get 1
0074      i32.load
0075      local.tee 2
0076      i32.const 137105
0077      i64.load align=1
0078      i64.store align=1
0079      local.get 2
0080      i32.const 137113
0081      i32.load
0082      i32.store
0083      local.get 1
0084      i32.load
0085      i32.const 29
0086      i32.add
0087      i32.const 0
0088      i32.const 244
0089      call 27
0090      drop
0091      local.get 1
0092      i32.load
0093      i32.const 0
0094      i32.store
0095    end
6 ------------------------------------------------------------
0096    local.get 0
0097    local.get 4
0098    i32.add
0099    local.tee 1
0100    i32.load
0101    i32.eqz
0102    if  ;; label = @1
7 ------------------------------------------------------------
0103      local.get 1
0104      local.get 0
0105      call 47
0106      local.tee 2
0107      i32.store
0108      local.get 2
0109      i32.const 137136
0110      i32.load8_u
0111      i32.store8
0112      local.get 2
0113      i32.const 137128
0114      i64.load
0115      i64.store align=4
0116      local.get 2
0117      i32.const 137120
0118      i64.load
0119      i64.store align=4
0120      local.get 1
0121      i32.load
0122      i32.const 17
0123      i32.add
0124      i32.const 137152
0125      i32.const 162
0126      call 34
0127      drop
0128      local.get 1
0129      i32.load
0130      i32.const 179
0131      i32.add
0132      i32.const 0
0133      i32.const 94
0134      call 27
0135      drop
0136      local.get 1
0137      i32.load
0138      i32.const 0
0139      i32.store
0140    end
8 ------------------------------------------------------------
0141    local.get 0
0142    i32.const 180
0143    i32.add
0144    local.get 0
0145    i32.const 88
0146    i32.add
0147    local.get 3
0148    select
0149    local.tee 1
0150    i32.load
0151    i32.eqz
0152    if  ;; label = @1
9 ------------------------------------------------------------
0153      local.get 1
0154      local.get 0
0155      call 47
0156      local.tee 2
0157      i32.store
0158      local.get 2
0159      i32.const 137104
0160      i32.load8_u
0161      i32.store8
0162      local.get 2
0163      i32.const 137096
0164      i64.load
0165      i64.store align=4
0166      local.get 2
0167      i32.const 137088
0168      i64.load
0169      i64.store align=4
0170      local.get 1
0171      i32.load
0172      local.tee 2
0173      i32.const 137105
0174      i64.load align=1
0175      i64.store align=1
0176      local.get 2
0177      i32.const 137113
0178      i32.load
0179      i32.store
0180      local.get 1
0181      i32.load
0182      i32.const 29
0183      i32.add
0184      i32.const 0
0185      i32.const 244
0186      call 27
0187      drop
0188      local.get 1
0189      i32.load
0190      i32.const 0
0191      i32.store
0192    end
10 ------------------------------------------------------------
0193    local.get 0
0194    i32.const 196
0195    i32.add
0196    local.get 0
0197    i32.const 104
0198    i32.add
0199    local.get 3
0200    select
0201    local.tee 1
0202    i32.load
0203    i32.eqz
0204    if  ;; label = @1
11 ------------------------------------------------------------
0205      local.get 1
0206      local.get 0
0207      call 47
0208      local.tee 3
0209      i32.store
0210      local.get 3
0211      i32.const 137344
0212      i32.load8_u
0213      i32.store8
0214      local.get 3
0215      i32.const 137336
0216      i64.load
0217      i64.store align=4
0218      local.get 3
0219      i32.const 137328
0220      i64.load
0221      i64.store align=4
0222      local.get 1
0223      i32.load
0224      i32.const 17
0225      i32.add
0226      i32.const 137360
0227      i32.const 162
0228      call 34
0229      drop
0230      local.get 1
0231      i32.load
0232      i32.const 179
0233      i32.add
0234      i32.const 0
0235      i32.const 94
0236      call 27
0237      drop
0238      local.get 1
0239      i32.load
0240      i32.const 0
0241      i32.store
0242    end
12 ------------------------------------------------------------
0243    local.get 0
0244    i64.const 0
0245    i64.store
0246    local.get 0
0247    i64.const 0
0248    i64.store align=1
0249    local.get 0
0250    i64.const 0
0251    i64.store align=1
0252    local.get 0
0253    i64.const 72340172838076673
0254    i64.store align=1
0255    local.get 0
0256    i64.const 72340172838076673
0257    i64.store align=1
0258    local.get 0
0259    i64.const 361700864190383365
0260    i64.store align=1
0261    local.get 0
0262    i64.const 361700864190383365
0263    i64.store align=1
0264    local.get 0
0265    i64.const 0
0266    i64.store
0267    local.get 0
0268    i32.load
0269    local.tee 1
0270    i32.load
0271    local.set 3
0272    local.get 0
0273    i32.const 0
0274    i32.store
0275    local.get 0
0276    local.get 3
0277    i32.const 1560820397
0278    i32.eq
0279    local.get 0
0280    i32.load
0281    i32.const 8
0282    i32.gt_s
0283    i32.or
0284    i32.store
0285    local.get 1
0286    local.get 1
0287    i32.load
0288    i32.const 1560820397
0289    i32.eq
0290    i32.store
0291    local.get 0
0292    i64.const 0
0293    i64.store
0294    local.get 0
0295    i64.const 0
0296    i64.store
0297    local.get 0
0298    i32.const 65537
0299    i32.store
0300    local.get 0
0301    i32.const 0
0302    i32.store8
0303    local.get 0
0304    i32.const 257
0305    i32.store16
0306    local.get 0
0307    call 178
0308    local.get 0
0309    i32.load
0310    local.tee 1
0311    i32.const 1
0312    i32.store
0313    block  ;; label = @1
13 ------------------------------------------------------------
0314      local.get 1
0315      i32.load
0316      local.tee 3
0317      i32.const 1560820397
0318      i32.eq
0319      if  ;; label = @2
14 ------------------------------------------------------------
0320        local.get 1
0321        i32.const 1
0322        i32.store
0323        local.get 0
0324        call 108
0325        local.get 0
0326        i32.load
0327        local.tee 1
0328        i32.load
0329        local.set 3
0330        br 1 (;@1;)
15 ------------------------------------------------------------
0331      end
16 ------------------------------------------------------------
0332      local.get 1
0333      i32.const 0
0334      i32.store
0335    end
17 ------------------------------------------------------------
0336    local.get 1
0337    i64.const 4720898310488719360
0338    i64.store align=4
0339    local.get 1
0340    i64.const 4294967304
0341    i64.store align=4
0342    local.get 1
0343    i64.const 1
0344    i64.store align=4
0345    local.get 1
0346    i32.const 0
0347    i32.store
0348    local.get 1
0349    i32.const 0
0350    i32.store
0351    local.get 1
0352    i32.const 1
0353    i32.store
0354    local.get 1
0355    local.get 3
0356    i32.const 1560820397
0357    i32.eq
0358    local.tee 0
0359    i32.store
0360    local.get 1
0361    i32.const 3
0362    i32.const 0
0363    local.get 0
0364    select
0365    i32.store)
