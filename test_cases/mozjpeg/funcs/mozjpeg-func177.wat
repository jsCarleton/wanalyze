  (func (;177;) (type 2) (param i32 i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load
0002    local.tee 2
0003    i32.const 100
0004    i32.ne
0005    if  ;; label = @1
1 ------------------------------------------------------------
0006      local.get 0
0007      i32.load
0008      local.tee 3
0009      local.get 2
0010      i32.store
0011      local.get 3
0012      i32.const 20
0013      i32.store
0014      local.get 0
0015      local.get 0
0016      i32.load
0017      i32.load
0018      call_indirect (type 0)
0019    end
2 ------------------------------------------------------------
0020    local.get 0
0021    i32.const 0
0022    i32.store
0023    local.get 0
0024    i32.const 0
0025    i32.store
0026    local.get 0
0027    local.get 1
0028    i32.store
0029    block  ;; label = @1
3 ------------------------------------------------------------
0030      block  ;; label = @2
4 ------------------------------------------------------------
0031        block  ;; label = @3
5 ------------------------------------------------------------
0032          block  ;; label = @4
6 ------------------------------------------------------------
0033            block  ;; label = @5
7 ------------------------------------------------------------
0034              block  ;; label = @6
8 ------------------------------------------------------------
0035                block  ;; label = @7
9 ------------------------------------------------------------
0036                  block  ;; label = @8
10 ------------------------------------------------------------
0037                    block  ;; label = @9
11 ------------------------------------------------------------
0038                      block  ;; label = @10
12 ------------------------------------------------------------
0039                        local.get 1
0040                        br_table 4 3 2 1 0 5 6
13 ------------------------------------------------------------
0041                      end
14 ------------------------------------------------------------
0042                      local.get 0
0043                      i32.const 1
0044                      i32.store
0045                      local.get 0
0046                      i32.const 1
0047                      i32.store
0048                      local.get 0
0049                      i32.load
0050                      local.tee 0
0051                      i32.const 0
0052                      i32.store
0053                      local.get 0
0054                      i64.const 0
0055                      i64.store align=4
0056                      local.get 0
0057                      i64.const 4294967297
0058                      i64.store align=4
0059                      local.get 0
0060                      i32.const 1
0061                      i32.store
0062                      return
15 ------------------------------------------------------------
0063                    end
16 ------------------------------------------------------------
0064                    local.get 0
0065                    i32.const 3
0066                    i32.store
0067                    local.get 0
0068                    i32.const 1
0069                    i32.store
0070                    local.get 0
0071                    i32.load
0072                    local.tee 0
0073                    i32.const 66
0074                    i32.store
0075                    local.get 0
0076                    i32.const 71
0077                    i32.store
0078                    local.get 0
0079                    i32.const 0
0080                    i32.store
0081                    local.get 0
0082                    i64.const 0
0083                    i64.store align=4
0084                    local.get 0
0085                    i64.const 4294967297
0086                    i64.store align=4
0087                    local.get 0
0088                    i32.const 82
0089                    i32.store
0090                    br 6 (;@2;)
17 ------------------------------------------------------------
0091                  end
18 ------------------------------------------------------------
0092                  local.get 0
0093                  i32.const 3
0094                  i32.store
0095                  local.get 0
0096                  i32.const 1
0097                  i32.store
0098                  local.get 0
0099                  i32.load
0100                  local.tee 0
0101                  i32.const 3
0102                  i32.store
0103                  local.get 0
0104                  i32.const 2
0105                  i32.store
0106                  local.get 0
0107                  i32.const 0
0108                  i32.store
0109                  local.get 0
0110                  i64.const 0
0111                  i64.store align=4
0112                  local.get 0
0113                  i64.const 8589934594
0114                  i64.store align=4
0115                  local.get 0
0116                  i32.const 1
0117                  i32.store
0118                  br 6 (;@1;)
19 ------------------------------------------------------------
0119                end
20 ------------------------------------------------------------
0120                local.get 0
0121                i32.const 4
0122                i32.store
0123                local.get 0
0124                i32.const 1
0125                i32.store
0126                local.get 0
0127                i32.load
0128                local.tee 0
0129                i32.const 75
0130                i32.store
0131                local.get 0
0132                i32.const 89
0133                i32.store
0134                local.get 0
0135                i32.const 77
0136                i32.store
0137                local.get 0
0138                i32.const 0
0139                i32.store
0140                local.get 0
0141                i64.const 0
0142                i64.store align=4
0143                local.get 0
0144                i64.const 4294967297
0145                i64.store align=4
0146                local.get 0
0147                i32.const 67
0148                i32.store
0149                local.get 0
0150                i32.const 0
0151                i32.store
0152                local.get 0
0153                i64.const 0
0154                i64.store align=4
0155                local.get 0
0156                i64.const 4294967297
0157                i64.store align=4
0158                br 4 (;@2;)
21 ------------------------------------------------------------
0159              end
22 ------------------------------------------------------------
0160              local.get 0
0161              i32.const 4
0162              i32.store
0163              local.get 0
0164              i32.const 1
0165              i32.store
0166              local.get 0
0167              i32.load
0168              local.tee 0
0169              i32.const 4
0170              i32.store
0171              local.get 0
0172              i32.const 3
0173              i32.store
0174              local.get 0
0175              i32.const 2
0176              i32.store
0177              local.get 0
0178              i32.const 0
0179              i32.store
0180              local.get 0
0181              i64.const 0
0182              i64.store align=4
0183              local.get 0
0184              i64.const 8589934594
0185              i64.store align=4
0186              local.get 0
0187              i32.const 1
0188              i32.store
0189              local.get 0
0190              i32.const 0
0191              i32.store
0192              local.get 0
0193              i64.const 0
0194              i64.store align=4
0195              local.get 0
0196              i64.const 8589934594
0197              i64.store align=4
0198              br 4 (;@1;)
23 ------------------------------------------------------------
0199            end
24 ------------------------------------------------------------
0200            local.get 0
0201            local.get 0
0202            i32.load
0203            local.tee 1
0204            i32.store
0205            local.get 1
0206            i32.const -1
0207            i32.add
0208            i32.const 10
0209            i32.ge_u
0210            if  ;; label = @5
25 ------------------------------------------------------------
0211              local.get 0
0212              i32.load
0213              local.tee 2
0214              local.get 1
0215              i32.store
0216              local.get 2
0217              i32.const 26
0218              i32.store
0219              local.get 0
0220              i32.load
0221              i32.const 10
0222              i32.store
0223              local.get 0
0224              local.get 0
0225              i32.load
0226              i32.load
0227              call_indirect (type 0)
0228              local.get 0
0229              i32.load
0230              local.tee 1
0231              i32.const 1
0232              i32.lt_s
0233              br_if 2 (;@3;)
26 ------------------------------------------------------------
0234            end
27 ------------------------------------------------------------
0235            local.get 0
0236            i32.load
0237            local.set 3
0238            i32.const 0
0239            local.set 0
0240            loop  ;; label = @5
28 ------------------------------------------------------------
0241              local.get 3
0242              local.get 0
0243              i32.const 84
0244              i32.mul
0245              i32.add
0246              local.tee 2
0247              i32.const 0
0248              i32.store
0249              local.get 2
0250              i64.const 0
0251              i64.store align=4
0252              local.get 2
0253              i64.const 4294967297
0254              i64.store align=4
0255              local.get 2
0256              local.get 0
0257              i32.store
0258              local.get 0
0259              i32.const 1
0260              i32.add
0261              local.tee 0
0262              local.get 1
0263              i32.ne
0264              br_if 0 (;@5;)
29 ------------------------------------------------------------
0265            end
30 ------------------------------------------------------------
0266            br 1 (;@3;)
31 ------------------------------------------------------------
0267          end
32 ------------------------------------------------------------
0268          local.get 0
0269          i32.load
0270          local.tee 1
0271          i32.const 10
0272          i32.store
0273          local.get 0
0274          local.get 1
0275          i32.load
0276          call_indirect (type 0)
0277        end
33 ------------------------------------------------------------
0278        return
34 ------------------------------------------------------------
0279      end
35 ------------------------------------------------------------
0280      local.get 0
0281      i32.const 0
0282      i32.store
0283      local.get 0
0284      i64.const 0
0285      i64.store align=4
0286      local.get 0
0287      i64.const 4294967297
0288      i64.store align=4
0289      local.get 0
0290      i32.const 0
0291      i32.store
0292      local.get 0
0293      i64.const 0
0294      i64.store align=4
0295      local.get 0
0296      i64.const 4294967297
0297      i64.store align=4
0298      return
36 ------------------------------------------------------------
0299    end
37 ------------------------------------------------------------
0300    local.get 0
0301    i32.const 1
0302    i32.store
0303    local.get 0
0304    i64.const 4294967297
0305    i64.store align=4
0306    local.get 0
0307    i64.const 4294967297
0308    i64.store align=4
0309    local.get 0
0310    i32.const 1
0311    i32.store
0312    local.get 0
0313    i64.const 4294967297
0314    i64.store align=4
0315    local.get 0
0316    i64.const 4294967297
0317    i64.store align=4)
