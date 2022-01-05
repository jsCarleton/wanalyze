  (func (;80;) (type 6) (param i32 i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    global.get 5
0001    local.set 2
0002    global.get 5
0003    i32.const 992
0004    i32.add
0005    global.set 5
0006    global.get 5
0007    global.get 6
0008    i32.ge_s
0009    if  ;; label = @1
1 ------------------------------------------------------------
0010      i32.const 992
0011      call 2
0012    end
2 ------------------------------------------------------------
0013    local.get 2
0014    i32.const 868
0015    i32.add
0016    local.tee 3
0017    call 70
0018    local.get 3
0019    local.get 0
0020    i32.const 80
0021    call 35
0022    local.get 3
0023    local.get 2
0024    i32.const 32
0025    i32.add
0026    local.tee 0
0027    call 69
0028    local.get 2
0029    i32.const 352
0030    i32.add
0031    local.tee 3
0032    call 61
0033    local.get 3
0034    local.get 0
0035    i32.const 32
0036    call 42
0037    local.get 3
0038    local.get 2
0039    call 60
0040    local.get 0
0041    local.get 2
0042    local.get 2
0043    call 45
0044    drop
0045    local.get 2
0046    i32.const 704
0047    i32.add
0048    local.tee 3
0049    call 66
0050    local.get 3
0051    local.get 0
0052    i32.const 32
0053    call 68
0054    local.get 3
0055    local.get 2
0056    call 64
0057    local.get 0
0058    local.get 2
0059    local.get 2
0060    call 45
0061    drop
0062    local.get 2
0063    i32.const 208
0064    i32.add
0065    local.tee 3
0066    call 57
0067    local.get 3
0068    local.get 0
0069    i32.const 32
0070    call 59
0071    local.get 3
0072    local.get 2
0073    call 55
0074    local.get 2
0075    i32.const -64
0076    i32.sub
0077    local.tee 3
0078    call 62
0079    local.get 3
0080    local.get 2
0081    i32.const 32
0082    call 43
0083    local.get 3
0084    local.get 0
0085    call 63
0086    local.get 1
0087    i32.const 0
0088    local.get 0
0089    i32.const 0
0090    call 28
0091    call 26
0092    local.get 1
0093    i32.const 8
0094    local.get 0
0095    i32.const 8
0096    call 28
0097    call 26
0098    local.get 1
0099    i32.const 16
0100    local.get 0
0101    i32.const 16
0102    call 28
0103    call 26
0104    local.get 1
0105    i32.const 24
0106    local.get 0
0107    i32.const 24
0108    call 28
0109    call 26
0110    local.get 2
0111    global.set 5)
