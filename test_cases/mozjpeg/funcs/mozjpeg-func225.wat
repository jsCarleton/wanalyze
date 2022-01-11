  (func (;225;) (type 0) (param i32)
    (local i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 48
0002    i32.sub
0003    local.tee 1
0004    global.set 0
0005    local.get 0
0006    i32.load
0007    local.set 2
0008    local.get 1
0009    local.get 0
0010    i32.load
0011    local.tee 3
0012    i32.load
0013    i32.store
0014    local.get 1
0015    local.get 3
0016    i32.load
0017    i32.store
0018    local.get 1
0019    local.get 2
0020    i64.load align=4
0021    i64.store
0022    local.get 1
0023    local.get 2
0024    i64.load align=4
0025    i64.store
0026    local.get 1
0027    local.get 2
0028    i64.load align=4
0029    i64.store
0030    local.get 1
0031    local.get 0
0032    i32.store
0033    local.get 1
0034    i32.const 8
0035    i32.add
0036    call 113
0037    i32.eqz
0038    if  ;; label = @1
1 ------------------------------------------------------------
0039      local.get 0
0040      i32.load
0041      local.tee 3
0042      i32.const 24
0043      i32.store
0044      local.get 0
0045      local.get 3
0046      i32.load
0047      call_indirect (type 0)
0048    end
2 ------------------------------------------------------------
0049    local.get 0
0050    i32.load
0051    local.tee 0
0052    local.get 1
0053    i32.load
0054    i32.store
0055    local.get 0
0056    local.get 1
0057    i32.load
0058    i32.store
0059    local.get 2
0060    i32.const 12
0061    i32.add
0062    local.tee 0
0063    local.get 1
0064    i32.const 16
0065    i32.add
0066    local.tee 2
0067    i64.load align=4
0068    i64.store align=4
0069    local.get 0
0070    local.get 2
0071    i64.load align=4
0072    i64.store align=4
0073    local.get 0
0074    local.get 2
0075    i64.load align=4
0076    i64.store align=4
0077    local.get 1
0078    i32.const 48
0079    i32.add
0080    global.set 0)
