  (func (;180;) (type 0) (param i32)
    (local i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load
0002    i32.load
0003    local.set 3
0004    local.get 0
0005    i32.load
0006    local.tee 1
0007    i32.const 100
0008    i32.ne
0009    if  ;; label = @1
1 ------------------------------------------------------------
0010      local.get 0
0011      i32.load
0012      local.tee 2
0013      local.get 1
0014      i32.store
0015      local.get 2
0016      i32.const 20
0017      i32.store
0018      local.get 0
0019      local.get 0
0020      i32.load
0021      i32.load
0022      call_indirect (type 0)
0023    end
2 ------------------------------------------------------------
0024    local.get 0
0025    i32.load
0026    local.tee 2
0027    i32.eqz
0028    if  ;; label = @1
3 ------------------------------------------------------------
0029      local.get 0
0030      local.get 0
0031      call 82
0032      local.tee 2
0033      i32.store
0034    end
4 ------------------------------------------------------------
0035    i32.const 0
0036    local.set 1
0037    local.get 3
0038    i32.const 8
0039    i32.shl
0040    local.set 3
0041    loop  ;; label = @1
5 ------------------------------------------------------------
0042      local.get 2
0043      local.get 1
0044      i32.const 1
0045      i32.shl
0046      i32.add
0047      local.get 3
0048      local.get 1
0049      i32.const 2
0050      i32.shl
0051      i32.add
0052      i32.const 132448
0053      i32.add
0054      i32.load
0055      i32.const 50
0056      i32.mul
0057      i32.const 50
0058      i32.add
0059      i32.const 100
0060      i32.div_s
0061      local.tee 4
0062      i32.const 1
0063      local.get 4
0064      i32.const 1
0065      i32.gt_s
0066      select
0067      local.tee 4
0068      i32.const 255
0069      local.get 4
0070      i32.const 255
0071      i32.lt_s
0072      select
0073      i32.store16
0074      local.get 1
0075      i32.const 1
0076      i32.add
0077      local.tee 1
0078      i32.const 64
0079      i32.ne
0080      br_if 0 (;@1;)
6 ------------------------------------------------------------
0081    end
7 ------------------------------------------------------------
0082    local.get 2
0083    i32.const 0
0084    i32.store
0085    local.get 0
0086    i32.load
0087    i32.load
0088    local.set 3
0089    local.get 0
0090    i32.load
0091    local.tee 1
0092    i32.const 100
0093    i32.ne
0094    if  ;; label = @1
8 ------------------------------------------------------------
0095      local.get 0
0096      i32.load
0097      local.tee 2
0098      local.get 1
0099      i32.store
0100      local.get 2
0101      i32.const 20
0102      i32.store
0103      local.get 0
0104      local.get 0
0105      i32.load
0106      i32.load
0107      call_indirect (type 0)
0108    end
9 ------------------------------------------------------------
0109    local.get 0
0110    i32.load
0111    local.tee 2
0112    i32.eqz
0113    if  ;; label = @1
10 ------------------------------------------------------------
0114      local.get 0
0115      local.get 0
0116      call 82
0117      local.tee 2
0118      i32.store
0119    end
11 ------------------------------------------------------------
0120    i32.const 0
0121    local.set 1
0122    local.get 3
0123    i32.const 8
0124    i32.shl
0125    local.set 0
0126    loop  ;; label = @1
12 ------------------------------------------------------------
0127      local.get 2
0128      local.get 1
0129      i32.const 1
0130      i32.shl
0131      i32.add
0132      local.get 0
0133      local.get 1
0134      i32.const 2
0135      i32.shl
0136      i32.add
0137      i32.const 134752
0138      i32.add
0139      i32.load
0140      i32.const 50
0141      i32.mul
0142      i32.const 50
0143      i32.add
0144      i32.const 100
0145      i32.div_s
0146      local.tee 3
0147      i32.const 1
0148      local.get 3
0149      i32.const 1
0150      i32.gt_s
0151      select
0152      local.tee 3
0153      i32.const 255
0154      local.get 3
0155      i32.const 255
0156      i32.lt_s
0157      select
0158      i32.store16
0159      local.get 1
0160      i32.const 1
0161      i32.add
0162      local.tee 1
0163      i32.const 64
0164      i32.ne
0165      br_if 0 (;@1;)
13 ------------------------------------------------------------
0166    end
14 ------------------------------------------------------------
0167    local.get 2
0168    i32.const 0
0169    i32.store)
