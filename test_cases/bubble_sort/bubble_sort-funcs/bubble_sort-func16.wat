  (func (;16;) (type 12) (param i32) (result i64)
    (local i32 i64)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 1
0004    global.set 0
0005    i32.const 0
0006    local.get 1
0007    call 15
0008    drop
0009    local.get 1
0010    i64.load
0011    local.set 2
0012    block  ;; label = @1
1 ------------------------------------------------------------
0013      local.get 0
0014      i32.eqz
0015      br_if 0 (;@1;)
2 ------------------------------------------------------------
0016      local.get 0
0017      local.get 2
0018      i64.store
0019    end
3 ------------------------------------------------------------
0020    local.get 1
0021    i32.const 16
0022    i32.add
0023    global.set 0
0024    local.get 2)
