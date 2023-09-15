  (func (;365;) (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 1040
0002    i32.sub
0003    local.tee 6
0004    global.set 0
0005    local.get 0
0006    i32.load16_s offset=20
0007    local.set 9
0008    local.get 2
0009    i32.load
0010    local.tee 8
0011    i32.const 1
0012    i32.ge_s
0013    if  ;; label = @1
1 ------------------------------------------------------------
0014      local.get 2
0015      i32.load offset=16
0016      local.set 10
0017      loop  ;; label = @2
2 ------------------------------------------------------------
0018        local.get 10
0019        local.get 7
0020        i32.const 3
0021        i32.shl
0022        i32.add
0023        local.tee 2
0024        i32.load8_u offset=3
0025        local.set 11
0026        local.get 2
0027        i32.load8_u offset=2
0028        local.set 12
0029        local.get 6
0030        i32.const 34032
0031        i32.load
0032        local.tee 5
0033        local.get 2
0034        i32.load8_u offset=1
0035        i32.const 1
0036        i32.shl
0037        i32.add
0038        i32.load16_u
0039        i32.store16 offset=1032
0040        local.get 6
0041        local.get 5
0042        local.get 12
0043        i32.const 1
0044        i32.shl
0045        i32.add
0046        i32.load16_u
0047        i32.store16 offset=1034
0048        local.get 6
0049        local.get 5
0050        local.get 11
0051        i32.const 1
0052        i32.shl
0053        i32.add
0054        i32.load16_u
0055        i32.store16 offset=1036
0056        local.get 3
0057        i32.load offset=28
0058        local.tee 5
0059        if  ;; label = @3
3 ------------------------------------------------------------
0060          local.get 6
0061          i32.const 1032
0062          i32.add
0063          local.get 5
0064          call_indirect (type 4)
0065        end
4 ------------------------------------------------------------
0066        local.get 2
0067        local.get 3
0068        local.get 6
0069        i32.const 1032
0070        i32.add
0071        i32.const 0
0072        call 85
0073        local.tee 5
0074        i32.store offset=4
0075        local.get 6
0076        local.get 7
0077        i32.const 2
0078        i32.shl
0079        i32.add
0080        local.get 5
0081        i32.store
0082        local.get 2
0083        i32.const 1
0084        i32.store8
0085        local.get 7
0086        i32.const 1
0087        i32.add
0088        local.tee 7
0089        local.get 8
0090        i32.ne
0091        br_if 0 (;@2;)
5 ------------------------------------------------------------
0092      end
6 ------------------------------------------------------------
0093    end
7 ------------------------------------------------------------
0094    local.get 0
0095    i32.load16_u offset=10
0096    if  ;; label = @1
8 ------------------------------------------------------------
0097      i32.const 0
0098      local.set 5
0099      local.get 0
0100      i32.load16_u offset=8
0101      local.tee 7
0102      local.set 3
0103      loop  ;; label = @2
9 ------------------------------------------------------------
0104        block  ;; label = @3
10 ------------------------------------------------------------
0105          local.get 3
0106          i32.const 65535
0107          i32.and
0108          i32.eqz
0109          if  ;; label = @4
11 ------------------------------------------------------------
0110            i32.const 0
0111            local.set 3
0112            br 1 (;@3;)
12 ------------------------------------------------------------
0113          end
13 ------------------------------------------------------------
0114          local.get 0
0115          i32.load
0116          local.get 5
0117          i32.const 2
0118          i32.shl
0119          i32.add
0120          i32.load
0121          local.set 2
0122          i32.const 0
0123          local.set 8
0124          loop  ;; label = @4
14 ------------------------------------------------------------
0125            local.get 9
0126            local.get 2
0127            i32.load8_u
0128            local.tee 3
0129            i32.ne
0130            if  ;; label = @5
15 ------------------------------------------------------------
0131              local.get 1
0132              local.get 6
0133              local.get 3
0134              i32.const 2
0135              i32.shl
0136              i32.add
0137              i32.load
0138              local.tee 3
0139              i32.store8
0140              local.get 4
0141              local.get 3
0142              i32.const 255
0143              i32.and
0144              i32.const 2
0145              i32.shl
0146              i32.add
0147              local.tee 3
0148              local.get 3
0149              i32.load
0150              i32.const 1
0151              i32.add
0152              i32.store
0153              local.get 0
0154              i32.load16_u offset=8
0155              local.set 7
0156            end
16 ------------------------------------------------------------
0157            local.get 1
0158            i32.const 1
0159            i32.add
0160            local.set 1
0161            local.get 2
0162            i32.const 1
0163            i32.add
0164            local.set 2
0165            local.get 8
0166            i32.const 1
0167            i32.add
0168            local.tee 8
0169            local.get 7
0170            local.tee 3
0171            i32.const 65535
0172            i32.and
0173            i32.lt_u
0174            br_if 0 (;@4;)
17 ------------------------------------------------------------
0175          end
18 ------------------------------------------------------------
0176        end
19 ------------------------------------------------------------
0177        local.get 5
0178        i32.const 1
0179        i32.add
0180        local.tee 5
0181        local.get 0
0182        i32.load16_u offset=10
0183        i32.lt_u
0184        br_if 0 (;@2;)
20 ------------------------------------------------------------
0185      end
21 ------------------------------------------------------------
0186    end
22 ------------------------------------------------------------
0187    local.get 6
0188    i32.const 1040
0189    i32.add
0190    global.set 0)
