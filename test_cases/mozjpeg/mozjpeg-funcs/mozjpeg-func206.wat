  (func (;206;) (type 1) (param i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load offset=32
0002    local.tee 1
0003    local.get 1
0004    i32.load offset=24
0005    local.tee 1
0006    i32.load offset=12
0007    call_indirect (type 1)
0008    i32.eqz
0009    if  ;; label = @1
1 ------------------------------------------------------------
0010      i32.const 0
0011      return
2 ------------------------------------------------------------
0012    end
3 ------------------------------------------------------------
0013    local.get 0
0014    local.get 1
0015    i32.load
0016    i32.store
0017    local.get 0
0018    local.get 1
0019    i32.load offset=4
0020    i32.store offset=4
0021    i32.const 1)
