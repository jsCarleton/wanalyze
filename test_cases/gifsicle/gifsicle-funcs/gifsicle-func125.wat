  (func (;125;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    block  ;; label = @1
1 ------------------------------------------------------------
0001      local.get 0
0002      i32.load offset=8
0003      local.get 0
0004      i32.load offset=12
0005      local.tee 3
0006      i32.ge_s
0007      if  ;; label = @2
2 ------------------------------------------------------------
0008        local.get 0
0009        local.get 3
0010        i32.const 1
0011        i32.shl
0012        i32.const 2
0013        local.get 3
0014        select
0015        local.tee 3
0016        i32.store offset=12
0017        local.get 0
0018        local.get 0
0019        i32.load
0020        i32.const 4
0021        local.get 3
0022        call 23
0023        i32.store
0024        local.get 0
0025        local.get 0
0026        i32.load offset=4
0027        i32.const 4
0028        local.get 0
0029        i32.load offset=12
0030        call 23
0031        local.tee 4
0032        i32.store offset=4
0033        i32.const 0
0034        local.set 3
0035        local.get 4
0036        i32.eqz
0037        br_if 1 (;@1;)
3 ------------------------------------------------------------
0038        local.get 0
0039        i32.load
0040        i32.eqz
0041        br_if 1 (;@1;)
4 ------------------------------------------------------------
0042      end
5 ------------------------------------------------------------
0043      local.get 2
0044      i32.const -1
0045      i32.le_s
0046      if  ;; label = @2
6 ------------------------------------------------------------
0047        local.get 1
0048        call 28
0049        local.set 2
0050      end
7 ------------------------------------------------------------
0051      local.get 0
0052      i32.load offset=8
0053      i32.const 2
0054      i32.shl
0055      local.tee 3
0056      local.get 0
0057      i32.load
0058      i32.add
0059      local.get 1
0060      i32.store
0061      local.get 0
0062      i32.load offset=4
0063      local.get 3
0064      i32.add
0065      local.get 2
0066      i32.store
0067      i32.const 1
0068      local.set 3
0069      local.get 0
0070      local.get 0
0071      i32.load offset=8
0072      i32.const 1
0073      i32.add
0074      i32.store offset=8
0075    end
8 ------------------------------------------------------------
0076    local.get 3)
