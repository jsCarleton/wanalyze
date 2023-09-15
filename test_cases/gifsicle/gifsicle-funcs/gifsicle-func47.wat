  (func (;47;) (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 96
0002    i32.sub
0003    local.tee 2
0004    global.set 0
0005    block (result i32)  ;; label = @1
1 ------------------------------------------------------------
0006      i32.const 2
0007      local.get 1
0008      i32.load
0009      br_if 0 (;@1;)
2 ------------------------------------------------------------
0010      drop
0011      i32.const 0
0012      local.get 1
0013      i32.load offset=4
0014      br_if 0 (;@1;)
3 ------------------------------------------------------------
0015      drop
0016      local.get 2
0017      local.get 1
0018      i32.store offset=80
0019      local.get 2
0020      local.get 0
0021      i32.store offset=48
0022      i32.const 0
0023      local.set 0
0024      local.get 2
0025      i32.const 0
0026      i32.const 2
0027      i32.const 4096
0028      call 23
0029      local.tee 3
0030      i32.store offset=52
0031      local.get 2
0032      i32.const 0
0033      i32.const 1
0034      i32.const 4096
0035      call 23
0036      local.tee 5
0037      i32.store offset=56
0038      i32.const 0
0039      i32.const 2
0040      i32.const 4096
0041      call 23
0042      local.set 4
0043      local.get 2
0044      i32.const 0
0045      i32.store offset=84
0046      local.get 2
0047      local.get 4
0048      i32.store offset=60
0049      local.get 2
0050      i64.const 0
0051      i64.store offset=88
0052      block  ;; label = @2
4 ------------------------------------------------------------
0053        local.get 4
0054        i32.eqz
0055        local.get 3
0056        i32.eqz
0057        local.get 5
0058        i32.eqz
0059        i32.or
0060        i32.or
0061        br_if 0 (;@2;)
5 ------------------------------------------------------------
0062        local.get 1
0063        i32.load offset=52
0064        local.tee 4
0065        i32.eqz
0066        br_if 0 (;@2;)
6 ------------------------------------------------------------
0067        local.get 1
0068        i32.load offset=44
0069        local.set 0
0070        local.get 2
0071        i32.const 7
0072        i32.store offset=40
0073        local.get 2
0074        i32.const 8
0075        i32.store offset=36
0076        local.get 2
0077        i32.const 9
0078        i32.store offset=32
0079        local.get 2
0080        i32.const 1
0081        i32.store offset=24
0082        local.get 2
0083        local.get 0
0084        i32.store offset=20
0085        local.get 2
0086        i32.const 0
0087        i32.store offset=16
0088        local.get 2
0089        local.get 4
0090        i32.store offset=12
0091        local.get 2
0092        i32.const 48
0093        i32.add
0094        local.get 1
0095        local.get 2
0096        i32.const 8
0097        i32.add
0098        call 120
0099        local.set 0
0100        local.get 2
0101        i32.load offset=52
0102        local.set 3
0103      end
7 ------------------------------------------------------------
0104      local.get 3
0105      call 22
0106      local.get 2
0107      i32.load offset=56
0108      call 22
0109      local.get 2
0110      i32.load offset=60
0111      call 22
0112      block  ;; label = @2
8 ------------------------------------------------------------
0113        local.get 2
0114        i32.load offset=92
0115        local.tee 1
0116        local.get 2
0117        i32.load offset=88
0118        i32.or
0119        i32.eqz
0120        br_if 0 (;@2;)
9 ------------------------------------------------------------
0121        local.get 2
0122        i32.load offset=84
0123        local.tee 3
0124        i32.const 35156
0125        i32.load
0126        local.get 3
0127        select
0128        local.tee 3
0129        i32.eqz
0130        br_if 0 (;@2;)
10 ------------------------------------------------------------
0131        local.get 2
0132        i32.load offset=48
0133        local.get 2
0134        i32.load offset=80
0135        i32.const -1
0136        i32.const 0
0137        local.get 3
0138        call_indirect (type 6)
0139        local.get 2
0140        i32.load offset=92
0141        local.set 1
0142      end
11 ------------------------------------------------------------
0143      local.get 1
0144      i32.eqz
0145      local.get 0
0146      i32.const 0
0147      i32.ne
0148      i32.and
0149    end
12 ------------------------------------------------------------
0150    local.set 0
0151    local.get 2
0152    i32.const 96
0153    i32.add
0154    global.set 0
0155    local.get 0)
