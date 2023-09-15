  (func (;251;) (type 3) (param i32 i32 i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    local.get 2
0002    i32.load offset=8
0003    local.tee 0
0004    local.get 2
0005    i32.load offset=4
0006    i32.add
0007    local.get 2
0008    i32.load offset=12
0009    local.tee 3
0010    local.get 0
0011    i32.sub
0012    local.get 1
0013    local.get 0
0014    local.get 1
0015    i32.add
0016    local.get 3
0017    i32.gt_u
0018    select
0019    local.tee 0
0020    call 24
0021    local.set 3
0022    local.get 2
0023    local.get 2
0024    i32.load offset=8
0025    local.get 0
0026    i32.add
0027    i32.store offset=8
0028    local.get 0
0029    local.get 1
0030    i32.lt_u
0031    if  ;; label = @1
1 ------------------------------------------------------------
0032      local.get 0
0033      local.get 3
0034      i32.add
0035      i32.const 0
0036      local.get 1
0037      local.get 0
0038      i32.sub
0039      call 27
0040      drop
0041    end
2 ------------------------------------------------------------
0042    local.get 0)
