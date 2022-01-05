  (func (;75;) (type 8) (param i32 i32 i64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 2
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
0050    local.get 1
0051    local.get 2
0052    i32.wrap_i64
0053    i32.const 12
0054    i32.mul
0055    i32.const -12
0056    i32.add
0057    i32.const 3
0058    i32.shl
0059    i32.add
0060    local.set 3
0061    i32.const 0
0062    local.set 1
0063    loop  ;; label = @1
4 ------------------------------------------------------------
0064      local.get 3
0065      i32.const 0
0066      local.get 0
0067      i32.const 0
0068      call 16
0069      call 18
0070      local.get 3
0071      i32.const 8
0072      local.get 4
0073      i32.const 0
0074      call 16
0075      call 18
0076      local.get 3
0077      i32.const 16
0078      local.get 5
0079      i32.const 0
0080      call 16
0081      call 18
0082      local.get 3
0083      i32.const 24
0084      local.get 6
0085      i32.const 0
0086      call 16
0087      call 18
0088      local.get 3
0089      i32.const 32
0090      local.get 7
0091      i32.const 0
0092      call 16
0093      call 18
0094      local.get 3
0095      i32.const 40
0096      local.get 8
0097      i32.const 0
0098      call 16
0099      call 18
0100      local.get 3
0101      i32.const 48
0102      local.get 9
0103      i32.const 0
0104      call 16
0105      call 18
0106      local.get 3
0107      i32.const 56
0108      local.get 10
0109      i32.const 0
0110      call 16
0111      call 18
0112      local.get 3
0113      i32.const -64
0114      i32.sub
0115      i32.const 0
0116      local.get 11
0117      i32.const 0
0118      call 16
0119      call 18
0120      local.get 3
0121      i32.const 72
0122      local.get 12
0123      i32.const 0
0124      call 16
0125      call 18
0126      local.get 3
0127      i32.const 80
0128      local.get 13
0129      i32.const 0
0130      call 16
0131      call 18
0132      local.get 3
0133      i32.const 88
0134      local.get 14
0135      i32.const 0
0136      call 16
0137      call 18
0138      local.get 3
0139      i32.const -96
0140      i32.add
0141      local.set 3
0142      local.get 0
0143      call 36
0144      local.get 1
0145      i32.const 1
0146      i32.add
0147      local.tee 1
0148      i64.extend_i32_u
0149      local.get 2
0150      i64.lt_u
0151      br_if 0 (;@1;)
5 ------------------------------------------------------------
0152    end
6 ------------------------------------------------------------)
