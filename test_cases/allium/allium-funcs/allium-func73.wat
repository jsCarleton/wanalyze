  (func (;73;) (type 9) (param i32 i32 i32 i64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 3
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
0009    local.set 4
0010    local.get 0
0011    i32.const 16
0012    i32.add
0013    local.set 5
0014    local.get 0
0015    i32.const 24
0016    i32.add
0017    local.set 6
0018    local.get 0
0019    i32.const 32
0020    i32.add
0021    local.set 7
0022    local.get 0
0023    i32.const 40
0024    i32.add
0025    local.set 8
0026    local.get 0
0027    i32.const 48
0028    i32.add
0029    local.set 9
0030    local.get 0
0031    i32.const 56
0032    i32.add
0033    local.set 10
0034    local.get 0
0035    i32.const -64
0036    i32.sub
0037    local.set 11
0038    local.get 0
0039    i32.const 72
0040    i32.add
0041    local.set 12
0042    local.get 0
0043    i32.const 80
0044    i32.add
0045    local.set 13
0046    local.get 0
0047    i32.const 88
0048    i32.add
0049    local.set 14
0050    local.get 2
0051    local.get 3
0052    i32.wrap_i64
0053    i32.const 12
0054    i32.mul
0055    i32.const -12
0056    i32.add
0057    i32.const 3
0058    i32.shl
0059    i32.add
0060    local.set 2
0061    loop  ;; label = @1
4 ------------------------------------------------------------
0062      local.get 0
0063      i32.const 0
0064      local.get 0
0065      i32.const 0
0066      call 16
0067      local.get 1
0068      i32.const 0
0069      call 16
0070      i64.xor
0071      call 18
0072      local.get 4
0073      i32.const 0
0074      local.get 4
0075      i32.const 0
0076      call 16
0077      local.get 1
0078      i32.const 8
0079      i32.add
0080      local.tee 16
0081      i32.const 0
0082      call 16
0083      i64.xor
0084      call 18
0085      local.get 5
0086      i32.const 0
0087      local.get 5
0088      i32.const 0
0089      call 16
0090      local.get 1
0091      i32.const 16
0092      i32.add
0093      local.tee 17
0094      i32.const 0
0095      call 16
0096      i64.xor
0097      call 18
0098      local.get 6
0099      i32.const 0
0100      local.get 6
0101      i32.const 0
0102      call 16
0103      local.get 1
0104      i32.const 24
0105      i32.add
0106      local.tee 18
0107      i32.const 0
0108      call 16
0109      i64.xor
0110      call 18
0111      local.get 7
0112      i32.const 0
0113      local.get 7
0114      i32.const 0
0115      call 16
0116      local.get 1
0117      i32.const 32
0118      i32.add
0119      local.tee 19
0120      i32.const 0
0121      call 16
0122      i64.xor
0123      call 18
0124      local.get 8
0125      i32.const 0
0126      local.get 8
0127      i32.const 0
0128      call 16
0129      local.get 1
0130      i32.const 40
0131      i32.add
0132      local.tee 20
0133      i32.const 0
0134      call 16
0135      i64.xor
0136      call 18
0137      local.get 9
0138      i32.const 0
0139      local.get 9
0140      i32.const 0
0141      call 16
0142      local.get 1
0143      i32.const 48
0144      i32.add
0145      local.tee 21
0146      i32.const 0
0147      call 16
0148      i64.xor
0149      call 18
0150      local.get 10
0151      i32.const 0
0152      local.get 10
0153      i32.const 0
0154      call 16
0155      local.get 1
0156      i32.const 56
0157      i32.add
0158      local.tee 22
0159      i32.const 0
0160      call 16
0161      i64.xor
0162      call 18
0163      local.get 11
0164      i32.const 0
0165      local.get 11
0166      i32.const 0
0167      call 16
0168      local.get 1
0169      i32.const -64
0170      i32.sub
0171      local.tee 23
0172      i32.const 0
0173      call 16
0174      i64.xor
0175      call 18
0176      local.get 12
0177      i32.const 0
0178      local.get 12
0179      i32.const 0
0180      call 16
0181      local.get 1
0182      i32.const 72
0183      i32.add
0184      local.tee 24
0185      i32.const 0
0186      call 16
0187      i64.xor
0188      call 18
0189      local.get 13
0190      i32.const 0
0191      local.get 13
0192      i32.const 0
0193      call 16
0194      local.get 1
0195      i32.const 80
0196      i32.add
0197      local.tee 25
0198      i32.const 0
0199      call 16
0200      i64.xor
0201      call 18
0202      local.get 14
0203      i32.const 0
0204      local.get 14
0205      i32.const 0
0206      call 16
0207      local.get 1
0208      i32.const 88
0209      i32.add
0210      local.tee 26
0211      i32.const 0
0212      call 16
0213      i64.xor
0214      call 18
0215      local.get 0
0216      call 36
0217      local.get 2
0218      i32.const 0
0219      local.get 0
0220      i32.const 0
0221      call 16
0222      local.get 1
0223      i32.const 0
0224      call 16
0225      i64.xor
0226      call 18
0227      local.get 2
0228      i32.const 8
0229      local.get 4
0230      i32.const 0
0231      call 16
0232      local.get 16
0233      i32.const 0
0234      call 16
0235      i64.xor
0236      call 18
0237      local.get 2
0238      i32.const 16
0239      local.get 5
0240      i32.const 0
0241      call 16
0242      local.get 17
0243      i32.const 0
0244      call 16
0245      i64.xor
0246      call 18
0247      local.get 2
0248      i32.const 24
0249      local.get 6
0250      i32.const 0
0251      call 16
0252      local.get 18
0253      i32.const 0
0254      call 16
0255      i64.xor
0256      call 18
0257      local.get 2
0258      i32.const 32
0259      local.get 7
0260      i32.const 0
0261      call 16
0262      local.get 19
0263      i32.const 0
0264      call 16
0265      i64.xor
0266      call 18
0267      local.get 2
0268      i32.const 40
0269      local.get 8
0270      i32.const 0
0271      call 16
0272      local.get 20
0273      i32.const 0
0274      call 16
0275      i64.xor
0276      call 18
0277      local.get 2
0278      i32.const 48
0279      local.get 9
0280      i32.const 0
0281      call 16
0282      local.get 21
0283      i32.const 0
0284      call 16
0285      i64.xor
0286      call 18
0287      local.get 2
0288      i32.const 56
0289      local.get 10
0290      i32.const 0
0291      call 16
0292      local.get 22
0293      i32.const 0
0294      call 16
0295      i64.xor
0296      call 18
0297      local.get 2
0298      i32.const -64
0299      i32.sub
0300      i32.const 0
0301      local.get 11
0302      i32.const 0
0303      call 16
0304      local.get 23
0305      i32.const 0
0306      call 16
0307      i64.xor
0308      call 18
0309      local.get 2
0310      i32.const 72
0311      local.get 12
0312      i32.const 0
0313      call 16
0314      local.get 24
0315      i32.const 0
0316      call 16
0317      i64.xor
0318      call 18
0319      local.get 2
0320      i32.const 80
0321      local.get 13
0322      i32.const 0
0323      call 16
0324      local.get 25
0325      i32.const 0
0326      call 16
0327      i64.xor
0328      call 18
0329      local.get 2
0330      i32.const 88
0331      local.get 14
0332      i32.const 0
0333      call 16
0334      local.get 26
0335      i32.const 0
0336      call 16
0337      i64.xor
0338      call 18
0339      local.get 1
0340      i32.const 96
0341      i32.add
0342      local.set 1
0343      local.get 2
0344      i32.const -96
0345      i32.add
0346      local.set 2
0347      local.get 15
0348      i32.const 1
0349      i32.add
0350      local.tee 15
0351      i64.extend_i32_u
0352      local.get 3
0353      i64.lt_u
0354      br_if 0 (;@1;)
5 ------------------------------------------------------------
0355    end
6 ------------------------------------------------------------)
