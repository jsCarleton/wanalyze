  (func (;70;) (type 6) (param i32 i32 i32 i32 i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load
0002    local.tee 5
0003    i32.const 8
0004    i32.shr_s
0005    local.set 6
0006    local.get 0
0007    i32.load
0008    local.tee 0
0009    local.get 1
0010    local.get 5
0011    i32.const 1
0012    i32.and
0013    if (result i32)  ;; label = @1
1 ------------------------------------------------------------
0014      local.get 2
0015      i32.load
0016      local.get 6
0017      i32.add
0018      i32.load
0019    else
2 ------------------------------------------------------------
0020      local.get 6
0021    end
3 ------------------------------------------------------------
0022    local.get 2
0023    i32.add
0024    local.get 3
0025    i32.const 2
0026    local.get 5
0027    i32.const 2
0028    i32.and
0029    select
0030    local.get 4
0031    local.get 0
0032    i32.load
0033    i32.load
0034    call_indirect (type 6))
