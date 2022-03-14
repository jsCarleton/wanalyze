  (func (;252;) (type 0) (param i32)
    (local i32 i32 i32)
0 ------------------------------------------------------------
0000    block  ;; label = @1
1 ------------------------------------------------------------
0001      block  ;; label = @2
2 ------------------------------------------------------------
0002        block  ;; label = @3
3 ------------------------------------------------------------
0003          local.get 0
0004          i32.load offset=20
0005          local.tee 1
0006          i32.const -101
0007          i32.add
0008          br_table 0 0 2 1
4 ------------------------------------------------------------
0009        end
5 ------------------------------------------------------------
0010        local.get 0
0011        i32.load offset=224
0012        local.get 0
0013        i32.load offset=32
0014        i32.lt_u
0015        if  ;; label = @3
6 ------------------------------------------------------------
0016          local.get 0
0017          i32.load
0018          local.tee 1
0019          i32.const 67
0020          i32.store offset=20
0021          local.get 0
0022          local.get 1
0023          i32.load
0024          call_indirect (type 0)
0025        end
7 ------------------------------------------------------------
0026        local.get 0
0027        local.get 0
0028        i32.load offset=332
0029        i32.load offset=8
0030        call_indirect (type 0)
0031        br 1 (;@1;)
8 ------------------------------------------------------------
0032      end
9 ------------------------------------------------------------
0033      local.get 0
0034      i32.load
0035      local.tee 2
0036      local.get 1
0037      i32.store offset=24
0038      local.get 2
0039      i32.const 20
0040      i32.store offset=20
0041      local.get 0
0042      local.get 0
0043      i32.load
0044      i32.load
0045      call_indirect (type 0)
0046    end
10 ------------------------------------------------------------
0047    local.get 0
0048    i32.load offset=332
0049    local.tee 1
0050    i32.load offset=16
0051    i32.eqz
0052    if  ;; label = @1
11 ------------------------------------------------------------
0053      loop  ;; label = @2
12 ------------------------------------------------------------
0054        local.get 0
0055        local.get 1
0056        i32.load
0057        call_indirect (type 0)
0058        i32.const 0
0059        local.set 1
0060        local.get 0
0061        i32.load offset=240
0062        local.tee 3
0063        if  ;; label = @3
13 ------------------------------------------------------------
0064          loop  ;; label = @4
14 ------------------------------------------------------------
0065            local.get 0
0066            i32.load offset=8
0067            local.tee 2
0068            if  ;; label = @5
15 ------------------------------------------------------------
0069              local.get 2
0070              local.get 3
0071              i32.store offset=8
0072              local.get 2
0073              local.get 1
0074              i32.store offset=4
0075              local.get 0
0076              local.get 2
0077              i32.load
0078              call_indirect (type 0)
0079            end
16 ------------------------------------------------------------
0080            local.get 0
0081            i32.const 0
0082            local.get 0
0083            i32.load offset=344
0084            i32.load offset=4
0085            call_indirect (type 4)
0086            i32.eqz
0087            if  ;; label = @5
17 ------------------------------------------------------------
0088              local.get 0
0089              i32.load
0090              local.tee 2
0091              i32.const 24
0092              i32.store offset=20
0093              local.get 0
0094              local.get 2
0095              i32.load
0096              call_indirect (type 0)
0097            end
18 ------------------------------------------------------------
0098            local.get 1
0099            i32.const 1
0100            i32.add
0101            local.tee 1
0102            local.get 0
0103            i32.load offset=240
0104            local.tee 3
0105            i32.lt_u
0106            br_if 0 (;@4;)
19 ------------------------------------------------------------
0107          end
20 ------------------------------------------------------------
0108        end
21 ------------------------------------------------------------
0109        local.get 0
0110        local.get 0
0111        i32.load offset=332
0112        i32.load offset=8
0113        call_indirect (type 0)
0114        local.get 0
0115        i32.load offset=332
0116        local.tee 1
0117        i32.load offset=16
0118        i32.eqz
0119        br_if 0 (;@2;)
22 ------------------------------------------------------------
0120      end
23 ------------------------------------------------------------
0121    end
24 ------------------------------------------------------------
0122    local.get 0
0123    local.get 0
0124    i32.load offset=348
0125    i32.load offset=12
0126    call_indirect (type 0)
0127    local.get 0
0128    local.get 0
0129    i32.load offset=24
0130    i32.load offset=16
0131    call_indirect (type 0)
0132    local.get 0
0133    call 181)
