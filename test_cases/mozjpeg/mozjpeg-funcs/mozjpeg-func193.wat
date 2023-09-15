  (func (;193;) (type 2) (param i32 i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load offset=24
0002    local.tee 2
0003    local.get 2
0004    i32.load
0005    local.tee 3
0006    i32.const 1
0007    i32.add
0008    i32.store
0009    local.get 3
0010    local.get 1
0011    i32.store8
0012    local.get 2
0013    local.get 2
0014    i32.load offset=4
0015    i32.const -1
0016    i32.add
0017    local.tee 1
0018    i32.store offset=4
0019    block  ;; label = @1
1 ------------------------------------------------------------
0020      local.get 1
0021      br_if 0 (;@1;)
2 ------------------------------------------------------------
0022      local.get 0
0023      local.get 2
0024      i32.load offset=12
0025      call_indirect (type 1)
0026      br_if 0 (;@1;)
3 ------------------------------------------------------------
0027      local.get 0
0028      i32.load
0029      local.tee 1
0030      i32.const 24
0031      i32.store offset=20
0032      local.get 0
0033      local.get 1
0034      i32.load
0035      call_indirect (type 0)
0036    end
4 ------------------------------------------------------------)
