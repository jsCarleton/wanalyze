  (func (;355;) (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load offset=4
0002    local.tee 9
0003    i32.load offset=68
0004    local.tee 4
0005    if  ;; label = @1
1 ------------------------------------------------------------
0006      loop  ;; label = @2
2 ------------------------------------------------------------
0007        local.get 4
0008        i32.load
0009        i32.eqz
0010        if  ;; label = @3
3 ------------------------------------------------------------
0011          local.get 4
0012          i32.load offset=8
0013          local.tee 5
0014          local.get 4
0015          i32.load offset=12
0016          i32.mul
0017          local.set 2
0018          local.get 5
0019          local.get 4
0020          i32.load offset=4
0021          i32.mul
0022          local.tee 5
0023          local.get 3
0024          i32.const -1
0025          i32.xor
0026          i32.gt_u
0027          if  ;; label = @4
4 ------------------------------------------------------------
0028            local.get 0
0029            i32.load
0030            i64.const 42949673014
0031            i64.store offset=20 align=4
0032            local.get 0
0033            local.get 0
0034            i32.load
0035            i32.load
0036            call_indirect (type 0)
0037          end
5 ------------------------------------------------------------
0038          local.get 3
0039          local.get 5
0040          i32.add
0041          local.set 3
0042          local.get 1
0043          local.get 2
0044          i32.add
0045          local.set 1
0046        end
6 ------------------------------------------------------------
0047        local.get 4
0048        i32.load offset=44
0049        local.tee 4
0050        br_if 0 (;@2;)
7 ------------------------------------------------------------
0051      end
8 ------------------------------------------------------------
0052    end
9 ------------------------------------------------------------
0053    local.get 9
0054    i32.load offset=72
0055    local.tee 4
0056    if  ;; label = @1
10 ------------------------------------------------------------
0057      loop  ;; label = @2
11 ------------------------------------------------------------
0058        local.get 4
0059        i32.load
0060        i32.eqz
0061        if  ;; label = @3
12 ------------------------------------------------------------
0062          local.get 4
0063          i32.load offset=8
0064          local.tee 5
0065          local.get 4
0066          i32.load offset=12
0067          i32.mul
0068          i32.const 7
0069          i32.shl
0070          local.set 2
0071          local.get 4
0072          i32.load offset=4
0073          local.get 5
0074          i32.mul
0075          i32.const 7
0076          i32.shl
0077          local.tee 5
0078          local.get 3
0079          i32.const -1
0080          i32.xor
0081          i32.gt_u
0082          if  ;; label = @4
13 ------------------------------------------------------------
0083            local.get 0
0084            i32.load
0085            i64.const 47244640310
0086            i64.store offset=20 align=4
0087            local.get 0
0088            local.get 0
0089            i32.load
0090            i32.load
0091            call_indirect (type 0)
0092          end
14 ------------------------------------------------------------
0093          local.get 3
0094          local.get 5
0095          i32.add
0096          local.set 3
0097          local.get 1
0098          local.get 2
0099          i32.add
0100          local.set 1
0101        end
15 ------------------------------------------------------------
0102        local.get 4
0103        i32.load offset=44
0104        local.tee 4
0105        br_if 0 (;@2;)
16 ------------------------------------------------------------
0106      end
17 ------------------------------------------------------------
0107    end
18 ------------------------------------------------------------
0108    block  ;; label = @1
19 ------------------------------------------------------------
0109      local.get 1
0110      i32.eqz
0111      br_if 0 (;@1;)
20 ------------------------------------------------------------
0112      i32.const 1000000000
0113      local.set 10
0114      local.get 0
0115      local.get 3
0116      local.get 9
0117      i32.load offset=76
0118      call 350
0119      local.tee 5
0120      local.get 3
0121      i32.lt_u
0122      if  ;; label = @2
21 ------------------------------------------------------------
0123        i32.const 1
0124        local.get 5
0125        local.get 1
0126        i32.div_u
0127        local.get 1
0128        local.get 5
0129        i32.gt_u
0130        select
0131        local.set 10
0132      end
22 ------------------------------------------------------------
0133      local.get 9
0134      i32.load offset=68
0135      local.tee 2
0136      if  ;; label = @2
23 ------------------------------------------------------------
0137        loop  ;; label = @3
24 ------------------------------------------------------------
0138          local.get 2
0139          i32.load
0140          i32.eqz
0141          if  ;; label = @4
25 ------------------------------------------------------------
0142            block  ;; label = @5
26 ------------------------------------------------------------
0143              local.get 2
0144              i32.load offset=4
0145              local.tee 6
0146              i32.const -1
0147              i32.add
0148              local.get 2
0149              i32.load offset=12
0150              local.tee 1
0151              i32.div_u
0152              i32.const 1
0153              i32.add
0154              local.get 10
0155              i32.le_u
0156              if  ;; label = @6
27 ------------------------------------------------------------
0157                local.get 2
0158                local.get 6
0159                i32.store offset=16
0160                br 1 (;@5;)
28 ------------------------------------------------------------
0161              end
29 ------------------------------------------------------------
0162              local.get 2
0163              local.get 1
0164              local.get 10
0165              i32.mul
0166              i32.store offset=16
0167              local.get 0
0168              local.get 2
0169              i32.load offset=8
0170              local.get 6
0171              i32.mul
0172              call 155
0173              local.get 2
0174              i32.const 1
0175              i32.store offset=40
0176              local.get 2
0177              i32.load offset=16
0178              local.set 6
0179            end
30 ------------------------------------------------------------
0180            local.get 0
0181            i32.load offset=4
0182            local.set 5
0183            local.get 2
0184            i32.load offset=8
0185            local.tee 1
0186            i32.const 1000000001
0187            i32.ge_u
0188            if  ;; label = @5
31 ------------------------------------------------------------
0189              local.get 0
0190              i32.load
0191              i64.const 38654705718
0192              i64.store offset=20 align=4
0193              local.get 0
0194              local.get 0
0195              i32.load
0196              i32.load
0197              call_indirect (type 0)
0198            end
32 ------------------------------------------------------------
0199            i32.const 999999988
0200            local.get 1
0201            i32.const 15
0202            i32.add
0203            i32.const -16
0204            i32.and
0205            local.tee 8
0206            i32.div_u
0207            local.set 1
0208            local.get 8
0209            i32.const 999999989
0210            i32.ge_u
0211            if  ;; label = @5
33 ------------------------------------------------------------
0212              local.get 0
0213              i32.load
0214              local.tee 4
0215              i32.const 70
0216              i32.store offset=20
0217              local.get 0
0218              local.get 4
0219              i32.load
0220              call_indirect (type 0)
0221            end
34 ------------------------------------------------------------
0222            local.get 5
0223            local.get 1
0224            local.get 6
0225            local.get 1
0226            local.get 6
0227            i32.lt_s
0228            select
0229            local.tee 5
0230            i32.store offset=80
0231            i32.const 0
0232            local.set 4
0233            local.get 0
0234            i32.const 1
0235            local.get 6
0236            i32.const 2
0237            i32.shl
0238            call 52
0239            local.set 11
0240            local.get 6
0241            if  ;; label = @5
35 ------------------------------------------------------------
0242              loop  ;; label = @6
36 ------------------------------------------------------------
0243                local.get 0
0244                i32.load offset=4
0245                local.set 3
0246                local.get 5
0247                local.get 6
0248                local.get 4
0249                i32.sub
0250                local.tee 1
0251                local.get 5
0252                local.get 1
0253                i32.lt_u
0254                select
0255                local.tee 5
0256                local.get 8
0257                i32.mul
0258                local.tee 12
0259                i32.const 1000000001
0260                i32.ge_u
0261                if  ;; label = @7
37 ------------------------------------------------------------
0262                  local.get 0
0263                  i32.load
0264                  i64.const 34359738422
0265                  i64.store offset=20 align=4
0266                  local.get 0
0267                  local.get 0
0268                  i32.load
0269                  i32.load
0270                  call_indirect (type 0)
0271                end
38 ------------------------------------------------------------
0272                local.get 12
0273                i32.const 19
0274                i32.add
0275                local.tee 7
0276                i32.const 1000000001
0277                i32.ge_u
0278                if  ;; label = @7
39 ------------------------------------------------------------
0279                  local.get 0
0280                  i32.load
0281                  i64.const 12884901942
0282                  i64.store offset=20 align=4
0283                  local.get 0
0284                  local.get 0
0285                  i32.load
0286                  i32.load
0287                  call_indirect (type 0)
0288                end
40 ------------------------------------------------------------
0289                local.get 7
0290                call 32
0291                local.tee 1
0292                i32.eqz
0293                if  ;; label = @7
41 ------------------------------------------------------------
0294                  local.get 0
0295                  i32.load
0296                  i64.const 17179869238
0297                  i64.store offset=20 align=4
0298                  local.get 0
0299                  local.get 0
0300                  i32.load
0301                  i32.load
0302                  call_indirect (type 0)
0303                end
42 ------------------------------------------------------------
0304                local.get 3
0305                local.get 3
0306                i32.load offset=76
0307                local.get 7
0308                i32.add
0309                i32.store offset=76
0310                local.get 3
0311                i32.const -64
0312                i32.sub
0313                local.tee 3
0314                i32.load
0315                local.set 7
0316                local.get 1
0317                i32.const 0
0318                i32.store offset=8
0319                local.get 1
0320                local.get 12
0321                i32.store offset=4
0322                local.get 1
0323                local.get 7
0324                i32.store
0325                local.get 3
0326                local.get 1
0327                i32.store
0328                local.get 5
0329                if  ;; label = @7
43 ------------------------------------------------------------
0330                  local.get 1
0331                  i32.const 12
0332                  i32.add
0333                  local.tee 1
0334                  local.get 1
0335                  i32.const 7
0336                  i32.and
0337                  local.tee 3
0338                  i32.sub
0339                  i32.const 8
0340                  i32.add
0341                  local.get 1
0342                  local.get 3
0343                  select
0344                  local.set 3
0345                  local.get 5
0346                  local.set 1
0347                  loop  ;; label = @8
44 ------------------------------------------------------------
0348                    local.get 11
0349                    local.get 4
0350                    i32.const 2
0351                    i32.shl
0352                    i32.add
0353                    local.get 3
0354                    i32.store
0355                    local.get 3
0356                    local.get 8
0357                    i32.add
0358                    local.set 3
0359                    local.get 4
0360                    i32.const 1
0361                    i32.add
0362                    local.set 4
0363                    local.get 1
0364                    i32.const -1
0365                    i32.add
0366                    local.tee 1
0367                    br_if 0 (;@8;)
45 ------------------------------------------------------------
0368                  end
46 ------------------------------------------------------------
0369                end
47 ------------------------------------------------------------
0370                local.get 4
0371                local.get 6
0372                i32.lt_u
0373                br_if 0 (;@6;)
48 ------------------------------------------------------------
0374              end
49 ------------------------------------------------------------
0375            end
50 ------------------------------------------------------------
0376            local.get 2
0377            local.get 11
0378            i32.store
0379            local.get 9
0380            i32.load offset=80
0381            local.set 1
0382            local.get 2
0383            i32.const 0
0384            i32.store offset=36
0385            local.get 2
0386            i64.const 0
0387            i64.store offset=24 align=4
0388            local.get 2
0389            local.get 1
0390            i32.store offset=20
0391          end
51 ------------------------------------------------------------
0392          local.get 2
0393          i32.load offset=44
0394          local.tee 2
0395          br_if 0 (;@3;)
52 ------------------------------------------------------------
0396        end
53 ------------------------------------------------------------
0397      end
54 ------------------------------------------------------------
0398      local.get 9
0399      i32.load offset=72
0400      local.tee 2
0401      i32.eqz
0402      br_if 0 (;@1;)
55 ------------------------------------------------------------
0403      loop  ;; label = @2
56 ------------------------------------------------------------
0404        local.get 2
0405        i32.load
0406        i32.eqz
0407        if  ;; label = @3
57 ------------------------------------------------------------
0408          block  ;; label = @4
58 ------------------------------------------------------------
0409            local.get 2
0410            i32.load offset=4
0411            local.tee 6
0412            i32.const -1
0413            i32.add
0414            local.get 2
0415            i32.load offset=12
0416            local.tee 1
0417            i32.div_u
0418            i32.const 1
0419            i32.add
0420            local.get 10
0421            i32.le_u
0422            if  ;; label = @5
59 ------------------------------------------------------------
0423              local.get 2
0424              local.get 6
0425              i32.store offset=16
0426              br 1 (;@4;)
60 ------------------------------------------------------------
0427            end
61 ------------------------------------------------------------
0428            local.get 2
0429            local.get 1
0430            local.get 10
0431            i32.mul
0432            i32.store offset=16
0433            local.get 0
0434            local.get 6
0435            local.get 2
0436            i32.load offset=8
0437            i32.mul
0438            i32.const 7
0439            i32.shl
0440            call 155
0441            local.get 2
0442            i32.const 1
0443            i32.store offset=40
0444            local.get 2
0445            i32.load offset=16
0446            local.set 6
0447          end
62 ------------------------------------------------------------
0448          i32.const 999999988
0449          local.get 2
0450          i32.load offset=8
0451          i32.const 7
0452          i32.shl
0453          local.tee 8
0454          i32.div_u
0455          local.set 1
0456          local.get 0
0457          i32.load offset=4
0458          local.set 5
0459          local.get 8
0460          i32.const 999999989
0461          i32.ge_u
0462          if  ;; label = @4
63 ------------------------------------------------------------
0463            local.get 0
0464            i32.load
0465            local.tee 4
0466            i32.const 70
0467            i32.store offset=20
0468            local.get 0
0469            local.get 4
0470            i32.load
0471            call_indirect (type 0)
0472          end
64 ------------------------------------------------------------
0473          local.get 5
0474          local.get 1
0475          local.get 6
0476          local.get 1
0477          local.get 6
0478          i32.lt_s
0479          select
0480          local.tee 5
0481          i32.store offset=80
0482          i32.const 0
0483          local.set 4
0484          local.get 0
0485          i32.const 1
0486          local.get 6
0487          i32.const 2
0488          i32.shl
0489          call 52
0490          local.set 11
0491          local.get 6
0492          if  ;; label = @4
65 ------------------------------------------------------------
0493            loop  ;; label = @5
66 ------------------------------------------------------------
0494              local.get 0
0495              i32.load offset=4
0496              local.set 3
0497              local.get 5
0498              local.get 6
0499              local.get 4
0500              i32.sub
0501              local.tee 1
0502              local.get 5
0503              local.get 1
0504              i32.lt_u
0505              select
0506              local.tee 5
0507              local.get 8
0508              i32.mul
0509              local.tee 12
0510              i32.const 1000000001
0511              i32.ge_u
0512              if  ;; label = @6
67 ------------------------------------------------------------
0513                local.get 0
0514                i32.load
0515                i64.const 34359738422
0516                i64.store offset=20 align=4
0517                local.get 0
0518                local.get 0
0519                i32.load
0520                i32.load
0521                call_indirect (type 0)
0522              end
68 ------------------------------------------------------------
0523              local.get 12
0524              i32.const 19
0525              i32.or
0526              local.tee 7
0527              i32.const 1000000001
0528              i32.ge_u
0529              if  ;; label = @6
69 ------------------------------------------------------------
0530                local.get 0
0531                i32.load
0532                i64.const 12884901942
0533                i64.store offset=20 align=4
0534                local.get 0
0535                local.get 0
0536                i32.load
0537                i32.load
0538                call_indirect (type 0)
0539              end
70 ------------------------------------------------------------
0540              local.get 7
0541              call 32
0542              local.tee 1
0543              i32.eqz
0544              if  ;; label = @6
71 ------------------------------------------------------------
0545                local.get 0
0546                i32.load
0547                i64.const 17179869238
0548                i64.store offset=20 align=4
0549                local.get 0
0550                local.get 0
0551                i32.load
0552                i32.load
0553                call_indirect (type 0)
0554              end
72 ------------------------------------------------------------
0555              local.get 3
0556              local.get 3
0557              i32.load offset=76
0558              local.get 7
0559              i32.add
0560              i32.store offset=76
0561              local.get 3
0562              i32.const -64
0563              i32.sub
0564              local.tee 3
0565              i32.load
0566              local.set 7
0567              local.get 1
0568              i32.const 0
0569              i32.store offset=8
0570              local.get 1
0571              local.get 12
0572              i32.store offset=4
0573              local.get 1
0574              local.get 7
0575              i32.store
0576              local.get 3
0577              local.get 1
0578              i32.store
0579              local.get 5
0580              if  ;; label = @6
73 ------------------------------------------------------------
0581                local.get 1
0582                i32.const 12
0583                i32.add
0584                local.tee 1
0585                local.get 1
0586                i32.const 7
0587                i32.and
0588                local.tee 3
0589                i32.sub
0590                i32.const 8
0591                i32.add
0592                local.get 1
0593                local.get 3
0594                select
0595                local.set 3
0596                local.get 5
0597                local.set 1
0598                loop  ;; label = @7
74 ------------------------------------------------------------
0599                  local.get 11
0600                  local.get 4
0601                  i32.const 2
0602                  i32.shl
0603                  i32.add
0604                  local.get 3
0605                  i32.store
0606                  local.get 4
0607                  i32.const 1
0608                  i32.add
0609                  local.set 4
0610                  local.get 3
0611                  local.get 8
0612                  i32.add
0613                  local.set 3
0614                  local.get 1
0615                  i32.const -1
0616                  i32.add
0617                  local.tee 1
0618                  br_if 0 (;@7;)
75 ------------------------------------------------------------
0619                end
76 ------------------------------------------------------------
0620              end
77 ------------------------------------------------------------
0621              local.get 4
0622              local.get 6
0623              i32.lt_u
0624              br_if 0 (;@5;)
78 ------------------------------------------------------------
0625            end
79 ------------------------------------------------------------
0626          end
80 ------------------------------------------------------------
0627          local.get 2
0628          local.get 11
0629          i32.store
0630          local.get 9
0631          i32.load offset=80
0632          local.set 1
0633          local.get 2
0634          i32.const 0
0635          i32.store offset=36
0636          local.get 2
0637          i64.const 0
0638          i64.store offset=24 align=4
0639          local.get 2
0640          local.get 1
0641          i32.store offset=20
0642        end
81 ------------------------------------------------------------
0643        local.get 2
0644        i32.load offset=44
0645        local.tee 2
0646        br_if 0 (;@2;)
82 ------------------------------------------------------------
0647      end
83 ------------------------------------------------------------
0648    end
84 ------------------------------------------------------------)
