  (func (;235;) (type 10) (param i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    local.get 1
0002    i32.load
0003    local.get 5
0004    call 37
0005    if  ;; label = @1
1 ------------------------------------------------------------
0006      local.get 1
0007      local.get 2
0008      local.get 3
0009      local.get 4
0010      call 90
0011      return
2 ------------------------------------------------------------
0012    end
3 ------------------------------------------------------------
0013    local.get 0
0014    i32.load
0015    local.tee 0
0016    local.get 1
0017    local.get 2
0018    local.get 3
0019    local.get 4
0020    local.get 5
0021    local.get 0
0022    i32.load
0023    i32.load
0024    call_indirect (type 10))
