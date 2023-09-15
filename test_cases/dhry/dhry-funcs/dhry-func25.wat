  (func (;25;) (type 12) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 208
0002    i32.sub
0003    local.tee 5
0004    global.set 0
0005    local.get 5
0006    local.get 2
0007    i32.store offset=204
0008    local.get 5
0009    i32.const 160
0010    i32.add
0011    local.tee 2
0012    i32.const 0
0013    i32.const 40
0014    call 29
0015    drop
0016    local.get 5
0017    local.get 5
0018    i32.load offset=204
0019    i32.store offset=200
0020    block  ;; label = @1
1 ------------------------------------------------------------
0021      i32.const 0
0022      local.get 1
0023      local.get 5
0024      i32.const 200
0025      i32.add
0026      local.get 5
0027      i32.const 80
0028      i32.add
0029      local.get 2
0030      local.get 3
0031      local.get 4
0032      call 36
0033      i32.const 0
0034      i32.lt_s
0035      if  ;; label = @2
2 ------------------------------------------------------------
0036        i32.const -1
0037        local.set 1
0038        br 1 (;@1;)
3 ------------------------------------------------------------
0039      end
4 ------------------------------------------------------------
0040      local.get 0
0041      i32.load offset=76
0042      i32.const 0
0043      i32.ge_s
0044      local.set 6
0045      local.get 0
0046      i32.load
0047      local.set 7
0048      local.get 0
0049      i32.load offset=72
0050      i32.const 0
0051      i32.le_s
0052      if  ;; label = @2
5 ------------------------------------------------------------
0053        local.get 0
0054        local.get 7
0055        i32.const -33
0056        i32.and
0057        i32.store
0058      end
6 ------------------------------------------------------------
0059      block (result i32)  ;; label = @2
7 ------------------------------------------------------------
0060        block  ;; label = @3
8 ------------------------------------------------------------
0061          block  ;; label = @4
9 ------------------------------------------------------------
0062            local.get 0
0063            i32.load offset=48
0064            i32.eqz
0065            if  ;; label = @5
10 ------------------------------------------------------------
0066              local.get 0
0067              i32.const 80
0068              i32.store offset=48
0069              local.get 0
0070              i32.const 0
0071              i32.store offset=28
0072              local.get 0
0073              i64.const 0
0074              i64.store offset=16
0075              local.get 0
0076              i32.load offset=44
0077              local.set 8
0078              local.get 0
0079              local.get 5
0080              i32.store offset=44
0081              br 1 (;@4;)
11 ------------------------------------------------------------
0082            end
12 ------------------------------------------------------------
0083            local.get 0
0084            i32.load offset=16
0085            br_if 1 (;@3;)
13 ------------------------------------------------------------
0086          end
14 ------------------------------------------------------------
0087          i32.const -1
0088          local.get 0
0089          call 28
0090          br_if 1 (;@2;)
15 ------------------------------------------------------------
0091          drop
0092        end
16 ------------------------------------------------------------
0093        local.get 0
0094        local.get 1
0095        local.get 5
0096        i32.const 200
0097        i32.add
0098        local.get 5
0099        i32.const 80
0100        i32.add
0101        local.get 5
0102        i32.const 160
0103        i32.add
0104        local.get 3
0105        local.get 4
0106        call 36
0107      end
17 ------------------------------------------------------------
0108      local.set 2
0109      local.get 8
0110      if  ;; label = @2
18 ------------------------------------------------------------
0111        local.get 0
0112        i32.const 0
0113        i32.const 0
0114        local.get 0
0115        i32.load offset=36
0116        call_indirect (type 0)
0117        drop
0118        local.get 0
0119        i32.const 0
0120        i32.store offset=48
0121        local.get 0
0122        local.get 8
0123        i32.store offset=44
0124        local.get 0
0125        i32.const 0
0126        i32.store offset=28
0127        local.get 0
0128        i32.load offset=20
0129        local.set 1
0130        local.get 0
0131        i64.const 0
0132        i64.store offset=16
0133        local.get 2
0134        i32.const -1
0135        local.get 1
0136        select
0137        local.set 2
0138      end
19 ------------------------------------------------------------
0139      local.get 0
0140      local.get 0
0141      i32.load
0142      local.tee 0
0143      local.get 7
0144      i32.const 32
0145      i32.and
0146      i32.or
0147      i32.store
0148      i32.const -1
0149      local.get 2
0150      local.get 0
0151      i32.const 32
0152      i32.and
0153      select
0154      local.set 1
0155      local.get 6
0156      i32.eqz
0157      br_if 0 (;@1;)
20 ------------------------------------------------------------
0158    end
21 ------------------------------------------------------------
0159    local.get 5
0160    i32.const 208
0161    i32.add
0162    global.set 0
0163    local.get 1)
