  (func (;87;) (type 10) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load
0002    local.tee 6
0003    i32.const 8
0004    i32.shr_s
0005    local.set 7
0006    local.get 0
0007    i32.load
0008    local.tee 0
0009    local.get 1
0010    local.get 2
0011    local.get 6
0012    i32.const 1
0013    i32.and
0014    if (result i32)  ;; label = @1
1 ------------------------------------------------------------
0015      local.get 3
0016      i32.load
0017      local.get 7
0018      i32.add
0019      i32.load
0020    else
2 ------------------------------------------------------------
0021      local.get 7
0022    end
3 ------------------------------------------------------------
0023    local.get 3
0024    i32.add
0025    local.get 4
0026    i32.const 2
0027    local.get 6
0028    i32.const 2
0029    i32.and
0030    select
0031    local.get 5
0032    local.get 0
0033    i32.load
0034    i32.load
0035    call_indirect (type 10))
