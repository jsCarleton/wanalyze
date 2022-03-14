  (func (;344;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load offset=364
0002    local.set 2
0003    local.get 0
0004    i32.load offset=200
0005    if  ;; label = @1
1 ------------------------------------------------------------
0006      local.get 2
0007      i32.load offset=68
0008      local.tee 3
0009      i32.eqz
0010      if  ;; label = @2
2 ------------------------------------------------------------
0011        local.get 0
0012        local.get 2
0013        i32.load offset=72
0014        call 67
0015        local.get 2
0016        local.get 0
0017        i32.load offset=200
0018        local.tee 3
0019        i32.store offset=68
0020        local.get 2
0021        local.get 2
0022        i32.load offset=72
0023        i32.const 1
0024        i32.add
0025        i32.const 7
0026        i32.and
0027        i32.store offset=72
0028      end
3 ------------------------------------------------------------
0029      local.get 2
0030      local.get 3
0031      i32.const -1
0032      i32.add
0033      i32.store offset=68
0034    end
4 ------------------------------------------------------------
0035    local.get 0
0036    i32.load offset=272
0037    i32.const 1
0038    i32.ge_s
0039    if  ;; label = @1
5 ------------------------------------------------------------
0040      local.get 2
0041      i32.const 204
0042      i32.add
0043      local.set 3
0044      local.get 0
0045      i32.load offset=328
0046      local.set 4
0047      i32.const 0
0048      local.set 2
0049      loop  ;; label = @2
6 ------------------------------------------------------------
0050        local.get 0
0051        local.get 3
0052        local.get 1
0053        local.get 2
0054        i32.const 2
0055        i32.shl
0056        i32.add
0057        i32.load
0058        i32.load16_s
0059        local.get 4
0060        i32.shr_u
0061        i32.const 1
0062        i32.and
0063        call 28
0064        local.get 2
0065        i32.const 1
0066        i32.add
0067        local.tee 2
0068        local.get 0
0069        i32.load offset=272
0070        i32.lt_s
0071        br_if 0 (;@2;)
7 ------------------------------------------------------------
0072      end
8 ------------------------------------------------------------
0073    end
9 ------------------------------------------------------------
0074    i32.const 1)
