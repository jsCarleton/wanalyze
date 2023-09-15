  (func (;248;) (type 3) (param i32 i32 i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    local.get 1
0002    local.get 2
0003    i32.load
0004    call 298
0005    local.tee 3
0006    local.get 1
0007    i32.lt_u
0008    if  ;; label = @1
1 ------------------------------------------------------------
0009      local.get 0
0010      local.get 3
0011      i32.add
0012      i32.const 0
0013      local.get 1
0014      local.get 3
0015      i32.sub
0016      call 27
0017      drop
0018    end
2 ------------------------------------------------------------
0019    local.get 2
0020    local.get 2
0021    i32.load offset=8
0022    local.get 3
0023    i32.add
0024    i32.store offset=8
0025    local.get 3)
