  (func (;43;) (type 27) (param i32 i64)
    (local i32 i32 i64)
0 ------------------------------------------------------------
0000    local.get 0
0001    local.get 1
0002    i64.store offset=112
0003    local.get 0
0004    local.get 0
0005    i32.load offset=8
0006    local.tee 2
0007    local.get 0
0008    i32.load offset=4
0009    local.tee 3
0010    i32.sub
0011    i64.extend_i32_s
0012    local.tee 4
0013    i64.store offset=120
0014    local.get 1
0015    i64.eqz
0016    local.get 4
0017    local.get 1
0018    i64.le_s
0019    i32.or
0020    i32.eqz
0021    if  ;; label = @1
1 ------------------------------------------------------------
0022      local.get 0
0023      local.get 3
0024      local.get 1
0025      i32.wrap_i64
0026      i32.add
0027      i32.store offset=104
0028      return
2 ------------------------------------------------------------
0029    end
3 ------------------------------------------------------------
0030    local.get 0
0031    local.get 2
0032    i32.store offset=104)
