  (func (;337;) (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 1
0001    i32.load offset=28
0002    local.get 2
0003    i32.load16_u offset=14
0004    local.tee 9
0005    i32.sub
0006    local.tee 6
0007    i32.const 0
0008    local.get 6
0009    i32.const 0
0010    i32.gt_s
0011    select
0012    local.set 4
0013    local.get 6
0014    local.get 1
0015    i32.load offset=36
0016    local.tee 10
0017    i32.add
0018    local.tee 5
0019    local.get 2
0020    i32.load16_u offset=10
0021    local.tee 3
0022    local.get 5
0023    local.get 3
0024    i32.lt_s
0025    select
0026    local.set 5
0027    block  ;; label = @1
1 ------------------------------------------------------------
0028      local.get 1
0029      i32.load offset=24
0030      local.get 2
0031      i32.load16_u offset=12
0032      local.tee 11
0033      i32.sub
0034      local.tee 3
0035      local.get 1
0036      i32.load offset=32
0037      local.tee 12
0038      i32.add
0039      local.tee 7
0040      local.get 2
0041      i32.load16_u offset=8
0042      local.tee 2
0043      local.get 7
0044      local.get 2
0045      i32.lt_s
0046      select
0047      local.tee 7
0048      local.get 3
0049      i32.const 0
0050      local.get 3
0051      i32.const 0
0052      i32.gt_s
0053      local.tee 3
0054      select
0055      local.tee 2
0056      i32.gt_s
0057      if  ;; label = @2
2 ------------------------------------------------------------
0058        local.get 7
0059        local.get 2
0060        i32.sub
0061        local.set 8
0062        br 1 (;@1;)
3 ------------------------------------------------------------
0063      end
4 ------------------------------------------------------------
0064      local.get 1
0065      i32.load offset=40
0066      local.get 12
0067      i32.const -1
0068      i32.add
0069      i32.const 0
0070      local.get 3
0071      select
0072      local.get 11
0073      i32.sub
0074      i32.add
0075      local.set 2
0076    end
5 ------------------------------------------------------------
0077    local.get 0
0078    local.get 8
0079    i32.store offset=32
0080    local.get 0
0081    local.get 2
0082    i32.store offset=24
0083    local.get 0
0084    local.get 5
0085    local.get 4
0086    i32.gt_s
0087    if (result i32)  ;; label = @1
6 ------------------------------------------------------------
0088      local.get 5
0089      local.get 4
0090      i32.sub
0091    else
7 ------------------------------------------------------------
0092      local.get 1
0093      i32.load offset=44
0094      local.get 10
0095      i32.const -1
0096      i32.add
0097      i32.const 0
0098      local.get 6
0099      i32.const 0
0100      i32.gt_s
0101      select
0102      local.get 9
0103      i32.sub
0104      i32.add
0105      local.set 4
0106      i32.const 0
0107    end
8 ------------------------------------------------------------
0108    i32.store offset=36
0109    local.get 0
0110    local.get 4
0111    i32.store offset=28)
