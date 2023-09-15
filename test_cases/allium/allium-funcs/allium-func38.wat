  (func (;38;) (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    block (result i32)  ;; label = @1
1 ------------------------------------------------------------
0001      block  ;; label = @2
2 ------------------------------------------------------------
0002        local.get 0
0003        i32.const 20
0004        i32.add
0005        local.tee 1
0006        i32.const 0
0007        call 20
0008        local.get 0
0009        i32.const 28
0010        i32.add
0011        local.tee 2
0012        i32.const 0
0013        call 20
0014        i32.le_u
0015        br_if 0 (;@2;)
3 ------------------------------------------------------------
0016        local.get 0
0017        i32.const 0
0018        i32.const 0
0019        local.get 0
0020        i32.const 36
0021        call 20
0022        i32.const 7
0023        i32.and
0024        i32.const 2
0025        i32.add
0026        call_indirect (type 0)
0027        drop
0028        local.get 1
0029        i32.const 0
0030        call 20
0031        br_if 0 (;@2;)
4 ------------------------------------------------------------
0032        i32.const -1
0033        br 1 (;@1;)
5 ------------------------------------------------------------
0034      end
6 ------------------------------------------------------------
0035      local.get 0
0036      i32.const 4
0037      i32.add
0038      local.tee 3
0039      i32.const 0
0040      call 20
0041      local.tee 4
0042      local.get 0
0043      i32.const 8
0044      i32.add
0045      local.tee 5
0046      i32.const 0
0047      call 20
0048      local.tee 6
0049      i32.lt_u
0050      if  ;; label = @2
7 ------------------------------------------------------------
0051        local.get 0
0052        local.get 4
0053        local.get 6
0054        i32.sub
0055        i32.const 1
0056        local.get 0
0057        i32.const 40
0058        call 20
0059        i32.const 7
0060        i32.and
0061        i32.const 2
0062        i32.add
0063        call_indirect (type 0)
0064        drop
0065      end
8 ------------------------------------------------------------
0066      local.get 0
0067      i32.const 16
0068      i32.const 0
0069      call 17
0070      local.get 2
0071      i32.const 0
0072      i32.const 0
0073      call 17
0074      local.get 1
0075      i32.const 0
0076      i32.const 0
0077      call 17
0078      local.get 5
0079      i32.const 0
0080      i32.const 0
0081      call 17
0082      local.get 3
0083      i32.const 0
0084      i32.const 0
0085      call 17
0086      i32.const 0
0087    end
9 ------------------------------------------------------------
0088    local.tee 0)
