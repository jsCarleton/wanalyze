  (func (;201;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load
0002    i32.const 1
0003    i32.ge_s
0004    if  ;; label = @1
1 ------------------------------------------------------------
0005      local.get 0
0006      i32.load
0007      i32.const -1
0008      i32.add
0009      local.set 16
0010      local.get 0
0011      i32.load
0012      local.set 10
0013      local.get 0
0014      i32.load
0015      local.set 3
0016      loop  ;; label = @2
2 ------------------------------------------------------------
0017        local.get 0
0018        local.get 10
0019        local.get 14
0020        i32.const 2
0021        i32.shl
0022        local.tee 4
0023        i32.add
0024        local.tee 2
0025        i32.const -64
0026        i32.sub
0027        i32.load
0028        local.get 3
0029        i32.load
0030        local.tee 5
0031        local.get 10
0032        i32.load
0033        i32.mul
0034        local.get 5
0035        i32.const 1
0036        local.get 0
0037        i32.load
0038        i32.load
0039        call_indirect (type 9)
0040        local.set 12
0041        local.get 0
0042        local.get 2
0043        i32.load
0044        local.get 3
0045        i32.load
0046        local.tee 2
0047        local.get 10
0048        i32.load
0049        i32.mul
0050        local.get 2
0051        i32.const 1
0052        local.get 0
0053        i32.load
0054        i32.load
0055        call_indirect (type 9)
0056        local.set 11
0057        block (result i32)  ;; label = @3
3 ------------------------------------------------------------
0058          local.get 10
0059          i32.load
0060          local.get 16
0061          i32.lt_u
0062          if  ;; label = @4
4 ------------------------------------------------------------
0063            local.get 3
0064            i32.load
0065            br 1 (;@3;)
5 ------------------------------------------------------------
0066          end
6 ------------------------------------------------------------
0067          local.get 3
0068          i32.load
0069          local.get 3
0070          i32.load
0071          local.tee 2
0072          i32.rem_u
0073          local.tee 5
0074          local.get 2
0075          local.get 5
0076          select
0077        end
7 ------------------------------------------------------------
0078        local.set 5
0079        local.get 3
0080        i32.load
0081        local.tee 8
0082        local.get 3
0083        i32.load
0084        local.tee 6
0085        local.get 8
0086        i32.rem_u
0087        local.tee 2
0088        i32.sub
0089        local.get 2
0090        local.get 2
0091        i32.const 0
0092        i32.gt_s
0093        select
0094        local.set 7
0095        block  ;; label = @3
8 ------------------------------------------------------------
0096          local.get 5
0097          i32.const 1
0098          i32.lt_s
0099          br_if 0 (;@3;)
9 ------------------------------------------------------------
0100          local.get 1
0101          local.get 4
0102          i32.add
0103          local.set 13
0104          i32.const 0
0105          local.set 2
0106          local.get 7
0107          i32.const 1
0108          i32.ge_s
0109          if  ;; label = @4
10 ------------------------------------------------------------
0110            local.get 7
0111            i32.const 7
0112            i32.shl
0113            local.set 15
0114            i32.const 0
0115            local.set 4
0116            loop  ;; label = @5
11 ------------------------------------------------------------
0117              local.get 0
0118              local.get 3
0119              local.get 13
0120              i32.load
0121              local.get 12
0122              local.get 4
0123              i32.const 2
0124              i32.shl
0125              local.tee 2
0126              i32.add
0127              i32.load
0128              local.tee 9
0129              local.get 4
0130              i32.const 3
0131              i32.shl
0132              i32.const 0
0133              local.get 6
0134              local.get 2
0135              local.get 11
0136              i32.add
0137              i32.load
0138              local.get 0
0139              i32.load
0140              i32.load
0141              call_indirect (type 12)
0142              local.get 9
0143              local.get 6
0144              i32.const 7
0145              i32.shl
0146              i32.add
0147              local.tee 9
0148              local.get 15
0149              call 40
0150              local.get 9
0151              i32.const -128
0152              i32.add
0153              i32.load16_u
0154              local.set 17
0155              i32.const 0
0156              local.set 2
0157              loop  ;; label = @6
12 ------------------------------------------------------------
0158                local.get 9
0159                local.get 2
0160                i32.const 7
0161                i32.shl
0162                i32.add
0163                local.get 17
0164                i32.store16
0165                local.get 2
0166                i32.const 1
0167                i32.add
0168                local.tee 2
0169                local.get 7
0170                i32.ne
0171                br_if 0 (;@6;)
13 ------------------------------------------------------------
0172              end
14 ------------------------------------------------------------
0173              local.get 4
0174              i32.const 1
0175              i32.add
0176              local.tee 4
0177              local.get 5
0178              i32.ne
0179              br_if 0 (;@5;)
15 ------------------------------------------------------------
0180            end
16 ------------------------------------------------------------
0181            br 1 (;@3;)
17 ------------------------------------------------------------
0182          end
18 ------------------------------------------------------------
0183          loop  ;; label = @4
19 ------------------------------------------------------------
0184            local.get 0
0185            local.get 3
0186            local.get 13
0187            i32.load
0188            local.get 12
0189            local.get 2
0190            i32.const 2
0191            i32.shl
0192            local.tee 4
0193            i32.add
0194            i32.load
0195            local.get 2
0196            i32.const 3
0197            i32.shl
0198            i32.const 0
0199            local.get 6
0200            local.get 4
0201            local.get 11
0202            i32.add
0203            i32.load
0204            local.get 0
0205            i32.load
0206            i32.load
0207            call_indirect (type 12)
0208            local.get 2
0209            i32.const 1
0210            i32.add
0211            local.tee 2
0212            local.get 5
0213            i32.ne
0214            br_if 0 (;@4;)
20 ------------------------------------------------------------
0215          end
21 ------------------------------------------------------------
0216        end
22 ------------------------------------------------------------
0217        block  ;; label = @3
23 ------------------------------------------------------------
0218          local.get 10
0219          i32.load
0220          local.get 16
0221          i32.ne
0222          br_if 0 (;@3;)
24 ------------------------------------------------------------
0223          local.get 6
0224          local.get 7
0225          i32.add
0226          local.tee 2
0227          local.get 8
0228          i32.div_u
0229          local.set 4
0230          local.get 5
0231          local.get 3
0232          i32.load
0233          i32.ge_s
0234          br_if 0 (;@3;)
25 ------------------------------------------------------------
0235          local.get 2
0236          i32.const 7
0237          i32.shl
0238          local.set 11
0239          local.get 8
0240          local.get 2
0241          i32.le_u
0242          if  ;; label = @4
26 ------------------------------------------------------------
0243            local.get 8
0244            i32.const -1
0245            i32.add
0246            local.set 13
0247            local.get 4
0248            i32.const 1
0249            local.get 4
0250            i32.const 1
0251            i32.gt_u
0252            select
0253            local.set 9
0254            loop  ;; label = @5
27 ------------------------------------------------------------
0255              local.get 12
0256              local.get 5
0257              i32.const 2
0258              i32.shl
0259              i32.add
0260              local.tee 2
0261              i32.const -4
0262              i32.add
0263              i32.load
0264              local.set 6
0265              local.get 2
0266              i32.load
0267              local.tee 7
0268              local.get 11
0269              call 40
0270              i32.const 0
0271              local.set 4
0272              local.get 8
0273              i32.const 0
0274              i32.gt_s
0275              if  ;; label = @6
28 ------------------------------------------------------------
0276                loop  ;; label = @7
29 ------------------------------------------------------------
0277                  local.get 6
0278                  local.get 13
0279                  i32.const 7
0280                  i32.shl
0281                  i32.add
0282                  i32.load16_u
0283                  local.set 15
0284                  i32.const 0
0285                  local.set 2
0286                  loop  ;; label = @8
30 ------------------------------------------------------------
0287                    local.get 7
0288                    local.get 2
0289                    i32.const 7
0290                    i32.shl
0291                    i32.add
0292                    local.get 15
0293                    i32.store16
0294                    local.get 2
0295                    i32.const 1
0296                    i32.add
0297                    local.tee 2
0298                    local.get 8
0299                    i32.ne
0300                    br_if 0 (;@8;)
31 ------------------------------------------------------------
0301                  end
32 ------------------------------------------------------------
0302                  local.get 6
0303                  local.get 8
0304                  i32.const 7
0305                  i32.shl
0306                  local.tee 2
0307                  i32.add
0308                  local.set 6
0309                  local.get 2
0310                  local.get 7
0311                  i32.add
0312                  local.set 7
0313                  local.get 4
0314                  i32.const 1
0315                  i32.add
0316                  local.tee 4
0317                  local.get 9
0318                  i32.ne
0319                  br_if 0 (;@7;)
33 ------------------------------------------------------------
0320                end
34 ------------------------------------------------------------
0321              end
35 ------------------------------------------------------------
0322              local.get 5
0323              i32.const 1
0324              i32.add
0325              local.tee 5
0326              local.get 3
0327              i32.load
0328              i32.lt_s
0329              br_if 0 (;@5;)
36 ------------------------------------------------------------
0330            end
37 ------------------------------------------------------------
0331            br 1 (;@3;)
38 ------------------------------------------------------------
0332          end
39 ------------------------------------------------------------
0333          loop  ;; label = @4
40 ------------------------------------------------------------
0334            local.get 12
0335            local.get 5
0336            i32.const 2
0337            i32.shl
0338            i32.add
0339            i32.load
0340            local.get 11
0341            call 40
0342            local.get 5
0343            i32.const 1
0344            i32.add
0345            local.tee 5
0346            local.get 3
0347            i32.load
0348            i32.lt_s
0349            br_if 0 (;@4;)
41 ------------------------------------------------------------
0350          end
42 ------------------------------------------------------------
0351        end
43 ------------------------------------------------------------
0352        local.get 3
0353        i32.const 84
0354        i32.add
0355        local.set 3
0356        local.get 14
0357        i32.const 1
0358        i32.add
0359        local.tee 14
0360        local.get 0
0361        i32.load
0362        i32.lt_s
0363        br_if 0 (;@2;)
44 ------------------------------------------------------------
0364      end
45 ------------------------------------------------------------
0365    end
46 ------------------------------------------------------------
0366    local.get 0
0367    local.get 1
0368    call 86)
