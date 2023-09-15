  (func (;250;) (type 0) (param i32) (result i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load offset=8
0002    local.tee 1
0003    local.get 0
0004    i32.load offset=12
0005    i32.lt_u
0006    if (result i32)  ;; label = @1
1 ------------------------------------------------------------
0007      local.get 0
0008      local.get 1
0009      i32.const 1
0010      i32.add
0011      i32.store offset=8
0012      local.get 0
0013      i32.load offset=4
0014      local.get 1
0015      i32.add
0016      i32.load8_u
0017    else
2 ------------------------------------------------------------
0018      i32.const 0
0019    end
3 ------------------------------------------------------------)
