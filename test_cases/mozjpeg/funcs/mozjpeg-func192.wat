  (func (;192;) (type 5) (param i32 i32 i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    local.get 2
0001    i32.const 65534
0002    i32.ge_u
0003    if  ;; label = @1
1 ------------------------------------------------------------
0004      local.get 0
0005      i32.load
0006      local.tee 3
0007      i32.const 11
0008      i32.store
0009      local.get 0
0010      local.get 3
0011      i32.load
0012      call_indirect (type 0)
0013    end
2 ------------------------------------------------------------
0014    local.get 0
0015    i32.load
0016    local.tee 3
0017    local.get 3
0018    i32.load
0019    local.tee 4
0020    i32.const 1
0021    i32.add
0022    i32.store
0023    local.get 4
0024    i32.const 255
0025    i32.store8
0026    local.get 3
0027    local.get 3
0028    i32.load
0029    i32.const -1
0030    i32.add
0031    local.tee 4
0032    i32.store
0033    block  ;; label = @1
3 ------------------------------------------------------------
0034      local.get 4
0035      br_if 0 (;@1;)
4 ------------------------------------------------------------
0036      local.get 0
0037      local.get 3
0038      i32.load
0039      call_indirect (type 1)
0040      br_if 0 (;@1;)
5 ------------------------------------------------------------
0041      local.get 0
0042      i32.load
0043      local.tee 3
0044      i32.const 24
0045      i32.store
0046      local.get 0
0047      local.get 3
0048      i32.load
0049      call_indirect (type 0)
0050    end
6 ------------------------------------------------------------
0051    local.get 0
0052    i32.load
0053    local.tee 3
0054    local.get 3
0055    i32.load
0056    local.tee 4
0057    i32.const 1
0058    i32.add
0059    i32.store
0060    local.get 4
0061    local.get 1
0062    i32.store8
0063    local.get 3
0064    local.get 3
0065    i32.load
0066    i32.const -1
0067    i32.add
0068    local.tee 1
0069    i32.store
0070    block  ;; label = @1
7 ------------------------------------------------------------
0071      local.get 1
0072      br_if 0 (;@1;)
8 ------------------------------------------------------------
0073      local.get 0
0074      local.get 3
0075      i32.load
0076      call_indirect (type 1)
0077      br_if 0 (;@1;)
9 ------------------------------------------------------------
0078      local.get 0
0079      i32.load
0080      local.tee 1
0081      i32.const 24
0082      i32.store
0083      local.get 0
0084      local.get 1
0085      i32.load
0086      call_indirect (type 0)
0087    end
10 ------------------------------------------------------------
0088    local.get 0
0089    i32.load
0090    local.tee 1
0091    local.get 1
0092    i32.load
0093    local.tee 3
0094    i32.const 1
0095    i32.add
0096    i32.store
0097    local.get 3
0098    local.get 2
0099    i32.const 2
0100    i32.add
0101    local.tee 2
0102    i32.const 8
0103    i32.shr_u
0104    i32.store8
0105    local.get 1
0106    local.get 1
0107    i32.load
0108    i32.const -1
0109    i32.add
0110    local.tee 3
0111    i32.store
0112    block  ;; label = @1
11 ------------------------------------------------------------
0113      local.get 3
0114      br_if 0 (;@1;)
12 ------------------------------------------------------------
0115      local.get 0
0116      local.get 1
0117      i32.load
0118      call_indirect (type 1)
0119      br_if 0 (;@1;)
13 ------------------------------------------------------------
0120      local.get 0
0121      i32.load
0122      local.tee 1
0123      i32.const 24
0124      i32.store
0125      local.get 0
0126      local.get 1
0127      i32.load
0128      call_indirect (type 0)
0129    end
14 ------------------------------------------------------------
0130    local.get 0
0131    i32.load
0132    local.tee 1
0133    local.get 1
0134    i32.load
0135    local.tee 3
0136    i32.const 1
0137    i32.add
0138    i32.store
0139    local.get 3
0140    local.get 2
0141    i32.store8
0142    local.get 1
0143    local.get 1
0144    i32.load
0145    i32.const -1
0146    i32.add
0147    local.tee 2
0148    i32.store
0149    block  ;; label = @1
15 ------------------------------------------------------------
0150      local.get 2
0151      br_if 0 (;@1;)
16 ------------------------------------------------------------
0152      local.get 0
0153      local.get 1
0154      i32.load
0155      call_indirect (type 1)
0156      br_if 0 (;@1;)
17 ------------------------------------------------------------
0157      local.get 0
0158      i32.load
0159      local.tee 1
0160      i32.const 24
0161      i32.store
0162      local.get 0
0163      local.get 1
0164      i32.load
0165      call_indirect (type 0)
0166    end
18 ------------------------------------------------------------)
