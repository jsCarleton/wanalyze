  (func (;208;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 304
0002    i32.sub
0003    local.tee 2
0004    global.set 0
0005    local.get 0
0006    i32.load offset=364
0007    local.set 5
0008    local.get 2
0009    local.get 0
0010    i32.load offset=24
0011    local.tee 3
0012    i32.load
0013    i32.store offset=8
0014    local.get 2
0015    local.get 3
0016    i32.load offset=4
0017    local.tee 3
0018    i32.store offset=12
0019    local.get 2
0020    local.get 5
0021    i64.load offset=20 align=4
0022    i64.store offset=24
0023    local.get 2
0024    local.get 5
0025    i64.load offset=28 align=4
0026    i64.store offset=32
0027    local.get 2
0028    local.get 5
0029    i64.load offset=12 align=4
0030    i64.store offset=16
0031    local.get 2
0032    local.get 0
0033    i32.store offset=40
0034    block  ;; label = @1
1 ------------------------------------------------------------
0035      block  ;; label = @2
2 ------------------------------------------------------------
0036        local.get 0
0037        i32.load offset=200
0038        i32.eqz
0039        br_if 0 (;@2;)
3 ------------------------------------------------------------
0040        local.get 5
0041        i32.load offset=36
0042        br_if 0 (;@2;)
4 ------------------------------------------------------------
0043        local.get 5
0044        i32.load offset=40
0045        local.set 7
0046        local.get 2
0047        i32.const 8
0048        i32.add
0049        call 113
0050        i32.eqz
0051        br_if 1 (;@1;)
5 ------------------------------------------------------------
0052        local.get 2
0053        local.get 2
0054        i32.load offset=8
0055        local.tee 3
0056        i32.const 1
0057        i32.add
0058        i32.store offset=8
0059        local.get 3
0060        i32.const 255
0061        i32.store8
0062        local.get 2
0063        local.get 2
0064        i32.load offset=12
0065        i32.const -1
0066        i32.add
0067        local.tee 3
0068        i32.store offset=12
0069        block  ;; label = @3
6 ------------------------------------------------------------
0070          local.get 3
0071          if  ;; label = @4
7 ------------------------------------------------------------
0072            local.get 2
0073            i32.load offset=8
0074            local.set 3
0075            br 1 (;@3;)
8 ------------------------------------------------------------
0076          end
9 ------------------------------------------------------------
0077          local.get 2
0078          i32.load offset=40
0079          local.tee 3
0080          local.get 3
0081          i32.load offset=24
0082          local.tee 6
0083          i32.load offset=12
0084          call_indirect (type 1)
0085          i32.eqz
0086          br_if 2 (;@1;)
10 ------------------------------------------------------------
0087          local.get 2
0088          local.get 6
0089          i32.load
0090          local.tee 3
0091          i32.store offset=8
0092          local.get 2
0093          local.get 6
0094          i32.load offset=4
0095          i32.store offset=12
0096        end
11 ------------------------------------------------------------
0097        local.get 2
0098        local.get 3
0099        i32.const 1
0100        i32.add
0101        i32.store offset=8
0102        local.get 3
0103        local.get 7
0104        i32.const -48
0105        i32.add
0106        i32.store8
0107        local.get 2
0108        local.get 2
0109        i32.load offset=12
0110        i32.const -1
0111        i32.add
0112        local.tee 3
0113        i32.store offset=12
0114        local.get 2
0115        i32.load offset=40
0116        local.set 6
0117        local.get 3
0118        i32.eqz
0119        if  ;; label = @3
12 ------------------------------------------------------------
0120          local.get 6
0121          local.get 6
0122          i32.load offset=24
0123          local.tee 3
0124          i32.load offset=12
0125          call_indirect (type 1)
0126          i32.eqz
0127          br_if 2 (;@1;)
13 ------------------------------------------------------------
0128          local.get 2
0129          local.get 3
0130          i32.load
0131          i32.store offset=8
0132          local.get 2
0133          local.get 3
0134          i32.load offset=4
0135          local.tee 3
0136          i32.store offset=12
0137        end
14 ------------------------------------------------------------
0138        local.get 6
0139        i32.load offset=244
0140        i32.const 1
0141        i32.lt_s
0142        br_if 0 (;@2;)
15 ------------------------------------------------------------
0143        loop  ;; label = @3
16 ------------------------------------------------------------
0144          local.get 4
0145          i32.const 2
0146          i32.shl
0147          local.get 2
0148          i32.add
0149          i32.const 0
0150          i32.store offset=24
0151          local.get 4
0152          i32.const 1
0153          i32.add
0154          local.tee 4
0155          local.get 6
0156          i32.load offset=244
0157          i32.lt_s
0158          br_if 0 (;@3;)
17 ------------------------------------------------------------
0159        end
18 ------------------------------------------------------------
0160      end
19 ------------------------------------------------------------
0161      local.get 0
0162      i32.load offset=272
0163      local.set 4
0164      block  ;; label = @2
20 ------------------------------------------------------------
0165        block  ;; label = @3
21 ------------------------------------------------------------
0166          local.get 5
0167          i32.load offset=108
0168          if  ;; label = @4
22 ------------------------------------------------------------
0169            local.get 4
0170            i32.const 1
0171            i32.lt_s
0172            br_if 1 (;@3;)
23 ------------------------------------------------------------
0173            i32.const 0
0174            local.set 7
0175            loop  ;; label = @5
24 ------------------------------------------------------------
0176              local.get 1
0177              local.get 7
0178              i32.const 2
0179              i32.shl
0180              local.tee 4
0181              i32.add
0182              local.tee 10
0183              i32.load
0184              drop
0185              local.get 2
0186              local.get 0
0187              local.get 4
0188              i32.add
0189              i32.load offset=276
0190              i32.const 2
0191              i32.shl
0192              local.tee 4
0193              i32.add
0194              local.tee 11
0195              i32.load offset=24
0196              drop
0197              local.get 5
0198              local.get 0
0199              local.get 4
0200              i32.add
0201              i32.load offset=248
0202              local.tee 4
0203              i32.load offset=24
0204              i32.const 2
0205              i32.shl
0206              i32.add
0207              i32.load offset=60
0208              drop
0209              local.get 5
0210              local.get 4
0211              i32.load offset=20
0212              i32.const 2
0213              i32.shl
0214              i32.add
0215              i32.load offset=44
0216              drop
0217              block  ;; label = @6
25 ------------------------------------------------------------
0218                local.get 3
0219                i32.const 255
0220                i32.le_u
0221                if  ;; label = @7
26 ------------------------------------------------------------
0222                  i32.const 0
0223                  local.get 2
0224                  i32.const 48
0225                  i32.add
0226                  i32.sub
0227                  local.tee 3
0228                  i32.eqz
0229                  br_if 1 (;@6;)
27 ------------------------------------------------------------
0230                  local.get 2
0231                  i32.load offset=8
0232                  local.set 8
0233                  local.get 2
0234                  i32.load offset=12
0235                  local.set 4
0236                  local.get 2
0237                  i32.const 48
0238                  i32.add
0239                  local.set 9
0240                  loop  ;; label = @8
28 ------------------------------------------------------------
0241                    local.get 8
0242                    local.get 9
0243                    local.get 3
0244                    local.get 4
0245                    local.get 3
0246                    local.get 4
0247                    i32.lt_u
0248                    select
0249                    local.tee 6
0250                    call 34
0251                    drop
0252                    local.get 2
0253                    local.get 2
0254                    i32.load offset=8
0255                    local.get 6
0256                    i32.add
0257                    local.tee 8
0258                    i32.store offset=8
0259                    local.get 2
0260                    local.get 2
0261                    i32.load offset=12
0262                    local.get 6
0263                    i32.sub
0264                    local.tee 4
0265                    i32.store offset=12
0266                    local.get 4
0267                    i32.eqz
0268                    if  ;; label = @9
29 ------------------------------------------------------------
0269                      local.get 2
0270                      i32.load offset=40
0271                      local.tee 4
0272                      local.get 4
0273                      i32.load offset=24
0274                      local.tee 4
0275                      i32.load offset=12
0276                      call_indirect (type 1)
0277                      i32.eqz
0278                      br_if 7 (;@2;)
30 ------------------------------------------------------------
0279                      local.get 2
0280                      local.get 4
0281                      i32.load
0282                      local.tee 8
0283                      i32.store offset=8
0284                      local.get 2
0285                      local.get 4
0286                      i32.load offset=4
0287                      local.tee 4
0288                      i32.store offset=12
0289                    end
31 ------------------------------------------------------------
0290                    local.get 6
0291                    local.get 9
0292                    i32.add
0293                    local.set 9
0294                    local.get 3
0295                    local.get 6
0296                    i32.sub
0297                    local.tee 3
0298                    br_if 0 (;@8;)
32 ------------------------------------------------------------
0299                  end
33 ------------------------------------------------------------
0300                  br 1 (;@6;)
34 ------------------------------------------------------------
0301                end
35 ------------------------------------------------------------
0302                local.get 2
0303                i32.load offset=8
0304                drop
0305                local.get 2
0306                i32.load offset=8
0307                local.set 3
0308                local.get 2
0309                i32.const 0
0310                i32.store offset=8
0311                local.get 2
0312                local.get 3
0313                local.get 2
0314                i32.load offset=12
0315                i32.add
0316                i32.store offset=12
0317              end
36 ------------------------------------------------------------
0318              local.get 11
0319              local.get 10
0320              i32.load
0321              i32.load16_s
0322              i32.store offset=24
0323              local.get 7
0324              i32.const 1
0325              i32.add
0326              local.tee 7
0327              local.get 0
0328              i32.load offset=272
0329              i32.ge_s
0330              br_if 2 (;@3;)
37 ------------------------------------------------------------
0331              local.get 2
0332              i32.load offset=12
0333              local.set 3
0334              br 0 (;@5;)
38 ------------------------------------------------------------
0335              unreachable
39 ------------------------------------------------------------
0336            end
40 ------------------------------------------------------------
0337            unreachable
41 ------------------------------------------------------------
0338          end
42 ------------------------------------------------------------
0339          i32.const 0
0340          local.set 3
0341          local.get 4
0342          i32.const 0
0343          i32.le_s
0344          br_if 0 (;@3;)
43 ------------------------------------------------------------
0345          loop  ;; label = @4
44 ------------------------------------------------------------
0346            local.get 2
0347            i32.const 8
0348            i32.add
0349            local.get 1
0350            local.get 3
0351            i32.const 2
0352            i32.shl
0353            local.tee 4
0354            i32.add
0355            local.tee 6
0356            i32.load
0357            local.get 2
0358            local.get 0
0359            local.get 4
0360            i32.add
0361            i32.load offset=276
0362            i32.const 2
0363            i32.shl
0364            local.tee 4
0365            i32.add
0366            local.tee 7
0367            i32.load offset=24
0368            local.get 5
0369            local.get 0
0370            local.get 4
0371            i32.add
0372            i32.load offset=248
0373            local.tee 4
0374            i32.load offset=20
0375            i32.const 2
0376            i32.shl
0377            i32.add
0378            i32.load offset=44
0379            local.get 5
0380            local.get 4
0381            i32.load offset=24
0382            i32.const 2
0383            i32.shl
0384            i32.add
0385            i32.load offset=60
0386            call 207
0387            i32.eqz
0388            br_if 2 (;@2;)
45 ------------------------------------------------------------
0389            local.get 7
0390            local.get 6
0391            i32.load
0392            i32.load16_s
0393            i32.store offset=24
0394            local.get 3
0395            i32.const 1
0396            i32.add
0397            local.tee 3
0398            local.get 0
0399            i32.load offset=272
0400            i32.lt_s
0401            br_if 0 (;@4;)
46 ------------------------------------------------------------
0402          end
47 ------------------------------------------------------------
0403        end
48 ------------------------------------------------------------
0404        local.get 0
0405        i32.load offset=24
0406        local.tee 1
0407        local.get 2
0408        i32.load offset=8
0409        i32.store
0410        local.get 1
0411        local.get 2
0412        i32.load offset=12
0413        i32.store offset=4
0414        local.get 5
0415        local.get 2
0416        i64.load offset=32 align=4
0417        i64.store offset=28 align=4
0418        local.get 5
0419        local.get 2
0420        i64.load offset=24 align=4
0421        i64.store offset=20 align=4
0422        local.get 5
0423        local.get 2
0424        i64.load offset=16 align=4
0425        i64.store offset=12 align=4
0426        i32.const 1
0427        local.set 4
0428        local.get 0
0429        i32.load offset=200
0430        local.tee 0
0431        i32.eqz
0432        br_if 1 (;@1;)
49 ------------------------------------------------------------
0433        local.get 5
0434        local.get 5
0435        i32.load offset=36
0436        local.tee 1
0437        if (result i32)  ;; label = @3
50 ------------------------------------------------------------
0438          local.get 1
0439        else
51 ------------------------------------------------------------
0440          local.get 5
0441          local.get 0
0442          i32.store offset=36
0443          local.get 5
0444          local.get 5
0445          i32.load offset=40
0446          i32.const 1
0447          i32.add
0448          i32.const 7
0449          i32.and
0450          i32.store offset=40
0451          local.get 0
0452        end
52 ------------------------------------------------------------
0453        i32.const -1
0454        i32.add
0455        i32.store offset=36
0456        br 1 (;@1;)
53 ------------------------------------------------------------
0457      end
54 ------------------------------------------------------------
0458      i32.const 0
0459      local.set 4
0460    end
55 ------------------------------------------------------------
0461    local.get 2
0462    i32.const 304
0463    i32.add
0464    global.set 0
0465    local.get 4)
