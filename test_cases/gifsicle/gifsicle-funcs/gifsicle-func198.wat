  (func (;198;) (type 1) (param i32 i32)
    (local i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load
0002    i32.const 0
0003    i32.ge_s
0004    if  ;; label = @1
1 ------------------------------------------------------------
0005      i32.const 33
0006      local.get 1
0007      local.get 1
0008      i32.load offset=88
0009      call_indirect (type 1)
0010      local.get 0
0011      i32.load8_u
0012      local.get 1
0013      local.get 1
0014      i32.load offset=88
0015      call_indirect (type 1)
0016      block  ;; label = @2
2 ------------------------------------------------------------
0017        local.get 0
0018        i32.load
0019        i32.const 255
0020        i32.ne
0021        br_if 0 (;@2;)
3 ------------------------------------------------------------
0022        local.get 0
0023        i32.load offset=8
0024        local.tee 2
0025        i32.eqz
0026        br_if 0 (;@2;)
4 ------------------------------------------------------------
0027        local.get 2
0028        i32.const 255
0029        i32.and
0030        local.get 1
0031        local.get 1
0032        i32.load offset=88
0033        call_indirect (type 1)
0034        local.get 0
0035        i32.load offset=4
0036        local.get 0
0037        i32.load offset=8
0038        local.get 1
0039        local.get 1
0040        i32.load offset=92
0041        call_indirect (type 5)
0042      end
5 ------------------------------------------------------------
0043      block  ;; label = @2
6 ------------------------------------------------------------
0044        local.get 0
0045        i32.load offset=20
0046        i32.eqz
0047        if  ;; label = @3
7 ------------------------------------------------------------
0048          local.get 0
0049          i32.load offset=16
0050          local.tee 4
0051          i32.const 256
0052          i32.ge_u
0053          if  ;; label = @4
8 ------------------------------------------------------------
0054            i32.const 255
0055            local.set 2
0056            loop  ;; label = @5
9 ------------------------------------------------------------
0057              i32.const 255
0058              local.get 1
0059              local.get 1
0060              i32.load offset=88
0061              call_indirect (type 1)
0062              local.get 0
0063              i32.load offset=12
0064              local.get 5
0065              i32.add
0066              i32.const 255
0067              local.get 1
0068              local.get 1
0069              i32.load offset=92
0070              call_indirect (type 5)
0071              local.get 2
0072              local.tee 3
0073              local.set 5
0074              local.get 3
0075              i32.const 255
0076              i32.add
0077              local.tee 2
0078              local.get 0
0079              i32.load offset=16
0080              local.tee 4
0081              i32.lt_u
0082              br_if 0 (;@5;)
10 ------------------------------------------------------------
0083            end
11 ------------------------------------------------------------
0084          end
12 ------------------------------------------------------------
0085          local.get 4
0086          local.get 3
0087          i32.le_u
0088          br_if 1 (;@2;)
13 ------------------------------------------------------------
0089          local.get 4
0090          local.get 3
0091          i32.sub
0092          local.tee 2
0093          i32.const 255
0094          i32.and
0095          local.get 1
0096          local.get 1
0097          i32.load offset=88
0098          call_indirect (type 1)
0099          local.get 0
0100          i32.load offset=12
0101          local.get 3
0102          i32.add
0103          local.get 2
0104          local.get 1
0105          local.get 1
0106          i32.load offset=92
0107          call_indirect (type 5)
0108          br 1 (;@2;)
14 ------------------------------------------------------------
0109        end
15 ------------------------------------------------------------
0110        local.get 0
0111        i32.load offset=12
0112        local.get 0
0113        i32.load offset=16
0114        local.get 1
0115        local.get 1
0116        i32.load offset=92
0117        call_indirect (type 5)
0118      end
16 ------------------------------------------------------------
0119      i32.const 0
0120      local.get 1
0121      local.get 1
0122      i32.load offset=88
0123      call_indirect (type 1)
0124    end
17 ------------------------------------------------------------)
