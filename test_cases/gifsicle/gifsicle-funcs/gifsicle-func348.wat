  (func (;348;) (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 3
0004    global.set 0
0005    i32.const 35316
0006    local.get 1
0007    local.get 3
0008    i32.const 12
0009    i32.add
0010    i32.const 10
0011    call 36
0012    i32.store
0013    block (result i32)  ;; label = @1
1 ------------------------------------------------------------
0014      local.get 3
0015      i32.load offset=12
0016      local.tee 4
0017      i32.load8_u
0018      i32.const 44
0019      i32.eq
0020      if  ;; label = @2
2 ------------------------------------------------------------
0021        i32.const 35320
0022        local.get 4
0023        i32.const 1
0024        i32.add
0025        local.get 3
0026        i32.const 12
0027        i32.add
0028        i32.const 10
0029        call 36
0030        i32.store
0031        i32.const 1
0032        local.get 3
0033        i32.load offset=12
0034        i32.load8_u
0035        i32.eqz
0036        br_if 1 (;@1;)
3 ------------------------------------------------------------
0037        drop
0038      end
4 ------------------------------------------------------------
0039      i32.const 0
0040      local.get 2
0041      i32.eqz
0042      br_if 0 (;@1;)
5 ------------------------------------------------------------
0043      drop
0044      local.get 3
0045      local.get 1
0046      i32.store
0047      local.get 0
0048      i32.const 10339
0049      local.get 3
0050      call 34
0051    end
6 ------------------------------------------------------------
0052    local.set 0
0053    local.get 3
0054    i32.const 16
0055    i32.add
0056    global.set 0
0057    local.get 0)
