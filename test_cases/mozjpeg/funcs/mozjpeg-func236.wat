  (func (;236;) (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const -64
0002    i32.add
0003    local.tee 1
0004    global.set 0
0005    local.get 0
0006    i32.load
0007    local.tee 2
0008    i32.const -4
0009    i32.add
0010    i32.load
0011    local.set 3
0012    local.get 2
0013    i32.const -8
0014    i32.add
0015    i32.load
0016    local.set 4
0017    local.get 1
0018    i32.const 156252
0019    i32.store offset=16
0020    local.get 1
0021    local.get 0
0022    i32.store offset=12
0023    local.get 1
0024    i32.const 156264
0025    i32.store offset=8
0026    i32.const 0
0027    local.set 2
0028    local.get 1
0029    i32.const 20
0030    i32.add
0031    i32.const 0
0032    i32.const 43
0033    call 27
0034    drop
0035    local.get 0
0036    local.get 4
0037    i32.add
0038    local.set 0
0039    block  ;; label = @1
1 ------------------------------------------------------------
0040      local.get 3
0041      i32.const 156264
0042      i32.const 0
0043      call 37
0044      if  ;; label = @2
2 ------------------------------------------------------------
0045        local.get 1
0046        i32.const 1
0047        i32.store offset=56
0048        local.get 3
0049        local.get 1
0050        i32.const 8
0051        i32.add
0052        local.get 0
0053        local.get 0
0054        i32.const 1
0055        i32.const 0
0056        local.get 3
0057        i32.load
0058        i32.load offset=20
0059        call_indirect (type 10)
0060        local.get 0
0061        i32.const 0
0062        local.get 1
0063        i32.load offset=32
0064        i32.const 1
0065        i32.eq
0066        select
0067        local.set 2
0068        br 1 (;@1;)
3 ------------------------------------------------------------
0069      end
4 ------------------------------------------------------------
0070      local.get 3
0071      local.get 1
0072      i32.const 8
0073      i32.add
0074      local.get 0
0075      i32.const 1
0076      i32.const 0
0077      local.get 3
0078      i32.load
0079      i32.load offset=24
0080      call_indirect (type 6)
0081      block  ;; label = @2
5 ------------------------------------------------------------
0082        block  ;; label = @3
6 ------------------------------------------------------------
0083          local.get 1
0084          i32.load offset=44
0085          br_table 0 1 2
7 ------------------------------------------------------------
0086        end
8 ------------------------------------------------------------
0087        local.get 1
0088        i32.load offset=28
0089        i32.const 0
0090        local.get 1
0091        i32.load offset=40
0092        i32.const 1
0093        i32.eq
0094        select
0095        i32.const 0
0096        local.get 1
0097        i32.load offset=36
0098        i32.const 1
0099        i32.eq
0100        select
0101        i32.const 0
0102        local.get 1
0103        i32.load offset=48
0104        i32.const 1
0105        i32.eq
0106        select
0107        local.set 2
0108        br 1 (;@1;)
9 ------------------------------------------------------------
0109      end
10 ------------------------------------------------------------
0110      local.get 1
0111      i32.load offset=32
0112      i32.const 1
0113      i32.ne
0114      if  ;; label = @2
11 ------------------------------------------------------------
0115        local.get 1
0116        i32.load offset=48
0117        br_if 1 (;@1;)
12 ------------------------------------------------------------
0118        local.get 1
0119        i32.load offset=36
0120        i32.const 1
0121        i32.ne
0122        br_if 1 (;@1;)
13 ------------------------------------------------------------
0123        local.get 1
0124        i32.load offset=40
0125        i32.const 1
0126        i32.ne
0127        br_if 1 (;@1;)
14 ------------------------------------------------------------
0128      end
15 ------------------------------------------------------------
0129      local.get 1
0130      i32.load offset=24
0131      local.set 2
0132    end
16 ------------------------------------------------------------
0133    local.get 1
0134    i32.const -64
0135    i32.sub
0136    global.set 0
0137    local.get 2)
