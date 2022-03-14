  (func (;347;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load offset=364
0002    local.set 2
0003    local.get 1
0004    if  ;; label = @1
1 ------------------------------------------------------------
0005      local.get 0
0006      i32.load
0007      local.tee 1
0008      i32.const 48
0009      i32.store offset=20
0010      local.get 0
0011      local.get 1
0012      i32.load
0013      call_indirect (type 0)
0014    end
2 ------------------------------------------------------------
0015    block (result i32)  ;; label = @1
3 ------------------------------------------------------------
0016      block  ;; label = @2
4 ------------------------------------------------------------
0017        local.get 0
0018        i32.load offset=332
0019        i32.load offset=44
0020        br_if 0 (;@2;)
5 ------------------------------------------------------------
0021        local.get 0
0022        i32.load offset=228
0023        i32.eqz
0024        br_if 0 (;@2;)
6 ------------------------------------------------------------
0025        local.get 0
0026        i32.load offset=316
0027        local.set 1
0028        local.get 0
0029        i32.load offset=324
0030        i32.eqz
0031        if  ;; label = @3
7 ------------------------------------------------------------
0032          local.get 1
0033          i32.eqz
0034          if  ;; label = @4
8 ------------------------------------------------------------
0035            local.get 2
0036            i32.const 93
0037            i32.store offset=4
0038            i32.const 0
0039            br 3 (;@1;)
9 ------------------------------------------------------------
0040          end
10 ------------------------------------------------------------
0041          local.get 2
0042          i32.const 94
0043          i32.store offset=4
0044          i32.const 0
0045          br 2 (;@1;)
11 ------------------------------------------------------------
0046        end
12 ------------------------------------------------------------
0047        local.get 1
0048        i32.eqz
0049        if  ;; label = @3
13 ------------------------------------------------------------
0050          local.get 2
0051          i32.const 95
0052          i32.store offset=4
0053          i32.const 0
0054          br 2 (;@1;)
14 ------------------------------------------------------------
0055        end
15 ------------------------------------------------------------
0056        local.get 2
0057        i32.const 96
0058        i32.store offset=4
0059        i32.const 0
0060        br 1 (;@1;)
16 ------------------------------------------------------------
0061      end
17 ------------------------------------------------------------
0062      local.get 2
0063      i32.const 97
0064      i32.store offset=4
0065      i32.const 1
0066    end
18 ------------------------------------------------------------
0067    local.set 1
0068    block  ;; label = @1
19 ------------------------------------------------------------
0069      local.get 0
0070      i32.load offset=244
0071      i32.const 1
0072      i32.lt_s
0073      br_if 0 (;@1;)
20 ------------------------------------------------------------
0074      local.get 1
0075      if  ;; label = @2
21 ------------------------------------------------------------
0076        loop  ;; label = @3
22 ------------------------------------------------------------
0077          local.get 0
0078          local.get 5
0079          i32.const 2
0080          i32.shl
0081          local.tee 3
0082          i32.add
0083          i32.load offset=248
0084          local.tee 6
0085          i32.load offset=20
0086          local.tee 1
0087          i32.const 16
0088          i32.ge_u
0089          if  ;; label = @4
23 ------------------------------------------------------------
0090            local.get 0
0091            i32.load
0092            local.tee 4
0093            local.get 1
0094            i32.store offset=24
0095            local.get 4
0096            i32.const 125
0097            i32.store offset=20
0098            local.get 0
0099            local.get 0
0100            i32.load
0101            i32.load
0102            call_indirect (type 0)
0103          end
24 ------------------------------------------------------------
0104          local.get 2
0105          local.get 1
0106          i32.const 2
0107          i32.shl
0108          i32.add
0109          local.tee 4
0110          i32.const 76
0111          i32.add
0112          i32.load
0113          local.tee 1
0114          i32.eqz
0115          if  ;; label = @4
25 ------------------------------------------------------------
0116            local.get 4
0117            local.get 0
0118            i32.const 1
0119            i32.const 64
0120            local.get 0
0121            i32.load offset=4
0122            i32.load
0123            call_indirect (type 3)
0124            local.tee 1
0125            i32.store offset=76
0126          end
26 ------------------------------------------------------------
0127          local.get 1
0128          i64.const 0
0129          i64.store align=1
0130          local.get 1
0131          i64.const 0
0132          i64.store offset=56 align=1
0133          local.get 1
0134          i64.const 0
0135          i64.store offset=48 align=1
0136          local.get 1
0137          i64.const 0
0138          i64.store offset=40 align=1
0139          local.get 1
0140          i64.const 0
0141          i64.store offset=32 align=1
0142          local.get 1
0143          i64.const 0
0144          i64.store offset=24 align=1
0145          local.get 1
0146          i64.const 0
0147          i64.store offset=16 align=1
0148          local.get 1
0149          i64.const 0
0150          i64.store offset=8 align=1
0151          local.get 2
0152          local.get 3
0153          i32.add
0154          local.tee 1
0155          i32.const 0
0156          i32.store offset=52
0157          local.get 1
0158          i32.const 0
0159          i32.store offset=36
0160          local.get 6
0161          i32.load offset=24
0162          local.tee 1
0163          i32.const 16
0164          i32.ge_u
0165          if  ;; label = @4
27 ------------------------------------------------------------
0166            local.get 0
0167            i32.load
0168            local.tee 3
0169            local.get 1
0170            i32.store offset=24
0171            local.get 3
0172            i32.const 125
0173            i32.store offset=20
0174            local.get 0
0175            local.get 0
0176            i32.load
0177            i32.load
0178            call_indirect (type 0)
0179          end
28 ------------------------------------------------------------
0180          local.get 2
0181          local.get 1
0182          i32.const 2
0183          i32.shl
0184          i32.add
0185          local.tee 3
0186          i32.const 140
0187          i32.add
0188          i32.load
0189          local.tee 1
0190          i32.eqz
0191          if  ;; label = @4
29 ------------------------------------------------------------
0192            local.get 3
0193            local.get 0
0194            i32.const 1
0195            i32.const 256
0196            local.get 0
0197            i32.load offset=4
0198            i32.load
0199            call_indirect (type 3)
0200            local.tee 1
0201            i32.store offset=140
0202          end
30 ------------------------------------------------------------
0203          local.get 1
0204          i32.const 0
0205          i32.const 256
0206          call 27
0207          drop
0208          local.get 5
0209          i32.const 1
0210          i32.add
0211          local.tee 5
0212          local.get 0
0213          i32.load offset=244
0214          i32.lt_s
0215          br_if 0 (;@3;)
31 ------------------------------------------------------------
0216          br 2 (;@1;)
32 ------------------------------------------------------------
0217          unreachable
33 ------------------------------------------------------------
0218        end
34 ------------------------------------------------------------
0219        unreachable
35 ------------------------------------------------------------
0220      end
36 ------------------------------------------------------------
0221      loop  ;; label = @2
37 ------------------------------------------------------------
0222        local.get 0
0223        local.get 5
0224        i32.const 2
0225        i32.shl
0226        local.tee 6
0227        i32.add
0228        i32.load offset=248
0229        local.set 3
0230        block  ;; label = @3
38 ------------------------------------------------------------
0231          local.get 0
0232          i32.load offset=316
0233          br_if 0 (;@3;)
39 ------------------------------------------------------------
0234          local.get 0
0235          i32.load offset=324
0236          br_if 0 (;@3;)
40 ------------------------------------------------------------
0237          local.get 3
0238          i32.load offset=20
0239          local.tee 1
0240          i32.const 16
0241          i32.ge_u
0242          if  ;; label = @4
41 ------------------------------------------------------------
0243            local.get 0
0244            i32.load
0245            local.tee 4
0246            local.get 1
0247            i32.store offset=24
0248            local.get 4
0249            i32.const 125
0250            i32.store offset=20
0251            local.get 0
0252            local.get 0
0253            i32.load
0254            i32.load
0255            call_indirect (type 0)
0256          end
42 ------------------------------------------------------------
0257          local.get 2
0258          local.get 1
0259          i32.const 2
0260          i32.shl
0261          i32.add
0262          local.tee 4
0263          i32.const 76
0264          i32.add
0265          i32.load
0266          local.tee 1
0267          i32.eqz
0268          if  ;; label = @4
43 ------------------------------------------------------------
0269            local.get 4
0270            local.get 0
0271            i32.const 1
0272            i32.const 64
0273            local.get 0
0274            i32.load offset=4
0275            i32.load
0276            call_indirect (type 3)
0277            local.tee 1
0278            i32.store offset=76
0279          end
44 ------------------------------------------------------------
0280          local.get 1
0281          i64.const 0
0282          i64.store align=1
0283          local.get 1
0284          i64.const 0
0285          i64.store offset=56 align=1
0286          local.get 1
0287          i64.const 0
0288          i64.store offset=48 align=1
0289          local.get 1
0290          i64.const 0
0291          i64.store offset=40 align=1
0292          local.get 1
0293          i64.const 0
0294          i64.store offset=32 align=1
0295          local.get 1
0296          i64.const 0
0297          i64.store offset=24 align=1
0298          local.get 1
0299          i64.const 0
0300          i64.store offset=16 align=1
0301          local.get 1
0302          i64.const 0
0303          i64.store offset=8 align=1
0304          local.get 2
0305          local.get 6
0306          i32.add
0307          local.tee 1
0308          i32.const 0
0309          i32.store offset=52
0310          local.get 1
0311          i32.const 0
0312          i32.store offset=36
0313        end
45 ------------------------------------------------------------
0314        local.get 0
0315        i32.load offset=320
0316        if  ;; label = @3
46 ------------------------------------------------------------
0317          local.get 3
0318          i32.load offset=24
0319          local.tee 1
0320          i32.const 16
0321          i32.ge_u
0322          if  ;; label = @4
47 ------------------------------------------------------------
0323            local.get 0
0324            i32.load
0325            local.tee 3
0326            local.get 1
0327            i32.store offset=24
0328            local.get 3
0329            i32.const 125
0330            i32.store offset=20
0331            local.get 0
0332            local.get 0
0333            i32.load
0334            i32.load
0335            call_indirect (type 0)
0336          end
48 ------------------------------------------------------------
0337          local.get 2
0338          local.get 1
0339          i32.const 2
0340          i32.shl
0341          i32.add
0342          local.tee 3
0343          i32.const 140
0344          i32.add
0345          i32.load
0346          local.tee 1
0347          i32.eqz
0348          if  ;; label = @4
49 ------------------------------------------------------------
0349            local.get 3
0350            local.get 0
0351            i32.const 1
0352            i32.const 256
0353            local.get 0
0354            i32.load offset=4
0355            i32.load
0356            call_indirect (type 3)
0357            local.tee 1
0358            i32.store offset=140
0359          end
50 ------------------------------------------------------------
0360          local.get 1
0361          i32.const 0
0362          i32.const 256
0363          call 27
0364          drop
0365        end
51 ------------------------------------------------------------
0366        local.get 5
0367        i32.const 1
0368        i32.add
0369        local.tee 5
0370        local.get 0
0371        i32.load offset=244
0372        i32.lt_s
0373        br_if 0 (;@2;)
52 ------------------------------------------------------------
0374      end
53 ------------------------------------------------------------
0375    end
54 ------------------------------------------------------------
0376    local.get 2
0377    i64.const -4294967285
0378    i64.store offset=28 align=4
0379    local.get 2
0380    i64.const 0
0381    i64.store offset=20 align=4
0382    local.get 2
0383    i64.const 281474976710656
0384    i64.store offset=12 align=4
0385    local.get 0
0386    i32.load offset=200
0387    local.set 0
0388    local.get 2
0389    i32.const 0
0390    i32.store offset=72
0391    local.get 2
0392    local.get 0
0393    i32.store offset=68)
