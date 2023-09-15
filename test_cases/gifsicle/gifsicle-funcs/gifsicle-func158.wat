  (func (;158;) (type 4) (param i32)
    (local i32)
0 ------------------------------------------------------------
0000    i32.const 0
0001    i32.const 16
0002    i32.const 4093
0003    call 23
0004    local.set 1
0005    local.get 0
0006    i64.const 17579301142528
0007    i64.store offset=4 align=4
0008    local.get 0
0009    local.get 1
0010    i32.store
0011    i32.const 0
0012    local.set 0
0013    loop  ;; label = @1
1 ------------------------------------------------------------
0014      local.get 1
0015      local.get 0
0016      i32.const 4
0017      i32.shl
0018      i32.add
0019      i32.const 0
0020      i32.store offset=8
0021      local.get 0
0022      i32.const 1
0023      i32.add
0024      local.tee 0
0025      i32.const 4093
0026      i32.ne
0027      br_if 0 (;@1;)
2 ------------------------------------------------------------
0028    end
3 ------------------------------------------------------------)
