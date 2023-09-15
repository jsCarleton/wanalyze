  (func (;360;) (type 0) (param i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 2
0004    global.set 0
0005    local.get 0
0006    i32.const 0
0007    i32.store offset=4
0008    local.get 2
0009    i32.const 0
0010    i32.store offset=12
0011    i32.const 84
0012    call 32
0013    local.tee 1
0014    i32.eqz
0015    if  ;; label = @1
1 ------------------------------------------------------------
0016      local.get 0
0017      i32.load
0018      i64.const 54
0019      i64.store offset=20 align=4
0020      local.get 0
0021      local.get 0
0022      i32.load
0023      i32.load
0024      call_indirect (type 0)
0025    end
2 ------------------------------------------------------------
0026    local.get 1
0027    i32.const 1000000000
0028    i32.store offset=48
0029    local.get 1
0030    i32.const 80
0031    i32.store offset=40
0032    local.get 1
0033    i32.const 81
0034    i32.store offset=36
0035    local.get 1
0036    i32.const 82
0037    i32.store offset=32
0038    local.get 1
0039    i32.const 83
0040    i32.store offset=28
0041    local.get 1
0042    i32.const 84
0043    i32.store offset=24
0044    local.get 1
0045    i32.const 85
0046    i32.store offset=20
0047    local.get 1
0048    i32.const 86
0049    i32.store offset=16
0050    local.get 1
0051    i32.const 87
0052    i32.store offset=12
0053    local.get 1
0054    i32.const 88
0055    i32.store offset=8
0056    local.get 1
0057    i32.const 89
0058    i32.store offset=4
0059    local.get 1
0060    i32.const 90
0061    i32.store
0062    local.get 1
0063    i32.const 0
0064    i32.store offset=44
0065    local.get 1
0066    i32.const 84
0067    i32.store offset=76
0068    local.get 1
0069    i64.const 0
0070    i64.store offset=68 align=4
0071    local.get 1
0072    i64.const 0
0073    i64.store offset=60 align=4
0074    local.get 1
0075    i64.const 0
0076    i64.store offset=52 align=4
0077    local.get 0
0078    local.get 1
0079    i32.store offset=4
0080    block  ;; label = @1
3 ------------------------------------------------------------
0081      call 256
0082      local.tee 0
0083      i32.eqz
0084      br_if 0 (;@1;)
4 ------------------------------------------------------------
0085      local.get 2
0086      i32.const 120
0087      i32.store8 offset=11
0088      local.get 2
0089      local.get 2
0090      i32.const 12
0091      i32.add
0092      i32.store
0093      local.get 2
0094      local.get 2
0095      i32.const 11
0096      i32.add
0097      i32.store offset=4
0098      local.get 0
0099      i32.const 143192
0100      local.get 2
0101      call 95
0102      i32.const 1
0103      i32.lt_s
0104      br_if 0 (;@1;)
5 ------------------------------------------------------------
0105      block  ;; label = @2
6 ------------------------------------------------------------
0106        local.get 2
0107        i32.load8_u offset=11
0108        i32.const 32
0109        i32.or
0110        i32.const 109
0111        i32.ne
0112        if  ;; label = @3
7 ------------------------------------------------------------
0113          local.get 2
0114          i32.load offset=12
0115          local.set 0
0116          br 1 (;@2;)
8 ------------------------------------------------------------
0117        end
9 ------------------------------------------------------------
0118        local.get 2
0119        local.get 2
0120        i32.load offset=12
0121        i32.const 1000
0122        i32.mul
0123        local.tee 0
0124        i32.store offset=12
0125      end
10 ------------------------------------------------------------
0126      local.get 1
0127      local.get 0
0128      i32.const 1000
0129      i32.mul
0130      i32.store offset=44
0131    end
11 ------------------------------------------------------------
0132    local.get 2
0133    i32.const 16
0134    i32.add
0135    global.set 0)
