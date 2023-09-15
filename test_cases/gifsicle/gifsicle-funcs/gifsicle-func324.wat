  (func (;324;) (type 5) (param i32 i32 i32)
    (local i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 2
0001    i32.load offset=4
0002    local.set 4
0003    local.get 2
0004    i32.load offset=8
0005    local.tee 5
0006    local.get 1
0007    i32.add
0008    local.get 2
0009    i32.load offset=12
0010    local.tee 3
0011    i32.ge_u
0012    if  ;; label = @1
1 ------------------------------------------------------------
0013      loop  ;; label = @2
2 ------------------------------------------------------------
0014        local.get 2
0015        local.get 3
0016        i32.const 1
0017        i32.shl
0018        i32.const 1024
0019        local.get 3
0020        select
0021        local.tee 3
0022        i32.store offset=12
0023        local.get 2
0024        local.get 4
0025        i32.const 1
0026        local.get 3
0027        call 23
0028        local.tee 4
0029        i32.store offset=4
0030        local.get 2
0031        i32.load offset=8
0032        local.tee 5
0033        local.get 1
0034        i32.add
0035        local.get 2
0036        i32.load offset=12
0037        local.tee 3
0038        i32.ge_u
0039        br_if 0 (;@2;)
3 ------------------------------------------------------------
0040      end
4 ------------------------------------------------------------
0041    end
5 ------------------------------------------------------------
0042    local.get 4
0043    if  ;; label = @1
6 ------------------------------------------------------------
0044      local.get 4
0045      local.get 5
0046      i32.add
0047      local.get 0
0048      local.get 1
0049      call 24
0050      drop
0051      local.get 2
0052      local.get 2
0053      i32.load offset=8
0054      local.get 1
0055      i32.add
0056      i32.store offset=8
0057    end
7 ------------------------------------------------------------)
