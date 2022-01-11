  (func (;190;) (type 0) (param i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load
0002    local.tee 1
0003    local.get 1
0004    i32.load
0005    local.tee 2
0006    i32.const 1
0007    i32.add
0008    i32.store
0009    local.get 2
0010    i32.const 255
0011    i32.store8
0012    local.get 1
0013    local.get 1
0014    i32.load
0015    i32.const -1
0016    i32.add
0017    local.tee 2
0018    i32.store
0019    block  ;; label = @1
1 ------------------------------------------------------------
0020      local.get 2
0021      br_if 0 (;@1;)
2 ------------------------------------------------------------
0022      local.get 0
0023      local.get 1
0024      i32.load
0025      call_indirect (type 1)
0026      br_if 0 (;@1;)
3 ------------------------------------------------------------
0027      local.get 0
0028      i32.load
0029      local.tee 1
0030      i32.const 24
0031      i32.store
0032      local.get 0
0033      local.get 1
0034      i32.load
0035      call_indirect (type 0)
0036    end
4 ------------------------------------------------------------
0037    local.get 0
0038    i32.load
0039    local.tee 1
0040    local.get 1
0041    i32.load
0042    local.tee 2
0043    i32.const 1
0044    i32.add
0045    i32.store
0046    local.get 2
0047    i32.const 217
0048    i32.store8
0049    local.get 1
0050    local.get 1
0051    i32.load
0052    i32.const -1
0053    i32.add
0054    local.tee 2
0055    i32.store
0056    block  ;; label = @1
5 ------------------------------------------------------------
0057      local.get 2
0058      br_if 0 (;@1;)
6 ------------------------------------------------------------
0059      local.get 0
0060      local.get 1
0061      i32.load
0062      call_indirect (type 1)
0063      br_if 0 (;@1;)
7 ------------------------------------------------------------
0064      local.get 0
0065      i32.load
0066      local.tee 1
0067      i32.const 24
0068      i32.store
0069      local.get 0
0070      local.get 1
0071      i32.load
0072      call_indirect (type 0)
0073    end
8 ------------------------------------------------------------)
