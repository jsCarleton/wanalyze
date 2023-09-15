  (func (;335;) (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 f64 f64)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 224
0002    i32.sub
0003    local.tee 1
0004    global.set 0
0005    local.get 0
0006    i32.load offset=16
0007    local.set 2
0008    local.get 0
0009    i32.load offset=20
0010    local.set 4
0011    local.get 0
0012    i32.load offset=4
0013    local.set 3
0014    local.get 1
0015    i32.const 0
0016    i32.store offset=192
0017    local.get 1
0018    i32.const 0
0019    i32.store offset=156
0020    local.get 1
0021    i32.const 0
0022    i32.store offset=4
0023    local.get 1
0024    local.get 3
0025    i32.store
0026    local.get 1
0027    i64.const 0
0028    i64.store offset=16
0029    local.get 1
0030    i64.const 0
0031    i64.store offset=48
0032    local.get 1
0033    i64.const 0
0034    i64.store offset=72
0035    local.get 1
0036    local.get 3
0037    i32.load16_u offset=18
0038    local.tee 6
0039    i32.store offset=24
0040    local.get 3
0041    i32.load16_u offset=20
0042    local.set 5
0043    local.get 1
0044    local.get 4
0045    i32.store offset=84
0046    local.get 1
0047    local.get 2
0048    i32.store offset=80
0049    local.get 1
0050    local.get 4
0051    i32.store offset=60
0052    local.get 1
0053    local.get 2
0054    i32.store offset=56
0055    local.get 1
0056    local.get 5
0057    i32.store offset=28
0058    local.get 1
0059    i64.const 0
0060    i64.store offset=136
0061    local.get 1
0062    local.get 2
0063    f64.convert_i32_s
0064    local.tee 7
0065    local.get 6
0066    f64.convert_i32_u
0067    local.tee 8
0068    f64.div
0069    f64.store offset=112
0070    local.get 1
0071    i64.const 0
0072    i64.store offset=128
0073    local.get 1
0074    local.get 8
0075    local.get 7
0076    f64.div
0077    f64.store offset=96
0078    local.get 1
0079    i32.const 16000
0080    i32.store offset=216
0081    local.get 1
0082    i64.const 0
0083    i64.store offset=8
0084    local.get 1
0085    local.get 4
0086    f64.convert_i32_s
0087    local.tee 7
0088    local.get 5
0089    f64.convert_i32_u
0090    local.tee 8
0091    f64.div
0092    f64.store offset=120
0093    local.get 1
0094    local.get 8
0095    local.get 7
0096    f64.div
0097    f64.store offset=104
0098    local.get 1
0099    local.get 0
0100    i32.load offset=24
0101    i32.store offset=220
0102    local.get 0
0103    i32.load offset=8
0104    local.set 2
0105    loop  ;; label = @1
1 ------------------------------------------------------------
0106      local.get 1
0107      local.get 2
0108      i32.store offset=8
0109      local.get 1
0110      local.get 3
0111      i32.load
0112      local.get 2
0113      i32.const 2
0114      i32.shl
0115      i32.add
0116      i32.load
0117      i32.store offset=4
0118      local.get 1
0119      local.get 0
0120      i32.load offset=28
0121      call 207
0122      local.get 0
0123      i32.load offset=12
0124      local.tee 3
0125      local.get 3
0126      i32.load
0127      i32.const 1
0128      i32.add
0129      local.tee 2
0130      i32.store
0131      local.get 0
0132      local.get 2
0133      i32.store offset=8
0134      local.get 2
0135      local.get 0
0136      i32.load offset=4
0137      local.tee 3
0138      i32.load offset=4
0139      i32.lt_s
0140      br_if 0 (;@1;)
2 ------------------------------------------------------------
0141    end
3 ------------------------------------------------------------
0142    local.get 1
0143    call 206
0144    local.get 1
0145    i32.const 224
0146    i32.add
0147    global.set 0
0148    i32.const 0)
