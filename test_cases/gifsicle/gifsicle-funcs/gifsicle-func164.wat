  (func (;164;) (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load
0002    local.tee 3
0003    i32.eqz
0004    if  ;; label = @1
1 ------------------------------------------------------------
0005      return
2 ------------------------------------------------------------
0006    end
3 ------------------------------------------------------------
0007    local.get 0
0008    i32.load16_u offset=10
0009    local.set 5
0010    local.get 0
0011    i32.load16_u offset=8
0012    local.set 7
0013    local.get 0
0014    i32.load16_u offset=12
0015    local.tee 8
0016    i32.const 0
0017    i32.lt_s
0018    if  ;; label = @1
4 ------------------------------------------------------------
0019      i32.const 0
0020      local.get 8
0021      i32.sub
0022      local.set 4
0023      block  ;; label = @2
5 ------------------------------------------------------------
0024        local.get 5
0025        i32.eqz
0026        br_if 0 (;@2;)
6 ------------------------------------------------------------
0027        local.get 3
0028        local.get 3
0029        i32.load
0030        local.get 4
0031        i32.add
0032        i32.store
0033        i32.const 1
0034        local.set 3
0035        local.get 5
0036        i32.const 1
0037        i32.eq
0038        br_if 0 (;@2;)
7 ------------------------------------------------------------
0039        loop  ;; label = @3
8 ------------------------------------------------------------
0040          local.get 0
0041          i32.load
0042          local.get 3
0043          i32.const 2
0044          i32.shl
0045          i32.add
0046          local.tee 6
0047          local.get 6
0048          i32.load
0049          local.get 4
0050          i32.add
0051          i32.store
0052          local.get 3
0053          i32.const 1
0054          i32.add
0055          local.tee 3
0056          local.get 5
0057          i32.ne
0058          br_if 0 (;@3;)
9 ------------------------------------------------------------
0059        end
10 ------------------------------------------------------------
0060      end
11 ------------------------------------------------------------
0061      local.get 0
0062      local.get 4
0063      local.get 8
0064      i32.add
0065      local.tee 8
0066      i32.store16 offset=12
0067      local.get 7
0068      local.get 4
0069      i32.sub
0070      local.set 7
0071    end
12 ------------------------------------------------------------
0072    local.get 0
0073    block (result i32)  ;; label = @1
13 ------------------------------------------------------------
0074      local.get 0
0075      i32.load16_u offset=14
0076      local.tee 4
0077      i32.const 0
0078      i32.lt_s
0079      if  ;; label = @2
14 ------------------------------------------------------------
0080        i32.const 0
0081        local.get 4
0082        i32.sub
0083        local.tee 6
0084        local.get 5
0085        i32.lt_s
0086        if  ;; label = @3
15 ------------------------------------------------------------
0087          local.get 5
0088          i32.const -1
0089          i32.add
0090          local.set 3
0091          loop  ;; label = @4
16 ------------------------------------------------------------
0092            local.get 0
0093            i32.load
0094            local.tee 9
0095            local.get 3
0096            local.get 6
0097            i32.sub
0098            i32.const 2
0099            i32.shl
0100            i32.add
0101            local.get 9
0102            local.get 3
0103            i32.const 2
0104            i32.shl
0105            i32.add
0106            i32.load
0107            i32.store
0108            local.get 3
0109            i32.const 1
0110            i32.add
0111            local.tee 3
0112            local.get 6
0113            i32.ge_s
0114            br_if 0 (;@4;)
17 ------------------------------------------------------------
0115          end
18 ------------------------------------------------------------
0116        end
19 ------------------------------------------------------------
0117        local.get 0
0118        local.get 4
0119        local.get 6
0120        i32.add
0121        local.tee 3
0122        i32.store16 offset=14
0123        local.get 3
0124        i32.const 65535
0125        i32.and
0126        local.set 4
0127        local.get 5
0128        local.get 6
0129        i32.sub
0130        local.set 5
0131      end
20 ------------------------------------------------------------
0132      local.get 5
0133    end
21 ------------------------------------------------------------
0134    local.get 2
0135    local.get 4
0136    i32.sub
0137    local.get 4
0138    local.get 5
0139    i32.add
0140    local.get 2
0141    i32.lt_s
0142    select
0143    local.tee 2
0144    i32.const 0
0145    local.get 2
0146    i32.const 0
0147    i32.gt_s
0148    select
0149    i32.store16 offset=10
0150    local.get 0
0151    local.get 7
0152    local.get 1
0153    local.get 8
0154    i32.const 65535
0155    i32.and
0156    local.tee 0
0157    i32.sub
0158    local.get 0
0159    local.get 7
0160    i32.add
0161    local.get 1
0162    i32.lt_s
0163    select
0164    local.tee 0
0165    i32.const 0
0166    local.get 0
0167    i32.const 0
0168    i32.gt_s
0169    select
0170    i32.store16 offset=8)
