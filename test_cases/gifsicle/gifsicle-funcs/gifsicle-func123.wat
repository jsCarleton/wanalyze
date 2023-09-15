  (func (;123;) (type 0) (param i32) (result i32)
    (local i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.eqz
0002    if  ;; label = @1
1 ------------------------------------------------------------
0003      i32.const 0
0004      return
2 ------------------------------------------------------------
0005    end
3 ------------------------------------------------------------
0006    local.get 0
0007    i32.load
0008    local.tee 1
0009    i32.const 0
0010    i32.lt_s
0011    local.get 0
0012    i32.load offset=4
0013    local.tee 3
0014    i32.const 1
0015    i32.lt_s
0016    i32.or
0017    i32.eqz
0018    i32.const 0
0019    i32.const 0
0020    i32.const 20
0021    i32.const 1
0022    call 23
0023    local.tee 2
0024    select
0025    i32.eqz
0026    if  ;; label = @1
4 ------------------------------------------------------------
0027      local.get 2
0028      call 22
0029      i32.const 0
0030      return
5 ------------------------------------------------------------
0031    end
6 ------------------------------------------------------------
0032    local.get 2
0033    local.get 1
0034    i32.store
0035    local.get 2
0036    local.get 1
0037    local.get 3
0038    local.get 1
0039    local.get 3
0040    i32.gt_s
0041    select
0042    local.tee 1
0043    i32.store offset=4
0044    local.get 2
0045    i32.const 0
0046    i32.const 8
0047    local.get 1
0048    call 23
0049    local.tee 1
0050    i32.store offset=16
0051    local.get 2
0052    i64.const 0
0053    i64.store offset=8 align=4
0054    local.get 1
0055    i32.eqz
0056    if  ;; label = @1
7 ------------------------------------------------------------
0057      local.get 2
0058      call 22
0059      i32.const 0
0060      return
8 ------------------------------------------------------------
0061    end
9 ------------------------------------------------------------
0062    local.get 1
0063    local.get 0
0064    i32.load offset=16
0065    local.get 0
0066    i32.load
0067    i32.const 3
0068    i32.shl
0069    call 24
0070    drop
0071    local.get 2)
