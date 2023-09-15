  (func (;336;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 1
0001    i32.load offset=48
0002    local.tee 4
0003    i32.load offset=28
0004    local.get 0
0005    i32.load16_u offset=14
0006    local.tee 11
0007    i32.sub
0008    local.tee 9
0009    i32.const 0
0010    local.get 9
0011    i32.const 0
0012    i32.gt_s
0013    select
0014    local.set 7
0015    local.get 9
0016    local.get 4
0017    i32.load offset=36
0018    local.tee 12
0019    i32.add
0020    local.tee 5
0021    local.get 0
0022    i32.load16_u offset=10
0023    local.tee 3
0024    local.get 5
0025    local.get 3
0026    i32.lt_s
0027    select
0028    local.set 5
0029    block  ;; label = @1
1 ------------------------------------------------------------
0030      local.get 4
0031      i32.load offset=24
0032      local.get 0
0033      i32.load16_u offset=12
0034      local.tee 13
0035      i32.sub
0036      local.tee 3
0037      local.get 4
0038      i32.load offset=32
0039      local.tee 14
0040      i32.add
0041      local.tee 6
0042      local.get 0
0043      i32.load16_u offset=8
0044      local.tee 10
0045      local.get 6
0046      local.get 10
0047      i32.lt_s
0048      select
0049      local.tee 10
0050      local.get 3
0051      i32.const 0
0052      local.get 3
0053      i32.const 0
0054      i32.gt_s
0055      local.tee 3
0056      select
0057      local.tee 6
0058      i32.gt_s
0059      if  ;; label = @2
2 ------------------------------------------------------------
0060        local.get 10
0061        local.get 6
0062        i32.sub
0063        local.set 8
0064        br 1 (;@1;)
3 ------------------------------------------------------------
0065      end
4 ------------------------------------------------------------
0066      local.get 4
0067      i32.load offset=40
0068      local.get 14
0069      i32.const -1
0070      i32.add
0071      i32.const 0
0072      local.get 3
0073      select
0074      local.get 13
0075      i32.sub
0076      i32.add
0077      local.set 6
0078    end
5 ------------------------------------------------------------
0079    block (result i32)  ;; label = @1
6 ------------------------------------------------------------
0080      local.get 5
0081      local.get 7
0082      i32.gt_s
0083      if  ;; label = @2
7 ------------------------------------------------------------
0084        local.get 4
0085        i32.load offset=44
0086        local.set 3
0087        local.get 5
0088        local.get 7
0089        i32.sub
0090        br 1 (;@1;)
8 ------------------------------------------------------------
0091      end
9 ------------------------------------------------------------
0092      local.get 4
0093      i32.load offset=44
0094      local.tee 3
0095      local.get 12
0096      i32.const -1
0097      i32.add
0098      i32.const 0
0099      local.get 9
0100      i32.const 0
0101      i32.gt_s
0102      select
0103      local.get 11
0104      i32.sub
0105      i32.add
0106      local.set 7
0107      i32.const 0
0108    end
10 ------------------------------------------------------------
0109    local.set 5
0110    local.get 4
0111    i32.load offset=40
0112    local.set 4
0113    local.get 1
0114    local.get 3
0115    i32.store offset=56
0116    local.get 1
0117    local.get 4
0118    i32.store offset=52
0119    block  ;; label = @1
11 ------------------------------------------------------------
0120      block  ;; label = @2
12 ------------------------------------------------------------
0121        local.get 8
0122        i32.const 1
0123        i32.lt_s
0124        local.get 5
0125        i32.const 1
0126        i32.lt_s
0127        i32.or
0128        br_if 0 (;@2;)
13 ------------------------------------------------------------
0129        local.get 0
0130        i32.load
0131        local.tee 4
0132        i32.eqz
0133        br_if 0 (;@2;)
14 ------------------------------------------------------------
0134        i32.const 0
0135        local.set 2
0136        local.get 0
0137        i32.const 0
0138        i32.const 4
0139        local.get 5
0140        i32.const 1
0141        i32.add
0142        call 23
0143        local.tee 3
0144        i32.store
0145        loop  ;; label = @3
15 ------------------------------------------------------------
0146          local.get 3
0147          local.get 2
0148          i32.const 2
0149          i32.shl
0150          i32.add
0151          local.get 4
0152          local.get 2
0153          local.get 7
0154          i32.add
0155          i32.const 2
0156          i32.shl
0157          i32.add
0158          i32.load
0159          local.get 6
0160          i32.add
0161          i32.store
0162          local.get 0
0163          i32.load
0164          local.set 3
0165          local.get 2
0166          i32.const 1
0167          i32.add
0168          local.tee 2
0169          local.get 5
0170          i32.lt_s
0171          br_if 0 (;@3;)
16 ------------------------------------------------------------
0172        end
17 ------------------------------------------------------------
0173        local.get 3
0174        local.get 5
0175        i32.const 2
0176        i32.shl
0177        i32.add
0178        i32.const 0
0179        i32.store
0180        local.get 4
0181        call 22
0182        local.get 0
0183        local.get 5
0184        i32.store16 offset=10
0185        local.get 0
0186        local.get 8
0187        i32.store16 offset=8
0188        br 1 (;@1;)
18 ------------------------------------------------------------
0189      end
19 ------------------------------------------------------------
0190      local.get 2
0191      if  ;; label = @2
20 ------------------------------------------------------------
0192        local.get 0
0193        call 122
0194        br 1 (;@1;)
21 ------------------------------------------------------------
0195      end
22 ------------------------------------------------------------
0196      local.get 0
0197      i32.load
0198      call 22
0199      local.get 0
0200      i32.const 0
0201      i32.store
0202      local.get 0
0203      i32.const 0
0204      i32.store offset=8
0205    end
23 ------------------------------------------------------------
0206    local.get 0
0207    local.get 0
0208    i32.load16_u offset=12
0209    local.get 6
0210    local.get 1
0211    i32.load offset=52
0212    i32.sub
0213    i32.add
0214    i32.store16 offset=12
0215    local.get 0
0216    local.get 0
0217    i32.load16_u offset=14
0218    local.get 7
0219    local.get 1
0220    i32.load offset=56
0221    i32.sub
0222    i32.add
0223    i32.store16 offset=14
0224    local.get 0
0225    i32.load
0226    i32.const 0
0227    i32.ne)
