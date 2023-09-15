  (func (;197;) (type 29) (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 32
0002    i32.sub
0003    local.tee 12
0004    global.set 0
0005    local.get 2
0006    i32.load16_s offset=20
0007    local.set 16
0008    local.get 1
0009    i32.load offset=16
0010    local.set 17
0011    block  ;; label = @1
1 ------------------------------------------------------------
0012      block  ;; label = @2
2 ------------------------------------------------------------
0013        local.get 5
0014        local.get 6
0015        i32.eq
0016        br_if 0 (;@2;)
3 ------------------------------------------------------------
0017        i32.const 33554432
0018        local.set 11
0019        local.get 5
0020        local.get 16
0021        i32.eq
0022        local.tee 13
0023        local.get 6
0024        local.get 16
0025        i32.ne
0026        i32.ne
0027        if  ;; label = @3
4 ------------------------------------------------------------
0028          i32.const 0
0029          local.set 11
0030          local.get 13
0031          br_if 1 (;@2;)
5 ------------------------------------------------------------
0032          local.get 17
0033          local.get 5
0034          i32.const 3
0035          i32.shl
0036          i32.add
0037          local.tee 11
0038          i32.load8_u offset=2
0039          local.get 17
0040          local.get 6
0041          i32.const 3
0042          i32.shl
0043          i32.add
0044          local.tee 13
0045          i32.load8_u offset=2
0046          i32.sub
0047          local.tee 14
0048          local.get 7
0049          i32.load16_s offset=2
0050          local.tee 20
0051          i32.add
0052          local.tee 18
0053          local.get 18
0054          i32.mul
0055          local.get 11
0056          i32.load8_u offset=1
0057          local.get 13
0058          i32.load8_u offset=1
0059          i32.sub
0060          local.tee 18
0061          local.get 7
0062          i32.load16_s
0063          local.tee 21
0064          i32.add
0065          local.tee 15
0066          local.get 15
0067          i32.mul
0068          i32.add
0069          local.get 11
0070          i32.load8_u offset=3
0071          local.get 13
0072          i32.load8_u offset=3
0073          i32.sub
0074          local.tee 11
0075          local.get 7
0076          i32.load16_s offset=4
0077          local.tee 13
0078          i32.add
0079          local.tee 15
0080          local.get 15
0081          i32.mul
0082          i32.add
0083          local.tee 15
0084          local.get 20
0085          i32.const 2
0086          i32.div_s
0087          local.get 14
0088          i32.add
0089          local.tee 14
0090          local.get 14
0091          i32.mul
0092          local.get 21
0093          i32.const 2
0094          i32.div_s
0095          local.get 18
0096          i32.add
0097          local.tee 14
0098          local.get 14
0099          i32.mul
0100          i32.add
0101          local.get 13
0102          i32.const 2
0103          i32.div_s
0104          local.get 11
0105          i32.add
0106          local.tee 11
0107          local.get 11
0108          i32.mul
0109          i32.add
0110          local.tee 11
0111          local.get 15
0112          local.get 11
0113          i32.lt_u
0114          select
0115          local.set 11
0116        end
6 ------------------------------------------------------------
0117        local.get 11
0118        local.get 9
0119        i32.gt_u
0120        br_if 1 (;@1;)
7 ------------------------------------------------------------
0121      end
8 ------------------------------------------------------------
0122      block (result i32)  ;; label = @2
9 ------------------------------------------------------------
0123        local.get 6
0124        local.get 16
0125        i32.eq
0126        if  ;; label = @3
10 ------------------------------------------------------------
0127          i32.const 0
0128          local.set 13
0129          i32.const 0
0130          br 1 (;@2;)
11 ------------------------------------------------------------
0131        end
12 ------------------------------------------------------------
0132        i32.const 0
0133        local.set 13
0134        i32.const 0
0135        local.get 5
0136        local.get 16
0137        i32.eq
0138        br_if 0 (;@2;)
13 ------------------------------------------------------------
0139        drop
0140        local.get 17
0141        local.get 5
0142        i32.const 3
0143        i32.shl
0144        i32.add
0145        local.tee 5
0146        i32.load8_u offset=3
0147        local.get 17
0148        local.get 6
0149        i32.const 3
0150        i32.shl
0151        i32.add
0152        local.tee 6
0153        i32.load8_u offset=3
0154        i32.sub
0155        local.get 7
0156        i32.load16_s offset=4
0157        i32.const 3
0158        i32.mul
0159        i32.const 4
0160        i32.div_s
0161        i32.add
0162        local.set 13
0163        local.get 5
0164        i32.load8_u offset=1
0165        local.get 6
0166        i32.load8_u offset=1
0167        i32.sub
0168        local.get 7
0169        i32.load16_s
0170        i32.const 3
0171        i32.mul
0172        i32.const 4
0173        i32.div_s
0174        i32.add
0175        local.set 19
0176        local.get 5
0177        i32.load8_u offset=2
0178        local.get 6
0179        i32.load8_u offset=2
0180        i32.sub
0181        local.get 7
0182        i32.load16_s offset=2
0183        i32.const 3
0184        i32.mul
0185        i32.const 4
0186        i32.div_s
0187        i32.add
0188      end
14 ------------------------------------------------------------
0189      local.set 14
0190      local.get 12
0191      local.get 13
0192      i32.store16 offset=4
0193      local.get 12
0194      local.get 14
0195      i32.store16 offset=26
0196      local.get 12
0197      local.get 19
0198      i32.store16 offset=24
0199      local.get 12
0200      local.get 13
0201      i32.store16 offset=28
0202      local.get 12
0203      local.get 12
0204      i32.load offset=24
0205      i32.store
0206      local.get 12
0207      i32.const 8
0208      i32.add
0209      local.get 0
0210      local.get 1
0211      local.get 2
0212      local.get 3
0213      i32.const 1
0214      i32.add
0215      local.get 4
0216      local.get 8
0217      local.get 11
0218      i32.add
0219      local.get 12
0220      local.get 9
0221      call 141
0222      local.get 12
0223      i32.load offset=12
0224      local.tee 0
0225      local.get 10
0226      i32.load offset=4
0227      local.tee 1
0228      i32.le_u
0229      if  ;; label = @2
15 ------------------------------------------------------------
0230        local.get 0
0231        local.get 1
0232        i32.ne
0233        br_if 1 (;@1;)
16 ------------------------------------------------------------
0234        local.get 12
0235        i32.load offset=16
0236        local.get 10
0237        i32.load offset=8
0238        i32.ge_u
0239        br_if 1 (;@1;)
17 ------------------------------------------------------------
0240      end
18 ------------------------------------------------------------
0241      local.get 10
0242      local.get 12
0243      i64.load offset=8
0244      i64.store align=4
0245      local.get 10
0246      local.get 12
0247      i32.load offset=16
0248      i32.store offset=8
0249    end
19 ------------------------------------------------------------
0250    local.get 12
0251    i32.const 32
0252    i32.add
0253    global.set 0)
