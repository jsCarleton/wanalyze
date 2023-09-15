  (func (;48;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load offset=84
0002    local.tee 3
0003    i32.load offset=4
0004    local.tee 5
0005    local.get 0
0006    i32.load offset=20
0007    local.get 0
0008    i32.load offset=28
0009    local.tee 6
0010    i32.sub
0011    local.tee 4
0012    local.get 4
0013    local.get 5
0014    i32.gt_u
0015    select
0016    local.tee 4
0017    if  ;; label = @1
1 ------------------------------------------------------------
0018      local.get 3
0019      i32.load
0020      local.get 6
0021      local.get 4
0022      call 12
0023      local.get 3
0024      local.get 3
0025      i32.load
0026      local.get 4
0027      i32.add
0028      i32.store
0029      local.get 3
0030      local.get 3
0031      i32.load offset=4
0032      local.get 4
0033      i32.sub
0034      local.tee 5
0035      i32.store offset=4
0036    end
2 ------------------------------------------------------------
0037    local.get 3
0038    i32.load
0039    local.set 4
0040    local.get 5
0041    local.get 2
0042    local.get 2
0043    local.get 5
0044    i32.gt_u
0045    select
0046    local.tee 5
0047    if  ;; label = @1
3 ------------------------------------------------------------
0048      local.get 4
0049      local.get 1
0050      local.get 5
0051      call 12
0052      local.get 3
0053      local.get 3
0054      i32.load
0055      local.get 5
0056      i32.add
0057      local.tee 4
0058      i32.store
0059      local.get 3
0060      local.get 3
0061      i32.load offset=4
0062      local.get 5
0063      i32.sub
0064      i32.store offset=4
0065    end
4 ------------------------------------------------------------
0066    local.get 4
0067    i32.const 0
0068    i32.store8
0069    local.get 0
0070    local.get 0
0071    i32.load offset=44
0072    local.tee 1
0073    i32.store offset=28
0074    local.get 0
0075    local.get 1
0076    i32.store offset=20
0077    local.get 2)
