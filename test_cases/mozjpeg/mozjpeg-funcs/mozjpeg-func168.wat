  (func (;168;) (type 0) (param i32)
    (local i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load offset=364
0002    local.tee 1
0003    local.get 0
0004    i32.load offset=24
0005    local.tee 2
0006    i32.load
0007    i32.store offset=16
0008    local.get 1
0009    local.get 2
0010    i32.load offset=4
0011    i32.store offset=20
0012    local.get 1
0013    i32.load offset=56
0014    local.tee 3
0015    if  ;; label = @1
1 ------------------------------------------------------------
0016      i32.const 0
0017      local.set 2
0018      loop  ;; label = @2
2 ------------------------------------------------------------
0019        local.get 2
0020        local.tee 4
0021        i32.const 1
0022        i32.add
0023        local.set 2
0024        local.get 3
0025        i32.const 1
0026        i32.shr_s
0027        local.tee 3
0028        br_if 0 (;@2;)
3 ------------------------------------------------------------
0029      end
4 ------------------------------------------------------------
0030      local.get 4
0031      i32.const 15
0032      i32.ge_u
0033      if  ;; label = @2
5 ------------------------------------------------------------
0034        local.get 1
0035        i32.load offset=32
0036        local.tee 2
0037        i32.load
0038        local.tee 3
0039        i32.const 40
0040        i32.store offset=20
0041        local.get 2
0042        local.get 3
0043        i32.load
0044        call_indirect (type 0)
0045      end
6 ------------------------------------------------------------
0046      local.get 4
0047      i32.const 4
0048      i32.shl
0049      local.set 2
0050      local.get 1
0051      i32.load offset=52
0052      local.set 3
0053      block  ;; label = @2
7 ------------------------------------------------------------
0054        local.get 1
0055        i32.load offset=12
0056        if  ;; label = @3
8 ------------------------------------------------------------
0057          local.get 1
0058          local.get 3
0059          i32.const 2
0060          i32.shl
0061          i32.add
0062          i32.load offset=92
0063          local.get 2
0064          i32.const 2
0065          i32.shl
0066          i32.add
0067          local.tee 2
0068          local.get 2
0069          i32.load
0070          i32.const 1
0071          i32.add
0072          i32.store
0073          br 1 (;@2;)
9 ------------------------------------------------------------
0074        end
10 ------------------------------------------------------------
0075        local.get 1
0076        local.get 1
0077        local.get 3
0078        i32.const 2
0079        i32.shl
0080        i32.add
0081        i32.load offset=76
0082        local.tee 3
0083        local.get 2
0084        i32.const 2
0085        i32.shl
0086        i32.add
0087        i32.load
0088        local.get 2
0089        local.get 3
0090        i32.add
0091        i32.const 1024
0092        i32.add
0093        i32.load8_s
0094        call 30
0095      end
11 ------------------------------------------------------------
0096      local.get 4
0097      if  ;; label = @2
12 ------------------------------------------------------------
0098        local.get 1
0099        local.get 1
0100        i32.load offset=56
0101        local.get 4
0102        call 30
0103      end
13 ------------------------------------------------------------
0104      local.get 1
0105      i32.const 0
0106      i32.store offset=56
0107      block  ;; label = @2
14 ------------------------------------------------------------
0108        local.get 1
0109        i32.load offset=60
0110        local.tee 2
0111        i32.eqz
0112        br_if 0 (;@2;)
15 ------------------------------------------------------------
0113        local.get 1
0114        i32.load offset=12
0115        br_if 0 (;@2;)
16 ------------------------------------------------------------
0116        local.get 1
0117        i32.load offset=64
0118        local.set 3
0119        loop  ;; label = @3
17 ------------------------------------------------------------
0120          local.get 1
0121          local.get 3
0122          i32.load8_s
0123          i32.const 1
0124          call 30
0125          local.get 3
0126          i32.const 1
0127          i32.add
0128          local.set 3
0129          local.get 2
0130          i32.const -1
0131          i32.add
0132          local.tee 2
0133          br_if 0 (;@3;)
18 ------------------------------------------------------------
0134        end
19 ------------------------------------------------------------
0135      end
20 ------------------------------------------------------------
0136      local.get 1
0137      i32.const 0
0138      i32.store offset=60
0139    end
21 ------------------------------------------------------------
0140    local.get 1
0141    i32.const 127
0142    i32.const 7
0143    call 30
0144    local.get 1
0145    i64.const 0
0146    i64.store offset=24 align=4
0147    local.get 0
0148    i32.load offset=24
0149    local.tee 0
0150    local.get 1
0151    i32.load offset=16
0152    i32.store
0153    local.get 0
0154    local.get 1
0155    i32.load offset=20
0156    i32.store offset=4)
