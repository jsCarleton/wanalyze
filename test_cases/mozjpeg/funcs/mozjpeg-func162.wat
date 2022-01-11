  (func (;162;) (type 6) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load
0002    i32.const 1
0003    i32.ge_s
0004    if  ;; label = @1
1 ------------------------------------------------------------
0005      local.get 0
0006      i32.load
0007      local.set 7
0008      local.get 0
0009      i32.load
0010      local.set 5
0011      local.get 2
0012      i32.const 2
0013      i32.shl
0014      local.set 8
0015      loop  ;; label = @2
2 ------------------------------------------------------------
0016        local.get 0
0017        local.get 5
0018        local.get 1
0019        local.get 6
0020        i32.const 2
0021        i32.shl
0022        local.tee 2
0023        i32.add
0024        i32.load
0025        local.get 8
0026        i32.add
0027        local.get 2
0028        local.get 3
0029        i32.add
0030        i32.load
0031        local.get 5
0032        i32.load
0033        local.get 4
0034        i32.mul
0035        i32.const 2
0036        i32.shl
0037        i32.add
0038        local.get 2
0039        local.get 7
0040        i32.add
0041        i32.load
0042        call_indirect (type 7)
0043        local.get 5
0044        i32.const 84
0045        i32.add
0046        local.set 5
0047        local.get 6
0048        i32.const 1
0049        i32.add
0050        local.tee 6
0051        local.get 0
0052        i32.load
0053        i32.lt_s
0054        br_if 0 (;@2;)
3 ------------------------------------------------------------
0055      end
4 ------------------------------------------------------------
0056    end
5 ------------------------------------------------------------)
