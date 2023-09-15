  (func (;313;) (type 6) (param i32 i32 i32 i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 272
0002    i32.sub
0003    local.tee 4
0004    global.set 0
0005    local.get 4
0006    local.get 4
0007    i32.const 268
0008    i32.add
0009    i32.store offset=8
0010    local.get 4
0011    local.get 4
0012    i32.const 12
0013    i32.add
0014    local.tee 5
0015    i32.store
0016    local.get 4
0017    local.get 5
0018    i32.store offset=4
0019    local.get 0
0020    local.get 4
0021    local.get 2
0022    local.get 3
0023    call 147
0024    local.get 1
0025    local.get 4
0026    i32.load
0027    local.tee 0
0028    local.get 4
0029    i32.load offset=4
0030    local.get 0
0031    i32.sub
0032    local.tee 2
0033    i32.const 1023
0034    local.get 2
0035    i32.const 1024
0036    i32.lt_u
0037    select
0038    local.tee 1
0039    call 24
0040    local.get 1
0041    i32.add
0042    i32.const 0
0043    i32.store8
0044    local.get 0
0045    local.get 5
0046    i32.ne
0047    if  ;; label = @1
1 ------------------------------------------------------------
0048      local.get 0
0049      call 22
0050      local.get 4
0051      i32.load offset=4
0052      local.get 4
0053      i32.load
0054      i32.sub
0055      drop
0056    end
2 ------------------------------------------------------------
0057    local.get 4
0058    i32.const 272
0059    i32.add
0060    global.set 0)
