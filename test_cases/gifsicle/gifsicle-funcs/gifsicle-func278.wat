  (func (;278;) (type 5) (param i32 i32 i32)
    (local i32 i64 i64 i64)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 160
0002    i32.sub
0003    local.tee 3
0004    global.set 0
0005    local.get 3
0006    i32.const 16
0007    i32.add
0008    i32.const 0
0009    i32.const 144
0010    call 27
0011    drop
0012    local.get 3
0013    i32.const -1
0014    i32.store offset=92
0015    local.get 3
0016    local.get 1
0017    i32.store offset=60
0018    local.get 3
0019    i32.const -1
0020    i32.store offset=24
0021    local.get 3
0022    local.get 1
0023    i32.store offset=20
0024    local.get 3
0025    i32.const 16
0026    i32.add
0027    i64.const 0
0028    call 52
0029    local.get 3
0030    local.get 3
0031    i32.const 16
0032    i32.add
0033    i32.const 1
0034    i32.const 1
0035    call 180
0036    local.get 3
0037    i64.load offset=8
0038    local.set 4
0039    local.get 3
0040    i64.load
0041    local.set 5
0042    local.get 2
0043    if  ;; label = @1
1 ------------------------------------------------------------
0044      local.get 2
0045      local.get 1
0046      local.get 1
0047      local.get 3
0048      i64.load offset=136
0049      local.get 3
0050      i32.load offset=20
0051      local.get 3
0052      i32.load offset=24
0053      i32.sub
0054      i64.extend_i32_s
0055      i64.add
0056      local.tee 6
0057      i32.wrap_i64
0058      i32.add
0059      local.get 6
0060      i64.eqz
0061      select
0062      i32.store
0063    end
2 ------------------------------------------------------------
0064    local.get 0
0065    local.get 5
0066    i64.store
0067    local.get 0
0068    local.get 4
0069    i64.store offset=8
0070    local.get 3
0071    i32.const 160
0072    i32.add
0073    global.set 0)
