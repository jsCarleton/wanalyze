  (func (;53;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 5
0001    local.set 3
0002    global.get 5
0003    i32.const 32
0004    i32.add
0005    global.set 5
0006    global.get 5
0007    global.get 6
0008    i32.ge_s
0009    if  ;; label = @1
1 ------------------------------------------------------------
0010      i32.const 32
0011      call 2
0012    end
2 ------------------------------------------------------------
0013    local.get 3
0014    i32.const 16
0015    i32.add
0016    local.set 4
0017    local.get 0
0018    i32.const 36
0019    i32.const 4
0020    call 17
0021    local.get 0
0022    i32.const 0
0023    call 20
0024    i32.const 64
0025    i32.and
0026    i32.eqz
0027    if  ;; label = @1
3 ------------------------------------------------------------
0028      local.get 3
0029      i32.const 0
0030      local.get 0
0031      i32.const 60
0032      call 20
0033      call 17
0034      local.get 3
0035      i32.const 4
0036      i32.const 21523
0037      call 17
0038      local.get 3
0039      i32.const 8
0040      local.get 4
0041      call 17
0042      i32.const 54
0043      local.get 3
0044      call 12
0045      if  ;; label = @2
4 ------------------------------------------------------------
0046        local.get 0
0047        i32.const 75
0048        i32.const -1
0049        call 25
0050      end
5 ------------------------------------------------------------
0051    end
6 ------------------------------------------------------------
0052    local.get 0
0053    local.get 1
0054    local.get 2
0055    call 41
0056    local.set 5
0057    local.get 3
0058    global.set 5
0059    local.get 5)
