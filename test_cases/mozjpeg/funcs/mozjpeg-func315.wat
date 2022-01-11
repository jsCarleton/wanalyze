  (func (;315;) (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 f64)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load
0002    i32.const 1
0003    i32.ge_s
0004    if  ;; label = @1
1 ------------------------------------------------------------
0005      local.get 0
0006      i32.load
0007      local.set 8
0008      local.get 0
0009      i32.load
0010      local.set 10
0011      loop  ;; label = @2
2 ------------------------------------------------------------
0012        block  ;; label = @3
3 ------------------------------------------------------------
0013          local.get 10
0014          i32.load
0015          local.tee 3
0016          i32.const 3
0017          i32.le_u
0018          if  ;; label = @4
4 ------------------------------------------------------------
0019            local.get 0
0020            local.get 3
0021            i32.const 2
0022            i32.shl
0023            i32.add
0024            i32.load
0025            local.tee 5
0026            br_if 1 (;@3;)
5 ------------------------------------------------------------
0027          end
6 ------------------------------------------------------------
0028          local.get 0
0029          i32.load
0030          local.tee 5
0031          local.get 3
0032          i32.store
0033          local.get 5
0034          i32.const 52
0035          i32.store
0036          local.get 0
0037          local.get 0
0038          i32.load
0039          i32.load
0040          call_indirect (type 0)
0041          local.get 0
0042          local.get 3
0043          i32.const 2
0044          i32.shl
0045          i32.add
0046          i32.load
0047          local.set 5
0048        end
7 ------------------------------------------------------------
0049        block  ;; label = @3
8 ------------------------------------------------------------
0050          block  ;; label = @4
9 ------------------------------------------------------------
0051            block  ;; label = @5
10 ------------------------------------------------------------
0052              block  ;; label = @6
11 ------------------------------------------------------------
0053                block  ;; label = @7
12 ------------------------------------------------------------
0054                  local.get 0
0055                  i32.load
0056                  br_table 2 1 0 3
13 ------------------------------------------------------------
0057                end
14 ------------------------------------------------------------
0058                local.get 8
0059                local.get 3
0060                i32.const 2
0061                i32.shl
0062                i32.add
0063                local.tee 3
0064                i32.const 24
0065                i32.add
0066                i32.load
0067                local.tee 9
0068                i32.eqz
0069                if  ;; label = @7
15 ------------------------------------------------------------
0070                  local.get 3
0071                  local.get 0
0072                  i32.const 1
0073                  i32.const 1024
0074                  local.get 0
0075                  i32.load
0076                  i32.load
0077                  call_indirect (type 3)
0078                  local.tee 9
0079                  i32.store
0080                end
16 ------------------------------------------------------------
0081                i32.const 0
0082                local.set 3
0083                loop  ;; label = @7
17 ------------------------------------------------------------
0084                  i32.const 0
0085                  local.set 4
0086                  local.get 5
0087                  local.get 3
0088                  i32.const 1
0089                  i32.shl
0090                  i32.add
0091                  i32.load16_u
0092                  local.tee 1
0093                  i32.const 3
0094                  i32.shl
0095                  local.tee 7
0096                  i32.const 65528
0097                  i32.and
0098                  if  ;; label = @8
18 ------------------------------------------------------------
0099                    i32.const 8
0100                    i32.const 16
0101                    local.get 7
0102                    i32.const 65535
0103                    i32.and
0104                    i32.const 256
0105                    i32.lt_u
0106                    local.tee 2
0107                    select
0108                    local.tee 4
0109                    i32.const -4
0110                    i32.add
0111                    local.get 4
0112                    local.get 1
0113                    i32.const 11
0114                    i32.shl
0115                    local.get 7
0116                    local.get 2
0117                    select
0118                    local.tee 2
0119                    i32.const 65535
0120                    i32.and
0121                    i32.const 4096
0122                    i32.lt_u
0123                    local.tee 4
0124                    select
0125                    local.tee 6
0126                    i32.const -2
0127                    i32.add
0128                    local.get 6
0129                    local.get 2
0130                    i32.const 4
0131                    i32.shl
0132                    local.get 2
0133                    local.get 4
0134                    select
0135                    local.tee 2
0136                    i32.const 65535
0137                    i32.and
0138                    i32.const 16384
0139                    i32.lt_u
0140                    local.tee 4
0141                    select
0142                    local.get 2
0143                    i32.const 2
0144                    i32.shl
0145                    local.get 2
0146                    local.get 4
0147                    select
0148                    i32.const 16
0149                    i32.shl
0150                    i32.const 31
0151                    i32.shr_s
0152                    i32.const -1
0153                    i32.xor
0154                    i32.add
0155                    local.set 4
0156                  end
19 ------------------------------------------------------------
0157                  local.get 3
0158                  i32.const 2
0159                  i32.shl
0160                  local.get 9
0161                  i32.add
0162                  local.set 2
0163                  local.get 1
0164                  i32.const 2
0165                  i32.shl
0166                  i32.const 32764
0167                  i32.and
0168                  local.set 1
0169                  block  ;; label = @8
20 ------------------------------------------------------------
0170                    i64.const 1
0171                    local.get 4
0172                    i32.const 31
0173                    i32.add
0174                    local.tee 6
0175                    i64.extend_i32_u
0176                    i64.shl
0177                    local.tee 13
0178                    local.get 13
0179                    local.get 7
0180                    i64.extend_i32_u
0181                    i64.const 65535
0182                    i64.and
0183                    local.tee 14
0184                    i64.div_u
0185                    local.tee 13
0186                    local.get 14
0187                    i64.mul
0188                    i64.sub
0189                    local.tee 14
0190                    i64.eqz
0191                    if  ;; label = @9
21 ------------------------------------------------------------
0192                      local.get 4
0193                      i32.const 30
0194                      i32.add
0195                      local.set 6
0196                      local.get 13
0197                      i64.const 1
0198                      i64.shr_u
0199                      local.set 13
0200                      br 1 (;@8;)
22 ------------------------------------------------------------
0201                    end
23 ------------------------------------------------------------
0202                    local.get 14
0203                    local.get 1
0204                    i64.extend_i32_u
0205                    i64.le_u
0206                    if  ;; label = @9
24 ------------------------------------------------------------
0207                      local.get 1
0208                      i32.const 1
0209                      i32.or
0210                      local.set 1
0211                      br 1 (;@8;)
25 ------------------------------------------------------------
0212                    end
26 ------------------------------------------------------------
0213                    local.get 13
0214                    i64.const 1
0215                    i64.add
0216                    local.set 13
0217                  end
27 ------------------------------------------------------------
0218                  local.get 2
0219                  i32.const 1
0220                  i32.store
0221                  local.get 2
0222                  local.get 1
0223                  i32.store
0224                  local.get 2
0225                  local.get 13
0226                  i64.store32
0227                  local.get 2
0228                  local.get 6
0229                  i32.const -32
0230                  i32.add
0231                  i32.store
0232                  local.get 3
0233                  i32.const 1
0234                  i32.add
0235                  local.tee 3
0236                  i32.const 64
0237                  i32.ne
0238                  br_if 0 (;@7;)
28 ------------------------------------------------------------
0239                end
29 ------------------------------------------------------------
0240                br 3 (;@3;)
30 ------------------------------------------------------------
0241              end
31 ------------------------------------------------------------
0242              local.get 8
0243              local.get 3
0244              i32.const 2
0245              i32.shl
0246              i32.add
0247              local.tee 3
0248              i32.const 24
0249              i32.add
0250              i32.load
0251              local.tee 7
0252              i32.eqz
0253              if  ;; label = @6
32 ------------------------------------------------------------
0254                local.get 3
0255                local.get 0
0256                i32.const 1
0257                i32.const 1024
0258                local.get 0
0259                i32.load
0260                i32.load
0261                call_indirect (type 3)
0262                local.tee 7
0263                i32.store
0264              end
33 ------------------------------------------------------------
0265              i32.const 0
0266              local.set 3
0267              loop  ;; label = @6
34 ------------------------------------------------------------
0268                local.get 7
0269                local.get 3
0270                i32.const 2
0271                i32.shl
0272                i32.add
0273                local.set 2
0274                i32.const 0
0275                local.set 4
0276                block  ;; label = @7
35 ------------------------------------------------------------
0277                  block  ;; label = @8
36 ------------------------------------------------------------
0278                    block  ;; label = @9
37 ------------------------------------------------------------
0279                      block  ;; label = @10
38 ------------------------------------------------------------
0280                        local.get 3
0281                        i32.const 1
0282                        i32.shl
0283                        local.tee 1
0284                        i32.const 66640
0285                        i32.add
0286                        i32.load16_s
0287                        local.get 1
0288                        local.get 5
0289                        i32.add
0290                        i32.load16_u
0291                        i32.mul
0292                        i32.const 1024
0293                        i32.add
0294                        local.tee 6
0295                        i32.const 11
0296                        i32.shr_u
0297                        local.tee 1
0298                        i32.const 65535
0299                        i32.and
0300                        local.tee 9
0301                        br_table 2 1 0
39 ------------------------------------------------------------
0302                      end
40 ------------------------------------------------------------
0303                      i32.const 8
0304                      i32.const 16
0305                      local.get 9
0306                      i32.const 256
0307                      i32.lt_u
0308                      local.tee 4
0309                      select
0310                      local.tee 11
0311                      i32.const -4
0312                      i32.add
0313                      local.get 11
0314                      local.get 1
0315                      i32.const 8
0316                      i32.shl
0317                      local.get 1
0318                      local.get 4
0319                      select
0320                      local.tee 1
0321                      i32.const 65535
0322                      i32.and
0323                      i32.const 4096
0324                      i32.lt_u
0325                      local.tee 4
0326                      select
0327                      local.tee 11
0328                      i32.const -2
0329                      i32.add
0330                      local.get 11
0331                      local.get 1
0332                      i32.const 4
0333                      i32.shl
0334                      local.get 1
0335                      local.get 4
0336                      select
0337                      local.tee 1
0338                      i32.const 65535
0339                      i32.and
0340                      i32.const 16384
0341                      i32.lt_u
0342                      local.tee 4
0343                      select
0344                      local.get 1
0345                      i32.const 2
0346                      i32.shl
0347                      local.get 1
0348                      local.get 4
0349                      select
0350                      i32.const 16
0351                      i32.shl
0352                      i32.const 31
0353                      i32.shr_s
0354                      i32.const -1
0355                      i32.xor
0356                      i32.add
0357                      local.set 4
0358                    end
41 ------------------------------------------------------------
0359                    local.get 6
0360                    i32.const 12
0361                    i32.shr_u
0362                    i32.const 32767
0363                    i32.and
0364                    local.set 1
0365                    block  ;; label = @9
42 ------------------------------------------------------------
0366                      i64.const 1
0367                      local.get 4
0368                      i32.const 31
0369                      i32.add
0370                      local.tee 6
0371                      i64.extend_i32_u
0372                      i64.shl
0373                      local.tee 13
0374                      local.get 13
0375                      local.get 9
0376                      i64.extend_i32_u
0377                      local.tee 14
0378                      i64.div_u
0379                      local.tee 13
0380                      local.get 14
0381                      i64.mul
0382                      i64.sub
0383                      local.tee 14
0384                      i64.eqz
0385                      if  ;; label = @10
43 ------------------------------------------------------------
0386                        local.get 4
0387                        i32.const 30
0388                        i32.add
0389                        local.set 6
0390                        local.get 13
0391                        i64.const 1
0392                        i64.shr_u
0393                        local.set 13
0394                        br 1 (;@9;)
44 ------------------------------------------------------------
0395                      end
45 ------------------------------------------------------------
0396                      local.get 14
0397                      local.get 1
0398                      i64.extend_i32_u
0399                      i64.le_u
0400                      if  ;; label = @10
46 ------------------------------------------------------------
0401                        local.get 1
0402                        i32.const 1
0403                        i32.add
0404                        local.set 1
0405                        br 1 (;@9;)
47 ------------------------------------------------------------
0406                      end
48 ------------------------------------------------------------
0407                      local.get 13
0408                      i64.const 1
0409                      i64.add
0410                      local.set 13
0411                    end
49 ------------------------------------------------------------
0412                    local.get 2
0413                    i32.const 1
0414                    i32.store
0415                    local.get 2
0416                    local.get 1
0417                    i32.store
0418                    local.get 2
0419                    local.get 13
0420                    i64.store32
0421                    local.get 2
0422                    local.get 6
0423                    i32.const -32
0424                    i32.add
0425                    i32.store
0426                    br 1 (;@7;)
50 ------------------------------------------------------------
0427                  end
51 ------------------------------------------------------------
0428                  local.get 2
0429                  i32.const -32
0430                  i32.store
0431                  local.get 2
0432                  i32.const 1
0433                  i32.store
0434                  local.get 2
0435                  i32.const 0
0436                  i32.store
0437                  local.get 2
0438                  i32.const 1
0439                  i32.store
0440                  local.get 8
0441                  i32.load
0442                  i32.const 23
0443                  i32.ne
0444                  br_if 0 (;@7;)
52 ------------------------------------------------------------
0445                  local.get 8
0446                  i32.const 24
0447                  i32.store
0448                end
53 ------------------------------------------------------------
0449                local.get 3
0450                i32.const 1
0451                i32.add
0452                local.tee 3
0453                i32.const 64
0454                i32.ne
0455                br_if 0 (;@6;)
54 ------------------------------------------------------------
0456              end
55 ------------------------------------------------------------
0457              br 2 (;@3;)
56 ------------------------------------------------------------
0458            end
57 ------------------------------------------------------------
0459            local.get 8
0460            local.get 3
0461            i32.const 2
0462            i32.shl
0463            i32.add
0464            local.tee 1
0465            i32.const 60
0466            i32.add
0467            i32.load
0468            local.tee 3
0469            i32.eqz
0470            if  ;; label = @5
58 ------------------------------------------------------------
0471              local.get 1
0472              local.get 0
0473              i32.const 1
0474              i32.const 256
0475              local.get 0
0476              i32.load
0477              i32.load
0478              call_indirect (type 3)
0479              local.tee 3
0480              i32.store
0481            end
59 ------------------------------------------------------------
0482            i32.const 0
0483            local.set 4
0484            i32.const 0
0485            local.set 1
0486            loop  ;; label = @5
60 ------------------------------------------------------------
0487              local.get 3
0488              local.get 1
0489              i32.const 2
0490              i32.shl
0491              i32.add
0492              f64.const 3.03865194162e-319
0493              local.get 4
0494              i32.const 3
0495              i32.shl
0496              i32.const 66768
0497              i32.add
0498              f64.load
0499              local.tee 15
0500              local.get 5
0501              local.get 1
0502              i32.const 1
0503              i32.shl
0504              i32.add
0505              i32.load16_u
0506              f64.convert_i32_u
0507              f64.mul
0508              f64.const 4.07900597207e-320
0509              f64.mul
0510              f64.div
0511              f32.demote_f64
0512              f32.store
0513              local.get 3
0514              local.get 1
0515              i32.const 1
0516              i32.or
0517              local.tee 2
0518              i32.const 2
0519              i32.shl
0520              i32.add
0521              f64.const 3.03865194162e-319
0522              local.get 15
0523              local.get 5
0524              local.get 2
0525              i32.const 1
0526              i32.shl
0527              i32.add
0528              i32.load16_u
0529              f64.convert_i32_u
0530              f64.mul
0531              f64.const -3.27559249918e+228
0532              f64.mul
0533              f64.const 4.07900597207e-320
0534              f64.mul
0535              f64.div
0536              f32.demote_f64
0537              f32.store
0538              local.get 3
0539              local.get 1
0540              i32.const 2
0541              i32.or
0542              local.tee 2
0543              i32.const 2
0544              i32.shl
0545              i32.add
0546              f64.const 3.03865194162e-319
0547              local.get 15
0548              local.get 5
0549              local.get 2
0550              i32.const 1
0551              i32.shl
0552              i32.add
0553              i32.load16_u
0554              f64.convert_i32_u
0555              f64.mul
0556              f64.const -3.65995135129e+50
0557              f64.mul
0558              f64.const 4.07900597207e-320
0559              f64.mul
0560              f64.div
0561              f32.demote_f64
0562              f32.store
0563              local.get 3
0564              local.get 1
0565              i32.const 3
0566              i32.or
0567              local.tee 2
0568              i32.const 2
0569              i32.shl
0570              i32.add
0571              f64.const 3.03865194162e-319
0572              local.get 15
0573              local.get 5
0574              local.get 2
0575              i32.const 1
0576              i32.shl
0577              i32.add
0578              i32.load16_u
0579              f64.convert_i32_u
0580              f64.mul
0581              f64.const -4.74862062784e-106
0582              f64.mul
0583              f64.const 4.07900597207e-320
0584              f64.mul
0585              f64.div
0586              f32.demote_f64
0587              f32.store
0588              local.get 3
0589              local.get 1
0590              i32.const 4
0591              i32.or
0592              local.tee 2
0593              i32.const 2
0594              i32.shl
0595              i32.add
0596              f64.const 3.03865194162e-319
0597              local.get 15
0598              local.get 5
0599              local.get 2
0600              i32.const 1
0601              i32.shl
0602              i32.add
0603              i32.load16_u
0604              f64.convert_i32_u
0605              f64.mul
0606              f64.const 4.07900597207e-320
0607              f64.mul
0608              f64.div
0609              f32.demote_f64
0610              f32.store
0611              local.get 3
0612              local.get 1
0613              i32.const 5
0614              i32.or
0615              local.tee 2
0616              i32.const 2
0617              i32.shl
0618              i32.add
0619              f64.const 3.03865194162e-319
0620              local.get 15
0621              local.get 5
0622              local.get 2
0623              i32.const 1
0624              i32.shl
0625              i32.add
0626              i32.load16_u
0627              f64.convert_i32_u
0628              f64.mul
0629              f64.const 6.70326621608e-21
0630              f64.mul
0631              f64.const 4.07900597207e-320
0632              f64.mul
0633              f64.div
0634              f32.demote_f64
0635              f32.store
0636              local.get 3
0637              local.get 1
0638              i32.const 6
0639              i32.or
0640              local.tee 2
0641              i32.const 2
0642              i32.shl
0643              i32.add
0644              f64.const 3.03865194162e-319
0645              local.get 15
0646              local.get 5
0647              local.get 2
0648              i32.const 1
0649              i32.shl
0650              i32.add
0651              i32.load16_u
0652              f64.convert_i32_u
0653              f64.mul
0654              f64.const -6.93972599462e-24
0655              f64.mul
0656              f64.const 4.07900597207e-320
0657              f64.mul
0658              f64.div
0659              f32.demote_f64
0660              f32.store
0661              local.get 3
0662              local.get 1
0663              i32.const 7
0664              i32.or
0665              local.tee 2
0666              i32.const 2
0667              i32.shl
0668              i32.add
0669              f64.const 3.03865194162e-319
0670              local.get 15
0671              local.get 5
0672              local.get 2
0673              i32.const 1
0674              i32.shl
0675              i32.add
0676              i32.load16_u
0677              f64.convert_i32_u
0678              f64.mul
0679              f64.const 1.67359287538e+143
0680              f64.mul
0681              f64.const 4.07900597207e-320
0682              f64.mul
0683              f64.div
0684              f32.demote_f64
0685              f32.store
0686              local.get 1
0687              i32.const 8
0688              i32.add
0689              local.set 1
0690              local.get 4
0691              i32.const 1
0692              i32.add
0693              local.tee 4
0694              i32.const 8
0695              i32.ne
0696              br_if 0 (;@5;)
61 ------------------------------------------------------------
0697            end
62 ------------------------------------------------------------
0698            br 1 (;@3;)
63 ------------------------------------------------------------
0699          end
64 ------------------------------------------------------------
0700          local.get 0
0701          i32.load
0702          local.tee 3
0703          i32.const 48
0704          i32.store
0705          local.get 0
0706          local.get 3
0707          i32.load
0708          call_indirect (type 0)
0709        end
65 ------------------------------------------------------------
0710        local.get 10
0711        i32.const 84
0712        i32.add
0713        local.set 10
0714        local.get 12
0715        i32.const 1
0716        i32.add
0717        local.tee 12
0718        local.get 0
0719        i32.load
0720        i32.lt_s
0721        br_if 0 (;@2;)
66 ------------------------------------------------------------
0722      end
67 ------------------------------------------------------------
0723    end
68 ------------------------------------------------------------)
