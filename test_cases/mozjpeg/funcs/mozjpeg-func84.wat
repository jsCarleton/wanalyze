  (func (;84;) (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load
0002    local.tee 2
0003    i32.load
0004    local.tee 3
0005    local.get 2
0006    i32.load
0007    i32.lt_s
0008    if  ;; label = @1
1 ------------------------------------------------------------
0009      local.get 0
0010      i32.const 1
0011      i32.store
0012      local.get 0
0013      i32.load
0014      local.set 4
0015      local.get 2
0016      i32.load
0017      local.set 1
0018      local.get 2
0019      i32.load
0020      if  ;; label = @2
2 ------------------------------------------------------------
0021        local.get 0
0022        local.get 4
0023        local.get 3
0024        local.get 1
0025        i32.const 2
0026        i32.shl
0027        i32.div_s
0028        i32.const 84
0029        i32.mul
0030        i32.add
0031        i32.store
0032        local.get 0
0033        local.get 2
0034        i32.load
0035        local.tee 1
0036        i32.const 63
0037        local.get 3
0038        i32.const 4
0039        i32.rem_s
0040        i32.const 2
0041        i32.lt_s
0042        local.tee 2
0043        select
0044        i32.store
0045        local.get 0
0046        i32.const 1
0047        local.get 1
0048        i32.const 1
0049        i32.add
0050        local.get 2
0051        select
0052        i32.store
0053        return
3 ------------------------------------------------------------
0054      end
4 ------------------------------------------------------------
0055      local.get 0
0056      i64.const 270582939649
0057      i64.store align=4
0058      local.get 0
0059      local.get 4
0060      local.get 3
0061      local.get 1
0062      i32.const 1
0063      i32.shl
0064      i32.div_s
0065      i32.const 84
0066      i32.mul
0067      i32.add
0068      i32.store
0069      return
5 ------------------------------------------------------------
0070    end
6 ------------------------------------------------------------
0071    local.get 0
0072    i32.load
0073    local.tee 1
0074    if  ;; label = @1
7 ------------------------------------------------------------
0075      local.get 0
0076      local.get 1
0077      local.get 2
0078      i32.load
0079      local.tee 5
0080      i32.const 36
0081      i32.mul
0082      i32.add
0083      local.tee 6
0084      i32.load
0085      local.tee 7
0086      i32.store
0087      local.get 7
0088      i32.const 1
0089      i32.lt_s
0090      if (result i32)  ;; label = @2
8 ------------------------------------------------------------
0091        local.get 2
0092      else
9 ------------------------------------------------------------
0093        local.get 0
0094        i32.load
0095        local.set 3
0096        i32.const 0
0097        local.set 1
0098        loop  ;; label = @3
10 ------------------------------------------------------------
0099          local.get 0
0100          local.get 1
0101          i32.const 2
0102          i32.shl
0103          local.tee 4
0104          i32.add
0105          local.get 3
0106          local.get 4
0107          local.get 6
0108          i32.add
0109          i32.load
0110          i32.const 84
0111          i32.mul
0112          i32.add
0113          i32.store
0114          local.get 1
0115          i32.const 1
0116          i32.add
0117          local.tee 1
0118          local.get 7
0119          i32.ne
0120          br_if 0 (;@3;)
11 ------------------------------------------------------------
0121        end
12 ------------------------------------------------------------
0122        local.get 0
0123        i32.load
0124      end
13 ------------------------------------------------------------
0125      local.set 1
0126      local.get 0
0127      local.get 6
0128      i32.load
0129      i32.store
0130      local.get 0
0131      local.get 6
0132      i32.load
0133      i32.store
0134      local.get 0
0135      local.get 6
0136      i32.load
0137      i32.store
0138      local.get 0
0139      local.get 6
0140      i32.load
0141      local.tee 3
0142      i32.store
0143      block  ;; label = @2
14 ------------------------------------------------------------
0144        local.get 1
0145        i32.load
0146        i32.eqz
0147        br_if 0 (;@2;)
15 ------------------------------------------------------------
0148        local.get 5
0149        local.get 1
0150        i32.load
0151        local.get 1
0152        i32.load
0153        i32.const 3
0154        i32.mul
0155        i32.add
0156        i32.const 2
0157        i32.add
0158        i32.lt_s
0159        local.get 5
0160        local.get 1
0161        i32.load
0162        local.tee 4
0163        i32.ge_s
0164        i32.or
0165        i32.eqz
0166        if  ;; label = @3
16 ------------------------------------------------------------
0167          local.get 0
0168          local.get 2
0169          i32.load
0170          local.tee 3
0171          i32.store
0172        end
17 ------------------------------------------------------------
0173        local.get 5
0174        local.get 4
0175        local.get 1
0176        i32.load
0177        i32.add
0178        local.get 1
0179        i32.load
0180        i32.const 6
0181        i32.mul
0182        i32.add
0183        i32.const 4
0184        i32.add
0185        i32.lt_s
0186        br_if 0 (;@2;)
18 ------------------------------------------------------------
0187        local.get 5
0188        local.get 0
0189        i32.load
0190        i32.ge_s
0191        br_if 0 (;@2;)
19 ------------------------------------------------------------
0192        local.get 0
0193        local.get 2
0194        i32.load
0195        local.tee 3
0196        i32.store
0197      end
20 ------------------------------------------------------------
0198      local.get 2
0199      local.get 5
0200      i32.const 2
0201      i32.shl
0202      i32.add
0203      i32.const 4740
0204      i32.add
0205      local.get 3
0206      i32.store
0207      return
21 ------------------------------------------------------------
0208    end
22 ------------------------------------------------------------
0209    local.get 0
0210    i32.load
0211    local.tee 3
0212    i32.const 5
0213    i32.ge_s
0214    if  ;; label = @1
23 ------------------------------------------------------------
0215      local.get 0
0216      i32.load
0217      local.tee 2
0218      local.get 3
0219      i32.store
0220      local.get 2
0221      i32.const 26
0222      i32.store
0223      local.get 0
0224      i32.load
0225      i32.const 4
0226      i32.store
0227      local.get 0
0228      local.get 0
0229      i32.load
0230      i32.load
0231      call_indirect (type 0)
0232      local.get 0
0233      i32.load
0234      local.set 3
0235    end
24 ------------------------------------------------------------
0236    local.get 0
0237    local.get 3
0238    i32.store
0239    local.get 3
0240    i32.const 1
0241    i32.ge_s
0242    if  ;; label = @1
25 ------------------------------------------------------------
0243      local.get 0
0244      i32.load
0245      local.set 2
0246      i32.const 0
0247      local.set 1
0248      loop  ;; label = @2
26 ------------------------------------------------------------
0249        local.get 0
0250        local.get 1
0251        i32.const 2
0252        i32.shl
0253        i32.add
0254        local.get 2
0255        local.get 1
0256        i32.const 84
0257        i32.mul
0258        i32.add
0259        i32.store
0260        local.get 1
0261        i32.const 1
0262        i32.add
0263        local.tee 1
0264        local.get 3
0265        i32.ne
0266        br_if 0 (;@2;)
27 ------------------------------------------------------------
0267      end
28 ------------------------------------------------------------
0268    end
29 ------------------------------------------------------------
0269    local.get 0
0270    i64.const 0
0271    i64.store align=4
0272    local.get 0
0273    i64.const 270582939648
0274    i64.store align=4)
