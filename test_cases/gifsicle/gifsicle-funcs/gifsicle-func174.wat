  (func (;174;) (type 24) (param i32 i32 i32 i64) (result i64)
    (local i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 144
0002    i32.sub
0003    local.tee 4
0004    global.set 0
0005    local.get 4
0006    local.get 0
0007    i32.store offset=44
0008    local.get 4
0009    local.get 0
0010    i32.store offset=4
0011    local.get 4
0012    i32.const 0
0013    i32.store
0014    local.get 4
0015    i32.const -1
0016    i32.store offset=76
0017    local.get 4
0018    i32.const -1
0019    local.get 0
0020    i32.const 2147483647
0021    i32.add
0022    local.get 0
0023    i32.const 0
0024    i32.lt_s
0025    select
0026    i32.store offset=8
0027    local.get 4
0028    i64.const 0
0029    call 52
0030    local.get 4
0031    local.get 2
0032    i32.const 1
0033    local.get 3
0034    call 183
0035    local.set 3
0036    local.get 1
0037    if  ;; label = @1
1 ------------------------------------------------------------
0038      local.get 1
0039      local.get 0
0040      local.get 4
0041      i32.load offset=4
0042      local.get 4
0043      i32.load offset=120
0044      i32.add
0045      local.get 4
0046      i32.load offset=8
0047      i32.sub
0048      i32.add
0049      i32.store
0050    end
2 ------------------------------------------------------------
0051    local.get 4
0052    i32.const 144
0053    i32.add
0054    global.set 0
0055    local.get 3)
