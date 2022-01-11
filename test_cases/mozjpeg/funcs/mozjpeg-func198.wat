  (func (;198;) (type 0) (param i32)
    (local i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    local.get 0
0002    i32.const 1
0003    i32.const 64
0004    local.get 0
0005    i32.load
0006    i32.load
0007    call_indirect (type 3)
0008    local.tee 1
0009    i32.store
0010    local.get 1
0011    i32.const 40
0012    i32.store
0013    block  ;; label = @1
1 ------------------------------------------------------------
0014      local.get 0
0015      i32.load
0016      br_if 0 (;@1;)
2 ------------------------------------------------------------
0017      local.get 0
0018      i32.load
0019      i32.const 1
0020      i32.lt_s
0021      br_if 0 (;@1;)
3 ------------------------------------------------------------
0022      local.get 1
0023      i32.const 24
0024      i32.add
0025      local.set 3
0026      local.get 0
0027      i32.load
0028      local.set 1
0029      loop  ;; label = @2
4 ------------------------------------------------------------
0030        local.get 3
0031        local.get 2
0032        i32.const 2
0033        i32.shl
0034        i32.add
0035        local.get 0
0036        i32.const 1
0037        local.get 1
0038        i32.load
0039        i32.const 3
0040        i32.shl
0041        local.get 1
0042        i32.load
0043        i32.const 3
0044        i32.shl
0045        local.get 0
0046        i32.load
0047        i32.load
0048        call_indirect (type 11)
0049        i32.store
0050        local.get 1
0051        i32.const 84
0052        i32.add
0053        local.set 1
0054        local.get 2
0055        i32.const 1
0056        i32.add
0057        local.tee 2
0058        local.get 0
0059        i32.load
0060        i32.lt_s
0061        br_if 0 (;@2;)
5 ------------------------------------------------------------
0062      end
6 ------------------------------------------------------------
0063    end
7 ------------------------------------------------------------)
