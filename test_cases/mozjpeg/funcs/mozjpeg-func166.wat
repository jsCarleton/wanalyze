  (func (;166;) (type 2) (param i32 i32)
    (local i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load offset=340
0002    local.set 2
0003    local.get 1
0004    if  ;; label = @1
1 ------------------------------------------------------------
0005      local.get 0
0006      i32.load
0007      local.tee 1
0008      i32.const 4
0009      i32.store offset=20
0010      local.get 0
0011      local.get 1
0012      i32.load
0013      call_indirect (type 0)
0014    end
2 ------------------------------------------------------------
0015    local.get 0
0016    i32.load offset=32
0017    local.set 1
0018    local.get 2
0019    i64.const 0
0020    i64.store offset=52 align=4
0021    local.get 2
0022    local.get 1
0023    i32.store offset=48
0024    local.get 2
0025    local.get 0
0026    i32.load offset=236
0027    i32.const 1
0028    i32.shl
0029    i32.store offset=60)
