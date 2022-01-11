  (func (;126;) (type 17) (param i32 i64 i64 i32)
    (local i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 80
0002    i32.sub
0003    local.tee 4
0004    global.set 0
0005    block  ;; label = @1
1 ------------------------------------------------------------
0006      local.get 3
0007      i32.const 16384
0008      i32.ge_s
0009      if  ;; label = @2
2 ------------------------------------------------------------
0010        local.get 4
0011        i32.const 32
0012        i32.add
0013        local.get 1
0014        local.get 2
0015        i64.const 0
0016        i64.const 9222809086901354496
0017        call 31
0018        local.get 4
0019        i64.load
0020        local.set 2
0021        local.get 4
0022        i64.load
0023        local.set 1
0024        local.get 3
0025        i32.const 32767
0026        i32.lt_s
0027        if  ;; label = @3
3 ------------------------------------------------------------
0028          local.get 3
0029          i32.const -16383
0030          i32.add
0031          local.set 3
0032          br 2 (;@1;)
4 ------------------------------------------------------------
0033        end
5 ------------------------------------------------------------
0034        local.get 4
0035        i32.const 16
0036        i32.add
0037        local.get 1
0038        local.get 2
0039        i64.const 0
0040        i64.const 9222809086901354496
0041        call 31
0042        local.get 3
0043        i32.const 49149
0044        local.get 3
0045        i32.const 49149
0046        i32.lt_s
0047        select
0048        i32.const -32766
0049        i32.add
0050        local.set 3
0051        local.get 4
0052        i64.load
0053        local.set 2
0054        local.get 4
0055        i64.load
0056        local.set 1
0057        br 1 (;@1;)
6 ------------------------------------------------------------
0058      end
7 ------------------------------------------------------------
0059      local.get 3
0060      i32.const -16383
0061      i32.gt_s
0062      br_if 0 (;@1;)
8 ------------------------------------------------------------
0063      local.get 4
0064      i32.const -64
0065      i32.sub
0066      local.get 1
0067      local.get 2
0068      i64.const 0
0069      i64.const 281474976710656
0070      call 31
0071      local.get 4
0072      i64.load
0073      local.set 2
0074      local.get 4
0075      i64.load
0076      local.set 1
0077      local.get 3
0078      i32.const -32765
0079      i32.gt_s
0080      if  ;; label = @2
9 ------------------------------------------------------------
0081        local.get 3
0082        i32.const 16382
0083        i32.add
0084        local.set 3
0085        br 1 (;@1;)
10 ------------------------------------------------------------
0086      end
11 ------------------------------------------------------------
0087      local.get 4
0088      i32.const 48
0089      i32.add
0090      local.get 1
0091      local.get 2
0092      i64.const 0
0093      i64.const 281474976710656
0094      call 31
0095      local.get 3
0096      i32.const -49146
0097      local.get 3
0098      i32.const -49146
0099      i32.gt_s
0100      select
0101      i32.const 32764
0102      i32.add
0103      local.set 3
0104      local.get 4
0105      i64.load
0106      local.set 2
0107      local.get 4
0108      i64.load
0109      local.set 1
0110    end
12 ------------------------------------------------------------
0111    local.get 4
0112    local.get 1
0113    local.get 2
0114    i64.const 0
0115    local.get 3
0116    i32.const 16383
0117    i32.add
0118    i64.extend_i32_u
0119    i64.const 48
0120    i64.shl
0121    call 31
0122    local.get 0
0123    local.get 4
0124    i64.load
0125    i64.store
0126    local.get 0
0127    local.get 4
0128    i64.load
0129    i64.store
0130    local.get 4
0131    i32.const 80
0132    i32.add
0133    global.set 0)
