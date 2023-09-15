  (func (;205;) (type 0) (param i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load offset=20
0002    local.tee 1
0003    i32.const 100
0004    i32.ne
0005    if  ;; label = @1
1 ------------------------------------------------------------
0006      local.get 0
0007      i32.load
0008      local.tee 2
0009      local.get 1
0010      i32.store offset=24
0011      local.get 2
0012      i32.const 20
0013      i32.store offset=20
0014      local.get 0
0015      local.get 0
0016      i32.load
0017      i32.load
0018      call_indirect (type 0)
0019    end
2 ------------------------------------------------------------
0020    local.get 0
0021    call 316
0022    block  ;; label = @1
3 ------------------------------------------------------------
0023      block  ;; label = @2
4 ------------------------------------------------------------
0024        local.get 0
0025        i32.load offset=332
0026        local.tee 1
0027        i32.load offset=4172
0028        i32.eqz
0029        br_if 0 (;@2;)
5 ------------------------------------------------------------
0030        local.get 0
0031        i32.load offset=172
0032        i32.eqz
0033        br_if 0 (;@2;)
6 ------------------------------------------------------------
0034        local.get 0
0035        i32.load offset=168
0036        br_if 1 (;@1;)
7 ------------------------------------------------------------
0037      end
8 ------------------------------------------------------------
0038      local.get 1
0039      i32.const 0
0040      i32.store offset=20
0041    end
9 ------------------------------------------------------------
0042    local.get 0
0043    local.get 0
0044    i32.load
0045    i32.load offset=16
0046    call_indirect (type 0)
0047    local.get 0
0048    local.get 0
0049    i32.load offset=24
0050    i32.load offset=8
0051    call_indirect (type 0)
0052    local.get 0
0053    call 199
0054    local.get 0
0055    local.get 0
0056    i32.load offset=332
0057    i32.load
0058    call_indirect (type 0)
0059    local.get 0
0060    i32.const 0
0061    i32.store offset=224
0062    local.get 0
0063    i32.const 102
0064    i32.const 101
0065    local.get 0
0066    i32.load offset=176
0067    select
0068    i32.store offset=20)
