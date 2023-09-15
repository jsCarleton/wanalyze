  (func (;296;) (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 160
0002    i32.sub
0003    local.tee 4
0004    global.set 0
0005    local.get 4
0006    i32.const 8
0007    i32.add
0008    i32.const 30264
0009    i32.const 144
0010    call 24
0011    drop
0012    block  ;; label = @1
1 ------------------------------------------------------------
0013      block  ;; label = @2
2 ------------------------------------------------------------
0014        local.get 1
0015        i32.const -1
0016        i32.add
0017        i32.const 2147483647
0018        i32.ge_u
0019        if  ;; label = @3
3 ------------------------------------------------------------
0020          local.get 1
0021          br_if 1 (;@2;)
4 ------------------------------------------------------------
0022          i32.const 1
0023          local.set 1
0024          local.get 4
0025          i32.const 159
0026          i32.add
0027          local.set 0
0028        end
5 ------------------------------------------------------------
0029        local.get 4
0030        local.get 0
0031        i32.store offset=52
0032        local.get 4
0033        local.get 0
0034        i32.store offset=28
0035        local.get 4
0036        i32.const -2
0037        local.get 0
0038        i32.sub
0039        local.tee 5
0040        local.get 1
0041        local.get 1
0042        local.get 5
0043        i32.gt_u
0044        select
0045        local.tee 1
0046        i32.store offset=56
0047        local.get 4
0048        local.get 0
0049        local.get 1
0050        i32.add
0051        local.tee 0
0052        i32.store offset=36
0053        local.get 4
0054        local.get 0
0055        i32.store offset=24
0056        local.get 4
0057        i32.const 8
0058        i32.add
0059        local.get 2
0060        local.get 3
0061        i32.const 59
0062        i32.const 60
0063        call 186
0064        local.set 0
0065        local.get 1
0066        i32.eqz
0067        br_if 1 (;@1;)
6 ------------------------------------------------------------
0068        local.get 4
0069        i32.load offset=28
0070        local.tee 1
0071        local.get 1
0072        local.get 4
0073        i32.load offset=24
0074        i32.eq
0075        i32.sub
0076        i32.const 0
0077        i32.store8
0078        br 1 (;@1;)
7 ------------------------------------------------------------
0079      end
8 ------------------------------------------------------------
0080      i32.const 36444
0081      i32.const 61
0082      i32.store
0083      i32.const -1
0084      local.set 0
0085    end
9 ------------------------------------------------------------
0086    local.get 4
0087    i32.const 160
0088    i32.add
0089    global.set 0
0090    local.get 0)
