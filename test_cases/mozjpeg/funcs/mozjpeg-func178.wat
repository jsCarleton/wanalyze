  (func (;178;) (type 0) (param i32)
    (local i32 i32 i32)
0 ------------------------------------------------------------
0000    block  ;; label = @1
1 ------------------------------------------------------------
0001      block  ;; label = @2
2 ------------------------------------------------------------
0002        block  ;; label = @3
3 ------------------------------------------------------------
0003          block  ;; label = @4
4 ------------------------------------------------------------
0004            block  ;; label = @5
5 ------------------------------------------------------------
0005              block  ;; label = @6
6 ------------------------------------------------------------
0006                block  ;; label = @7
7 ------------------------------------------------------------
0007                  block  ;; label = @8
8 ------------------------------------------------------------
0008                    block  ;; label = @9
9 ------------------------------------------------------------
0009                      local.get 0
0010                      i32.load
0011                      br_table 7 7 7 7 7 7 7 7 7 7 3 2 7 7 0 4 5
10 ------------------------------------------------------------
0012                    end
11 ------------------------------------------------------------
0013                    local.get 0
0014                    i32.load
0015                    local.tee 1
0016                    i32.const 100
0017                    i32.ne
0018                    if  ;; label = @9
12 ------------------------------------------------------------
0019                      local.get 0
0020                      i32.load
0021                      local.tee 2
0022                      local.get 1
0023                      i32.store
0024                      local.get 2
0025                      i32.const 20
0026                      i32.store
0027                      local.get 0
0028                      local.get 0
0029                      i32.load
0030                      i32.load
0031                      call_indirect (type 0)
0032                    end
13 ------------------------------------------------------------
0033                    local.get 0
0034                    i32.const 0
0035                    i32.store
0036                    local.get 0
0037                    i64.const 4294967297
0038                    i64.store align=4
0039                    local.get 0
0040                    i32.const 1
0041                    i32.store
0042                    local.get 0
0043                    i32.load
0044                    local.tee 0
0045                    i32.const 0
0046                    i32.store
0047                    local.get 0
0048                    i64.const 0
0049                    i64.store align=4
0050                    local.get 0
0051                    i64.const 4294967297
0052                    i64.store align=4
0053                    local.get 0
0054                    i32.const 1
0055                    i32.store
0056                    return
14 ------------------------------------------------------------
0057                    unreachable
15 ------------------------------------------------------------
0058                  end
16 ------------------------------------------------------------
0059                  unreachable
17 ------------------------------------------------------------
0060                  unreachable
18 ------------------------------------------------------------
0061                end
19 ------------------------------------------------------------
0062                local.get 0
0063                i32.load
0064                local.tee 1
0065                i32.const 100
0066                i32.ne
0067                if  ;; label = @7
20 ------------------------------------------------------------
0068                  local.get 0
0069                  i32.load
0070                  local.tee 2
0071                  local.get 1
0072                  i32.store
0073                  local.get 2
0074                  i32.const 20
0075                  i32.store
0076                  local.get 0
0077                  local.get 0
0078                  i32.load
0079                  i32.load
0080                  call_indirect (type 0)
0081                end
21 ------------------------------------------------------------
0082                local.get 0
0083                i32.const 1
0084                i32.store
0085                local.get 0
0086                i32.const 0
0087                i32.store
0088                local.get 0
0089                i64.const 17179869188
0090                i64.store align=4
0091                local.get 0
0092                i32.load
0093                local.tee 0
0094                i32.const 75
0095                i32.store
0096                local.get 0
0097                i32.const 89
0098                i32.store
0099                local.get 0
0100                i32.const 77
0101                i32.store
0102                local.get 0
0103                i32.const 0
0104                i32.store
0105                local.get 0
0106                i64.const 0
0107                i64.store align=4
0108                local.get 0
0109                i64.const 4294967297
0110                i64.store align=4
0111                local.get 0
0112                i32.const 67
0113                i32.store
0114                local.get 0
0115                i32.const 0
0116                i32.store
0117                local.get 0
0118                i64.const 0
0119                i64.store align=4
0120                local.get 0
0121                i64.const 4294967297
0122                i64.store align=4
0123                local.get 0
0124                i32.const 0
0125                i32.store
0126                local.get 0
0127                i64.const 0
0128                i64.store align=4
0129                local.get 0
0130                i64.const 4294967297
0131                i64.store align=4
0132                local.get 0
0133                i32.const 0
0134                i32.store
0135                local.get 0
0136                i64.const 0
0137                i64.store align=4
0138                local.get 0
0139                i64.const 4294967297
0140                i64.store align=4
0141                return
22 ------------------------------------------------------------
0142              end
23 ------------------------------------------------------------
0143              local.get 0
0144              i32.load
0145              local.tee 1
0146              i32.const 100
0147              i32.ne
0148              if  ;; label = @6
24 ------------------------------------------------------------
0149                local.get 0
0150                i32.load
0151                local.tee 2
0152                local.get 1
0153                i32.store
0154                local.get 2
0155                i32.const 20
0156                i32.store
0157                local.get 0
0158                local.get 0
0159                i32.load
0160                i32.load
0161                call_indirect (type 0)
0162              end
25 ------------------------------------------------------------
0163              local.get 0
0164              i32.const 1
0165              i32.store
0166              local.get 0
0167              i32.const 0
0168              i32.store
0169              local.get 0
0170              i64.const 21474836484
0171              i64.store align=4
0172              local.get 0
0173              i32.load
0174              local.tee 0
0175              i32.const 4
0176              i32.store
0177              local.get 0
0178              i32.const 3
0179              i32.store
0180              local.get 0
0181              i32.const 2
0182              i32.store
0183              local.get 0
0184              i32.const 0
0185              i32.store
0186              local.get 0
0187              i64.const 0
0188              i64.store align=4
0189              local.get 0
0190              i64.const 8589934594
0191              i64.store align=4
0192              local.get 0
0193              i32.const 1
0194              i32.store
0195              local.get 0
0196              i32.const 0
0197              i32.store
0198              local.get 0
0199              i64.const 0
0200              i64.store align=4
0201              local.get 0
0202              i64.const 8589934594
0203              i64.store align=4
0204              br 4 (;@1;)
26 ------------------------------------------------------------
0205            end
27 ------------------------------------------------------------
0206            local.get 0
0207            i32.load
0208            local.tee 1
0209            i32.const 100
0210            i32.ne
0211            if  ;; label = @5
28 ------------------------------------------------------------
0212              local.get 0
0213              i32.load
0214              local.tee 2
0215              local.get 1
0216              i32.store
0217              local.get 2
0218              i32.const 20
0219              i32.store
0220              local.get 0
0221              local.get 0
0222              i32.load
0223              i32.load
0224              call_indirect (type 0)
0225            end
29 ------------------------------------------------------------
0226            local.get 0
0227            i32.const 0
0228            i32.store
0229            local.get 0
0230            i32.const 0
0231            i32.store
0232            local.get 0
0233            i32.const 0
0234            i32.store
0235            local.get 0
0236            local.get 0
0237            i32.load
0238            local.tee 1
0239            i32.store
0240            local.get 1
0241            i32.const -1
0242            i32.add
0243            i32.const 10
0244            i32.ge_u
0245            if  ;; label = @5
30 ------------------------------------------------------------
0246              local.get 0
0247              i32.load
0248              local.tee 2
0249              local.get 1
0250              i32.store
0251              local.get 2
0252              i32.const 26
0253              i32.store
0254              local.get 0
0255              i32.load
0256              i32.const 10
0257              i32.store
0258              local.get 0
0259              local.get 0
0260              i32.load
0261              i32.load
0262              call_indirect (type 0)
0263              local.get 0
0264              i32.load
0265              local.tee 1
0266              i32.const 1
0267              i32.lt_s
0268              br_if 2 (;@3;)
31 ------------------------------------------------------------
0269            end
32 ------------------------------------------------------------
0270            local.get 0
0271            i32.load
0272            local.set 3
0273            i32.const 0
0274            local.set 0
0275            loop  ;; label = @5
33 ------------------------------------------------------------
0276              local.get 3
0277              local.get 0
0278              i32.const 84
0279              i32.mul
0280              i32.add
0281              local.tee 2
0282              i32.const 0
0283              i32.store
0284              local.get 2
0285              i64.const 0
0286              i64.store align=4
0287              local.get 2
0288              i64.const 4294967297
0289              i64.store align=4
0290              local.get 2
0291              local.get 0
0292              i32.store
0293              local.get 0
0294              i32.const 1
0295              i32.add
0296              local.tee 0
0297              local.get 1
0298              i32.ne
0299              br_if 0 (;@5;)
34 ------------------------------------------------------------
0300            end
35 ------------------------------------------------------------
0301            br 1 (;@3;)
36 ------------------------------------------------------------
0302          end
37 ------------------------------------------------------------
0303          local.get 0
0304          i32.load
0305          local.tee 1
0306          i32.const 9
0307          i32.store
0308          local.get 0
0309          local.get 1
0310          i32.load
0311          call_indirect (type 0)
0312        end
38 ------------------------------------------------------------
0313        return
39 ------------------------------------------------------------
0314      end
40 ------------------------------------------------------------
0315      local.get 0
0316      i32.load
0317      local.tee 1
0318      i32.const 100
0319      i32.ne
0320      if  ;; label = @2
41 ------------------------------------------------------------
0321        local.get 0
0322        i32.load
0323        local.tee 2
0324        local.get 1
0325        i32.store
0326        local.get 2
0327        i32.const 20
0328        i32.store
0329        local.get 0
0330        local.get 0
0331        i32.load
0332        i32.load
0333        call_indirect (type 0)
0334      end
42 ------------------------------------------------------------
0335      local.get 0
0336      i32.const 0
0337      i32.store
0338      local.get 0
0339      i64.const 12884901891
0340      i64.store align=4
0341      local.get 0
0342      i32.const 1
0343      i32.store
0344      local.get 0
0345      i32.load
0346      local.tee 0
0347      i32.const 3
0348      i32.store
0349      local.get 0
0350      i32.const 2
0351      i32.store
0352      local.get 0
0353      i32.const 0
0354      i32.store
0355      local.get 0
0356      i64.const 0
0357      i64.store align=4
0358      local.get 0
0359      i64.const 8589934594
0360      i64.store align=4
0361      local.get 0
0362      i32.const 1
0363      i32.store
0364    end
43 ------------------------------------------------------------
0365    local.get 0
0366    i32.const 1
0367    i32.store
0368    local.get 0
0369    i64.const 4294967297
0370    i64.store align=4
0371    local.get 0
0372    i64.const 4294967297
0373    i64.store align=4
0374    local.get 0
0375    i32.const 1
0376    i32.store
0377    local.get 0
0378    i64.const 4294967297
0379    i64.store align=4
0380    local.get 0
0381    i64.const 4294967297
0382    i64.store align=4)
