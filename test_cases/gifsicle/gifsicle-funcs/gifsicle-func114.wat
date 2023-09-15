  (func (;114;) (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load
0002    local.set 6
0003    local.get 0
0004    i32.load16_u offset=10
0005    local.set 3
0006    block  ;; label = @1
1 ------------------------------------------------------------
0007      local.get 2
0008      i32.eqz
0009      if  ;; label = @2
2 ------------------------------------------------------------
0010        i32.const 0
0011        i32.const 1
0012        local.get 0
0013        i32.load16_u offset=8
0014        local.tee 4
0015        call 23
0016        local.set 5
0017        local.get 3
0018        if  ;; label = @3
3 ------------------------------------------------------------
0019          loop  ;; label = @4
4 ------------------------------------------------------------
0020            local.get 5
0021            local.get 6
0022            local.get 7
0023            i32.const 2
0024            i32.shl
0025            i32.add
0026            local.tee 2
0027            i32.load
0028            local.get 4
0029            call 24
0030            local.set 9
0031            local.get 4
0032            if  ;; label = @5
5 ------------------------------------------------------------
0033              local.get 2
0034              i32.load
0035              local.get 4
0036              i32.add
0037              local.set 8
0038              i32.const 0
0039              local.set 2
0040              loop  ;; label = @6
6 ------------------------------------------------------------
0041                local.get 8
0042                i32.const -1
0043                i32.add
0044                local.tee 8
0045                local.get 2
0046                local.get 9
0047                i32.add
0048                i32.load8_u
0049                i32.store8
0050                local.get 2
0051                i32.const 1
0052                i32.add
0053                local.tee 2
0054                local.get 4
0055                i32.ne
0056                br_if 0 (;@6;)
7 ------------------------------------------------------------
0057              end
8 ------------------------------------------------------------
0058            end
9 ------------------------------------------------------------
0059            local.get 7
0060            i32.const 1
0061            i32.add
0062            local.tee 7
0063            local.get 3
0064            i32.ne
0065            br_if 0 (;@4;)
10 ------------------------------------------------------------
0066          end
11 ------------------------------------------------------------
0067        end
12 ------------------------------------------------------------
0068        local.get 0
0069        local.get 1
0070        i32.load
0071        i32.load16_u offset=18
0072        local.tee 2
0073        local.get 4
0074        i32.sub
0075        local.get 0
0076        i32.load16_u offset=12
0077        i32.sub
0078        i32.store16 offset=12
0079        local.get 1
0080        i32.load offset=48
0081        local.tee 0
0082        i32.eqz
0083        br_if 1 (;@1;)
13 ------------------------------------------------------------
0084        local.get 1
0085        local.get 2
0086        local.get 1
0087        i32.load offset=52
0088        i32.sub
0089        local.get 0
0090        i32.load offset=32
0091        i32.sub
0092        i32.store offset=52
0093        local.get 5
0094        call 22
0095        return
14 ------------------------------------------------------------
0096      end
15 ------------------------------------------------------------
0097      i32.const 0
0098      local.set 2
0099      i32.const 0
0100      i32.const 4
0101      local.get 3
0102      call 23
0103      local.tee 5
0104      local.get 6
0105      local.get 3
0106      i32.const 2
0107      i32.shl
0108      call 24
0109      local.set 4
0110      local.get 3
0111      if  ;; label = @2
16 ------------------------------------------------------------
0112        loop  ;; label = @3
17 ------------------------------------------------------------
0113          local.get 6
0114          local.get 2
0115          i32.const 2
0116          i32.shl
0117          i32.add
0118          local.get 4
0119          local.get 2
0120          i32.const -1
0121          i32.xor
0122          local.get 3
0123          i32.add
0124          i32.const 2
0125          i32.shl
0126          i32.add
0127          i32.load
0128          i32.store
0129          local.get 2
0130          i32.const 1
0131          i32.add
0132          local.tee 2
0133          local.get 3
0134          i32.ne
0135          br_if 0 (;@3;)
18 ------------------------------------------------------------
0136        end
19 ------------------------------------------------------------
0137      end
20 ------------------------------------------------------------
0138      local.get 0
0139      local.get 1
0140      i32.load
0141      i32.load16_u offset=20
0142      local.tee 2
0143      local.get 3
0144      i32.sub
0145      local.get 0
0146      i32.load16_u offset=14
0147      i32.sub
0148      i32.store16 offset=14
0149      local.get 1
0150      i32.load offset=48
0151      local.tee 0
0152      i32.eqz
0153      br_if 0 (;@1;)
21 ------------------------------------------------------------
0154      local.get 1
0155      local.get 2
0156      local.get 1
0157      i32.load offset=56
0158      i32.sub
0159      local.get 0
0160      i32.load offset=36
0161      i32.sub
0162      i32.store offset=56
0163    end
22 ------------------------------------------------------------
0164    local.get 5
0165    call 22)
