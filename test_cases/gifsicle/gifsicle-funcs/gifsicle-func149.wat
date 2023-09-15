  (func (;149;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    local.get 0
0002    i32.load
0003    local.tee 3
0004    i32.const 1
0005    i32.add
0006    i32.store
0007    block  ;; label = @1
1 ------------------------------------------------------------
0008      local.get 3
0009      local.get 0
0010      i32.load offset=4
0011      local.tee 4
0012      i32.lt_s
0013      if  ;; label = @2
2 ------------------------------------------------------------
0014        local.get 0
0015        i32.load offset=8
0016        local.set 5
0017        br 1 (;@1;)
3 ------------------------------------------------------------
0018      end
4 ------------------------------------------------------------
0019      local.get 0
0020      i32.load offset=8
0021      local.set 5
0022      loop  ;; label = @2
5 ------------------------------------------------------------
0023        local.get 0
0024        local.get 4
0025        i32.const 1
0026        i32.shl
0027        local.tee 4
0028        i32.store offset=4
0029        local.get 0
0030        local.get 5
0031        i32.const 100
0032        local.get 4
0033        call 23
0034        local.tee 5
0035        i32.store offset=8
0036        local.get 3
0037        local.get 0
0038        i32.load offset=4
0039        local.tee 4
0040        i32.ge_s
0041        br_if 0 (;@2;)
6 ------------------------------------------------------------
0042      end
7 ------------------------------------------------------------
0043    end
8 ------------------------------------------------------------
0044    local.get 1
0045    local.get 1
0046    i32.load offset=48
0047    i32.const 1
0048    i32.add
0049    i32.store offset=48
0050    local.get 2
0051    local.get 2
0052    i32.load offset=72
0053    i32.const 1
0054    i32.add
0055    i32.store offset=72
0056    local.get 5
0057    local.get 3
0058    i32.const 100
0059    i32.mul
0060    local.tee 3
0061    i32.add
0062    i32.const 35608
0063    i32.const 100
0064    call 24
0065    drop
0066    local.get 0
0067    i32.load offset=8
0068    local.get 3
0069    i32.add
0070    local.tee 0
0071    local.get 2
0072    i32.store offset=4
0073    local.get 0
0074    local.get 1
0075    i32.store
0076    i32.const 35692
0077    i32.const 0
0078    i32.store
0079    i32.const 35628
0080    i32.const 0
0081    i32.store
0082    i32.const 35620
0083    i32.const 0
0084    i32.store
0085    local.get 0)
