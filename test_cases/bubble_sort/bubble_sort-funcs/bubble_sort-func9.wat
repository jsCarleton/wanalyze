  (func (;9;) (type 2) (result i32)
    (local i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 0
0004    global.set 0
0005    block  ;; label = @1
1 ------------------------------------------------------------
0006      block  ;; label = @2
2 ------------------------------------------------------------
0007        local.get 0
0008        local.tee 1
0009        i32.const 12
0010        i32.add
0011        local.get 1
0012        i32.const 8
0013        i32.add
0014        call 0
0015        br_if 0 (;@2;)
3 ------------------------------------------------------------
0016        local.get 0
0017        local.get 1
0018        i32.load offset=12
0019        i32.const 2
0020        i32.shl
0021        local.tee 2
0022        i32.const 19
0023        i32.add
0024        i32.const -16
0025        i32.and
0026        i32.sub
0027        local.tee 0
0028        local.tee 3
0029        global.set 0
0030        local.get 3
0031        local.get 1
0032        i32.load offset=8
0033        i32.const 15
0034        i32.add
0035        i32.const -16
0036        i32.and
0037        i32.sub
0038        local.tee 3
0039        global.set 0
0040        local.get 0
0041        local.get 2
0042        i32.add
0043        i32.const 0
0044        i32.store
0045        local.get 0
0046        local.get 3
0047        call 1
0048        br_if 1 (;@1;)
4 ------------------------------------------------------------
0049        local.get 1
0050        i32.load offset=12
0051        local.get 0
0052        call 7
0053        local.set 0
0054        local.get 1
0055        i32.const 16
0056        i32.add
0057        global.set 0
0058        local.get 0
0059        return
5 ------------------------------------------------------------
0060      end
6 ------------------------------------------------------------
0061      i32.const 71
0062      call 2
0063      unreachable
7 ------------------------------------------------------------
0064    end
8 ------------------------------------------------------------
0065    i32.const 71
0066    call 2
0067    unreachable
9 ------------------------------------------------------------)
