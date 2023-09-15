  (func (;120;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 1328
0002    i32.sub
0003    local.tee 6
0004    global.set 0
0005    block (result i32)  ;; label = @1
1 ------------------------------------------------------------
0006      i32.const 0
0007      local.get 1
0008      local.get 1
0009      i32.load8_u offset=19
0010      call 95
0011      i32.eqz
0012      br_if 0 (;@1;)
2 ------------------------------------------------------------
0013      drop
0014      local.get 0
0015      local.get 1
0016      i32.load16_u offset=8
0017      local.tee 4
0018      i32.store16 offset=16
0019      local.get 0
0020      local.get 1
0021      i32.load16_u offset=10
0022      local.tee 8
0023      i32.store16 offset=18
0024      local.get 0
0025      local.get 1
0026      i32.load offset=4
0027      local.tee 3
0028      i32.store offset=20
0029      local.get 0
0030      local.get 3
0031      local.get 4
0032      local.get 8
0033      i32.mul
0034      i32.add
0035      i32.store offset=24
0036      local.get 0
0037      i32.load offset=44
0038      local.set 20
0039      local.get 0
0040      i32.const 0
0041      i32.store offset=28
0042      block  ;; label = @2
3 ------------------------------------------------------------
0043        local.get 2
0044        local.get 2
0045        i32.load offset=24
0046        call_indirect (type 0)
0047        local.tee 9
0048        i32.const 12
0049        i32.ge_u
0050        if  ;; label = @3
4 ------------------------------------------------------------
0051          i32.const 35156
0052          i32.load
0053          local.set 8
0054          local.get 0
0055          local.get 0
0056          i32.load offset=44
0057          i32.const 1
0058          i32.add
0059          i32.store offset=44
0060          i32.const 11
0061          local.set 9
0062          local.get 0
0063          i32.load offset=36
0064          local.tee 3
0065          local.get 8
0066          local.get 3
0067          select
0068          local.tee 3
0069          i32.eqz
0070          br_if 1 (;@2;)
5 ------------------------------------------------------------
0071          local.get 0
0072          i32.load
0073          local.get 0
0074          i32.load offset=32
0075          i32.const 1
0076          i32.const 2212
0077          local.get 3
0078          call_indirect (type 6)
0079          br 1 (;@2;)
6 ------------------------------------------------------------
0080        end
7 ------------------------------------------------------------
0081        local.get 9
0082        i32.const 1
0083        i32.gt_u
0084        br_if 0 (;@2;)
8 ------------------------------------------------------------
0085        i32.const 35156
0086        i32.load
0087        local.set 8
0088        local.get 0
0089        local.get 0
0090        i32.load offset=44
0091        i32.const 1
0092        i32.add
0093        i32.store offset=44
0094        i32.const 2
0095        local.set 9
0096        local.get 0
0097        i32.load offset=36
0098        local.tee 3
0099        local.get 8
0100        local.get 3
0101        select
0102        local.tee 3
0103        i32.eqz
0104        br_if 0 (;@2;)
9 ------------------------------------------------------------
0105        local.get 0
0106        i32.load
0107        local.get 0
0108        i32.load offset=32
0109        i32.const 1
0110        i32.const 2251
0111        local.get 3
0112        call_indirect (type 6)
0113      end
10 ------------------------------------------------------------
0114      i32.const 1
0115      local.get 9
0116      i32.shl
0117      local.set 15
0118      loop  ;; label = @2
11 ------------------------------------------------------------
0119        local.get 10
0120        i32.const 1
0121        i32.shl
0122        local.tee 3
0123        local.get 0
0124        i32.load offset=4
0125        i32.add
0126        i32.const 49428
0127        i32.store16
0128        local.get 0
0129        i32.load offset=8
0130        local.get 10
0131        i32.add
0132        local.get 13
0133        i32.store8
0134        local.get 0
0135        i32.load offset=12
0136        local.get 3
0137        i32.add
0138        i32.const 1
0139        i32.store16
0140        local.get 15
0141        local.get 13
0142        i32.const 1
0143        i32.add
0144        local.tee 13
0145        i32.const 65535
0146        i32.and
0147        local.tee 10
0148        i32.gt_u
0149        br_if 0 (;@2;)
12 ------------------------------------------------------------
0150      end
13 ------------------------------------------------------------
0151      local.get 9
0152      i32.const 1
0153      i32.add
0154      local.set 8
0155      local.get 15
0156      i32.const 1
0157      i32.add
0158      local.set 19
0159      i32.const 0
0160      local.set 9
0161      local.get 15
0162      local.set 3
0163      block  ;; label = @2
14 ------------------------------------------------------------
0164        loop  ;; label = @3
15 ------------------------------------------------------------
0165          local.get 19
0166          local.set 16
0167          local.get 8
0168          local.set 12
0169          loop  ;; label = @4
16 ------------------------------------------------------------
0170            i32.const 1
0171            local.get 12
0172            i32.shl
0173            local.tee 21
0174            i32.const 65535
0175            i32.add
0176            local.set 22
0177            block  ;; label = @5
17 ------------------------------------------------------------
0178              loop  ;; label = @6
18 ------------------------------------------------------------
0179                local.get 16
0180                i32.const 65535
0181                i32.and
0182                local.set 14
0183                loop  ;; label = @7
19 ------------------------------------------------------------
0184                  local.get 11
0185                  local.get 12
0186                  i32.add
0187                  local.get 9
0188                  i32.gt_s
0189                  if  ;; label = @8
20 ------------------------------------------------------------
0190                    loop  ;; label = @9
21 ------------------------------------------------------------
0191                      local.get 11
0192                      i32.const 8
0193                      i32.ge_s
0194                      if  ;; label = @10
22 ------------------------------------------------------------
0195                        local.get 6
0196                        local.get 6
0197                        i32.const 1056
0198                        i32.add
0199                        local.get 11
0200                        i32.const 3
0201                        i32.shr_u
0202                        i32.add
0203                        local.tee 4
0204                        i32.load8_u
0205                        i32.store8 offset=1056
0206                        local.get 6
0207                        local.get 4
0208                        i32.load8_u offset=1
0209                        i32.store8 offset=1057
0210                        local.get 9
0211                        local.get 11
0212                        i32.const -8
0213                        i32.and
0214                        i32.sub
0215                        local.set 9
0216                        local.get 11
0217                        i32.const 7
0218                        i32.and
0219                        local.set 11
0220                      end
23 ------------------------------------------------------------
0221                      local.get 2
0222                      local.get 2
0223                      i32.load offset=24
0224                      call_indirect (type 0)
0225                      local.tee 4
0226                      i32.eqz
0227                      br_if 7 (;@2;)
24 ------------------------------------------------------------
0228                      local.get 6
0229                      i32.const 1056
0230                      i32.add
0231                      local.get 9
0232                      i32.const 8
0233                      i32.div_s
0234                      i32.add
0235                      local.get 4
0236                      local.get 2
0237                      local.get 2
0238                      i32.load offset=28
0239                      call_indirect (type 3)
0240                      drop
0241                      local.get 11
0242                      local.get 12
0243                      i32.add
0244                      local.get 4
0245                      i32.const 3
0246                      i32.shl
0247                      local.get 9
0248                      i32.add
0249                      local.tee 9
0250                      i32.gt_s
0251                      br_if 0 (;@9;)
25 ------------------------------------------------------------
0252                    end
26 ------------------------------------------------------------
0253                  end
27 ------------------------------------------------------------
0254                  local.get 11
0255                  local.tee 5
0256                  i32.const 8
0257                  i32.div_s
0258                  local.tee 4
0259                  local.get 6
0260                  i32.const 1056
0261                  i32.add
0262                  i32.add
0263                  i32.load16_u align=1
0264                  local.set 7
0265                  local.get 12
0266                  i32.const 8
0267                  i32.ge_s
0268                  if  ;; label = @8
28 ------------------------------------------------------------
0269                    local.get 4
0270                    local.get 6
0271                    i32.add
0272                    i32.const 1058
0273                    i32.add
0274                    i32.load8_u
0275                    i32.const 16
0276                    i32.shl
0277                    local.get 7
0278                    i32.or
0279                    local.set 7
0280                  end
29 ------------------------------------------------------------
0281                  local.get 3
0282                  local.set 4
0283                  local.get 5
0284                  local.get 12
0285                  i32.add
0286                  local.set 11
0287                  local.get 7
0288                  local.get 5
0289                  i32.const 7
0290                  i32.and
0291                  i32.shr_u
0292                  local.get 22
0293                  i32.and
0294                  local.tee 3
0295                  i32.const 65535
0296                  i32.and
0297                  local.tee 5
0298                  local.get 15
0299                  i32.eq
0300                  br_if 4 (;@3;)
30 ------------------------------------------------------------
0301                  local.get 19
0302                  i32.const 65535
0303                  i32.and
0304                  local.get 5
0305                  i32.eq
0306                  br_if 2 (;@5;)
31 ------------------------------------------------------------
0307                  block  ;; label = @8
32 ------------------------------------------------------------
0308                    local.get 14
0309                    local.get 15
0310                    i32.eq
0311                    local.tee 23
0312                    local.get 14
0313                    i32.eqz
0314                    i32.or
0315                    local.get 5
0316                    local.get 14
0317                    i32.le_u
0318                    i32.or
0319                    br_if 0 (;@8;)
33 ------------------------------------------------------------
0320                    local.get 0
0321                    i32.load offset=44
0322                    local.tee 5
0323                    i32.const 19
0324                    i32.le_s
0325                    if  ;; label = @9
34 ------------------------------------------------------------
0326                      i32.const 0
0327                      local.set 3
0328                      i32.const 35156
0329                      i32.load
0330                      local.set 7
0331                      local.get 0
0332                      local.get 5
0333                      i32.const 1
0334                      i32.add
0335                      i32.store offset=44
0336                      local.get 0
0337                      i32.load offset=36
0338                      local.tee 5
0339                      local.get 7
0340                      local.get 5
0341                      select
0342                      local.tee 5
0343                      i32.eqz
0344                      br_if 1 (;@8;)
35 ------------------------------------------------------------
0345                      local.get 0
0346                      i32.load
0347                      local.get 0
0348                      i32.load offset=32
0349                      i32.const 1
0350                      i32.const 2292
0351                      local.get 5
0352                      call_indirect (type 6)
0353                      br 1 (;@8;)
36 ------------------------------------------------------------
0354                    end
37 ------------------------------------------------------------
0355                    i32.const 0
0356                    local.set 3
0357                    local.get 5
0358                    i32.const 20
0359                    i32.ne
0360                    br_if 0 (;@8;)
38 ------------------------------------------------------------
0361                    i32.const 35156
0362                    i32.load
0363                    local.set 7
0364                    local.get 0
0365                    i32.const 21
0366                    i32.store offset=44
0367                    local.get 0
0368                    i32.load offset=36
0369                    local.tee 5
0370                    local.get 7
0371                    local.get 5
0372                    select
0373                    local.tee 5
0374                    i32.eqz
0375                    br_if 0 (;@8;)
39 ------------------------------------------------------------
0376                    local.get 0
0377                    i32.load
0378                    local.get 0
0379                    i32.load offset=32
0380                    i32.const 1
0381                    i32.const 2327
0382                    local.get 5
0383                    call_indirect (type 6)
0384                  end
40 ------------------------------------------------------------
0385                  local.get 0
0386                  i32.load offset=4
0387                  local.tee 24
0388                  local.get 14
0389                  i32.const 1
0390                  i32.shl
0391                  local.tee 5
0392                  i32.add
0393                  local.get 4
0394                  i32.store16
0395                  local.get 0
0396                  i32.load offset=12
0397                  local.tee 7
0398                  local.get 5
0399                  i32.add
0400                  local.get 7
0401                  local.get 4
0402                  i32.const 65535
0403                  i32.and
0404                  i32.const 1
0405                  i32.shl
0406                  i32.add
0407                  i32.load16_u
0408                  i32.const 1
0409                  i32.add
0410                  i32.store16
0411                  local.get 0
0412                  local.get 7
0413                  local.get 3
0414                  i32.const 65535
0415                  i32.and
0416                  local.tee 5
0417                  i32.const 1
0418                  i32.shl
0419                  i32.add
0420                  i32.load16_u
0421                  local.tee 10
0422                  local.get 0
0423                  i32.load offset=28
0424                  i32.add
0425                  local.tee 4
0426                  i32.store offset=28
0427                  local.get 0
0428                  i32.load offset=8
0429                  local.set 17
0430                  block  ;; label = @8
41 ------------------------------------------------------------
0431                    local.get 10
0432                    i32.eqz
0433                    if  ;; label = @9
42 ------------------------------------------------------------
0434                      i32.const 0
0435                      local.set 18
0436                      br 1 (;@8;)
43 ------------------------------------------------------------
0437                    end
44 ------------------------------------------------------------
0438                    local.get 0
0439                    i32.load offset=20
0440                    local.get 4
0441                    i32.add
0442                    local.set 13
0443                    local.get 3
0444                    local.set 7
0445                    loop  ;; label = @9
45 ------------------------------------------------------------
0446                      local.get 17
0447                      local.get 7
0448                      i32.const 65535
0449                      i32.and
0450                      local.tee 4
0451                      i32.add
0452                      i32.load8_u
0453                      local.set 18
0454                      local.get 24
0455                      local.get 4
0456                      i32.const 1
0457                      i32.shl
0458                      i32.add
0459                      i32.load16_u
0460                      local.set 7
0461                      local.get 13
0462                      i32.const -1
0463                      i32.add
0464                      local.tee 13
0465                      local.get 0
0466                      i32.load offset=24
0467                      i32.lt_u
0468                      if  ;; label = @10
46 ------------------------------------------------------------
0469                        local.get 13
0470                        local.get 18
0471                        i32.store8
0472                      end
47 ------------------------------------------------------------
0473                      local.get 10
0474                      i32.const 1
0475                      i32.gt_s
0476                      local.set 4
0477                      local.get 10
0478                      i32.const -1
0479                      i32.add
0480                      local.set 10
0481                      local.get 4
0482                      br_if 0 (;@9;)
48 ------------------------------------------------------------
0483                    end
49 ------------------------------------------------------------
0484                    local.get 0
0485                    i32.load offset=8
0486                    local.set 17
0487                  end
50 ------------------------------------------------------------
0488                  local.get 14
0489                  local.get 17
0490                  i32.add
0491                  local.get 18
0492                  i32.store8
0493                  block  ;; label = @8
51 ------------------------------------------------------------
0494                    local.get 5
0495                    local.get 14
0496                    i32.ne
0497                    br_if 0 (;@8;)
52 ------------------------------------------------------------
0498                    local.get 0
0499                    i32.load offset=20
0500                    local.get 0
0501                    i32.load offset=28
0502                    i32.add
0503                    local.tee 4
0504                    local.get 0
0505                    i32.load offset=24
0506                    i32.gt_u
0507                    br_if 0 (;@8;)
53 ------------------------------------------------------------
0508                    local.get 4
0509                    i32.const -1
0510                    i32.add
0511                    local.get 0
0512                    i32.load offset=8
0513                    local.get 14
0514                    i32.add
0515                    i32.load8_u
0516                    i32.store8
0517                  end
54 ------------------------------------------------------------
0518                  local.get 23
0519                  br_if 0 (;@7;)
55 ------------------------------------------------------------
0520                end
56 ------------------------------------------------------------
0521                local.get 21
0522                local.get 16
0523                i32.const 1
0524                i32.add
0525                local.tee 16
0526                i32.const 65535
0527                i32.and
0528                i32.ne
0529                br_if 0 (;@6;)
57 ------------------------------------------------------------
0530              end
58 ------------------------------------------------------------
0531              local.get 12
0532              i32.const 1
0533              i32.add
0534              i32.const 12
0535              local.get 12
0536              i32.const 12
0537              i32.lt_s
0538              local.tee 4
0539              select
0540              local.set 12
0541              local.get 16
0542              local.get 15
0543              local.get 4
0544              select
0545              local.set 16
0546              br 1 (;@4;)
59 ------------------------------------------------------------
0547            end
60 ------------------------------------------------------------
0548          end
61 ------------------------------------------------------------
0549        end
62 ------------------------------------------------------------
0550        local.get 2
0551        local.get 2
0552        i32.load offset=24
0553        call_indirect (type 0)
0554        local.tee 10
0555        i32.eqz
0556        br_if 0 (;@2;)
63 ------------------------------------------------------------
0557        loop  ;; label = @3
64 ------------------------------------------------------------
0558          local.get 6
0559          i32.const 1056
0560          i32.add
0561          local.get 10
0562          i32.const 255
0563          i32.and
0564          local.get 2
0565          local.get 2
0566          i32.load offset=28
0567          call_indirect (type 3)
0568          drop
0569          local.get 2
0570          local.get 2
0571          i32.load offset=24
0572          call_indirect (type 0)
0573          local.tee 10
0574          br_if 0 (;@3;)
65 ------------------------------------------------------------
0575        end
66 ------------------------------------------------------------
0576      end
67 ------------------------------------------------------------
0577      block  ;; label = @2
68 ------------------------------------------------------------
0578        local.get 0
0579        i32.load offset=24
0580        local.get 0
0581        i32.load offset=20
0582        i32.sub
0583        local.get 0
0584        i32.load offset=28
0585        i32.sub
0586        local.tee 8
0587        i32.const 1
0588        i32.ge_s
0589        if  ;; label = @3
69 ------------------------------------------------------------
0590          local.get 6
0591          local.get 8
0592          i32.store
0593          local.get 6
0594          i32.const 2384
0595          i32.const 2390
0596          local.get 8
0597          i32.const 1
0598          i32.eq
0599          select
0600          i32.store offset=4
0601          local.get 6
0602          i32.const 32
0603          i32.add
0604          i32.const 2355
0605          local.get 6
0606          call 62
0607          i32.const 35156
0608          i32.load
0609          local.set 3
0610          local.get 0
0611          local.get 0
0612          i32.load offset=44
0613          i32.const 1
0614          i32.add
0615          i32.store offset=44
0616          local.get 0
0617          i32.load offset=36
0618          local.tee 2
0619          local.get 3
0620          local.get 2
0621          select
0622          local.tee 2
0623          if  ;; label = @4
70 ------------------------------------------------------------
0624            local.get 0
0625            i32.load
0626            local.get 0
0627            i32.load offset=32
0628            i32.const 1
0629            local.get 6
0630            i32.const 32
0631            i32.add
0632            local.get 2
0633            call_indirect (type 6)
0634          end
71 ------------------------------------------------------------
0635          local.get 0
0636          i32.load offset=20
0637          local.get 0
0638          i32.load offset=28
0639          i32.add
0640          i32.const 0
0641          local.get 8
0642          call 27
0643          drop
0644          br 1 (;@2;)
72 ------------------------------------------------------------
0645        end
73 ------------------------------------------------------------
0646        local.get 8
0647        i32.const -2
0648        i32.gt_s
0649        br_if 0 (;@2;)
74 ------------------------------------------------------------
0650        local.get 6
0651        i32.const 0
0652        local.get 8
0653        i32.sub
0654        i32.store offset=16
0655        local.get 6
0656        i32.const 32
0657        i32.add
0658        i32.const 2397
0659        local.get 6
0660        i32.const 16
0661        i32.add
0662        call 62
0663        i32.const 35156
0664        i32.load
0665        local.set 3
0666        local.get 0
0667        local.get 0
0668        i32.load offset=40
0669        i32.const 1
0670        i32.add
0671        i32.store offset=40
0672        local.get 0
0673        i32.load offset=36
0674        local.tee 2
0675        local.get 3
0676        local.get 2
0677        select
0678        local.tee 2
0679        i32.eqz
0680        br_if 0 (;@2;)
75 ------------------------------------------------------------
0681        local.get 0
0682        i32.load
0683        local.get 0
0684        i32.load offset=32
0685        i32.const 0
0686        local.get 6
0687        i32.const 32
0688        i32.add
0689        local.get 2
0690        call_indirect (type 6)
0691      end
76 ------------------------------------------------------------
0692      local.get 1
0693      local.get 0
0694      i32.load offset=44
0695      local.get 20
0696      i32.sub
0697      i32.store offset=48
0698      i32.const 1
0699    end
77 ------------------------------------------------------------
0700    local.set 0
0701    local.get 6
0702    i32.const 1328
0703    i32.add
0704    global.set 0
0705    local.get 0)
