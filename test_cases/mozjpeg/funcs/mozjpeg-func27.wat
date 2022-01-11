  (func (;27;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i64)
0 ------------------------------------------------------------
0000    block  ;; label = @1
1 ------------------------------------------------------------
0001      local.get 2
0002      i32.eqz
0003      br_if 0 (;@1;)
2 ------------------------------------------------------------
0004      local.get 0
0005      local.get 2
0006      i32.add
0007      local.tee 3
0008      i32.const -1
0009      i32.add
0010      local.get 1
0011      i32.store8
0012      local.get 0
0013      local.get 1
0014      i32.store8
0015      local.get 2
0016      i32.const 3
0017      i32.lt_u
0018      br_if 0 (;@1;)
3 ------------------------------------------------------------
0019      local.get 3
0020      i32.const -2
0021      i32.add
0022      local.get 1
0023      i32.store8
0024      local.get 0
0025      local.get 1
0026      i32.store8
0027      local.get 3
0028      i32.const -3
0029      i32.add
0030      local.get 1
0031      i32.store8
0032      local.get 0
0033      local.get 1
0034      i32.store8
0035      local.get 2
0036      i32.const 7
0037      i32.lt_u
0038      br_if 0 (;@1;)
4 ------------------------------------------------------------
0039      local.get 3
0040      i32.const -4
0041      i32.add
0042      local.get 1
0043      i32.store8
0044      local.get 0
0045      local.get 1
0046      i32.store8
0047      local.get 2
0048      i32.const 9
0049      i32.lt_u
0050      br_if 0 (;@1;)
5 ------------------------------------------------------------
0051      local.get 0
0052      i32.const 0
0053      local.get 0
0054      i32.sub
0055      i32.const 3
0056      i32.and
0057      local.tee 4
0058      i32.add
0059      local.tee 3
0060      local.get 1
0061      i32.const 255
0062      i32.and
0063      i32.const 16843009
0064      i32.mul
0065      local.tee 1
0066      i32.store
0067      local.get 3
0068      local.get 2
0069      local.get 4
0070      i32.sub
0071      i32.const -4
0072      i32.and
0073      local.tee 4
0074      i32.add
0075      local.tee 2
0076      i32.const -4
0077      i32.add
0078      local.get 1
0079      i32.store
0080      local.get 4
0081      i32.const 9
0082      i32.lt_u
0083      br_if 0 (;@1;)
6 ------------------------------------------------------------
0084      local.get 3
0085      local.get 1
0086      i32.store
0087      local.get 3
0088      local.get 1
0089      i32.store
0090      local.get 2
0091      i32.const -8
0092      i32.add
0093      local.get 1
0094      i32.store
0095      local.get 2
0096      i32.const -12
0097      i32.add
0098      local.get 1
0099      i32.store
0100      local.get 4
0101      i32.const 25
0102      i32.lt_u
0103      br_if 0 (;@1;)
7 ------------------------------------------------------------
0104      local.get 3
0105      local.get 1
0106      i32.store
0107      local.get 3
0108      local.get 1
0109      i32.store
0110      local.get 3
0111      local.get 1
0112      i32.store
0113      local.get 3
0114      local.get 1
0115      i32.store
0116      local.get 2
0117      i32.const -16
0118      i32.add
0119      local.get 1
0120      i32.store
0121      local.get 2
0122      i32.const -20
0123      i32.add
0124      local.get 1
0125      i32.store
0126      local.get 2
0127      i32.const -24
0128      i32.add
0129      local.get 1
0130      i32.store
0131      local.get 2
0132      i32.const -28
0133      i32.add
0134      local.get 1
0135      i32.store
0136      local.get 4
0137      local.get 3
0138      i32.const 4
0139      i32.and
0140      i32.const 24
0141      i32.or
0142      local.tee 4
0143      i32.sub
0144      local.tee 2
0145      i32.const 32
0146      i32.lt_u
0147      br_if 0 (;@1;)
8 ------------------------------------------------------------
0148      local.get 1
0149      i64.extend_i32_u
0150      local.tee 5
0151      i64.const 32
0152      i64.shl
0153      local.get 5
0154      i64.or
0155      local.set 5
0156      local.get 3
0157      local.get 4
0158      i32.add
0159      local.set 1
0160      loop  ;; label = @2
9 ------------------------------------------------------------
0161        local.get 1
0162        local.get 5
0163        i64.store
0164        local.get 1
0165        local.get 5
0166        i64.store
0167        local.get 1
0168        local.get 5
0169        i64.store
0170        local.get 1
0171        local.get 5
0172        i64.store
0173        local.get 1
0174        i32.const 32
0175        i32.add
0176        local.set 1
0177        local.get 2
0178        i32.const -32
0179        i32.add
0180        local.tee 2
0181        i32.const 31
0182        i32.gt_u
0183        br_if 0 (;@2;)
10 ------------------------------------------------------------
0184      end
11 ------------------------------------------------------------
0185    end
12 ------------------------------------------------------------
0186    local.get 0)
