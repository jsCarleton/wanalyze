  (func (;83;) (type 1) (param i32) (result i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    global.get 5
0001    local.set 2
0002    global.get 5
0003    local.get 0
0004    i32.add
0005    global.set 5
0006    global.get 5
0007    i32.const 15
0008    i32.add
0009    i32.const -16
0010    i32.and
0011    global.set 5
0012    global.get 5
0013    global.get 6
0014    i32.ge_s
0015    if  ;; label = @1
1 ------------------------------------------------------------
0016      local.get 0
0017      call 2
0018    end
2 ------------------------------------------------------------
0019    local.get 2)
