  (func (;237;) (type 3) (param i32 i32 i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const -64
0002    i32.add
0003    local.tee 3
0004    global.set 0
0005    block (result i32)  ;; label = @1
1 ------------------------------------------------------------
0006      i32.const 1
0007      local.get 0
0008      local.get 1
0009      i32.const 0
0010      call 37
0011      br_if 0 (;@1;)
2 ------------------------------------------------------------
0012      drop
0013      i32.const 0
0014      local.get 1
0015      i32.eqz
0016      br_if 0 (;@1;)
3 ------------------------------------------------------------
0017      drop
0018      i32.const 0
0019      local.get 1
0020      call 236
0021      local.tee 1
0022      i32.eqz
0023      br_if 0 (;@1;)
4 ------------------------------------------------------------
0024      drop
0025      local.get 3
0026      i32.const -1
0027      i32.store offset=20
0028      local.get 3
0029      local.get 0
0030      i32.store offset=16
0031      local.get 3
0032      i32.const 0
0033      i32.store offset=12
0034      local.get 3
0035      local.get 1
0036      i32.store offset=8
0037      local.get 3
0038      i32.const 24
0039      i32.add
0040      i32.const 0
0041      i32.const 39
0042      call 27
0043      drop
0044      local.get 3
0045      i32.const 1
0046      i32.store offset=56
0047      local.get 1
0048      local.get 3
0049      i32.const 8
0050      i32.add
0051      local.get 2
0052      i32.load
0053      i32.const 1
0054      local.get 1
0055      i32.load
0056      i32.load offset=28
0057      call_indirect (type 7)
0058      i32.const 0
0059      local.get 3
0060      i32.load offset=32
0061      i32.const 1
0062      i32.ne
0063      br_if 0 (;@1;)
5 ------------------------------------------------------------
0064      drop
0065      local.get 2
0066      local.get 3
0067      i32.load offset=24
0068      i32.store
0069      i32.const 1
0070    end
6 ------------------------------------------------------------
0071    local.set 0
0072    local.get 3
0073    i32.const -64
0074    i32.sub
0075    global.set 0
0076    local.get 0)
