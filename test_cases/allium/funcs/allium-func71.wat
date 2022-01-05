  (func (;71;) (type 6) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 5
0001    local.set 2
0002    global.get 5
0003    i32.const -64
0004    i32.sub
0005    global.set 5
0006    global.get 5
0007    global.get 6
0008    i32.ge_s
0009    if  ;; label = @1
1 ------------------------------------------------------------
0010      i32.const 64
0011      call 2
0012    end
2 ------------------------------------------------------------
0013    local.get 0
0014    i32.const -64
0015    i32.sub
0016    i32.const 0
0017    call 20
0018    local.tee 6
0019    i32.const 3
0020    i32.shl
0021    local.set 10
0022    local.get 2
0023    local.get 6
0024    i32.add
0025    i32.const 0
0026    i32.const 128
0027    call 25
0028    local.get 0
0029    i32.const 116
0030    i32.add
0031    local.tee 9
0032    i32.const 0
0033    call 20
0034    local.tee 7
0035    local.get 10
0036    i32.add
0037    local.set 5
0038    local.get 0
0039    i32.const 120
0040    i32.add
0041    local.tee 11
0042    i32.const 0
0043    call 20
0044    local.set 4
0045    local.get 6
0046    if  ;; label = @1
3 ------------------------------------------------------------
0047      local.get 10
0048      i32.const -512
0049      i32.add
0050      local.set 3
0051      local.get 7
0052      if  ;; label = @2
4 ------------------------------------------------------------
0053        local.get 9
0054        i32.const 0
0055        local.get 3
0056        local.get 7
0057        i32.add
0058        call 17
0059      else
5 ------------------------------------------------------------
0060        local.get 9
0061        i32.const 0
0062        local.get 3
0063        call 17
0064        local.get 11
0065        i32.const 0
0066        local.get 4
0067        i32.const -1
0068        i32.add
0069        call 17
0070      end
6 ------------------------------------------------------------
0071    else
7 ------------------------------------------------------------
0072      local.get 9
0073      i32.const 0
0074      i32.const -512
0075      call 17
0076      local.get 11
0077      i32.const 0
0078      i32.const -1
0079      call 17
0080    end
8 ------------------------------------------------------------
0081    local.get 2
0082    local.get 6
0083    i32.add
0084    local.tee 8
0085    i32.const 1
0086    i32.add
0087    local.set 3
0088    local.get 10
0089    i32.const 447
0090    i32.lt_u
0091    if  ;; label = @1
9 ------------------------------------------------------------
0092      local.get 3
0093      i32.const 0
0094      i32.const 55
0095      local.get 6
0096      i32.sub
0097      call 30
0098      drop
0099      local.get 2
0100      i32.const 55
0101      i32.add
0102      local.tee 3
0103      i32.const 0
0104      local.get 3
0105      i32.const 0
0106      call 37
0107      i32.const 1
0108      i32.or
0109      call 25
0110      local.get 2
0111      i32.const 56
0112      local.get 4
0113      i32.const 24
0114      i32.shr_u
0115      call 25
0116      local.get 2
0117      i32.const 57
0118      local.get 4
0119      i32.const 16
0120      i32.shr_u
0121      call 25
0122      local.get 2
0123      i32.const 58
0124      local.get 4
0125      i32.const 8
0126      i32.shr_u
0127      call 25
0128      local.get 2
0129      i32.const 59
0130      local.get 4
0131      call 25
0132      local.get 2
0133      i32.const 60
0134      local.get 5
0135      i32.const 24
0136      i32.shr_u
0137      call 25
0138      local.get 2
0139      i32.const 61
0140      local.get 5
0141      i32.const 16
0142      i32.shr_u
0143      call 25
0144      local.get 2
0145      i32.const 62
0146      local.get 5
0147      i32.const 8
0148      i32.shr_u
0149      call 25
0150      local.get 2
0151      i32.const 63
0152      local.get 5
0153      call 25
0154      local.get 0
0155      local.get 8
0156      i32.const 64
0157      local.get 6
0158      i32.sub
0159      call 35
0160    else
10 ------------------------------------------------------------
0161      local.get 3
0162      i32.const 0
0163      i32.const 63
0164      local.get 6
0165      i32.sub
0166      call 30
0167      drop
0168      local.get 0
0169      local.get 8
0170      i32.const 64
0171      local.get 6
0172      i32.sub
0173      call 35
0174      local.get 9
0175      i32.const 0
0176      i32.const -512
0177      call 17
0178      local.get 11
0179      i32.const 0
0180      i32.const -1
0181      call 17
0182      local.get 2
0183      i32.const 0
0184      i64.const 0
0185      call 22
0186      local.get 2
0187      i32.const 8
0188      i64.const 0
0189      call 22
0190      local.get 2
0191      i32.const 16
0192      i64.const 0
0193      call 22
0194      local.get 2
0195      i32.const 24
0196      i64.const 0
0197      call 22
0198      local.get 2
0199      i32.const 32
0200      i64.const 0
0201      call 22
0202      local.get 2
0203      i32.const 40
0204      i64.const 0
0205      call 22
0206      local.get 2
0207      i32.const 48
0208      i64.const 0
0209      call 22
0210      local.get 2
0211      i32.const 55
0212      i32.const 1
0213      call 25
0214      local.get 2
0215      i32.const 56
0216      local.get 4
0217      i32.const 24
0218      i32.shr_u
0219      call 25
0220      local.get 2
0221      i32.const 57
0222      local.get 4
0223      i32.const 16
0224      i32.shr_u
0225      call 25
0226      local.get 2
0227      i32.const 58
0228      local.get 4
0229      i32.const 8
0230      i32.shr_u
0231      call 25
0232      local.get 2
0233      i32.const 59
0234      local.get 4
0235      call 25
0236      local.get 2
0237      i32.const 60
0238      local.get 5
0239      i32.const 24
0240      i32.shr_u
0241      call 25
0242      local.get 2
0243      i32.const 61
0244      local.get 5
0245      i32.const 16
0246      i32.shr_u
0247      call 25
0248      local.get 2
0249      i32.const 62
0250      local.get 5
0251      i32.const 8
0252      i32.shr_u
0253      call 25
0254      local.get 2
0255      i32.const 63
0256      local.get 5
0257      call 25
0258      local.get 0
0259      local.get 2
0260      i32.const 64
0261      call 35
0262    end
11 ------------------------------------------------------------
0263    i32.const 0
0264    local.set 3
0265    loop  ;; label = @1
12 ------------------------------------------------------------
0266      local.get 1
0267      local.get 3
0268      i32.const 2
0269      i32.shl
0270      i32.add
0271      local.tee 7
0272      i32.const 0
0273      local.get 0
0274      i32.const 68
0275      i32.add
0276      local.get 3
0277      i32.const 2
0278      i32.shl
0279      i32.add
0280      i32.const 0
0281      call 20
0282      local.tee 8
0283      i32.const 24
0284      i32.shr_u
0285      call 25
0286      local.get 7
0287      i32.const 1
0288      local.get 8
0289      i32.const 16
0290      i32.shr_u
0291      call 25
0292      local.get 7
0293      i32.const 2
0294      local.get 8
0295      i32.const 8
0296      i32.shr_u
0297      call 25
0298      local.get 7
0299      i32.const 3
0300      local.get 8
0301      call 25
0302      local.get 3
0303      i32.const 1
0304      i32.add
0305      local.tee 3
0306      i32.const 8
0307      i32.ne
0308      br_if 0 (;@1;)
13 ------------------------------------------------------------
0309    end
14 ------------------------------------------------------------
0310    local.get 2
0311    global.set 5)
