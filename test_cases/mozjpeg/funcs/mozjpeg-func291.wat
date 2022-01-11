  (func (;291;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 f32 f32 f32 f32 f32 f32 f32 f32)
0 ------------------------------------------------------------
0000    loop  ;; label = @1
1 ------------------------------------------------------------
0001      local.get 0
0002      local.get 2
0003      i32.const 2
0004      i32.shl
0005      i32.add
0006      i32.load
0007      local.tee 5
0008      local.get 3
0009      i32.add
0010      local.set 3
0011      local.get 4
0012      local.get 5
0013      i32.const 126
0014      i32.gt_s
0015      i32.add
0016      local.set 4
0017      local.get 2
0018      i32.const 1
0019      i32.add
0020      local.tee 2
0021      i32.const 64
0022      i32.ne
0023      br_if 0 (;@1;)
2 ------------------------------------------------------------
0024    end
3 ------------------------------------------------------------
0025    local.get 4
0026    i32.const 2147483583
0027    i32.and
0028    if  ;; label = @1
4 ------------------------------------------------------------
0029      i32.const 31
0030      local.get 1
0031      i32.load16_u
0032      local.tee 1
0033      i32.const 1
0034      i32.shl
0035      local.get 1
0036      i32.const 15
0037      i32.gt_u
0038      select
0039      local.tee 2
0040      i32.const 8128
0041      local.get 3
0042      i32.sub
0043      local.get 4
0044      i32.div_s
0045      local.tee 1
0046      local.get 2
0047      local.get 1
0048      i32.lt_s
0049      select
0050      i32.const 127
0051      i32.add
0052      local.set 7
0053      i32.const 0
0054      local.set 2
0055      loop  ;; label = @2
5 ------------------------------------------------------------
0056        local.get 2
0057        local.set 4
0058        block (result i32)  ;; label = @3
6 ------------------------------------------------------------
0059          local.get 2
0060          i32.const 1
0061          i32.add
0062          local.get 0
0063          local.get 2
0064          i32.const 2
0065          i32.shl
0066          i32.const 142864
0067          i32.add
0068          i32.load
0069          local.tee 8
0070          i32.const 2
0071          i32.shl
0072          i32.add
0073          i32.load
0074          i32.const 126
0075          i32.le_s
0076          br_if 0 (;@3;)
7 ------------------------------------------------------------
0077          drop
0078          loop  ;; label = @4
8 ------------------------------------------------------------
0079            block  ;; label = @5
9 ------------------------------------------------------------
0080              local.get 4
0081              local.tee 3
0082              i32.const 63
0083              i32.eq
0084              if  ;; label = @6
10 ------------------------------------------------------------
0085                i32.const 64
0086                local.set 4
0087                i32.const 63
0088                local.set 3
0089                br 1 (;@5;)
11 ------------------------------------------------------------
0090              end
12 ------------------------------------------------------------
0091              local.get 0
0092              local.get 3
0093              i32.const 1
0094              i32.add
0095              local.tee 4
0096              i32.const 2
0097              i32.shl
0098              i32.const 142864
0099              i32.add
0100              i32.load
0101              i32.const 2
0102              i32.shl
0103              i32.add
0104              i32.load
0105              i32.const 126
0106              i32.gt_s
0107              br_if 1 (;@4;)
13 ------------------------------------------------------------
0108            end
14 ------------------------------------------------------------
0109          end
15 ------------------------------------------------------------
0110          local.get 3
0111          i32.const 2
0112          i32.add
0113          local.set 1
0114          block  ;; label = @4
16 ------------------------------------------------------------
0115            local.get 2
0116            local.get 3
0117            i32.gt_s
0118            br_if 0 (;@4;)
17 ------------------------------------------------------------
0119            local.get 3
0120            local.get 2
0121            local.get 3
0122            local.get 2
0123            i32.gt_s
0124            select
0125            local.set 9
0126            local.get 0
0127            local.get 2
0128            i32.const -1
0129            i32.add
0130            i32.const 0
0131            local.get 2
0132            i32.const 0
0133            i32.gt_s
0134            select
0135            i32.const 2
0136            i32.shl
0137            i32.const 142864
0138            i32.add
0139            i32.load
0140            i32.const 2
0141            i32.shl
0142            i32.add
0143            i32.load
0144            local.tee 5
0145            local.get 0
0146            local.get 2
0147            i32.const -2
0148            i32.add
0149            i32.const 0
0150            local.get 2
0151            i32.const 1
0152            i32.gt_s
0153            select
0154            i32.const 2
0155            i32.shl
0156            i32.const 142864
0157            i32.add
0158            i32.load
0159            i32.const 2
0160            i32.shl
0161            i32.add
0162            i32.load
0163            i32.sub
0164            local.tee 6
0165            i32.const 127
0166            local.get 5
0167            i32.sub
0168            local.tee 5
0169            local.get 6
0170            local.get 5
0171            i32.gt_s
0172            select
0173            local.get 0
0174            local.get 4
0175            i32.const 63
0176            local.get 4
0177            i32.const 63
0178            i32.lt_s
0179            select
0180            i32.const 2
0181            i32.shl
0182            i32.const 142864
0183            i32.add
0184            i32.load
0185            i32.const 2
0186            i32.shl
0187            i32.add
0188            i32.load
0189            local.tee 6
0190            local.get 0
0191            local.get 1
0192            i32.const 63
0193            local.get 3
0194            i32.const 61
0195            i32.lt_s
0196            select
0197            i32.const 2
0198            i32.shl
0199            i32.const 142864
0200            i32.add
0201            i32.load
0202            i32.const 2
0203            i32.shl
0204            i32.add
0205            i32.load
0206            i32.sub
0207            local.tee 5
0208            i32.const 127
0209            local.get 6
0210            i32.sub
0211            local.tee 3
0212            local.get 5
0213            local.get 3
0214            i32.gt_s
0215            select
0216            local.tee 5
0217            local.get 2
0218            select
0219            local.tee 3
0220            local.get 4
0221            local.get 2
0222            i32.sub
0223            local.tee 6
0224            i32.mul
0225            f32.convert_i32_s
0226            local.set 14
0227            i32.const 0
0228            local.get 6
0229            local.get 3
0230            local.get 5
0231            local.get 4
0232            i32.const 64
0233            i32.eq
0234            select
0235            i32.mul
0236            i32.sub
0237            f32.convert_i32_s
0238            local.set 15
0239            f32.const 6.96672438132e-310
0240            local.get 6
0241            i32.const 1
0242            i32.add
0243            f32.convert_i32_s
0244            f32.div
0245            local.tee 16
0246            local.set 10
0247            loop  ;; label = @5
18 ------------------------------------------------------------
0248              local.get 0
0249              local.get 8
0250              i32.const 2
0251              i32.shl
0252              i32.add
0253              block (result i32)  ;; label = @6
19 ------------------------------------------------------------
0254                local.get 10
0255                local.get 10
0256                local.get 10
0257                f32.mul
0258                local.tee 11
0259                f32.mul
0260                local.tee 12
0261                local.get 11
0262                f32.sub
0263                local.get 15
0264                f32.mul
0265                local.get 11
0266                f32.const 3.49025867698e-310
0267                f32.mul
0268                local.tee 17
0269                local.get 12
0270                local.get 12
0271                f32.add
0272                local.tee 13
0273                f32.sub
0274                f32.const 1.38120706034e-309
0275                f32.mul
0276                local.get 10
0277                local.get 12
0278                local.get 11
0279                local.get 11
0280                f32.add
0281                f32.sub
0282                f32.add
0283                local.get 14
0284                f32.mul
0285                local.get 13
0286                local.get 17
0287                f32.sub
0288                f32.const 6.96672438132e-310
0289                f32.add
0290                f32.const 1.38120706034e-309
0291                f32.mul
0292                f32.add
0293                f32.add
0294                f32.add
0295                f32.ceil
0296                local.tee 13
0297                f32.abs
0298                f32.const 1.67637667486e-312
0299                f32.lt
0300                if  ;; label = @7
20 ------------------------------------------------------------
0301                  local.get 13
0302                  i32.trunc_f32_s
0303                  br 1 (;@6;)
21 ------------------------------------------------------------
0304                end
22 ------------------------------------------------------------
0305                i32.const -2147483648
0306              end
23 ------------------------------------------------------------
0307              local.tee 4
0308              local.get 7
0309              local.get 7
0310              local.get 4
0311              i32.gt_s
0312              select
0313              i32.store
0314              local.get 2
0315              local.get 9
0316              i32.eq
0317              br_if 1 (;@4;)
24 ------------------------------------------------------------
0318              local.get 16
0319              local.get 10
0320              f32.add
0321              local.set 10
0322              local.get 2
0323              i32.const 1
0324              i32.add
0325              local.tee 2
0326              i32.const 2
0327              i32.shl
0328              i32.const 142864
0329              i32.add
0330              i32.load
0331              local.set 8
0332              br 0 (;@5;)
25 ------------------------------------------------------------
0333              unreachable
26 ------------------------------------------------------------
0334            end
27 ------------------------------------------------------------
0335            unreachable
28 ------------------------------------------------------------
0336          end
29 ------------------------------------------------------------
0337          local.get 1
0338        end
30 ------------------------------------------------------------
0339        local.tee 2
0340        i32.const 64
0341        i32.lt_s
0342        br_if 0 (;@2;)
31 ------------------------------------------------------------
0343      end
32 ------------------------------------------------------------
0344    end
33 ------------------------------------------------------------)
