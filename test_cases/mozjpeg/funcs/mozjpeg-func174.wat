  (func (;174;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load offset=364
0002    local.tee 4
0003    local.get 1
0004    i32.store offset=12
0005    local.get 4
0006    local.get 0
0007    i32.store offset=32
0008    local.get 0
0009    i32.load offset=316
0010    local.set 2
0011    block  ;; label = @1
1 ------------------------------------------------------------
0012      local.get 0
0013      i32.load offset=324
0014      i32.eqz
0015      if  ;; label = @2
2 ------------------------------------------------------------
0016        local.get 2
0017        i32.eqz
0018        if  ;; label = @3
3 ------------------------------------------------------------
0019          local.get 4
0020          i32.const 53
0021          i32.store offset=4
0022          br 2 (;@1;)
4 ------------------------------------------------------------
0023        end
5 ------------------------------------------------------------
0024        local.get 4
0025        i32.const 54
0026        i32.store offset=4
0027        br 1 (;@1;)
6 ------------------------------------------------------------
0028      end
7 ------------------------------------------------------------
0029      local.get 2
0030      i32.eqz
0031      if  ;; label = @2
8 ------------------------------------------------------------
0032        local.get 4
0033        i32.const 55
0034        i32.store offset=4
0035        br 1 (;@1;)
9 ------------------------------------------------------------
0036      end
10 ------------------------------------------------------------
0037      local.get 4
0038      i32.const 56
0039      i32.store offset=4
0040      local.get 4
0041      i32.load offset=64
0042      br_if 0 (;@1;)
11 ------------------------------------------------------------
0043      local.get 4
0044      local.get 0
0045      i32.const 1
0046      i32.const 1000
0047      local.get 0
0048      i32.load offset=4
0049      i32.load
0050      call_indirect (type 3)
0051      i32.store offset=64
0052    end
12 ------------------------------------------------------------
0053    local.get 4
0054    i32.const 57
0055    i32.const 58
0056    local.get 1
0057    select
0058    i32.store offset=8
0059    block  ;; label = @1
13 ------------------------------------------------------------
0060      local.get 0
0061      i32.load offset=244
0062      i32.const 1
0063      i32.lt_s
0064      br_if 0 (;@1;)
14 ------------------------------------------------------------
0065      local.get 2
0066      i32.eqz
0067      local.set 7
0068      local.get 2
0069      i32.eqz
0070      if  ;; label = @2
15 ------------------------------------------------------------
0071        loop  ;; label = @3
16 ------------------------------------------------------------
0072          local.get 0
0073          local.get 6
0074          i32.const 2
0075          i32.shl
0076          local.tee 2
0077          i32.add
0078          i32.load offset=248
0079          local.set 3
0080          local.get 2
0081          local.get 4
0082          i32.add
0083          i32.const 0
0084          i32.store offset=36
0085          block  ;; label = @4
17 ------------------------------------------------------------
0086            local.get 0
0087            i32.load offset=324
0088            br_if 0 (;@4;)
18 ------------------------------------------------------------
0089            local.get 3
0090            i32.load offset=20
0091            local.set 2
0092            local.get 1
0093            i32.eqz
0094            if  ;; label = @5
19 ------------------------------------------------------------
0095              local.get 0
0096              local.get 7
0097              local.get 2
0098              local.get 4
0099              local.get 2
0100              i32.const 2
0101              i32.shl
0102              i32.add
0103              i32.const 76
0104              i32.add
0105              call 54
0106              br 1 (;@4;)
20 ------------------------------------------------------------
0107            end
21 ------------------------------------------------------------
0108            local.get 2
0109            i32.const 4
0110            i32.ge_u
0111            if  ;; label = @5
22 ------------------------------------------------------------
0112              local.get 0
0113              i32.load
0114              local.tee 3
0115              local.get 2
0116              i32.store offset=24
0117              local.get 3
0118              i32.const 50
0119              i32.store offset=20
0120              local.get 0
0121              local.get 0
0122              i32.load
0123              i32.load
0124              call_indirect (type 0)
0125            end
23 ------------------------------------------------------------
0126            local.get 4
0127            local.get 2
0128            i32.const 2
0129            i32.shl
0130            i32.add
0131            local.tee 3
0132            i32.const 92
0133            i32.add
0134            i32.load
0135            local.tee 2
0136            i32.eqz
0137            if  ;; label = @5
24 ------------------------------------------------------------
0138              local.get 3
0139              local.get 0
0140              i32.const 1
0141              i32.const 1028
0142              local.get 0
0143              i32.load offset=4
0144              i32.load
0145              call_indirect (type 3)
0146              local.tee 2
0147              i32.store offset=92
0148            end
25 ------------------------------------------------------------
0149            local.get 2
0150            i32.const 0
0151            i32.const 1028
0152            call 27
0153            drop
0154            local.get 0
0155            i32.load offset=332
0156            i32.load offset=44
0157            i32.eqz
0158            br_if 0 (;@4;)
26 ------------------------------------------------------------
0159            local.get 3
0160            i32.load offset=92
0161            local.set 2
0162            i32.const 0
0163            local.set 5
0164            loop  ;; label = @5
27 ------------------------------------------------------------
0165              local.get 2
0166              local.get 5
0167              i32.const 6
0168              i32.shl
0169              local.tee 3
0170              i32.add
0171              i32.const 1
0172              i32.store
0173              local.get 2
0174              local.get 3
0175              i32.const 4
0176              i32.or
0177              i32.add
0178              i32.const 1
0179              i32.store
0180              local.get 2
0181              local.get 3
0182              i32.const 8
0183              i32.or
0184              i32.add
0185              i32.const 1
0186              i32.store
0187              local.get 2
0188              local.get 3
0189              i32.const 12
0190              i32.or
0191              i32.add
0192              i32.const 1
0193              i32.store
0194              local.get 2
0195              local.get 3
0196              i32.const 16
0197              i32.or
0198              i32.add
0199              i32.const 1
0200              i32.store
0201              local.get 2
0202              local.get 3
0203              i32.const 20
0204              i32.or
0205              i32.add
0206              i32.const 1
0207              i32.store
0208              local.get 2
0209              local.get 3
0210              i32.const 24
0211              i32.or
0212              i32.add
0213              i32.const 1
0214              i32.store
0215              local.get 2
0216              local.get 3
0217              i32.const 28
0218              i32.or
0219              i32.add
0220              i32.const 1
0221              i32.store
0222              local.get 2
0223              local.get 3
0224              i32.const 32
0225              i32.or
0226              i32.add
0227              i32.const 1
0228              i32.store
0229              local.get 2
0230              local.get 3
0231              i32.const 36
0232              i32.or
0233              i32.add
0234              i32.const 1
0235              i32.store
0236              local.get 2
0237              local.get 3
0238              i32.const 40
0239              i32.or
0240              i32.add
0241              i32.const 1
0242              i32.store
0243              local.get 2
0244              local.get 3
0245              i32.const 44
0246              i32.or
0247              i32.add
0248              i32.const 1
0249              i32.store
0250              local.get 5
0251              i32.const 1
0252              i32.add
0253              local.tee 5
0254              i32.const 16
0255              i32.ne
0256              br_if 0 (;@5;)
28 ------------------------------------------------------------
0257            end
29 ------------------------------------------------------------
0258          end
30 ------------------------------------------------------------
0259          local.get 6
0260          i32.const 1
0261          i32.add
0262          local.tee 6
0263          local.get 0
0264          i32.load offset=244
0265          i32.lt_s
0266          br_if 0 (;@3;)
31 ------------------------------------------------------------
0267          br 2 (;@1;)
32 ------------------------------------------------------------
0268          unreachable
33 ------------------------------------------------------------
0269        end
34 ------------------------------------------------------------
0270        unreachable
35 ------------------------------------------------------------
0271      end
36 ------------------------------------------------------------
0272      loop  ;; label = @2
37 ------------------------------------------------------------
0273        local.get 0
0274        local.get 6
0275        i32.const 2
0276        i32.shl
0277        local.tee 2
0278        i32.add
0279        i32.load offset=248
0280        local.set 3
0281        local.get 2
0282        local.get 4
0283        i32.add
0284        i32.const 0
0285        i32.store offset=36
0286        local.get 4
0287        local.get 3
0288        i32.load offset=24
0289        local.tee 2
0290        i32.store offset=52
0291        block  ;; label = @3
38 ------------------------------------------------------------
0292          local.get 1
0293          if  ;; label = @4
39 ------------------------------------------------------------
0294            local.get 2
0295            i32.const 4
0296            i32.ge_u
0297            if  ;; label = @5
40 ------------------------------------------------------------
0298              local.get 0
0299              i32.load
0300              local.tee 3
0301              local.get 2
0302              i32.store offset=24
0303              local.get 3
0304              i32.const 50
0305              i32.store offset=20
0306              local.get 0
0307              local.get 0
0308              i32.load
0309              i32.load
0310              call_indirect (type 0)
0311            end
41 ------------------------------------------------------------
0312            local.get 4
0313            local.get 2
0314            i32.const 2
0315            i32.shl
0316            i32.add
0317            local.tee 3
0318            i32.const 92
0319            i32.add
0320            i32.load
0321            local.tee 2
0322            i32.eqz
0323            if  ;; label = @5
42 ------------------------------------------------------------
0324              local.get 3
0325              local.get 0
0326              i32.const 1
0327              i32.const 1028
0328              local.get 0
0329              i32.load offset=4
0330              i32.load
0331              call_indirect (type 3)
0332              local.tee 2
0333              i32.store offset=92
0334            end
43 ------------------------------------------------------------
0335            local.get 2
0336            i32.const 0
0337            i32.const 1028
0338            call 27
0339            drop
0340            local.get 0
0341            i32.load offset=332
0342            i32.load offset=44
0343            i32.eqz
0344            br_if 1 (;@3;)
44 ------------------------------------------------------------
0345            local.get 3
0346            i32.load offset=92
0347            local.set 2
0348            i32.const 0
0349            local.set 5
0350            loop  ;; label = @5
45 ------------------------------------------------------------
0351              local.get 2
0352              local.get 5
0353              i32.const 6
0354              i32.shl
0355              local.tee 3
0356              i32.add
0357              i32.const 1
0358              i32.store
0359              local.get 2
0360              local.get 3
0361              i32.const 4
0362              i32.or
0363              i32.add
0364              i32.const 1
0365              i32.store
0366              local.get 2
0367              local.get 3
0368              i32.const 8
0369              i32.or
0370              i32.add
0371              i32.const 1
0372              i32.store
0373              local.get 2
0374              local.get 3
0375              i32.const 12
0376              i32.or
0377              i32.add
0378              i32.const 1
0379              i32.store
0380              local.get 2
0381              local.get 3
0382              i32.const 16
0383              i32.or
0384              i32.add
0385              i32.const 1
0386              i32.store
0387              local.get 2
0388              local.get 3
0389              i32.const 20
0390              i32.or
0391              i32.add
0392              i32.const 1
0393              i32.store
0394              local.get 2
0395              local.get 3
0396              i32.const 24
0397              i32.or
0398              i32.add
0399              i32.const 1
0400              i32.store
0401              local.get 2
0402              local.get 3
0403              i32.const 28
0404              i32.or
0405              i32.add
0406              i32.const 1
0407              i32.store
0408              local.get 2
0409              local.get 3
0410              i32.const 32
0411              i32.or
0412              i32.add
0413              i32.const 1
0414              i32.store
0415              local.get 2
0416              local.get 3
0417              i32.const 36
0418              i32.or
0419              i32.add
0420              i32.const 1
0421              i32.store
0422              local.get 2
0423              local.get 3
0424              i32.const 40
0425              i32.or
0426              i32.add
0427              i32.const 1
0428              i32.store
0429              local.get 2
0430              local.get 3
0431              i32.const 44
0432              i32.or
0433              i32.add
0434              i32.const 1
0435              i32.store
0436              local.get 5
0437              i32.const 1
0438              i32.add
0439              local.tee 5
0440              i32.const 16
0441              i32.ne
0442              br_if 0 (;@5;)
46 ------------------------------------------------------------
0443            end
47 ------------------------------------------------------------
0444            br 1 (;@3;)
48 ------------------------------------------------------------
0445          end
49 ------------------------------------------------------------
0446          local.get 0
0447          local.get 7
0448          local.get 2
0449          local.get 4
0450          local.get 2
0451          i32.const 2
0452          i32.shl
0453          i32.add
0454          i32.const 76
0455          i32.add
0456          call 54
0457        end
50 ------------------------------------------------------------
0458        local.get 6
0459        i32.const 1
0460        i32.add
0461        local.tee 6
0462        local.get 0
0463        i32.load offset=244
0464        i32.lt_s
0465        br_if 0 (;@2;)
51 ------------------------------------------------------------
0466      end
52 ------------------------------------------------------------
0467    end
53 ------------------------------------------------------------
0468    local.get 4
0469    i64.const 0
0470    i64.store offset=56 align=4
0471    local.get 4
0472    i64.const 0
0473    i64.store offset=24 align=4
0474    local.get 0
0475    i32.load offset=200
0476    local.set 0
0477    local.get 4
0478    i32.const 0
0479    i32.store offset=72
0480    local.get 4
0481    local.get 0
0482    i32.store offset=68)
