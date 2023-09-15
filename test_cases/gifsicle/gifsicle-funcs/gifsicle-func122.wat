  (func (;122;) (type 4) (param i32)
    (local i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load
0002    call 22
0003    block  ;; label = @1
1 ------------------------------------------------------------
0004      local.get 0
0005      i32.load offset=4
0006      local.tee 1
0007      i32.eqz
0008      br_if 0 (;@1;)
2 ------------------------------------------------------------
0009      local.get 0
0010      i32.load offset=40
0011      local.tee 2
0012      i32.eqz
0013      br_if 0 (;@1;)
3 ------------------------------------------------------------
0014      local.get 1
0015      local.get 2
0016      call_indirect (type 4)
0017    end
4 ------------------------------------------------------------
0018    local.get 0
0019    i32.const 0
0020    i32.store offset=40
0021    local.get 0
0022    i64.const 0
0023    i64.store align=4
0024    block  ;; label = @1
5 ------------------------------------------------------------
0025      local.get 0
0026      i32.load offset=52
0027      local.tee 1
0028      i32.eqz
0029      br_if 0 (;@1;)
6 ------------------------------------------------------------
0030      local.get 0
0031      i32.load offset=56
0032      local.tee 2
0033      i32.eqz
0034      br_if 0 (;@1;)
7 ------------------------------------------------------------
0035      local.get 1
0036      local.get 2
0037      call_indirect (type 4)
0038    end
8 ------------------------------------------------------------
0039    local.get 0
0040    i64.const 0
0041    i64.store offset=44 align=4
0042    local.get 0
0043    i32.const 0
0044    i32.store16 offset=20
0045    local.get 0
0046    i32.const 65537
0047    i32.store offset=8
0048    local.get 0
0049    i64.const 0
0050    i64.store offset=52 align=4
0051    i32.const 0
0052    i32.const 1
0053    i32.const 1
0054    call 23
0055    local.set 4
0056    local.get 0
0057    i32.load16_u offset=10
0058    local.set 2
0059    local.get 0
0060    i32.load16_u offset=8
0061    local.set 5
0062    local.get 0
0063    i32.load
0064    call 22
0065    block  ;; label = @1
9 ------------------------------------------------------------
0066      local.get 0
0067      i32.load offset=4
0068      local.tee 1
0069      i32.eqz
0070      br_if 0 (;@1;)
10 ------------------------------------------------------------
0071      local.get 0
0072      i32.load offset=40
0073      local.tee 3
0074      i32.eqz
0075      br_if 0 (;@1;)
11 ------------------------------------------------------------
0076      local.get 1
0077      local.get 3
0078      call_indirect (type 4)
0079    end
12 ------------------------------------------------------------
0080    i32.const 0
0081    local.set 3
0082    local.get 0
0083    i32.const 0
0084    i32.store offset=40
0085    local.get 0
0086    i64.const 0
0087    i64.store align=4
0088    block  ;; label = @1
13 ------------------------------------------------------------
0089      i32.const 0
0090      i32.const 4
0091      local.get 2
0092      i32.const 1
0093      i32.add
0094      call 23
0095      local.tee 1
0096      i32.eqz
0097      if  ;; label = @2
14 ------------------------------------------------------------
0098        local.get 0
0099        i32.load
0100        local.set 1
0101        br 1 (;@1;)
15 ------------------------------------------------------------
0102      end
16 ------------------------------------------------------------
0103      local.get 2
0104      if  ;; label = @2
17 ------------------------------------------------------------
0105        loop  ;; label = @3
18 ------------------------------------------------------------
0106          local.get 1
0107          local.get 3
0108          i32.const 2
0109          i32.shl
0110          i32.add
0111          local.get 4
0112          local.get 3
0113          local.get 5
0114          i32.mul
0115          i32.add
0116          i32.store
0117          local.get 3
0118          i32.const 1
0119          i32.add
0120          local.tee 3
0121          local.get 2
0122          i32.ne
0123          br_if 0 (;@3;)
19 ------------------------------------------------------------
0124        end
20 ------------------------------------------------------------
0125      end
21 ------------------------------------------------------------
0126      local.get 1
0127      local.get 2
0128      i32.const 2
0129      i32.shl
0130      i32.add
0131      i32.const 0
0132      i32.store
0133      local.get 0
0134      i32.const 6
0135      i32.store offset=40
0136      local.get 0
0137      local.get 4
0138      i32.store offset=4
0139      local.get 0
0140      local.get 1
0141      i32.store
0142    end
22 ------------------------------------------------------------
0143    local.get 1
0144    i32.load
0145    i32.const 0
0146    i32.store8)
