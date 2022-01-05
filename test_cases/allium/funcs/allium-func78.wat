  (func (;78;) (type 7) (param i32 i32 i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    local.get 2
0001    i32.const 96
0002    i32.div_u
0003    local.set 3
0004    local.get 2
0005    i32.const 95
0006    i32.le_u
0007    if  ;; label = @1
1 ------------------------------------------------------------
0008      local.get 1
0009      local.get 0
0010      local.get 2
0011      local.get 3
0012      i32.const 96
0013      i32.mul
0014      i32.sub
0015      call 29
0016      drop
0017      return
2 ------------------------------------------------------------
0018    end
3 ------------------------------------------------------------
0019    loop  ;; label = @1
4 ------------------------------------------------------------
0020      local.get 1
0021      i32.const 0
0022      local.get 0
0023      i32.const 0
0024      call 28
0025      call 26
0026      local.get 1
0027      i32.const 8
0028      local.get 0
0029      i32.const 8
0030      call 28
0031      call 26
0032      local.get 1
0033      i32.const 16
0034      local.get 0
0035      i32.const 16
0036      call 28
0037      call 26
0038      local.get 1
0039      i32.const 24
0040      local.get 0
0041      i32.const 24
0042      call 28
0043      call 26
0044      local.get 1
0045      i32.const 32
0046      local.get 0
0047      i32.const 32
0048      call 28
0049      call 26
0050      local.get 1
0051      i32.const 40
0052      local.get 0
0053      i32.const 40
0054      call 28
0055      call 26
0056      local.get 1
0057      i32.const 48
0058      local.get 0
0059      i32.const 48
0060      call 28
0061      call 26
0062      local.get 1
0063      i32.const 56
0064      local.get 0
0065      i32.const 56
0066      call 28
0067      call 26
0068      local.get 1
0069      i32.const -64
0070      i32.sub
0071      i32.const 0
0072      local.get 0
0073      i32.const -64
0074      i32.sub
0075      i32.const 0
0076      call 28
0077      call 26
0078      local.get 1
0079      i32.const 72
0080      local.get 0
0081      i32.const 72
0082      call 28
0083      call 26
0084      local.get 1
0085      i32.const 80
0086      local.get 0
0087      i32.const 80
0088      call 28
0089      call 26
0090      local.get 1
0091      i32.const 88
0092      local.get 0
0093      i32.const 88
0094      call 28
0095      call 26
0096      local.get 0
0097      call 39
0098      local.get 1
0099      i32.const 96
0100      i32.add
0101      local.set 1
0102      local.get 4
0103      i32.const 1
0104      i32.add
0105      local.tee 4
0106      local.get 3
0107      i32.lt_u
0108      br_if 0 (;@1;)
5 ------------------------------------------------------------
0109    end
6 ------------------------------------------------------------
0110    local.get 1
0111    local.get 0
0112    local.get 2
0113    local.get 3
0114    i32.const 96
0115    i32.mul
0116    i32.sub
0117    call 29
0118    drop)
