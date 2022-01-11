  (func (;351;) (type 11) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load
0002    local.set 5
0003    local.get 2
0004    i32.const 1000000001
0005    i32.ge_u
0006    if  ;; label = @1
1 ------------------------------------------------------------
0007      local.get 0
0008      i32.load
0009      i64.const 38654705718
0010      i64.store align=4
0011      local.get 0
0012      local.get 0
0013      i32.load
0014      i32.load
0015      call_indirect (type 0)
0016    end
2 ------------------------------------------------------------
0017    i32.const 999999988
0018    local.get 2
0019    i32.const 15
0020    i32.add
0021    i32.const -16
0022    i32.and
0023    local.tee 6
0024    i32.div_u
0025    local.set 4
0026    local.get 6
0027    i32.const 999999989
0028    i32.ge_u
0029    if  ;; label = @1
3 ------------------------------------------------------------
0030      local.get 0
0031      i32.load
0032      local.tee 2
0033      i32.const 70
0034      i32.store
0035      local.get 0
0036      local.get 2
0037      i32.load
0038      call_indirect (type 0)
0039    end
4 ------------------------------------------------------------
0040    local.get 5
0041    local.get 4
0042    local.get 3
0043    local.get 4
0044    local.get 3
0045    i32.lt_s
0046    select
0047    local.tee 4
0048    i32.store
0049    local.get 0
0050    local.get 1
0051    local.get 3
0052    i32.const 2
0053    i32.shl
0054    call 52
0055    local.set 8
0056    local.get 3
0057    if  ;; label = @1
5 ------------------------------------------------------------
0058      i32.const 0
0059      local.set 2
0060      loop  ;; label = @2
6 ------------------------------------------------------------
0061        local.get 0
0062        local.get 1
0063        local.get 4
0064        local.get 3
0065        local.get 2
0066        i32.sub
0067        local.tee 5
0068        local.get 4
0069        local.get 5
0070        i32.lt_u
0071        select
0072        local.tee 4
0073        local.get 6
0074        i32.mul
0075        call 106
0076        local.set 7
0077        local.get 4
0078        local.set 5
0079        local.get 4
0080        if  ;; label = @3
7 ------------------------------------------------------------
0081          loop  ;; label = @4
8 ------------------------------------------------------------
0082            local.get 8
0083            local.get 2
0084            i32.const 2
0085            i32.shl
0086            i32.add
0087            local.get 7
0088            i32.store
0089            local.get 6
0090            local.get 7
0091            i32.add
0092            local.set 7
0093            local.get 2
0094            i32.const 1
0095            i32.add
0096            local.set 2
0097            local.get 5
0098            i32.const -1
0099            i32.add
0100            local.tee 5
0101            br_if 0 (;@4;)
9 ------------------------------------------------------------
0102          end
10 ------------------------------------------------------------
0103        end
11 ------------------------------------------------------------
0104        local.get 2
0105        local.get 3
0106        i32.lt_u
0107        br_if 0 (;@2;)
12 ------------------------------------------------------------
0108      end
13 ------------------------------------------------------------
0109    end
14 ------------------------------------------------------------
0110    local.get 8)
