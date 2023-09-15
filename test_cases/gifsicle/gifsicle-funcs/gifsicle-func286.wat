  (func (;286;) (type 5) (param i32 i32 i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 144
0002    i32.sub
0003    local.tee 3
0004    global.set 0
0005    local.get 3
0006    i32.const 30264
0007    i32.const 144
0008    call 24
0009    local.tee 3
0010    local.get 0
0011    i32.store offset=44
0012    local.get 3
0013    local.get 0
0014    i32.store offset=20
0015    local.get 3
0016    i32.const -2
0017    local.get 0
0018    i32.sub
0019    local.tee 4
0020    i32.const 2147483647
0021    local.get 4
0022    i32.const 2147483647
0023    i32.lt_u
0024    select
0025    local.tee 4
0026    i32.store offset=48
0027    local.get 3
0028    local.get 0
0029    local.get 4
0030    i32.add
0031    local.tee 0
0032    i32.store offset=28
0033    local.get 3
0034    local.get 0
0035    i32.store offset=16
0036    local.get 3
0037    local.get 1
0038    local.get 2
0039    call 133
0040    local.get 4
0041    if  ;; label = @1
1 ------------------------------------------------------------
0042      local.get 3
0043      i32.load offset=20
0044      local.tee 0
0045      local.get 0
0046      local.get 3
0047      i32.load offset=16
0048      i32.eq
0049      i32.sub
0050      i32.const 0
0051      i32.store8
0052    end
2 ------------------------------------------------------------
0053    local.get 3
0054    i32.const 144
0055    i32.add
0056    global.set 0)
