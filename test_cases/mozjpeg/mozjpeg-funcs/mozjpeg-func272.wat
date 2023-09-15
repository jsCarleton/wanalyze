  (func (;272;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 f32 f32 f32 f32 f32 f32 f32 f32 f32)
0 ------------------------------------------------------------
0000    loop  ;; label = @1
1 ------------------------------------------------------------
0001      local.get 10
0002      local.get 0
0003      local.get 2
0004      i32.const 2
0005      i32.shl
0006      i32.add
0007      f32.load
0008      local.tee 9
0009      f32.add
0010      local.set 10
0011      local.get 3
0012      local.get 9
0013      f32.const 0x42fe0000
0014      f32.ge
0015      i32.add
0016      local.set 3
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
0025    local.get 3
0026    i32.const 2147483583
0027    i32.and
0028    if  ;; label = @1
4 ------------------------------------------------------------
0029      f32.const 0x41f80000
0030      local.get 1
0031      i32.load16_u
0032      local.tee 1
0033      i32.const 1
0034      i32.shl
0035      f32.convert_i32_s
0036      local.get 1
0037      i32.const 15
0038      i32.gt_u
0039      select
0040      local.tee 11
0041      f32.const 0x45fe0000
0042      local.get 10
0043      f32.sub
0044      local.get 3
0045      f32.convert_i32_s
0046      f32.div
0047      local.tee 9
0048      local.get 11
0049      local.get 9
0050      f32.lt
0051      select
0052      f32.const 0x42fe0000
0053      f32.add
0054      local.set 16
0055      i32.const 0
0056      local.set 2
0057      loop  ;; label = @2
5 ------------------------------------------------------------
0058        local.get 2
0059        local.set 3
0060        block (result i32)  ;; label = @3
6 ------------------------------------------------------------
0061          local.get 2
0062          i32.const 1
0063          i32.add
0064          local.get 0
0065          local.get 2
0066          i32.const 2
0067          i32.shl
0068          i32.const 142864
0069          i32.add
0070          i32.load
0071          local.tee 4
0072          i32.const 2
0073          i32.shl
0074          i32.add
0075          f32.load
0076          f32.const 0x42fe0000
0077          f32.lt
0078          i32.const 1
0079          i32.xor
0080          i32.eqz
0081          br_if 0 (;@3;)
7 ------------------------------------------------------------
0082          drop
0083          loop  ;; label = @4
8 ------------------------------------------------------------
0084            block  ;; label = @5
9 ------------------------------------------------------------
0085              local.get 3
0086              local.tee 1
0087              i32.const 63
0088              i32.eq
0089              if  ;; label = @6
10 ------------------------------------------------------------
0090                i32.const 64
0091                local.set 3
0092                i32.const 63
0093                local.set 1
0094                br 1 (;@5;)
11 ------------------------------------------------------------
0095              end
12 ------------------------------------------------------------
0096              local.get 0
0097              local.get 1
0098              i32.const 1
0099              i32.add
0100              local.tee 3
0101              i32.const 2
0102              i32.shl
0103              i32.const 142864
0104              i32.add
0105              i32.load
0106              i32.const 2
0107              i32.shl
0108              i32.add
0109              f32.load
0110              f32.const 0x42fe0000
0111              f32.ge
0112              br_if 1 (;@4;)
13 ------------------------------------------------------------
0113            end
14 ------------------------------------------------------------
0114          end
15 ------------------------------------------------------------
0115          local.get 1
0116          i32.const 2
0117          i32.add
0118          local.set 5
0119          block  ;; label = @4
16 ------------------------------------------------------------
0120            local.get 2
0121            local.get 1
0122            i32.gt_s
0123            br_if 0 (;@4;)
17 ------------------------------------------------------------
0124            local.get 3
0125            local.get 2
0126            i32.sub
0127            local.tee 6
0128            i32.const 1
0129            i32.add
0130            local.set 7
0131            block (result i32)  ;; label = @5
18 ------------------------------------------------------------
0132              f32.const 0x42fe0000
0133              local.get 0
0134              local.get 2
0135              i32.const -1
0136              i32.add
0137              i32.const 0
0138              local.get 2
0139              i32.const 0
0140              i32.gt_s
0141              select
0142              i32.const 2
0143              i32.shl
0144              i32.const 142864
0145              i32.add
0146              i32.load
0147              i32.const 2
0148              i32.shl
0149              i32.add
0150              f32.load
0151              local.tee 9
0152              local.get 0
0153              local.get 2
0154              i32.const -2
0155              i32.add
0156              i32.const 0
0157              local.get 2
0158              i32.const 1
0159              i32.gt_s
0160              select
0161              i32.const 2
0162              i32.shl
0163              i32.const 142864
0164              i32.add
0165              i32.load
0166              i32.const 2
0167              i32.shl
0168              i32.add
0169              f32.load
0170              f32.sub
0171              local.tee 11
0172              f32.const 0x42fe0000
0173              local.get 9
0174              f32.sub
0175              local.tee 9
0176              local.get 11
0177              local.get 9
0178              f32.gt
0179              select
0180              local.get 0
0181              local.get 3
0182              i32.const 63
0183              local.get 3
0184              i32.const 63
0185              i32.lt_s
0186              select
0187              i32.const 2
0188              i32.shl
0189              i32.const 142864
0190              i32.add
0191              i32.load
0192              i32.const 2
0193              i32.shl
0194              i32.add
0195              f32.load
0196              local.tee 9
0197              local.get 0
0198              local.get 5
0199              i32.const 63
0200              local.get 1
0201              i32.const 61
0202              i32.lt_s
0203              select
0204              i32.const 2
0205              i32.shl
0206              i32.const 142864
0207              i32.add
0208              i32.load
0209              i32.const 2
0210              i32.shl
0211              i32.add
0212              f32.load
0213              f32.sub
0214              local.tee 11
0215              f32.const 0x42fe0000
0216              local.get 9
0217              f32.sub
0218              local.tee 9
0219              local.get 11
0220              local.get 9
0221              f32.gt
0222              select
0223              local.tee 13
0224              local.get 2
0225              select
0226              local.tee 14
0227              f32.sub
0228              local.tee 9
0229              f32.abs
0230              f32.const 0x4f000000
0231              f32.lt
0232              if  ;; label = @6
19 ------------------------------------------------------------
0233                local.get 9
0234                i32.trunc_f32_s
0235                br 1 (;@5;)
20 ------------------------------------------------------------
0236              end
21 ------------------------------------------------------------
0237              i32.const -2147483648
0238            end
22 ------------------------------------------------------------
0239            local.set 8
0240            local.get 7
0241            f32.convert_i32_s
0242            local.set 11
0243            local.get 1
0244            local.get 2
0245            local.get 1
0246            local.get 2
0247            i32.gt_s
0248            select
0249            local.set 1
0250            i32.const 127
0251            local.get 8
0252            i32.sub
0253            local.get 6
0254            i32.mul
0255            f32.convert_i32_s
0256            local.set 17
0257            block (result i32)  ;; label = @5
23 ------------------------------------------------------------
0258              f32.const 0x42fe0000
0259              local.get 14
0260              local.get 13
0261              local.get 3
0262              i32.const 64
0263              i32.eq
0264              select
0265              f32.sub
0266              local.tee 9
0267              f32.abs
0268              f32.const 0x4f000000
0269              f32.lt
0270              if  ;; label = @6
24 ------------------------------------------------------------
0271                local.get 9
0272                i32.trunc_f32_s
0273                br 1 (;@5;)
25 ------------------------------------------------------------
0274              end
26 ------------------------------------------------------------
0275              i32.const -2147483648
0276            end
27 ------------------------------------------------------------
0277            i32.const -127
0278            i32.add
0279            local.get 6
0280            i32.mul
0281            f32.convert_i32_s
0282            local.set 13
0283            f32.const 0x3f800000
0284            local.get 11
0285            f32.div
0286            local.tee 14
0287            local.set 10
0288            loop  ;; label = @5
28 ------------------------------------------------------------
0289              local.get 0
0290              local.get 4
0291              i32.const 2
0292              i32.shl
0293              i32.add
0294              local.get 10
0295              local.get 10
0296              local.get 10
0297              f32.mul
0298              local.tee 12
0299              f32.mul
0300              local.tee 15
0301              local.get 12
0302              f32.sub
0303              local.get 13
0304              f32.mul
0305              local.get 12
0306              f32.const 0x40400000
0307              f32.mul
0308              local.tee 11
0309              local.get 15
0310              local.get 15
0311              f32.add
0312              local.tee 9
0313              f32.sub
0314              f32.const 0x42fe0000
0315              f32.mul
0316              local.get 10
0317              local.get 15
0318              local.get 12
0319              local.get 12
0320              f32.add
0321              f32.sub
0322              f32.add
0323              local.get 17
0324              f32.mul
0325              local.get 9
0326              local.get 11
0327              f32.sub
0328              f32.const 0x3f800000
0329              f32.add
0330              f32.const 0x42fe0000
0331              f32.mul
0332              f32.add
0333              f32.add
0334              f32.add
0335              local.tee 9
0336              local.get 16
0337              local.get 9
0338              local.get 16
0339              f32.lt
0340              select
0341              f32.store
0342              local.get 1
0343              local.get 2
0344              i32.eq
0345              br_if 1 (;@4;)
29 ------------------------------------------------------------
0346              local.get 14
0347              local.get 10
0348              f32.add
0349              local.set 10
0350              local.get 2
0351              i32.const 1
0352              i32.add
0353              local.tee 2
0354              i32.const 2
0355              i32.shl
0356              i32.const 142864
0357              i32.add
0358              i32.load
0359              local.set 4
0360              br 0 (;@5;)
30 ------------------------------------------------------------
0361              unreachable
31 ------------------------------------------------------------
0362            end
32 ------------------------------------------------------------
0363            unreachable
33 ------------------------------------------------------------
0364          end
34 ------------------------------------------------------------
0365          local.get 5
0366        end
35 ------------------------------------------------------------
0367        local.tee 2
0368        i32.const 64
0369        i32.lt_s
0370        br_if 0 (;@2;)
36 ------------------------------------------------------------
0371      end
37 ------------------------------------------------------------
0372    end
38 ------------------------------------------------------------)
