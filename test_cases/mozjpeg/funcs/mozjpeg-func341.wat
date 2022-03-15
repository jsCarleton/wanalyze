  (func (;341;) (type 7) (param i32 i32 i32 i32)
    (local i32 i32 i32 f32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load offset=364
0002    local.set 4
0003    local.get 3
0004    local.get 0
0005    local.get 1
0006    i32.add
0007    local.tee 5
0008    i32.load8_u offset=120
0009    i32.store offset=2560
0010    local.get 3
0011    local.get 5
0012    i32.load8_u offset=136
0013    i32.store offset=2564
0014    local.get 3
0015    local.get 0
0016    local.get 2
0017    i32.add
0018    i32.load8_u offset=152
0019    i32.store offset=2568
0020    local.get 4
0021    local.get 1
0022    i32.const 2
0023    i32.shl
0024    i32.add
0025    i32.load offset=76
0026    local.set 1
0027    i32.const 0
0028    local.set 0
0029    loop  ;; label = @1
1 ------------------------------------------------------------
0030      local.get 3
0031      local.get 0
0032      i32.const 3
0033      i32.shl
0034      i32.add
0035      local.tee 5
0036      local.get 0
0037      local.get 1
0038      i32.add
0039      i32.load8_u
0040      local.tee 6
0041      i32.const 127
0042      i32.and
0043      i32.const 2
0044      i32.shl
0045      i32.const 143216
0046      i32.add
0047      i32.load
0048      i32.const 16
0049      i32.shr_s
0050      f64.convert_i32_s
0051      f64.const 46340.95
0052      f64.div
0053      f32.demote_f64
0054      local.tee 7
0055      f32.const 0x3f800000
0056      local.get 7
0057      f32.sub
0058      local.get 6
0059      i32.const 128
0060      i32.and
0061      select
0062      local.tee 7
0063      f64.promote_f32
0064      call 74
0065      f64.const -0.69314718056
0066      f64.div
0067      f32.demote_f64
0068      f32.store
0069      local.get 5
0070      f32.const 0x3f800000
0071      local.get 7
0072      f32.sub
0073      f64.promote_f32
0074      call 74
0075      f64.const -0.69314718056
0076      f64.div
0077      f32.demote_f64
0078      f32.store offset=4
0079      local.get 0
0080      i32.const 1
0081      i32.add
0082      local.tee 0
0083      i32.const 64
0084      i32.ne
0085      br_if 0 (;@1;)
2 ------------------------------------------------------------
0086    end
3 ------------------------------------------------------------
0087    local.get 4
0088    local.get 2
0089    i32.const 2
0090    i32.shl
0091    i32.add
0092    i32.load offset=140
0093    local.set 1
0094    i32.const 0
0095    local.set 0
0096    loop  ;; label = @1
4 ------------------------------------------------------------
0097      local.get 3
0098      local.get 0
0099      i32.const 3
0100      i32.shl
0101      i32.add
0102      local.tee 2
0103      local.get 0
0104      local.get 1
0105      i32.add
0106      i32.load8_u
0107      local.tee 4
0108      i32.const 127
0109      i32.and
0110      i32.const 2
0111      i32.shl
0112      i32.const 143216
0113      i32.add
0114      i32.load
0115      i32.const 16
0116      i32.shr_s
0117      f64.convert_i32_s
0118      f64.const 46340.95
0119      f64.div
0120      f32.demote_f64
0121      local.tee 7
0122      f32.const 0x3f800000
0123      local.get 7
0124      f32.sub
0125      local.get 4
0126      i32.const 128
0127      i32.and
0128      select
0129      local.tee 7
0130      f64.promote_f32
0131      call 74
0132      f64.const -0.69314718056
0133      f64.div
0134      f32.demote_f64
0135      f32.store offset=512
0136      local.get 2
0137      f32.const 0x3f800000
0138      local.get 7
0139      f32.sub
0140      f64.promote_f32
0141      call 74
0142      f64.const -0.69314718056
0143      f64.div
0144      f32.demote_f64
0145      f32.store offset=516
0146      local.get 0
0147      i32.const 1
0148      i32.add
0149      local.tee 0
0150      i32.const 256
0151      i32.ne
0152      br_if 0 (;@1;)
5 ------------------------------------------------------------
0153    end
6 ------------------------------------------------------------)
