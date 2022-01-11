  (func (;231;) (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 32
0002    i32.sub
0003    local.tee 1
0004    global.set 0
0005    local.get 0
0006    i32.load
0007    local.set 7
0008    local.get 1
0009    i64.const 0
0010    i64.store
0011    local.get 1
0012    i64.const 0
0013    i64.store
0014    local.get 1
0015    i64.const 0
0016    i64.store
0017    local.get 1
0018    i64.const 0
0019    i64.store
0020    local.get 0
0021    i32.load
0022    i32.const 1
0023    i32.ge_s
0024    if  ;; label = @1
1 ------------------------------------------------------------
0025      loop  ;; label = @2
2 ------------------------------------------------------------
0026        local.get 0
0027        local.get 4
0028        i32.const 2
0029        i32.shl
0030        i32.add
0031        i32.load
0032        local.tee 2
0033        i32.load
0034        local.set 5
0035        local.get 2
0036        i32.load
0037        i32.const 2
0038        i32.shl
0039        local.tee 2
0040        local.get 1
0041        i32.const 16
0042        i32.add
0043        i32.add
0044        local.tee 6
0045        i32.load
0046        i32.eqz
0047        if  ;; label = @3
3 ------------------------------------------------------------
0048          local.get 0
0049          local.get 2
0050          i32.add
0051          local.tee 8
0052          i32.const 88
0053          i32.add
0054          i32.load
0055          local.tee 3
0056          i32.eqz
0057          if  ;; label = @4
4 ------------------------------------------------------------
0058            local.get 8
0059            local.get 0
0060            call 47
0061            local.tee 3
0062            i32.store
0063          end
5 ------------------------------------------------------------
0064          local.get 0
0065          local.get 3
0066          local.get 2
0067          local.get 7
0068          i32.add
0069          i32.load
0070          call 72
0071          local.get 6
0072          i32.const 1
0073          i32.store
0074        end
6 ------------------------------------------------------------
0075        local.get 1
0076        local.get 5
0077        i32.const 2
0078        i32.shl
0079        local.tee 2
0080        i32.add
0081        local.tee 5
0082        i32.load
0083        i32.eqz
0084        if  ;; label = @3
7 ------------------------------------------------------------
0085          local.get 0
0086          local.get 2
0087          i32.add
0088          local.tee 6
0089          i32.const 104
0090          i32.add
0091          i32.load
0092          local.tee 3
0093          i32.eqz
0094          if  ;; label = @4
8 ------------------------------------------------------------
0095            local.get 6
0096            local.get 0
0097            call 47
0098            local.tee 3
0099            i32.store
0100          end
9 ------------------------------------------------------------
0101          local.get 0
0102          local.get 3
0103          local.get 2
0104          local.get 7
0105          i32.add
0106          i32.load
0107          call 72
0108          local.get 5
0109          i32.const 1
0110          i32.store
0111        end
10 ------------------------------------------------------------
0112        local.get 4
0113        i32.const 1
0114        i32.add
0115        local.tee 4
0116        local.get 0
0117        i32.load
0118        i32.lt_s
0119        br_if 0 (;@2;)
11 ------------------------------------------------------------
0120      end
12 ------------------------------------------------------------
0121    end
13 ------------------------------------------------------------
0122    local.get 1
0123    i32.const 32
0124    i32.add
0125    global.set 0)
