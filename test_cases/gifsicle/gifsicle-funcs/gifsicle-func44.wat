  (func (;44;) (type 2) (param i32 i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.const 0
0002    i32.lt_s
0003    local.get 1
0004    i32.const 1
0005    i32.lt_s
0006    i32.or
0007    i32.eqz
0008    i32.const 0
0009    i32.const 0
0010    i32.const 20
0011    i32.const 1
0012    call 23
0013    local.tee 2
0014    select
0015    i32.eqz
0016    if  ;; label = @1
1 ------------------------------------------------------------
0017      local.get 2
0018      call 22
0019      i32.const 0
0020      return
2 ------------------------------------------------------------
0021    end
3 ------------------------------------------------------------
0022    local.get 2
0023    local.get 0
0024    i32.store
0025    local.get 2
0026    local.get 0
0027    local.get 1
0028    local.get 0
0029    local.get 1
0030    i32.gt_s
0031    select
0032    local.tee 0
0033    i32.store offset=4
0034    local.get 2
0035    i32.const 0
0036    i32.const 8
0037    local.get 0
0038    call 23
0039    local.tee 1
0040    i32.store offset=16
0041    local.get 2
0042    i64.const 0
0043    i64.store offset=8 align=4
0044    local.get 2
0045    local.set 0
0046    local.get 1
0047    if (result i32)  ;; label = @1
4 ------------------------------------------------------------
0048      local.get 0
0049    else
5 ------------------------------------------------------------
0050      local.get 0
0051      call 22
0052      i32.const 0
0053    end
6 ------------------------------------------------------------)
