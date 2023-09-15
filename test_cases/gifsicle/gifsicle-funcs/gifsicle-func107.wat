  (func (;107;) (type 0) (param i32) (result i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 1
0004    global.set 0
0005    i32.const -1
0006    local.set 2
0007    block  ;; label = @1
1 ------------------------------------------------------------
0008      local.get 0
0009      call 134
0010      br_if 0 (;@1;)
2 ------------------------------------------------------------
0011      local.get 0
0012      local.get 1
0013      i32.const 15
0014      i32.add
0015      i32.const 1
0016      local.get 0
0017      i32.load offset=32
0018      call_indirect (type 3)
0019      i32.const 1
0020      i32.ne
0021      br_if 0 (;@1;)
3 ------------------------------------------------------------
0022      local.get 1
0023      i32.load8_u offset=15
0024      local.set 2
0025    end
4 ------------------------------------------------------------
0026    local.get 1
0027    i32.const 16
0028    i32.add
0029    global.set 0
0030    local.get 2)
