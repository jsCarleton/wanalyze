  (func (;338;) (type 6) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    block  ;; label = @1
1 ------------------------------------------------------------
0001      block  ;; label = @2
2 ------------------------------------------------------------
0002        block  ;; label = @3
3 ------------------------------------------------------------
0003          block  ;; label = @4
4 ------------------------------------------------------------
0004            block  ;; label = @5
5 ------------------------------------------------------------
0005              block  ;; label = @6
6 ------------------------------------------------------------
0006                block  ;; label = @7
7 ------------------------------------------------------------
0007                  block  ;; label = @8
8 ------------------------------------------------------------
0008                    local.get 0
0009                    i32.load offset=40
0010                    i32.const -6
0011                    i32.add
0012                    br_table 0 1 2 3 4 5 1 3 4 5 6
9 ------------------------------------------------------------
0013                  end
10 ------------------------------------------------------------
0014                  local.get 4
0015                  i32.const 1
0016                  i32.lt_s
0017                  br_if 6 (;@1;)
11 ------------------------------------------------------------
0018                  local.get 0
0019                  i32.load offset=28
0020                  local.tee 10
0021                  i32.eqz
0022                  br_if 6 (;@1;)
12 ------------------------------------------------------------
0023                  local.get 0
0024                  i32.load offset=352
0025                  i32.load offset=8
0026                  local.set 5
0027                  loop  ;; label = @8
13 ------------------------------------------------------------
0028                    local.get 3
0029                    i32.const 2
0030                    i32.shl
0031                    local.tee 0
0032                    local.get 2
0033                    i32.load offset=8
0034                    i32.add
0035                    i32.load
0036                    local.set 11
0037                    local.get 2
0038                    i32.load offset=4
0039                    local.get 0
0040                    i32.add
0041                    i32.load
0042                    local.set 12
0043                    local.get 2
0044                    i32.load
0045                    local.get 0
0046                    i32.add
0047                    i32.load
0048                    local.set 13
0049                    local.get 1
0050                    i32.load
0051                    local.set 0
0052                    i32.const 0
0053                    local.set 6
0054                    loop  ;; label = @9
14 ------------------------------------------------------------
0055                      local.get 6
0056                      local.get 13
0057                      i32.add
0058                      local.get 5
0059                      local.get 0
0060                      i32.load8_u offset=2
0061                      i32.const 2
0062                      i32.shl
0063                      local.tee 7
0064                      i32.const 2048
0065                      i32.or
0066                      i32.add
0067                      i32.load
0068                      local.get 5
0069                      local.get 0
0070                      i32.load8_u offset=1
0071                      i32.const 2
0072                      i32.shl
0073                      local.tee 8
0074                      i32.const 1024
0075                      i32.or
0076                      i32.add
0077                      i32.load
0078                      local.get 5
0079                      local.get 0
0080                      i32.load8_u
0081                      i32.const 2
0082                      i32.shl
0083                      local.tee 9
0084                      i32.add
0085                      i32.load
0086                      i32.add
0087                      i32.add
0088                      i32.const 16
0089                      i32.shr_u
0090                      i32.store8
0091                      local.get 6
0092                      local.get 12
0093                      i32.add
0094                      local.get 5
0095                      local.get 7
0096                      i32.const 5120
0097                      i32.or
0098                      i32.add
0099                      i32.load
0100                      local.get 5
0101                      local.get 8
0102                      i32.const 4096
0103                      i32.or
0104                      i32.add
0105                      i32.load
0106                      local.get 5
0107                      local.get 9
0108                      i32.const 3072
0109                      i32.or
0110                      i32.add
0111                      i32.load
0112                      i32.add
0113                      i32.add
0114                      i32.const 16
0115                      i32.shr_u
0116                      i32.store8
0117                      local.get 6
0118                      local.get 11
0119                      i32.add
0120                      local.get 5
0121                      local.get 7
0122                      i32.const 7168
0123                      i32.or
0124                      i32.add
0125                      i32.load
0126                      local.get 5
0127                      local.get 8
0128                      i32.const 6144
0129                      i32.or
0130                      i32.add
0131                      i32.load
0132                      local.get 5
0133                      local.get 9
0134                      i32.const 5120
0135                      i32.or
0136                      i32.add
0137                      i32.load
0138                      i32.add
0139                      i32.add
0140                      i32.const 16
0141                      i32.shr_u
0142                      i32.store8
0143                      local.get 0
0144                      i32.const 3
0145                      i32.add
0146                      local.set 0
0147                      local.get 6
0148                      i32.const 1
0149                      i32.add
0150                      local.tee 6
0151                      local.get 10
0152                      i32.ne
0153                      br_if 0 (;@9;)
15 ------------------------------------------------------------
0154                    end
16 ------------------------------------------------------------
0155                    local.get 3
0156                    i32.const 1
0157                    i32.add
0158                    local.set 3
0159                    local.get 1
0160                    i32.const 4
0161                    i32.add
0162                    local.set 1
0163                    local.get 4
0164                    i32.const 1
0165                    i32.gt_s
0166                    local.set 0
0167                    local.get 4
0168                    i32.const -1
0169                    i32.add
0170                    local.set 4
0171                    local.get 0
0172                    br_if 0 (;@8;)
17 ------------------------------------------------------------
0173                  end
18 ------------------------------------------------------------
0174                  br 6 (;@1;)
19 ------------------------------------------------------------
0175                end
20 ------------------------------------------------------------
0176                local.get 4
0177                i32.const 1
0178                i32.lt_s
0179                br_if 5 (;@1;)
21 ------------------------------------------------------------
0180                local.get 0
0181                i32.load offset=28
0182                local.tee 10
0183                i32.eqz
0184                br_if 5 (;@1;)
22 ------------------------------------------------------------
0185                local.get 0
0186                i32.load offset=352
0187                i32.load offset=8
0188                local.set 5
0189                loop  ;; label = @7
23 ------------------------------------------------------------
0190                  local.get 3
0191                  i32.const 2
0192                  i32.shl
0193                  local.tee 0
0194                  local.get 2
0195                  i32.load offset=8
0196                  i32.add
0197                  i32.load
0198                  local.set 11
0199                  local.get 2
0200                  i32.load offset=4
0201                  local.get 0
0202                  i32.add
0203                  i32.load
0204                  local.set 12
0205                  local.get 2
0206                  i32.load
0207                  local.get 0
0208                  i32.add
0209                  i32.load
0210                  local.set 13
0211                  local.get 1
0212                  i32.load
0213                  local.set 0
0214                  i32.const 0
0215                  local.set 6
0216                  loop  ;; label = @8
24 ------------------------------------------------------------
0217                    local.get 6
0218                    local.get 13
0219                    i32.add
0220                    local.get 5
0221                    local.get 0
0222                    i32.load8_u offset=2
0223                    i32.const 2
0224                    i32.shl
0225                    local.tee 7
0226                    i32.const 2048
0227                    i32.or
0228                    i32.add
0229                    i32.load
0230                    local.get 5
0231                    local.get 0
0232                    i32.load8_u offset=1
0233                    i32.const 2
0234                    i32.shl
0235                    local.tee 8
0236                    i32.const 1024
0237                    i32.or
0238                    i32.add
0239                    i32.load
0240                    local.get 5
0241                    local.get 0
0242                    i32.load8_u
0243                    i32.const 2
0244                    i32.shl
0245                    local.tee 9
0246                    i32.add
0247                    i32.load
0248                    i32.add
0249                    i32.add
0250                    i32.const 16
0251                    i32.shr_u
0252                    i32.store8
0253                    local.get 6
0254                    local.get 12
0255                    i32.add
0256                    local.get 5
0257                    local.get 7
0258                    i32.const 5120
0259                    i32.or
0260                    i32.add
0261                    i32.load
0262                    local.get 5
0263                    local.get 8
0264                    i32.const 4096
0265                    i32.or
0266                    i32.add
0267                    i32.load
0268                    local.get 5
0269                    local.get 9
0270                    i32.const 3072
0271                    i32.or
0272                    i32.add
0273                    i32.load
0274                    i32.add
0275                    i32.add
0276                    i32.const 16
0277                    i32.shr_u
0278                    i32.store8
0279                    local.get 6
0280                    local.get 11
0281                    i32.add
0282                    local.get 5
0283                    local.get 7
0284                    i32.const 7168
0285                    i32.or
0286                    i32.add
0287                    i32.load
0288                    local.get 5
0289                    local.get 8
0290                    i32.const 6144
0291                    i32.or
0292                    i32.add
0293                    i32.load
0294                    local.get 5
0295                    local.get 9
0296                    i32.const 5120
0297                    i32.or
0298                    i32.add
0299                    i32.load
0300                    i32.add
0301                    i32.add
0302                    i32.const 16
0303                    i32.shr_u
0304                    i32.store8
0305                    local.get 0
0306                    i32.const 4
0307                    i32.add
0308                    local.set 0
0309                    local.get 6
0310                    i32.const 1
0311                    i32.add
0312                    local.tee 6
0313                    local.get 10
0314                    i32.ne
0315                    br_if 0 (;@8;)
25 ------------------------------------------------------------
0316                  end
26 ------------------------------------------------------------
0317                  local.get 3
0318                  i32.const 1
0319                  i32.add
0320                  local.set 3
0321                  local.get 1
0322                  i32.const 4
0323                  i32.add
0324                  local.set 1
0325                  local.get 4
0326                  i32.const 1
0327                  i32.gt_s
0328                  local.set 0
0329                  local.get 4
0330                  i32.const -1
0331                  i32.add
0332                  local.set 4
0333                  local.get 0
0334                  br_if 0 (;@7;)
27 ------------------------------------------------------------
0335                end
28 ------------------------------------------------------------
0336                br 5 (;@1;)
29 ------------------------------------------------------------
0337              end
30 ------------------------------------------------------------
0338              local.get 4
0339              i32.const 1
0340              i32.lt_s
0341              br_if 4 (;@1;)
31 ------------------------------------------------------------
0342              local.get 0
0343              i32.load offset=28
0344              local.tee 10
0345              i32.eqz
0346              br_if 4 (;@1;)
32 ------------------------------------------------------------
0347              local.get 0
0348              i32.load offset=352
0349              i32.load offset=8
0350              local.set 5
0351              loop  ;; label = @6
33 ------------------------------------------------------------
0352                local.get 3
0353                i32.const 2
0354                i32.shl
0355                local.tee 0
0356                local.get 2
0357                i32.load offset=8
0358                i32.add
0359                i32.load
0360                local.set 11
0361                local.get 2
0362                i32.load offset=4
0363                local.get 0
0364                i32.add
0365                i32.load
0366                local.set 12
0367                local.get 2
0368                i32.load
0369                local.get 0
0370                i32.add
0371                i32.load
0372                local.set 13
0373                local.get 1
0374                i32.load
0375                local.set 0
0376                i32.const 0
0377                local.set 6
0378                loop  ;; label = @7
34 ------------------------------------------------------------
0379                  local.get 6
0380                  local.get 13
0381                  i32.add
0382                  local.get 5
0383                  local.get 0
0384                  i32.load8_u
0385                  i32.const 2
0386                  i32.shl
0387                  local.tee 7
0388                  i32.const 2048
0389                  i32.or
0390                  i32.add
0391                  i32.load
0392                  local.get 5
0393                  local.get 0
0394                  i32.load8_u offset=1
0395                  i32.const 2
0396                  i32.shl
0397                  local.tee 8
0398                  i32.const 1024
0399                  i32.or
0400                  i32.add
0401                  i32.load
0402                  local.get 5
0403                  local.get 0
0404                  i32.load8_u offset=2
0405                  i32.const 2
0406                  i32.shl
0407                  local.tee 9
0408                  i32.add
0409                  i32.load
0410                  i32.add
0411                  i32.add
0412                  i32.const 16
0413                  i32.shr_u
0414                  i32.store8
0415                  local.get 6
0416                  local.get 12
0417                  i32.add
0418                  local.get 5
0419                  local.get 7
0420                  i32.const 5120
0421                  i32.or
0422                  i32.add
0423                  i32.load
0424                  local.get 5
0425                  local.get 8
0426                  i32.const 4096
0427                  i32.or
0428                  i32.add
0429                  i32.load
0430                  local.get 5
0431                  local.get 9
0432                  i32.const 3072
0433                  i32.or
0434                  i32.add
0435                  i32.load
0436                  i32.add
0437                  i32.add
0438                  i32.const 16
0439                  i32.shr_u
0440                  i32.store8
0441                  local.get 6
0442                  local.get 11
0443                  i32.add
0444                  local.get 5
0445                  local.get 7
0446                  i32.const 7168
0447                  i32.or
0448                  i32.add
0449                  i32.load
0450                  local.get 5
0451                  local.get 8
0452                  i32.const 6144
0453                  i32.or
0454                  i32.add
0455                  i32.load
0456                  local.get 5
0457                  local.get 9
0458                  i32.const 5120
0459                  i32.or
0460                  i32.add
0461                  i32.load
0462                  i32.add
0463                  i32.add
0464                  i32.const 16
0465                  i32.shr_u
0466                  i32.store8
0467                  local.get 0
0468                  i32.const 3
0469                  i32.add
0470                  local.set 0
0471                  local.get 6
0472                  i32.const 1
0473                  i32.add
0474                  local.tee 6
0475                  local.get 10
0476                  i32.ne
0477                  br_if 0 (;@7;)
35 ------------------------------------------------------------
0478                end
36 ------------------------------------------------------------
0479                local.get 3
0480                i32.const 1
0481                i32.add
0482                local.set 3
0483                local.get 1
0484                i32.const 4
0485                i32.add
0486                local.set 1
0487                local.get 4
0488                i32.const 1
0489                i32.gt_s
0490                local.set 0
0491                local.get 4
0492                i32.const -1
0493                i32.add
0494                local.set 4
0495                local.get 0
0496                br_if 0 (;@6;)
37 ------------------------------------------------------------
0497              end
38 ------------------------------------------------------------
0498              br 4 (;@1;)
39 ------------------------------------------------------------
0499            end
40 ------------------------------------------------------------
0500            local.get 4
0501            i32.const 1
0502            i32.lt_s
0503            br_if 3 (;@1;)
41 ------------------------------------------------------------
0504            local.get 0
0505            i32.load offset=28
0506            local.tee 10
0507            i32.eqz
0508            br_if 3 (;@1;)
42 ------------------------------------------------------------
0509            local.get 0
0510            i32.load offset=352
0511            i32.load offset=8
0512            local.set 5
0513            loop  ;; label = @5
43 ------------------------------------------------------------
0514              local.get 3
0515              i32.const 2
0516              i32.shl
0517              local.tee 0
0518              local.get 2
0519              i32.load offset=8
0520              i32.add
0521              i32.load
0522              local.set 11
0523              local.get 2
0524              i32.load offset=4
0525              local.get 0
0526              i32.add
0527              i32.load
0528              local.set 12
0529              local.get 2
0530              i32.load
0531              local.get 0
0532              i32.add
0533              i32.load
0534              local.set 13
0535              local.get 1
0536              i32.load
0537              local.set 0
0538              i32.const 0
0539              local.set 6
0540              loop  ;; label = @6
44 ------------------------------------------------------------
0541                local.get 6
0542                local.get 13
0543                i32.add
0544                local.get 5
0545                local.get 0
0546                i32.load8_u
0547                i32.const 2
0548                i32.shl
0549                local.tee 7
0550                i32.const 2048
0551                i32.or
0552                i32.add
0553                i32.load
0554                local.get 5
0555                local.get 0
0556                i32.load8_u offset=1
0557                i32.const 2
0558                i32.shl
0559                local.tee 8
0560                i32.const 1024
0561                i32.or
0562                i32.add
0563                i32.load
0564                local.get 5
0565                local.get 0
0566                i32.load8_u offset=2
0567                i32.const 2
0568                i32.shl
0569                local.tee 9
0570                i32.add
0571                i32.load
0572                i32.add
0573                i32.add
0574                i32.const 16
0575                i32.shr_u
0576                i32.store8
0577                local.get 6
0578                local.get 12
0579                i32.add
0580                local.get 5
0581                local.get 7
0582                i32.const 5120
0583                i32.or
0584                i32.add
0585                i32.load
0586                local.get 5
0587                local.get 8
0588                i32.const 4096
0589                i32.or
0590                i32.add
0591                i32.load
0592                local.get 5
0593                local.get 9
0594                i32.const 3072
0595                i32.or
0596                i32.add
0597                i32.load
0598                i32.add
0599                i32.add
0600                i32.const 16
0601                i32.shr_u
0602                i32.store8
0603                local.get 6
0604                local.get 11
0605                i32.add
0606                local.get 5
0607                local.get 7
0608                i32.const 7168
0609                i32.or
0610                i32.add
0611                i32.load
0612                local.get 5
0613                local.get 8
0614                i32.const 6144
0615                i32.or
0616                i32.add
0617                i32.load
0618                local.get 5
0619                local.get 9
0620                i32.const 5120
0621                i32.or
0622                i32.add
0623                i32.load
0624                i32.add
0625                i32.add
0626                i32.const 16
0627                i32.shr_u
0628                i32.store8
0629                local.get 0
0630                i32.const 4
0631                i32.add
0632                local.set 0
0633                local.get 6
0634                i32.const 1
0635                i32.add
0636                local.tee 6
0637                local.get 10
0638                i32.ne
0639                br_if 0 (;@6;)
45 ------------------------------------------------------------
0640              end
46 ------------------------------------------------------------
0641              local.get 3
0642              i32.const 1
0643              i32.add
0644              local.set 3
0645              local.get 1
0646              i32.const 4
0647              i32.add
0648              local.set 1
0649              local.get 4
0650              i32.const 1
0651              i32.gt_s
0652              local.set 0
0653              local.get 4
0654              i32.const -1
0655              i32.add
0656              local.set 4
0657              local.get 0
0658              br_if 0 (;@5;)
47 ------------------------------------------------------------
0659            end
48 ------------------------------------------------------------
0660            br 3 (;@1;)
49 ------------------------------------------------------------
0661          end
50 ------------------------------------------------------------
0662          local.get 4
0663          i32.const 1
0664          i32.lt_s
0665          br_if 2 (;@1;)
51 ------------------------------------------------------------
0666          local.get 0
0667          i32.load offset=28
0668          local.tee 10
0669          i32.eqz
0670          br_if 2 (;@1;)
52 ------------------------------------------------------------
0671          local.get 0
0672          i32.load offset=352
0673          i32.load offset=8
0674          local.set 5
0675          loop  ;; label = @4
53 ------------------------------------------------------------
0676            local.get 3
0677            i32.const 2
0678            i32.shl
0679            local.tee 0
0680            local.get 2
0681            i32.load offset=8
0682            i32.add
0683            i32.load
0684            local.set 11
0685            local.get 2
0686            i32.load offset=4
0687            local.get 0
0688            i32.add
0689            i32.load
0690            local.set 12
0691            local.get 2
0692            i32.load
0693            local.get 0
0694            i32.add
0695            i32.load
0696            local.set 13
0697            local.get 1
0698            i32.load
0699            local.set 0
0700            i32.const 0
0701            local.set 6
0702            loop  ;; label = @5
54 ------------------------------------------------------------
0703              local.get 6
0704              local.get 13
0705              i32.add
0706              local.get 5
0707              local.get 0
0708              i32.load8_u offset=1
0709              i32.const 2
0710              i32.shl
0711              local.tee 7
0712              i32.const 2048
0713              i32.or
0714              i32.add
0715              i32.load
0716              local.get 5
0717              local.get 0
0718              i32.load8_u offset=2
0719              i32.const 2
0720              i32.shl
0721              local.tee 8
0722              i32.const 1024
0723              i32.or
0724              i32.add
0725              i32.load
0726              local.get 5
0727              local.get 0
0728              i32.load8_u offset=3
0729              i32.const 2
0730              i32.shl
0731              local.tee 9
0732              i32.add
0733              i32.load
0734              i32.add
0735              i32.add
0736              i32.const 16
0737              i32.shr_u
0738              i32.store8
0739              local.get 6
0740              local.get 12
0741              i32.add
0742              local.get 5
0743              local.get 7
0744              i32.const 5120
0745              i32.or
0746              i32.add
0747              i32.load
0748              local.get 5
0749              local.get 8
0750              i32.const 4096
0751              i32.or
0752              i32.add
0753              i32.load
0754              local.get 5
0755              local.get 9
0756              i32.const 3072
0757              i32.or
0758              i32.add
0759              i32.load
0760              i32.add
0761              i32.add
0762              i32.const 16
0763              i32.shr_u
0764              i32.store8
0765              local.get 6
0766              local.get 11
0767              i32.add
0768              local.get 5
0769              local.get 7
0770              i32.const 7168
0771              i32.or
0772              i32.add
0773              i32.load
0774              local.get 5
0775              local.get 8
0776              i32.const 6144
0777              i32.or
0778              i32.add
0779              i32.load
0780              local.get 5
0781              local.get 9
0782              i32.const 5120
0783              i32.or
0784              i32.add
0785              i32.load
0786              i32.add
0787              i32.add
0788              i32.const 16
0789              i32.shr_u
0790              i32.store8
0791              local.get 0
0792              i32.const 4
0793              i32.add
0794              local.set 0
0795              local.get 6
0796              i32.const 1
0797              i32.add
0798              local.tee 6
0799              local.get 10
0800              i32.ne
0801              br_if 0 (;@5;)
55 ------------------------------------------------------------
0802            end
56 ------------------------------------------------------------
0803            local.get 3
0804            i32.const 1
0805            i32.add
0806            local.set 3
0807            local.get 1
0808            i32.const 4
0809            i32.add
0810            local.set 1
0811            local.get 4
0812            i32.const 1
0813            i32.gt_s
0814            local.set 0
0815            local.get 4
0816            i32.const -1
0817            i32.add
0818            local.set 4
0819            local.get 0
0820            br_if 0 (;@4;)
57 ------------------------------------------------------------
0821          end
58 ------------------------------------------------------------
0822          br 2 (;@1;)
59 ------------------------------------------------------------
0823        end
60 ------------------------------------------------------------
0824        local.get 4
0825        i32.const 1
0826        i32.lt_s
0827        br_if 1 (;@1;)
61 ------------------------------------------------------------
0828        local.get 0
0829        i32.load offset=28
0830        local.tee 10
0831        i32.eqz
0832        br_if 1 (;@1;)
62 ------------------------------------------------------------
0833        local.get 0
0834        i32.load offset=352
0835        i32.load offset=8
0836        local.set 5
0837        loop  ;; label = @3
63 ------------------------------------------------------------
0838          local.get 3
0839          i32.const 2
0840          i32.shl
0841          local.tee 0
0842          local.get 2
0843          i32.load offset=8
0844          i32.add
0845          i32.load
0846          local.set 11
0847          local.get 2
0848          i32.load offset=4
0849          local.get 0
0850          i32.add
0851          i32.load
0852          local.set 12
0853          local.get 2
0854          i32.load
0855          local.get 0
0856          i32.add
0857          i32.load
0858          local.set 13
0859          local.get 1
0860          i32.load
0861          local.set 0
0862          i32.const 0
0863          local.set 6
0864          loop  ;; label = @4
64 ------------------------------------------------------------
0865            local.get 6
0866            local.get 13
0867            i32.add
0868            local.get 5
0869            local.get 0
0870            i32.load8_u offset=3
0871            i32.const 2
0872            i32.shl
0873            local.tee 7
0874            i32.const 2048
0875            i32.or
0876            i32.add
0877            i32.load
0878            local.get 5
0879            local.get 0
0880            i32.load8_u offset=2
0881            i32.const 2
0882            i32.shl
0883            local.tee 8
0884            i32.const 1024
0885            i32.or
0886            i32.add
0887            i32.load
0888            local.get 5
0889            local.get 0
0890            i32.load8_u offset=1
0891            i32.const 2
0892            i32.shl
0893            local.tee 9
0894            i32.add
0895            i32.load
0896            i32.add
0897            i32.add
0898            i32.const 16
0899            i32.shr_u
0900            i32.store8
0901            local.get 6
0902            local.get 12
0903            i32.add
0904            local.get 5
0905            local.get 7
0906            i32.const 5120
0907            i32.or
0908            i32.add
0909            i32.load
0910            local.get 5
0911            local.get 8
0912            i32.const 4096
0913            i32.or
0914            i32.add
0915            i32.load
0916            local.get 5
0917            local.get 9
0918            i32.const 3072
0919            i32.or
0920            i32.add
0921            i32.load
0922            i32.add
0923            i32.add
0924            i32.const 16
0925            i32.shr_u
0926            i32.store8
0927            local.get 6
0928            local.get 11
0929            i32.add
0930            local.get 5
0931            local.get 7
0932            i32.const 7168
0933            i32.or
0934            i32.add
0935            i32.load
0936            local.get 5
0937            local.get 8
0938            i32.const 6144
0939            i32.or
0940            i32.add
0941            i32.load
0942            local.get 5
0943            local.get 9
0944            i32.const 5120
0945            i32.or
0946            i32.add
0947            i32.load
0948            i32.add
0949            i32.add
0950            i32.const 16
0951            i32.shr_u
0952            i32.store8
0953            local.get 0
0954            i32.const 4
0955            i32.add
0956            local.set 0
0957            local.get 6
0958            i32.const 1
0959            i32.add
0960            local.tee 6
0961            local.get 10
0962            i32.ne
0963            br_if 0 (;@4;)
65 ------------------------------------------------------------
0964          end
66 ------------------------------------------------------------
0965          local.get 3
0966          i32.const 1
0967          i32.add
0968          local.set 3
0969          local.get 1
0970          i32.const 4
0971          i32.add
0972          local.set 1
0973          local.get 4
0974          i32.const 1
0975          i32.gt_s
0976          local.set 0
0977          local.get 4
0978          i32.const -1
0979          i32.add
0980          local.set 4
0981          local.get 0
0982          br_if 0 (;@3;)
67 ------------------------------------------------------------
0983        end
68 ------------------------------------------------------------
0984        br 1 (;@1;)
69 ------------------------------------------------------------
0985      end
70 ------------------------------------------------------------
0986      local.get 4
0987      i32.const 1
0988      i32.lt_s
0989      br_if 0 (;@1;)
71 ------------------------------------------------------------
0990      local.get 0
0991      i32.load offset=28
0992      local.tee 10
0993      i32.eqz
0994      br_if 0 (;@1;)
72 ------------------------------------------------------------
0995      local.get 0
0996      i32.load offset=352
0997      i32.load offset=8
0998      local.set 5
0999      loop  ;; label = @2
73 ------------------------------------------------------------
1000        local.get 3
1001        i32.const 2
1002        i32.shl
1003        local.tee 0
1004        local.get 2
1005        i32.load offset=8
1006        i32.add
1007        i32.load
1008        local.set 11
1009        local.get 2
1010        i32.load offset=4
1011        local.get 0
1012        i32.add
1013        i32.load
1014        local.set 12
1015        local.get 2
1016        i32.load
1017        local.get 0
1018        i32.add
1019        i32.load
1020        local.set 13
1021        local.get 1
1022        i32.load
1023        local.set 0
1024        i32.const 0
1025        local.set 6
1026        loop  ;; label = @3
74 ------------------------------------------------------------
1027          local.get 6
1028          local.get 13
1029          i32.add
1030          local.get 5
1031          local.get 0
1032          i32.load8_u offset=2
1033          i32.const 2
1034          i32.shl
1035          local.tee 7
1036          i32.const 2048
1037          i32.or
1038          i32.add
1039          i32.load
1040          local.get 5
1041          local.get 0
1042          i32.load8_u offset=1
1043          i32.const 2
1044          i32.shl
1045          local.tee 8
1046          i32.const 1024
1047          i32.or
1048          i32.add
1049          i32.load
1050          local.get 5
1051          local.get 0
1052          i32.load8_u
1053          i32.const 2
1054          i32.shl
1055          local.tee 9
1056          i32.add
1057          i32.load
1058          i32.add
1059          i32.add
1060          i32.const 16
1061          i32.shr_u
1062          i32.store8
1063          local.get 6
1064          local.get 12
1065          i32.add
1066          local.get 5
1067          local.get 7
1068          i32.const 5120
1069          i32.or
1070          i32.add
1071          i32.load
1072          local.get 5
1073          local.get 8
1074          i32.const 4096
1075          i32.or
1076          i32.add
1077          i32.load
1078          local.get 5
1079          local.get 9
1080          i32.const 3072
1081          i32.or
1082          i32.add
1083          i32.load
1084          i32.add
1085          i32.add
1086          i32.const 16
1087          i32.shr_u
1088          i32.store8
1089          local.get 6
1090          local.get 11
1091          i32.add
1092          local.get 5
1093          local.get 7
1094          i32.const 7168
1095          i32.or
1096          i32.add
1097          i32.load
1098          local.get 5
1099          local.get 8
1100          i32.const 6144
1101          i32.or
1102          i32.add
1103          i32.load
1104          local.get 5
1105          local.get 9
1106          i32.const 5120
1107          i32.or
1108          i32.add
1109          i32.load
1110          i32.add
1111          i32.add
1112          i32.const 16
1113          i32.shr_u
1114          i32.store8
1115          local.get 0
1116          i32.const 3
1117          i32.add
1118          local.set 0
1119          local.get 6
1120          i32.const 1
1121          i32.add
1122          local.tee 6
1123          local.get 10
1124          i32.ne
1125          br_if 0 (;@3;)
75 ------------------------------------------------------------
1126        end
76 ------------------------------------------------------------
1127        local.get 3
1128        i32.const 1
1129        i32.add
1130        local.set 3
1131        local.get 1
1132        i32.const 4
1133        i32.add
1134        local.set 1
1135        local.get 4
1136        i32.const 1
1137        i32.gt_s
1138        local.set 0
1139        local.get 4
1140        i32.const -1
1141        i32.add
1142        local.set 4
1143        local.get 0
1144        br_if 0 (;@2;)
77 ------------------------------------------------------------
1145      end
78 ------------------------------------------------------------
1146    end
79 ------------------------------------------------------------)
