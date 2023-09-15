  (func (;73;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 4
0004    global.set 0
0005    local.get 4
0006    local.get 1
0007    i32.load align=2
0008    i32.store offset=8
0009    local.get 4
0010    local.get 1
0011    i32.load16_u offset=4
0012    i32.store16 offset=12
0013    i32.const 0
0014    local.set 1
0015    local.get 4
0016    i32.const 0
0017    i32.store16 offset=14
0018    local.get 0
0019    i32.load offset=4
0020    local.set 6
0021    block  ;; label = @1
1 ------------------------------------------------------------
0022      block  ;; label = @2
2 ------------------------------------------------------------
0023        local.get 0
0024        i32.load offset=8
0025        local.tee 5
0026        i32.eqz
0027        if  ;; label = @3
3 ------------------------------------------------------------
0028          local.get 6
0029          local.set 5
0030          br 1 (;@2;)
4 ------------------------------------------------------------
0031        end
5 ------------------------------------------------------------
0032        local.get 6
0033        local.get 5
0034        i32.const 3
0035        i32.mul
0036        i32.const 4
0037        i32.shr_s
0038        i32.le_s
0039        br_if 1 (;@1;)
6 ------------------------------------------------------------
0040      end
7 ------------------------------------------------------------
0041      local.get 0
0042      i32.load
0043      local.set 6
0044      loop  ;; label = @2
8 ------------------------------------------------------------
0045        local.get 1
0046        i32.const 2
0047        i32.shl
0048        local.set 3
0049        local.get 1
0050        i32.const 1
0051        i32.add
0052        local.set 1
0053        local.get 3
0054        i32.const 4416
0055        i32.add
0056        i32.load
0057        local.tee 3
0058        local.get 5
0059        i32.le_s
0060        br_if 0 (;@2;)
9 ------------------------------------------------------------
0061      end
10 ------------------------------------------------------------
0062      local.get 0
0063      local.get 3
0064      i32.store offset=8
0065      i32.const 0
0066      local.set 1
0067      i32.const 0
0068      i32.const 16
0069      local.get 3
0070      call 23
0071      local.set 3
0072      local.get 0
0073      i32.const 0
0074      i32.store offset=4
0075      local.get 0
0076      local.get 3
0077      i32.store
0078      local.get 0
0079      i32.load offset=8
0080      local.tee 7
0081      if  ;; label = @2
11 ------------------------------------------------------------
0082        loop  ;; label = @3
12 ------------------------------------------------------------
0083          local.get 3
0084          local.get 1
0085          i32.const 4
0086          i32.shl
0087          i32.add
0088          i32.const 0
0089          i32.store offset=8
0090          local.get 1
0091          i32.const 1
0092          i32.add
0093          local.tee 1
0094          local.get 7
0095          i32.ne
0096          br_if 0 (;@3;)
13 ------------------------------------------------------------
0097        end
14 ------------------------------------------------------------
0098      end
15 ------------------------------------------------------------
0099      local.get 5
0100      if  ;; label = @2
16 ------------------------------------------------------------
0101        i32.const 0
0102        local.set 1
0103        loop  ;; label = @3
17 ------------------------------------------------------------
0104          local.get 6
0105          local.get 1
0106          i32.const 4
0107          i32.shl
0108          i32.add
0109          local.tee 3
0110          i32.load offset=8
0111          local.tee 7
0112          if  ;; label = @4
18 ------------------------------------------------------------
0113            local.get 4
0114            local.get 3
0115            i32.load16_u offset=4
0116            i32.store16 offset=4
0117            local.get 4
0118            local.get 3
0119            i32.load align=2
0120            i32.store
0121            local.get 0
0122            local.get 4
0123            local.get 7
0124            call 73
0125            drop
0126          end
19 ------------------------------------------------------------
0127          local.get 1
0128          i32.const 1
0129          i32.add
0130          local.tee 1
0131          local.get 5
0132          i32.ne
0133          br_if 0 (;@3;)
20 ------------------------------------------------------------
0134        end
21 ------------------------------------------------------------
0135      end
22 ------------------------------------------------------------
0136      local.get 6
0137      call 22
0138      local.get 0
0139      i32.load offset=8
0140      local.set 5
0141    end
23 ------------------------------------------------------------
0142    local.get 0
0143    i32.load
0144    local.tee 10
0145    local.get 4
0146    i32.load16_u offset=12
0147    local.tee 3
0148    i32.const 5
0149    i32.shr_u
0150    i32.const 1023
0151    i32.and
0152    local.get 4
0153    i32.load16_u offset=10
0154    local.tee 8
0155    i32.const 32736
0156    i32.and
0157    i32.const 5
0158    i32.shl
0159    local.get 4
0160    i32.load16_u offset=8
0161    local.tee 11
0162    i32.const 32736
0163    i32.and
0164    i32.const 15
0165    i32.shl
0166    i32.or
0167    i32.or
0168    local.get 5
0169    i32.rem_s
0170    local.tee 7
0171    i32.const 4
0172    i32.shl
0173    i32.add
0174    local.tee 1
0175    i32.const 8
0176    i32.add
0177    local.set 9
0178    block  ;; label = @1
24 ------------------------------------------------------------
0179      block  ;; label = @2
25 ------------------------------------------------------------
0180        local.get 1
0181        i32.load offset=8
0182        local.tee 6
0183        i32.eqz
0184        br_if 0 (;@2;)
26 ------------------------------------------------------------
0185        local.get 1
0186        i64.load align=1
0187        local.get 4
0188        i64.load offset=8
0189        i64.eq
0190        br_if 1 (;@1;)
27 ------------------------------------------------------------
0191        local.get 3
0192        i32.const 1023
0193        i32.and
0194        local.get 8
0195        i32.const 1023
0196        i32.and
0197        i32.const 10
0198        i32.shl
0199        local.get 11
0200        i32.const 1023
0201        i32.and
0202        i32.const 20
0203        i32.shl
0204        i32.or
0205        i32.or
0206        local.set 8
0207        i32.const 0
0208        local.set 3
0209        loop  ;; label = @3
28 ------------------------------------------------------------
0210          local.get 3
0211          i32.eqz
0212          if  ;; label = @4
29 ------------------------------------------------------------
0213            local.get 8
0214            local.get 5
0215            i32.rem_s
0216            local.tee 1
0217            i32.const 1
0218            local.get 1
0219            select
0220            local.set 3
0221          end
30 ------------------------------------------------------------
0222          local.get 10
0223          local.get 3
0224          local.get 7
0225          i32.add
0226          local.tee 1
0227          i32.const 0
0228          local.get 5
0229          local.get 1
0230          local.get 5
0231          i32.lt_u
0232          select
0233          i32.sub
0234          local.tee 7
0235          i32.const 4
0236          i32.shl
0237          i32.add
0238          local.tee 1
0239          i32.const 8
0240          i32.add
0241          local.set 9
0242          local.get 1
0243          i32.load offset=8
0244          local.tee 6
0245          i32.eqz
0246          br_if 1 (;@2;)
31 ------------------------------------------------------------
0247          local.get 1
0248          i64.load align=1
0249          local.get 4
0250          i64.load offset=8
0251          i64.ne
0252          br_if 0 (;@3;)
32 ------------------------------------------------------------
0253        end
33 ------------------------------------------------------------
0254        br 1 (;@1;)
34 ------------------------------------------------------------
0255      end
35 ------------------------------------------------------------
0256      local.get 1
0257      local.get 4
0258      i64.load offset=8
0259      i64.store
0260      local.get 0
0261      local.get 0
0262      i32.load offset=4
0263      i32.const 1
0264      i32.add
0265      i32.store offset=4
0266      i32.const 0
0267      local.set 6
0268    end
36 ------------------------------------------------------------
0269    local.get 9
0270    i32.const -1
0271    local.get 2
0272    local.get 6
0273    i32.add
0274    local.tee 0
0275    local.get 0
0276    local.get 2
0277    i32.lt_u
0278    select
0279    i32.store
0280    local.get 4
0281    i32.const 16
0282    i32.add
0283    global.set 0
0284    local.get 1)
