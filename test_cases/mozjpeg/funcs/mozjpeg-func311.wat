  (func (;311;) (type 5) (param i32 i32 i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    block  ;; label = @1
1 ------------------------------------------------------------
0001      local.get 0
0002      call 119
0003      local.tee 4
0004      local.get 0
0005      call 96
0006      local.tee 3
0007      i32.sub
0008      local.get 2
0009      i32.ge_u
0010      if  ;; label = @2
2 ------------------------------------------------------------
0011        local.get 2
0012        i32.eqz
0013        br_if 1 (;@1;)
3 ------------------------------------------------------------
0014        local.get 0
0015        call 57
0016        local.tee 4
0017        local.get 3
0018        i32.add
0019        local.get 1
0020        local.get 2
0021        call 65
0022        drop
0023        local.get 0
0024        local.get 2
0025        local.get 3
0026        i32.add
0027        local.tee 0
0028        call 118
0029        local.get 0
0030        local.get 4
0031        i32.add
0032        i32.const 0
0033        call 59
0034        return
4 ------------------------------------------------------------
0035      end
5 ------------------------------------------------------------
0036      local.get 0
0037      local.get 4
0038      local.get 2
0039      local.get 3
0040      i32.add
0041      local.get 4
0042      i32.sub
0043      local.get 3
0044      local.get 3
0045      local.get 2
0046      local.get 1
0047      call 117
0048    end
6 ------------------------------------------------------------)
