  (func (;54;) (type 7) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 1312
0002    i32.sub
0003    local.tee 6
0004    global.set 0
0005    local.get 2
0006    i32.const 4
0007    i32.ge_u
0008    if  ;; label = @1
1 ------------------------------------------------------------
0009      local.get 0
0010      i32.load
0011      local.tee 4
0012      local.get 2
0013      i32.store offset=24
0014      local.get 4
0015      i32.const 50
0016      i32.store offset=20
0017      local.get 0
0018      local.get 0
0019      i32.load
0020      i32.load
0021      call_indirect (type 0)
0022    end
2 ------------------------------------------------------------
0023    local.get 0
0024    local.get 2
0025    i32.const 2
0026    i32.shl
0027    i32.add
0028    local.tee 4
0029    i32.const 88
0030    i32.add
0031    local.get 4
0032    i32.const 104
0033    i32.add
0034    local.get 1
0035    select
0036    i32.load
0037    local.tee 9
0038    i32.eqz
0039    if  ;; label = @1
3 ------------------------------------------------------------
0040      local.get 0
0041      i32.load
0042      local.tee 4
0043      local.get 2
0044      i32.store offset=24
0045      local.get 4
0046      i32.const 50
0047      i32.store offset=20
0048      local.get 0
0049      local.get 0
0050      i32.load
0051      i32.load
0052      call_indirect (type 0)
0053    end
4 ------------------------------------------------------------
0054    local.get 3
0055    i32.load
0056    local.tee 7
0057    i32.eqz
0058    if  ;; label = @1
5 ------------------------------------------------------------
0059      local.get 3
0060      local.get 0
0061      i32.const 1
0062      i32.const 1280
0063      local.get 0
0064      i32.load offset=4
0065      i32.load
0066      call_indirect (type 3)
0067      local.tee 7
0068      i32.store
0069    end
6 ------------------------------------------------------------
0070    i32.const 0
0071    local.set 3
0072    i32.const 1
0073    local.set 4
0074    loop  ;; label = @1
7 ------------------------------------------------------------
0075      local.get 3
0076      local.get 4
0077      local.get 9
0078      i32.add
0079      i32.load8_u
0080      local.tee 2
0081      i32.add
0082      i32.const 257
0083      i32.ge_s
0084      if  ;; label = @2
8 ------------------------------------------------------------
0085        local.get 0
0086        i32.load
0087        local.tee 5
0088        i32.const 8
0089        i32.store offset=20
0090        local.get 0
0091        local.get 5
0092        i32.load
0093        call_indirect (type 0)
0094      end
9 ------------------------------------------------------------
0095      local.get 2
0096      if  ;; label = @2
10 ------------------------------------------------------------
0097        local.get 6
0098        i32.const 1040
0099        i32.add
0100        local.get 3
0101        i32.add
0102        local.get 4
0103        local.get 2
0104        call 27
0105        drop
0106        loop  ;; label = @3
11 ------------------------------------------------------------
0107          local.get 3
0108          i32.const 1
0109          i32.add
0110          local.set 3
0111          local.get 2
0112          i32.const -1
0113          i32.add
0114          local.tee 2
0115          br_if 0 (;@3;)
12 ------------------------------------------------------------
0116        end
13 ------------------------------------------------------------
0117      end
14 ------------------------------------------------------------
0118      local.get 4
0119      i32.const 1
0120      i32.add
0121      local.tee 4
0122      i32.const 17
0123      i32.ne
0124      br_if 0 (;@1;)
15 ------------------------------------------------------------
0125    end
16 ------------------------------------------------------------
0126    i32.const 0
0127    local.set 2
0128    local.get 6
0129    i32.const 1040
0130    i32.add
0131    local.get 3
0132    i32.add
0133    i32.const 0
0134    i32.store8
0135    local.get 6
0136    i32.load8_u offset=1040
0137    local.tee 8
0138    if  ;; label = @1
17 ------------------------------------------------------------
0139      local.get 8
0140      i32.const 24
0141      i32.shl
0142      i32.const 24
0143      i32.shr_s
0144      local.set 5
0145      i32.const 0
0146      local.set 4
0147      loop  ;; label = @2
18 ------------------------------------------------------------
0148        local.get 8
0149        i32.const 24
0150        i32.shl
0151        i32.const 24
0152        i32.shr_s
0153        local.get 5
0154        i32.eq
0155        if  ;; label = @3
19 ------------------------------------------------------------
0156          loop  ;; label = @4
20 ------------------------------------------------------------
0157            local.get 6
0158            local.get 4
0159            i32.const 2
0160            i32.shl
0161            i32.add
0162            local.get 2
0163            i32.store
0164            local.get 2
0165            i32.const 1
0166            i32.add
0167            local.set 2
0168            local.get 5
0169            local.get 4
0170            i32.const 1
0171            i32.add
0172            local.tee 4
0173            local.get 6
0174            i32.const 1040
0175            i32.add
0176            i32.add
0177            i32.load8_s
0178            local.tee 8
0179            i32.eq
0180            br_if 0 (;@4;)
21 ------------------------------------------------------------
0181          end
22 ------------------------------------------------------------
0182        end
23 ------------------------------------------------------------
0183        local.get 2
0184        i32.const 1
0185        local.get 5
0186        i32.shl
0187        i32.ge_s
0188        if  ;; label = @3
24 ------------------------------------------------------------
0189          local.get 0
0190          i32.load
0191          local.tee 10
0192          i32.const 8
0193          i32.store offset=20
0194          local.get 0
0195          local.get 10
0196          i32.load
0197          call_indirect (type 0)
0198        end
25 ------------------------------------------------------------
0199        local.get 5
0200        i32.const 1
0201        i32.add
0202        local.set 5
0203        local.get 2
0204        i32.const 1
0205        i32.shl
0206        local.set 2
0207        local.get 8
0208        i32.const 255
0209        i32.and
0210        br_if 0 (;@2;)
26 ------------------------------------------------------------
0211      end
27 ------------------------------------------------------------
0212    end
28 ------------------------------------------------------------
0213    i32.const 0
0214    local.set 2
0215    local.get 7
0216    i32.const 1024
0217    i32.add
0218    i32.const 0
0219    i32.const 256
0220    call 27
0221    drop
0222    local.get 3
0223    i32.const 1
0224    i32.ge_s
0225    if  ;; label = @1
29 ------------------------------------------------------------
0226      i32.const 15
0227      i32.const 255
0228      local.get 1
0229      select
0230      local.set 4
0231      loop  ;; label = @2
30 ------------------------------------------------------------
0232        block  ;; label = @3
31 ------------------------------------------------------------
0233          local.get 4
0234          local.get 2
0235          local.get 9
0236          i32.add
0237          i32.load8_u offset=17
0238          local.tee 1
0239          i32.ge_u
0240          if  ;; label = @4
32 ------------------------------------------------------------
0241            local.get 1
0242            local.get 7
0243            i32.add
0244            i32.const 1024
0245            i32.add
0246            i32.load8_u
0247            i32.eqz
0248            br_if 1 (;@3;)
33 ------------------------------------------------------------
0249          end
34 ------------------------------------------------------------
0250          local.get 0
0251          i32.load
0252          local.tee 5
0253          i32.const 8
0254          i32.store offset=20
0255          local.get 0
0256          local.get 5
0257          i32.load
0258          call_indirect (type 0)
0259        end
35 ------------------------------------------------------------
0260        local.get 7
0261        local.get 1
0262        i32.const 2
0263        i32.shl
0264        i32.add
0265        local.get 6
0266        local.get 2
0267        i32.const 2
0268        i32.shl
0269        i32.add
0270        i32.load
0271        i32.store
0272        local.get 1
0273        local.get 7
0274        i32.add
0275        i32.const 1024
0276        i32.add
0277        local.get 6
0278        i32.const 1040
0279        i32.add
0280        local.get 2
0281        i32.add
0282        i32.load8_u
0283        i32.store8
0284        local.get 2
0285        i32.const 1
0286        i32.add
0287        local.tee 2
0288        local.get 3
0289        i32.ne
0290        br_if 0 (;@2;)
36 ------------------------------------------------------------
0291      end
37 ------------------------------------------------------------
0292    end
38 ------------------------------------------------------------
0293    local.get 6
0294    i32.const 1312
0295    i32.add
0296    global.set 0)
