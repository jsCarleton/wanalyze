  (func (;54;) (type 1) (param i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    global.get 5
0001    local.set 1
0002    global.get 5
0003    i32.const 16
0004    i32.add
0005    global.set 5
0006    global.get 5
0007    global.get 6
0008    i32.ge_s
0009    if  ;; label = @1
1 ------------------------------------------------------------
0010      i32.const 16
0011      call 2
0012    end
2 ------------------------------------------------------------
0013    local.get 1
0014    i32.const 0
0015    local.get 0
0016    i32.const 60
0017    call 20
0018    call 17
0019    i32.const 6
0020    local.get 1
0021    call 11
0022    local.tee 0
0023    i32.const -4096
0024    i32.gt_u
0025    if  ;; label = @1
3 ------------------------------------------------------------
0026      i32.const 19424
0027      i32.const 0
0028      i32.const 0
0029      local.get 0
0030      i32.sub
0031      call 17
0032      i32.const -1
0033      local.set 0
0034    end
4 ------------------------------------------------------------
0035    local.get 1
0036    global.set 5
0037    local.get 0)
