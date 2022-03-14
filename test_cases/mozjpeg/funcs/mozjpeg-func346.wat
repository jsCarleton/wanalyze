  (func (;346;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load offset=364
0002    local.set 5
0003    local.get 0
0004    i32.load offset=200
0005    if  ;; label = @1
1 ------------------------------------------------------------
0006      local.get 5
0007      i32.load offset=68
0008      local.tee 2
0009      i32.eqz
0010      if  ;; label = @2
2 ------------------------------------------------------------
0011        local.get 0
0012        local.get 5
0013        i32.load offset=72
0014        call 67
0015        local.get 5
0016        local.get 0
0017        i32.load offset=200
0018        local.tee 2
0019        i32.store offset=68
0020        local.get 5
0021        local.get 5
0022        i32.load offset=72
0023        i32.const 1
0024        i32.add
0025        i32.const 7
0026        i32.and
0027        i32.store offset=72
0028      end
3 ------------------------------------------------------------
0029      local.get 5
0030      local.get 2
0031      i32.const -1
0032      i32.add
0033      i32.store offset=68
0034    end
4 ------------------------------------------------------------
0035    local.get 0
0036    i32.load offset=272
0037    i32.const 1
0038    i32.ge_s
0039    if  ;; label = @1
5 ------------------------------------------------------------
0040      loop  ;; label = @2
6 ------------------------------------------------------------
0041        local.get 5
0042        local.get 0
0043        local.get 0
0044        local.get 8
0045        i32.const 2
0046        i32.shl
0047        local.tee 4
0048        i32.add
0049        i32.load offset=276
0050        i32.const 2
0051        i32.shl
0052        local.tee 2
0053        i32.add
0054        i32.load offset=248
0055        i32.load offset=20
0056        local.tee 10
0057        i32.const 2
0058        i32.shl
0059        i32.add
0060        local.tee 6
0061        i32.const 76
0062        i32.add
0063        i32.load
0064        local.get 2
0065        local.get 5
0066        i32.add
0067        local.tee 3
0068        local.tee 7
0069        i32.const 52
0070        i32.add
0071        i32.load
0072        i32.add
0073        local.set 2
0074        block  ;; label = @3
7 ------------------------------------------------------------
0075          local.get 1
0076          local.get 4
0077          i32.add
0078          i32.load
0079          i32.load16_s
0080          local.get 0
0081          i32.load offset=328
0082          i32.shr_s
0083          local.tee 9
0084          local.get 3
0085          i32.load offset=36
0086          i32.sub
0087          local.tee 4
0088          i32.eqz
0089          if  ;; label = @4
8 ------------------------------------------------------------
0090            local.get 0
0091            local.get 2
0092            i32.const 0
0093            call 28
0094            local.get 7
0095            i32.const 0
0096            i32.store offset=52
0097            br 1 (;@3;)
9 ------------------------------------------------------------
0098          end
10 ------------------------------------------------------------
0099          local.get 3
0100          local.get 9
0101          i32.store offset=36
0102          local.get 0
0103          local.get 2
0104          i32.const 1
0105          call 28
0106          local.get 0
0107          local.get 2
0108          i32.const 1
0109          i32.add
0110          local.get 4
0111          i32.const 1
0112          i32.lt_s
0113          call 28
0114          i32.const 0
0115          local.set 9
0116          local.get 7
0117          i32.const 4
0118          i32.const 8
0119          local.get 4
0120          i32.const 0
0121          i32.gt_s
0122          local.tee 3
0123          select
0124          i32.store offset=52
0125          local.get 2
0126          i32.const 2
0127          i32.const 3
0128          local.get 3
0129          select
0130          i32.add
0131          local.set 3
0132          block  ;; label = @4
11 ------------------------------------------------------------
0133            local.get 4
0134            local.get 4
0135            i32.const 31
0136            i32.shr_s
0137            local.tee 2
0138            i32.add
0139            local.get 2
0140            i32.xor
0141            i32.const -1
0142            i32.add
0143            local.tee 4
0144            i32.eqz
0145            if  ;; label = @5
12 ------------------------------------------------------------
0146              i32.const 0
0147              local.set 2
0148              br 1 (;@4;)
13 ------------------------------------------------------------
0149            end
14 ------------------------------------------------------------
0150            i32.const 1
0151            local.set 2
0152            local.get 0
0153            local.get 3
0154            i32.const 1
0155            call 28
0156            local.get 6
0157            i32.load offset=76
0158            i32.const 20
0159            i32.add
0160            local.set 3
0161            local.get 4
0162            i32.const 1
0163            i32.shr_u
0164            local.tee 6
0165            i32.eqz
0166            br_if 0 (;@4;)
15 ------------------------------------------------------------
0167            loop  ;; label = @5
16 ------------------------------------------------------------
0168              local.get 0
0169              local.get 3
0170              i32.const 1
0171              call 28
0172              local.get 3
0173              i32.const 1
0174              i32.add
0175              local.set 3
0176              local.get 2
0177              i32.const 1
0178              i32.shl
0179              local.set 2
0180              local.get 6
0181              i32.const 1
0182              i32.shr_s
0183              local.tee 6
0184              br_if 0 (;@5;)
17 ------------------------------------------------------------
0185            end
18 ------------------------------------------------------------
0186          end
19 ------------------------------------------------------------
0187          local.get 0
0188          local.get 3
0189          i32.const 0
0190          call 28
0191          block  ;; label = @4
20 ------------------------------------------------------------
0192            local.get 7
0193            local.get 2
0194            i32.const 1
0195            local.get 0
0196            local.get 10
0197            i32.add
0198            local.tee 6
0199            i32.load8_u offset=120
0200            i32.shl
0201            i32.const 1
0202            i32.shr_s
0203            i32.ge_s
0204            if (result i32)  ;; label = @5
21 ------------------------------------------------------------
0205              local.get 2
0206              i32.const 1
0207              local.get 6
0208              i32.load8_u offset=136
0209              i32.shl
0210              i32.const 1
0211              i32.shr_s
0212              i32.le_s
0213              br_if 1 (;@4;)
22 ------------------------------------------------------------
0214              local.get 7
0215              i32.load offset=52
0216              i32.const 8
0217              i32.add
0218            else
23 ------------------------------------------------------------
0219              i32.const 0
0220            end
24 ------------------------------------------------------------
0221            i32.store offset=52
0222          end
25 ------------------------------------------------------------
0223          local.get 2
0224          i32.const 1
0225          i32.shr_s
0226          local.tee 2
0227          i32.eqz
0228          br_if 0 (;@3;)
26 ------------------------------------------------------------
0229          local.get 3
0230          i32.const 14
0231          i32.add
0232          local.set 3
0233          loop  ;; label = @4
27 ------------------------------------------------------------
0234            local.get 0
0235            local.get 3
0236            local.get 2
0237            local.get 4
0238            i32.and
0239            i32.const 0
0240            i32.ne
0241            call 28
0242            local.get 2
0243            i32.const 1
0244            i32.shr_s
0245            local.tee 2
0246            br_if 0 (;@4;)
28 ------------------------------------------------------------
0247          end
29 ------------------------------------------------------------
0248        end
30 ------------------------------------------------------------
0249        local.get 8
0250        i32.const 1
0251        i32.add
0252        local.tee 8
0253        local.get 0
0254        i32.load offset=272
0255        i32.lt_s
0256        br_if 0 (;@2;)
31 ------------------------------------------------------------
0257      end
32 ------------------------------------------------------------
0258    end
33 ------------------------------------------------------------
0259    i32.const 1)
