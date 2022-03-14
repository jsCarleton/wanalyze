  (func (;233;) (type 7) (param i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    local.get 1
0002    i32.load offset=8
0003    i32.const 0
0004    call 37
0005    if  ;; label = @1
1 ------------------------------------------------------------
0006      local.get 1
0007      local.get 2
0008      local.get 3
0009      call 88
0010      return
2 ------------------------------------------------------------
0011    end
3 ------------------------------------------------------------
0012    local.get 0
0013    i32.load offset=8
0014    local.tee 0
0015    local.get 1
0016    local.get 2
0017    local.get 3
0018    local.get 0
0019    i32.load
0020    i32.load offset=28
0021    call_indirect (type 7))
