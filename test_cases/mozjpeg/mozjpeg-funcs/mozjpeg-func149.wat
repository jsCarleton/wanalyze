  (func (;149;) (type 1) (param i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    local.get 0
0002    i32.load8_u offset=74
0003    local.tee 1
0004    i32.const -1
0005    i32.add
0006    local.get 1
0007    i32.or
0008    i32.store8 offset=74
0009    local.get 0
0010    i32.load
0011    local.tee 1
0012    i32.const 8
0013    i32.and
0014    if  ;; label = @1
1 ------------------------------------------------------------
0015      local.get 0
0016      local.get 1
0017      i32.const 32
0018      i32.or
0019      i32.store
0020      i32.const -1
0021      return
2 ------------------------------------------------------------
0022    end
3 ------------------------------------------------------------
0023    local.get 0
0024    i64.const 0
0025    i64.store offset=4 align=4
0026    local.get 0
0027    local.get 0
0028    i32.load offset=44
0029    local.tee 1
0030    i32.store offset=28
0031    local.get 0
0032    local.get 1
0033    i32.store offset=20
0034    local.get 0
0035    local.get 1
0036    local.get 0
0037    i32.load offset=48
0038    i32.add
0039    i32.store offset=16
0040    i32.const 0)
