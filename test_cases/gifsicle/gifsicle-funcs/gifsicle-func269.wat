  (func (;269;) (type 0) (param i32) (result i32)
    (local i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 1
0004    global.set 0
0005    i32.const 0
0006    local.get 1
0007    i32.const 8
0008    i32.add
0009    call 18
0010    drop
0011    local.get 1
0012    i32.const 8
0013    i32.add
0014    i32.const 4
0015    i32.shr_u
0016    local.get 0
0017    i32.add
0018    local.get 1
0019    i32.load offset=12
0020    i32.const 65537
0021    i32.mul
0022    i32.xor
0023    local.set 2
0024    loop  ;; label = @1
1 ------------------------------------------------------------
0025      local.get 0
0026      local.get 3
0027      i32.add
0028      local.get 2
0029      i32.const 15
0030      i32.and
0031      local.get 2
0032      i32.const 1
0033      i32.shl
0034      i32.const 32
0035      i32.and
0036      i32.or
0037      i32.const 65
0038      i32.add
0039      i32.store8
0040      local.get 2
0041      i32.const 5
0042      i32.shr_u
0043      local.set 2
0044      local.get 3
0045      i32.const 1
0046      i32.add
0047      local.tee 3
0048      i32.const 6
0049      i32.ne
0050      br_if 0 (;@1;)
2 ------------------------------------------------------------
0051    end
3 ------------------------------------------------------------
0052    local.get 1
0053    i32.const 16
0054    i32.add
0055    global.set 0
0056    local.get 0)
