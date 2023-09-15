  (func (;366;) (type 1) (param i32 i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.const 0
0002    i32.store
0003    i32.const 0
0004    i32.const 6
0005    i32.const 256
0006    call 23
0007    local.set 2
0008    local.get 0
0009    i32.const 0
0010    i32.store offset=32
0011    local.get 0
0012    i32.const 0
0013    i32.store offset=28
0014    local.get 0
0015    i64.const 1099511627776
0016    i64.store offset=16 align=4
0017    local.get 0
0018    local.get 2
0019    i32.store offset=12
0020    local.get 0
0021    i32.const -1
0022    i32.store offset=8
0023    local.get 1
0024    i32.load
0025    i32.const 1
0026    i32.ge_s
0027    if  ;; label = @1
1 ------------------------------------------------------------
0028      loop  ;; label = @2
2 ------------------------------------------------------------
0029        local.get 0
0030        local.get 1
0031        i32.load offset=16
0032        local.get 3
0033        i32.const 3
0034        i32.shl
0035        i32.add
0036        local.tee 2
0037        i32.load8_u offset=1
0038        local.get 2
0039        i32.load8_u offset=2
0040        local.get 2
0041        i32.load8_u offset=3
0042        call 116
0043        local.get 3
0044        i32.const 1
0045        i32.add
0046        local.tee 3
0047        local.get 1
0048        i32.load
0049        i32.lt_s
0050        br_if 0 (;@2;)
3 ------------------------------------------------------------
0051      end
4 ------------------------------------------------------------
0052    end
5 ------------------------------------------------------------
0053    local.get 0
0054    call 115)
