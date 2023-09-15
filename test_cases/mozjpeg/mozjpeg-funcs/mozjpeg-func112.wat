  (func (;112;) (type 0) (param i32)
    (local i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load offset=4
0002    local.tee 1
0003    if  ;; label = @1
1 ------------------------------------------------------------
0004      local.get 0
0005      local.get 1
0006      i32.load offset=40
0007      call_indirect (type 0)
0008    end
2 ------------------------------------------------------------
0009    local.get 0
0010    i32.const 0
0011    i32.store offset=20
0012    local.get 0
0013    i32.const 0
0014    i32.store offset=4)
