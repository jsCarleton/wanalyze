  (func (;352;) (type 11) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    i32.const 999999988
0001    local.get 2
0002    i32.const 7
0003    i32.shl
0004    local.tee 8
0005    i32.div_u
0006    local.set 6
0007    local.get 0
0008    i32.load
0009    local.set 4
0010    local.get 8
0011    i32.const 999999989
0012    i32.ge_u
0013    if  ;; label = @1
1 ------------------------------------------------------------
0014      local.get 0
0015      i32.load
0016      local.tee 7
0017      i32.const 70
0018      i32.store
0019      local.get 0
0020      local.get 7
0021      i32.load
0022      call_indirect (type 0)
0023    end
2 ------------------------------------------------------------
0024    local.get 4
0025    local.get 6
0026    local.get 3
0027    local.get 6
0028    local.get 3
0029    i32.lt_s
0030    select
0031    local.tee 4
0032    i32.store
0033    local.get 0
0034    local.get 1
0035    local.get 3
0036    i32.const 2
0037    i32.shl
0038    call 52
0039    local.set 9
0040    local.get 3
0041    if  ;; label = @1
3 ------------------------------------------------------------
0042      local.get 2
0043      i32.const 7
0044      i32.shl
0045      local.set 6
0046      loop  ;; label = @2
4 ------------------------------------------------------------
0047        local.get 0
0048        local.get 1
0049        local.get 8
0050        local.get 4
0051        local.get 3
0052        local.get 5
0053        i32.sub
0054        local.tee 2
0055        local.get 4
0056        local.get 2
0057        i32.lt_u
0058        select
0059        local.tee 4
0060        i32.mul
0061        call 106
0062        local.set 2
0063        local.get 4
0064        if  ;; label = @3
5 ------------------------------------------------------------
0065          local.get 4
0066          local.set 7
0067          loop  ;; label = @4
6 ------------------------------------------------------------
0068            local.get 9
0069            local.get 5
0070            i32.const 2
0071            i32.shl
0072            i32.add
0073            local.get 2
0074            i32.store
0075            local.get 5
0076            i32.const 1
0077            i32.add
0078            local.set 5
0079            local.get 2
0080            local.get 6
0081            i32.add
0082            local.set 2
0083            local.get 7
0084            i32.const -1
0085            i32.add
0086            local.tee 7
0087            br_if 0 (;@4;)
7 ------------------------------------------------------------
0088          end
8 ------------------------------------------------------------
0089        end
9 ------------------------------------------------------------
0090        local.get 5
0091        local.get 3
0092        i32.lt_u
0093        br_if 0 (;@2;)
10 ------------------------------------------------------------
0094      end
11 ------------------------------------------------------------
0095    end
12 ------------------------------------------------------------
0096    local.get 9)
