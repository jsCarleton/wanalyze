  (func (;104;) (type 25) (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 f32 f32 f32 f32 f32 f32 f64 f64)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 1360
0002    i32.sub
0003    local.tee 14
0004    global.set 0
0005    i32.const 60
0006    local.get 6
0007    i32.load16_u
0008    i32.div_u
0009    local.set 12
0010    block  ;; label = @1
1 ------------------------------------------------------------
0011      local.get 0
0012      i32.load offset=320
0013      local.tee 27
0014      local.get 0
0015      i32.load offset=316
0016      local.tee 13
0017      i32.const 1
0018      local.get 13
0019      select
0020      local.tee 23
0021      i32.lt_s
0022      br_if 0 (;@1;)
2 ------------------------------------------------------------
0023      local.get 12
0024      i32.const 2
0025      i32.add
0026      i32.const 1
0027      i32.or
0028      local.tee 19
0029      i32.const 9
0030      i32.lt_u
0031      local.set 17
0032      block  ;; label = @2
3 ------------------------------------------------------------
0033        local.get 0
0034        i32.load offset=332
0035        local.tee 12
0036        i32.load offset=32
0037        i32.eqz
0038        if  ;; label = @3
4 ------------------------------------------------------------
0039          br 1 (;@2;)
5 ------------------------------------------------------------
0040        end
6 ------------------------------------------------------------
0041        local.get 5
0042        i32.const 2
0043        i32.shl
0044        local.tee 15
0045        i32.const 4
0046        i32.add
0047        local.tee 13
0048        call 32
0049        local.set 26
0050        local.get 13
0051        call 32
0052        local.set 31
0053        local.get 15
0054        call 32
0055        local.set 34
0056        local.get 13
0057        call 32
0058        local.set 28
0059        local.get 34
0060        i32.eqz
0061        local.get 26
0062        i32.eqz
0063        local.get 31
0064        i32.eqz
0065        i32.or
0066        i32.or
0067        i32.eqz
0068        i32.const 0
0069        local.get 28
0070        select
0071        i32.eqz
0072        if  ;; label = @3
7 ------------------------------------------------------------
0073          local.get 0
0074          i32.load
0075          local.tee 12
0076          i32.const 54
0077          i32.store offset=20
0078          local.get 0
0079          local.get 12
0080          i32.load
0081          call_indirect (type 0)
0082          local.get 0
0083          i32.load offset=332
0084          local.set 12
0085        end
8 ------------------------------------------------------------
0086        local.get 26
0087        i32.const 0
0088        i32.store
0089        local.get 31
0090        i32.const 0
0091        i32.store
0092        local.get 28
0093        i32.const 0
0094        i32.store
0095      end
9 ------------------------------------------------------------
0096      local.get 19
0097      i32.const 9
0098      local.get 17
0099      select
0100      local.set 29
0101      local.get 12
0102      i32.load offset=28
0103      if  ;; label = @2
10 ------------------------------------------------------------
0104        local.get 5
0105        i32.const 1
0106        i32.shl
0107        local.set 17
0108        local.get 5
0109        i32.const 2
0110        i32.shl
0111        local.set 13
0112        i32.const 0
0113        local.set 12
0114        loop  ;; label = @3
11 ------------------------------------------------------------
0115          local.get 12
0116          i32.const 2
0117          i32.shl
0118          local.tee 19
0119          local.get 14
0120          i32.const 544
0121          i32.add
0122          i32.add
0123          local.get 13
0124          call 32
0125          local.tee 15
0126          i32.store
0127          local.get 14
0128          i32.const 496
0129          i32.add
0130          local.get 19
0131          i32.add
0132          local.get 13
0133          call 32
0134          local.tee 24
0135          i32.store
0136          local.get 14
0137          i32.const 448
0138          i32.add
0139          local.get 19
0140          i32.add
0141          local.get 17
0142          call 32
0143          local.tee 19
0144          i32.store
0145          local.get 15
0146          i32.eqz
0147          local.get 19
0148          i32.eqz
0149          i32.or
0150          i32.eqz
0151          i32.const 0
0152          local.get 24
0153          select
0154          i32.eqz
0155          if  ;; label = @4
12 ------------------------------------------------------------
0156            local.get 0
0157            i32.load
0158            local.tee 19
0159            i32.const 54
0160            i32.store offset=20
0161            local.get 0
0162            local.get 19
0163            i32.load
0164            call_indirect (type 0)
0165          end
13 ------------------------------------------------------------
0166          local.get 12
0167          i32.const 1
0168          i32.add
0169          local.tee 12
0170          local.get 29
0171          i32.ne
0172          br_if 0 (;@3;)
14 ------------------------------------------------------------
0173        end
15 ------------------------------------------------------------
0174      end
16 ------------------------------------------------------------
0175      i32.const 0
0176      local.set 12
0177      loop  ;; label = @2
17 ------------------------------------------------------------
0178        local.get 14
0179        i32.const 192
0180        i32.add
0181        local.get 12
0182        i32.const 2
0183        i32.shl
0184        i32.add
0185        f64.const 1.
0186        local.get 6
0187        local.get 12
0188        i32.const 1
0189        i32.shl
0190        i32.add
0191        i32.load16_u
0192        local.tee 13
0193        local.get 13
0194        i32.mul
0195        f64.convert_i32_s
0196        f64.div
0197        f32.demote_f64
0198        f32.store
0199        local.get 12
0200        i32.const 1
0201        i32.add
0202        local.tee 12
0203        i32.const 64
0204        i32.ne
0205        br_if 0 (;@2;)
18 ------------------------------------------------------------
0206      end
19 ------------------------------------------------------------
0207      block  ;; label = @2
20 ------------------------------------------------------------
0208        local.get 5
0209        i32.eqz
0210        if  ;; label = @3
21 ------------------------------------------------------------
0211          local.get 0
0212          i32.load offset=332
0213          local.tee 24
0214          i32.load offset=32
0215          local.set 15
0216          br 1 (;@2;)
22 ------------------------------------------------------------
0217        end
23 ------------------------------------------------------------
0218        local.get 10
0219        i32.const 0
0220        i32.ne
0221        local.get 11
0222        i32.const 0
0223        i32.ne
0224        i32.and
0225        local.set 44
0226        local.get 27
0227        local.get 23
0228        local.get 27
0229        local.get 23
0230        i32.gt_s
0231        select
0232        local.set 43
0233        local.get 29
0234        i32.const -2
0235        i32.div_s
0236        local.set 45
0237        local.get 14
0238        i32.const 1104
0239        i32.add
0240        local.get 27
0241        i32.const 2
0242        i32.shl
0243        i32.add
0244        local.set 46
0245        local.get 23
0246        i32.const -1
0247        i32.add
0248        local.tee 19
0249        i32.const 2
0250        i32.shl
0251        local.tee 12
0252        local.get 14
0253        i32.const 848
0254        i32.add
0255        i32.add
0256        local.set 47
0257        local.get 14
0258        i32.const 1104
0259        i32.add
0260        local.get 12
0261        i32.add
0262        local.set 48
0263        local.get 0
0264        i32.load offset=332
0265        local.set 24
0266        local.get 14
0267        i32.load offset=544
0268        local.set 49
0269        local.get 14
0270        i32.load offset=448
0271        local.set 50
0272        local.get 14
0273        f32.load offset=192
0274        local.set 56
0275        i32.const 1
0276        local.set 40
0277        i32.const 0
0278        local.set 17
0279        loop  ;; label = @3
24 ------------------------------------------------------------
0280          i32.const 1
0281          local.set 12
0282          f32.const 0.
0283          local.set 52
0284          loop  ;; label = @4
25 ------------------------------------------------------------
0285            local.get 52
0286            local.get 4
0287            local.get 17
0288            i32.const 7
0289            i32.shl
0290            local.tee 20
0291            i32.add
0292            local.tee 35
0293            local.get 12
0294            i32.const 1
0295            i32.shl
0296            i32.add
0297            i32.load16_s
0298            local.tee 13
0299            local.get 13
0300            i32.mul
0301            f32.convert_i32_s
0302            f32.add
0303            local.set 52
0304            local.get 12
0305            i32.const 1
0306            i32.add
0307            local.tee 12
0308            i32.const 64
0309            i32.ne
0310            br_if 0 (;@4;)
26 ------------------------------------------------------------
0311          end
27 ------------------------------------------------------------
0312          local.get 24
0313          f32.load offset=4196
0314          f64.promote_f32
0315          local.set 58
0316          block (result f64)  ;; label = @4
28 ------------------------------------------------------------
0317            local.get 24
0318            f32.load offset=4200
0319            local.tee 51
0320            f32.const 0.
0321            f32.gt
0322            i32.const 1
0323            i32.xor
0324            i32.eqz
0325            if  ;; label = @5
29 ------------------------------------------------------------
0326              local.get 51
0327              f64.promote_f32
0328              call 62
0329              local.set 59
0330              local.get 58
0331              call 62
0332              local.get 59
0333              local.get 52
0334              f32.const 1.92414534861e+12
0335              f32.div
0336              f64.promote_f32
0337              f64.add
0338              f64.div
0339              br 1 (;@4;)
30 ------------------------------------------------------------
0340            end
31 ------------------------------------------------------------
0341            local.get 58
0342            f64.const -12.
0343            f64.add
0344            call 62
0345          end
32 ------------------------------------------------------------
0346          local.set 58
0347          local.get 48
0348          i32.const 0
0349          i32.store
0350          local.get 47
0351          i32.const 0
0352          i32.store
0353          local.get 58
0354          f32.demote_f64
0355          local.set 54
0356          local.get 24
0357          i32.load offset=28
0358          if  ;; label = @4
33 ------------------------------------------------------------
0359            local.get 56
0360            local.get 54
0361            f32.mul
0362            local.set 53
0363            local.get 35
0364            i32.load16_s
0365            local.tee 12
0366            local.get 12
0367            i32.const 31
0368            i32.shr_s
0369            local.tee 13
0370            i32.add
0371            local.get 13
0372            i32.xor
0373            local.tee 36
0374            local.get 6
0375            i32.load16_u
0376            local.tee 13
0377            i32.const 2
0378            i32.shl
0379            i32.add
0380            local.get 13
0381            i32.const 3
0382            i32.shl
0383            local.tee 21
0384            i32.div_u
0385            local.get 45
0386            i32.add
0387            local.set 32
0388            local.get 10
0389            local.get 20
0390            i32.add
0391            local.set 33
0392            local.get 11
0393            local.get 20
0394            i32.add
0395            local.set 37
0396            local.get 49
0397            local.get 17
0398            i32.const -1
0399            i32.add
0400            local.tee 13
0401            i32.const 2
0402            i32.shl
0403            local.tee 30
0404            i32.add
0405            local.set 38
0406            local.get 50
0407            local.get 13
0408            i32.const 1
0409            i32.shl
0410            local.tee 41
0411            i32.add
0412            local.set 39
0413            local.get 12
0414            i32.const 30
0415            i32.shr_s
0416            i32.const 1
0417            i32.or
0418            local.set 42
0419            i32.const 0
0420            local.set 15
0421            loop  ;; label = @5
34 ------------------------------------------------------------
0422              local.get 15
0423              i32.const 2
0424              i32.shl
0425              local.tee 16
0426              local.get 14
0427              i32.const 448
0428              i32.add
0429              i32.add
0430              i32.load
0431              local.tee 22
0432              local.get 17
0433              i32.const 1
0434              i32.shl
0435              i32.add
0436              local.tee 18
0437              local.get 15
0438              local.get 32
0439              i32.add
0440              local.tee 12
0441              i32.store16
0442              i32.const 1023
0443              local.set 13
0444              block  ;; label = @6
35 ------------------------------------------------------------
0445                local.get 12
0446                i32.const 16
0447                i32.shl
0448                local.tee 12
0449                i32.const 67043328
0450                i32.le_s
0451                if  ;; label = @7
36 ------------------------------------------------------------
0452                  i32.const 64513
0453                  local.set 13
0454                  local.get 12
0455                  i32.const 16
0456                  i32.shr_s
0457                  local.tee 12
0458                  i32.const -1024
0459                  i32.gt_s
0460                  br_if 1 (;@6;)
37 ------------------------------------------------------------
0461                end
38 ------------------------------------------------------------
0462                local.get 18
0463                local.get 13
0464                i32.store16
0465                local.get 13
0466                local.set 12
0467              end
39 ------------------------------------------------------------
0468              local.get 18
0469              local.get 12
0470              local.get 42
0471              i32.mul
0472              local.tee 18
0473              i32.store16
0474              local.get 53
0475              local.get 21
0476              local.get 12
0477              i32.const 16
0478              i32.shl
0479              i32.const 16
0480              i32.shr_s
0481              i32.mul
0482              local.get 36
0483              i32.sub
0484              local.tee 12
0485              local.get 12
0486              i32.mul
0487              f32.convert_i32_s
0488              f32.mul
0489              local.set 51
0490              block  ;; label = @6
40 ------------------------------------------------------------
0491                local.get 44
0492                i32.eqz
0493                br_if 0 (;@6;)
41 ------------------------------------------------------------
0494                local.get 24
0495                f32.load offset=4204
0496                local.tee 52
0497                f32.const 0.
0498                f32.gt
0499                i32.const 1
0500                i32.xor
0501                br_if 0 (;@6;)
42 ------------------------------------------------------------
0502                local.get 51
0503                local.get 52
0504                local.get 53
0505                local.get 37
0506                i32.load16_s
0507                local.get 35
0508                i32.load16_s
0509                i32.sub
0510                local.get 18
0511                i32.const 16
0512                i32.shl
0513                i32.const 16
0514                i32.shr_s
0515                local.get 33
0516                i32.load16_s
0517                i32.sub
0518                local.get 21
0519                i32.mul
0520                i32.add
0521                local.tee 12
0522                local.get 12
0523                i32.mul
0524                f32.convert_i32_s
0525                f32.mul
0526                local.get 51
0527                f32.sub
0528                f32.mul
0529                f32.add
0530                local.set 51
0531              end
43 ------------------------------------------------------------
0532              block  ;; label = @6
44 ------------------------------------------------------------
0533                local.get 17
0534                if  ;; label = @7
45 ------------------------------------------------------------
0535                  local.get 17
0536                  i32.const 2
0537                  i32.shl
0538                  local.tee 13
0539                  local.get 14
0540                  i32.const 544
0541                  i32.add
0542                  local.get 16
0543                  i32.add
0544                  local.tee 12
0545                  i32.load
0546                  i32.add
0547                  local.get 38
0548                  f32.load
0549                  local.get 51
0550                  i32.const 32
0551                  local.get 18
0552                  i32.const 16
0553                  i32.shl
0554                  i32.const 16
0555                  i32.shr_s
0556                  local.tee 18
0557                  local.get 39
0558                  i32.load16_s
0559                  i32.sub
0560                  local.tee 22
0561                  local.get 22
0562                  i32.const 31
0563                  i32.shr_s
0564                  local.tee 22
0565                  i32.add
0566                  local.get 22
0567                  i32.xor
0568                  local.tee 22
0569                  i32.clz
0570                  i32.sub
0571                  i32.const 0
0572                  local.get 22
0573                  select
0574                  local.tee 22
0575                  local.get 1
0576                  local.get 22
0577                  i32.add
0578                  i32.const 1024
0579                  i32.add
0580                  i32.load8_s
0581                  i32.add
0582                  f32.convert_i32_s
0583                  f32.add
0584                  f32.add
0585                  f32.store
0586                  local.get 14
0587                  i32.const 496
0588                  i32.add
0589                  local.get 16
0590                  i32.add
0591                  local.tee 22
0592                  i32.load
0593                  local.get 13
0594                  i32.add
0595                  i32.const 0
0596                  i32.store
0597                  local.get 29
0598                  i32.const 1
0599                  i32.eq
0600                  br_if 1 (;@6;)
46 ------------------------------------------------------------
0601                  local.get 12
0602                  i32.load
0603                  local.get 13
0604                  i32.add
0605                  local.set 16
0606                  i32.const 1
0607                  local.set 12
0608                  loop  ;; label = @8
47 ------------------------------------------------------------
0609                    local.get 12
0610                    i32.const 2
0611                    i32.shl
0612                    local.tee 25
0613                    local.get 14
0614                    i32.const 544
0615                    i32.add
0616                    i32.add
0617                    i32.load
0618                    local.get 30
0619                    i32.add
0620                    f32.load
0621                    local.get 51
0622                    i32.const 32
0623                    local.get 18
0624                    local.get 14
0625                    i32.const 448
0626                    i32.add
0627                    local.get 25
0628                    i32.add
0629                    i32.load
0630                    local.get 41
0631                    i32.add
0632                    i32.load16_s
0633                    i32.sub
0634                    local.tee 25
0635                    local.get 25
0636                    i32.const 31
0637                    i32.shr_s
0638                    local.tee 25
0639                    i32.add
0640                    local.get 25
0641                    i32.xor
0642                    local.tee 25
0643                    i32.clz
0644                    i32.sub
0645                    i32.const 0
0646                    local.get 25
0647                    select
0648                    local.tee 25
0649                    local.get 1
0650                    local.get 25
0651                    i32.add
0652                    i32.const 1024
0653                    i32.add
0654                    i32.load8_s
0655                    i32.add
0656                    f32.convert_i32_s
0657                    f32.add
0658                    f32.add
0659                    local.tee 52
0660                    local.get 16
0661                    f32.load
0662                    f32.lt
0663                    i32.const 1
0664                    i32.xor
0665                    i32.eqz
0666                    if  ;; label = @9
48 ------------------------------------------------------------
0667                      local.get 16
0668                      local.get 52
0669                      f32.store
0670                      local.get 22
0671                      i32.load
0672                      local.get 13
0673                      i32.add
0674                      local.get 12
0675                      i32.store
0676                    end
49 ------------------------------------------------------------
0677                    local.get 12
0678                    i32.const 1
0679                    i32.add
0680                    local.tee 12
0681                    local.get 29
0682                    i32.ne
0683                    br_if 0 (;@8;)
50 ------------------------------------------------------------
0684                  end
51 ------------------------------------------------------------
0685                  br 1 (;@6;)
52 ------------------------------------------------------------
0686                end
53 ------------------------------------------------------------
0687                local.get 14
0688                i32.const 544
0689                i32.add
0690                local.get 16
0691                i32.add
0692                i32.load
0693                local.get 51
0694                i32.const 32
0695                local.get 22
0696                i32.load16_s
0697                local.get 9
0698                i32.load16_s
0699                i32.sub
0700                local.tee 12
0701                local.get 12
0702                i32.const 31
0703                i32.shr_s
0704                local.tee 12
0705                i32.add
0706                local.get 12
0707                i32.xor
0708                local.tee 12
0709                i32.clz
0710                i32.sub
0711                i32.const 0
0712                local.get 12
0713                select
0714                local.tee 12
0715                local.get 1
0716                local.get 12
0717                i32.add
0718                i32.const 1024
0719                i32.add
0720                i32.load8_s
0721                i32.add
0722                f32.convert_i32_s
0723                f32.add
0724                f32.store
0725                local.get 14
0726                i32.const 496
0727                i32.add
0728                local.get 16
0729                i32.add
0730                i32.load
0731                i32.const -1
0732                i32.store
0733              end
54 ------------------------------------------------------------
0734              local.get 15
0735              i32.const 1
0736              i32.add
0737              local.tee 15
0738              local.get 29
0739              i32.ne
0740              br_if 0 (;@5;)
55 ------------------------------------------------------------
0741            end
56 ------------------------------------------------------------
0742          end
57 ------------------------------------------------------------
0743          f32.const 0.
0744          local.set 53
0745          local.get 23
0746          local.set 12
0747          loop  ;; label = @4
58 ------------------------------------------------------------
0748            local.get 6
0749            local.get 12
0750            local.tee 15
0751            i32.const 2
0752            i32.shl
0753            local.tee 16
0754            i32.const 142864
0755            i32.add
0756            i32.load
0757            local.tee 21
0758            i32.const 1
0759            i32.shl
0760            local.tee 18
0761            i32.add
0762            i32.load16_u
0763            local.set 13
0764            local.get 14
0765            i32.const 1104
0766            i32.add
0767            local.get 16
0768            i32.add
0769            local.get 54
0770            local.get 18
0771            local.get 35
0772            i32.add
0773            i32.load16_s
0774            local.tee 12
0775            local.get 12
0776            i32.mul
0777            f32.convert_i32_s
0778            f32.mul
0779            local.get 14
0780            i32.const 192
0781            i32.add
0782            local.get 21
0783            i32.const 2
0784            i32.shl
0785            i32.add
0786            f32.load
0787            local.tee 51
0788            f32.mul
0789            local.get 53
0790            local.tee 55
0791            f32.add
0792            local.tee 53
0793            f32.store
0794            local.get 12
0795            local.get 12
0796            i32.const 31
0797            i32.shr_s
0798            local.tee 36
0799            i32.add
0800            local.get 36
0801            i32.xor
0802            local.tee 37
0803            local.get 13
0804            i32.const 2
0805            i32.shl
0806            i32.add
0807            local.tee 21
0808            local.get 13
0809            i32.const 3
0810            i32.shl
0811            local.tee 32
0812            i32.div_u
0813            local.set 12
0814            block  ;; label = @5
59 ------------------------------------------------------------
0815              local.get 32
0816              local.get 21
0817              i32.gt_u
0818              if  ;; label = @6
60 ------------------------------------------------------------
0819                local.get 3
0820                local.get 20
0821                i32.add
0822                local.get 18
0823                i32.add
0824                i32.const 0
0825                i32.store16
0826                local.get 14
0827                i32.const 848
0828                i32.add
0829                local.get 16
0830                i32.add
0831                i32.const 2123789977
0832                i32.store
0833                br 1 (;@5;)
61 ------------------------------------------------------------
0834              end
62 ------------------------------------------------------------
0835              local.get 12
0836              i32.const 1023
0837              local.get 12
0838              i32.const 1023
0839              i32.lt_u
0840              select
0841              local.tee 30
0842              i32.const 1104
0843              i32.add
0844              i32.load8_u
0845              local.tee 21
0846              if  ;; label = @6
63 ------------------------------------------------------------
0847                local.get 23
0848                local.get 15
0849                local.get 23
0850                local.get 15
0851                i32.gt_s
0852                local.tee 38
0853                select
0854                local.set 41
0855                local.get 21
0856                i32.const -1
0857                i32.add
0858                local.set 39
0859                i32.const 0
0860                local.set 12
0861                loop  ;; label = @7
64 ------------------------------------------------------------
0862                  local.get 12
0863                  i32.const 2
0864                  i32.shl
0865                  local.tee 33
0866                  local.get 14
0867                  i32.const -64
0868                  i32.sub
0869                  i32.add
0870                  local.get 12
0871                  i32.const 1
0872                  i32.add
0873                  local.tee 13
0874                  i32.store
0875                  local.get 14
0876                  i32.const 128
0877                  i32.add
0878                  local.get 33
0879                  i32.add
0880                  i32.const 2
0881                  local.get 12
0882                  i32.shl
0883                  i32.const -1
0884                  i32.add
0885                  local.get 30
0886                  local.get 12
0887                  local.get 39
0888                  i32.lt_s
0889                  select
0890                  local.tee 12
0891                  i32.store
0892                  local.get 14
0893                  local.get 33
0894                  i32.add
0895                  local.get 51
0896                  local.get 54
0897                  local.get 12
0898                  local.get 32
0899                  i32.mul
0900                  local.get 37
0901                  i32.sub
0902                  local.tee 12
0903                  local.get 12
0904                  i32.mul
0905                  f32.convert_i32_s
0906                  f32.mul
0907                  f32.mul
0908                  f32.store
0909                  local.get 13
0910                  local.tee 12
0911                  local.get 21
0912                  i32.ne
0913                  br_if 0 (;@7;)
65 ------------------------------------------------------------
0914                end
66 ------------------------------------------------------------
0915                local.get 14
0916                i32.const 848
0917                i32.add
0918                local.get 16
0919                i32.add
0920                local.tee 32
0921                i32.const 2123789977
0922                i32.store
0923                local.get 38
0924                local.get 21
0925                i32.eqz
0926                i32.or
0927                br_if 1 (;@5;)
67 ------------------------------------------------------------
0928                local.get 18
0929                local.get 3
0930                local.get 20
0931                i32.add
0932                local.tee 18
0933                i32.add
0934                local.set 33
0935                local.get 14
0936                i32.const 592
0937                i32.add
0938                local.get 16
0939                i32.add
0940                local.set 37
0941                f32.const 6.01739734877e+301
0942                local.set 51
0943                local.get 19
0944                local.set 13
0945                loop  ;; label = @7
68 ------------------------------------------------------------
0946                  block  ;; label = @8
69 ------------------------------------------------------------
0947                    local.get 13
0948                    local.get 19
0949                    i32.ne
0950                    if  ;; label = @9
70 ------------------------------------------------------------
0951                      local.get 18
0952                      local.get 13
0953                      i32.const 2
0954                      i32.shl
0955                      i32.const 142864
0956                      i32.add
0957                      i32.load
0958                      i32.const 1
0959                      i32.shl
0960                      i32.add
0961                      i32.load16_u
0962                      i32.eqz
0963                      br_if 1 (;@8;)
71 ------------------------------------------------------------
0964                    end
72 ------------------------------------------------------------
0965                    i32.const 0
0966                    local.get 15
0967                    local.get 13
0968                    i32.const -1
0969                    i32.xor
0970                    i32.add
0971                    local.tee 16
0972                    i32.const 4
0973                    i32.shr_s
0974                    local.tee 30
0975                    local.get 2
0976                    i32.load8_s offset=1264
0977                    local.tee 12
0978                    select
0979                    br_if 0 (;@8;)
73 ------------------------------------------------------------
0980                    local.get 12
0981                    local.get 30
0982                    i32.mul
0983                    local.set 30
0984                    local.get 16
0985                    i32.const 4
0986                    i32.shl
0987                    i32.const 240
0988                    i32.and
0989                    local.set 38
0990                    local.get 13
0991                    i32.const 2
0992                    i32.shl
0993                    local.tee 12
0994                    local.get 14
0995                    i32.const 848
0996                    i32.add
0997                    i32.add
0998                    local.set 39
0999                    local.get 14
1000                    i32.const 1104
1001                    i32.add
1002                    local.get 12
1003                    i32.add
1004                    local.set 42
1005                    i32.const 0
1006                    local.set 12
1007                    loop  ;; label = @9
74 ------------------------------------------------------------
1008                      block  ;; label = @10
75 ------------------------------------------------------------
1009                        local.get 2
1010                        local.get 12
1011                        i32.const 2
1012                        i32.shl
1013                        local.tee 16
1014                        local.get 14
1015                        i32.const -64
1016                        i32.sub
1017                        i32.add
1018                        i32.load
1019                        local.tee 22
1020                        local.get 38
1021                        i32.add
1022                        i32.add
1023                        i32.const 1024
1024                        i32.add
1025                        i32.load8_s
1026                        local.tee 25
1027                        i32.eqz
1028                        br_if 0 (;@10;)
76 ------------------------------------------------------------
1029                        local.get 14
1030                        local.get 16
1031                        i32.add
1032                        f32.load
1033                        local.get 22
1034                        local.get 30
1035                        i32.add
1036                        local.get 25
1037                        i32.add
1038                        f32.convert_i32_s
1039                        f32.add
1040                        local.get 55
1041                        local.get 42
1042                        f32.load
1043                        f32.sub
1044                        local.get 39
1045                        f32.load
1046                        f32.add
1047                        f32.add
1048                        local.tee 52
1049                        local.get 51
1050                        f32.lt
1051                        i32.const 1
1052                        i32.xor
1053                        br_if 0 (;@10;)
77 ------------------------------------------------------------
1054                        local.get 33
1055                        local.get 14
1056                        i32.const 128
1057                        i32.add
1058                        local.get 16
1059                        i32.add
1060                        i32.load
1061                        local.get 36
1062                        i32.xor
1063                        local.get 36
1064                        i32.sub
1065                        i32.store16
1066                        local.get 32
1067                        local.get 52
1068                        f32.store
1069                        local.get 37
1070                        local.get 13
1071                        i32.store
1072                        local.get 52
1073                        local.set 51
1074                      end
78 ------------------------------------------------------------
1075                      local.get 12
1076                      i32.const 1
1077                      i32.add
1078                      local.tee 12
1079                      local.get 21
1080                      i32.ne
1081                      br_if 0 (;@9;)
79 ------------------------------------------------------------
1082                    end
80 ------------------------------------------------------------
1083                  end
81 ------------------------------------------------------------
1084                  local.get 13
1085                  i32.const 1
1086                  i32.add
1087                  local.tee 13
1088                  local.get 41
1089                  i32.ne
1090                  br_if 0 (;@7;)
82 ------------------------------------------------------------
1091                end
83 ------------------------------------------------------------
1092                br 1 (;@5;)
84 ------------------------------------------------------------
1093              end
85 ------------------------------------------------------------
1094              local.get 14
1095              i32.const 848
1096              i32.add
1097              local.get 16
1098              i32.add
1099              i32.const 2123789977
1100              i32.store
1101            end
86 ------------------------------------------------------------
1102            local.get 15
1103            i32.const 1
1104            i32.add
1105            local.set 12
1106            local.get 15
1107            local.get 43
1108            i32.ne
1109            br_if 0 (;@4;)
87 ------------------------------------------------------------
1110          end
88 ------------------------------------------------------------
1111          local.get 46
1112          f32.load
1113          local.tee 51
1114          local.get 2
1115          i32.load8_s offset=1024
1116          f32.convert_i32_s
1117          local.tee 54
1118          f32.add
1119          local.set 52
1120          local.get 23
1121          local.set 12
1122          local.get 19
1123          local.set 13
1124          local.get 51
1125          local.set 53
1126          loop  ;; label = @4
89 ------------------------------------------------------------
1127            local.get 3
1128            local.get 20
1129            i32.add
1130            local.tee 16
1131            local.get 12
1132            i32.const 2
1133            i32.shl
1134            local.tee 15
1135            i32.const 142864
1136            i32.add
1137            i32.load
1138            i32.const 1
1139            i32.shl
1140            i32.add
1141            i32.load16_u
1142            if  ;; label = @5
90 ------------------------------------------------------------
1143              local.get 51
1144              local.get 14
1145              i32.const 848
1146              i32.add
1147              local.get 15
1148              i32.add
1149              f32.load
1150              f32.add
1151              local.get 14
1152              i32.const 1104
1153              i32.add
1154              local.get 15
1155              i32.add
1156              f32.load
1157              f32.sub
1158              local.tee 55
1159              local.get 54
1160              f32.add
1161              local.get 55
1162              local.get 12
1163              local.get 27
1164              i32.lt_s
1165              select
1166              local.tee 57
1167              local.get 52
1168              local.get 57
1169              local.get 52
1170              f32.lt
1171              local.tee 15
1172              select
1173              local.set 52
1174              local.get 55
1175              local.get 53
1176              local.get 15
1177              select
1178              local.set 53
1179              local.get 12
1180              local.get 13
1181              local.get 15
1182              select
1183              local.set 13
1184            end
91 ------------------------------------------------------------
1185            local.get 12
1186            local.get 43
1187            i32.ne
1188            local.set 15
1189            local.get 12
1190            i32.const 1
1191            i32.add
1192            local.set 12
1193            local.get 15
1194            br_if 0 (;@4;)
92 ------------------------------------------------------------
1195          end
93 ------------------------------------------------------------
1196          local.get 13
1197          local.get 19
1198          i32.eq
1199          local.get 13
1200          local.get 27
1201          i32.lt_s
1202          i32.add
1203          local.set 20
1204          local.get 27
1205          local.set 12
1206          loop  ;; label = @4
94 ------------------------------------------------------------
1207            local.get 12
1208            local.get 13
1209            i32.gt_s
1210            if  ;; label = @5
95 ------------------------------------------------------------
1211              loop  ;; label = @6
96 ------------------------------------------------------------
1212                local.get 16
1213                local.get 12
1214                i32.const 2
1215                i32.shl
1216                i32.const 142864
1217                i32.add
1218                i32.load
1219                i32.const 1
1220                i32.shl
1221                i32.add
1222                i32.const 0
1223                i32.store16
1224                local.get 12
1225                i32.const -1
1226                i32.add
1227                local.tee 12
1228                local.get 13
1229                i32.gt_s
1230                br_if 0 (;@6;)
97 ------------------------------------------------------------
1231              end
98 ------------------------------------------------------------
1232              local.get 13
1233              local.set 12
1234            end
99 ------------------------------------------------------------
1235            local.get 12
1236            local.get 23
1237            i32.gt_s
1238            local.set 15
1239            local.get 14
1240            i32.const 592
1241            i32.add
1242            local.get 12
1243            i32.const 2
1244            i32.shl
1245            i32.add
1246            i32.load
1247            local.set 13
1248            local.get 12
1249            i32.const -1
1250            i32.add
1251            local.set 12
1252            local.get 15
1253            br_if 0 (;@4;)
100 ------------------------------------------------------------
1254          end
101 ------------------------------------------------------------
1255          block (result i32)  ;; label = @4
102 ------------------------------------------------------------
1256            local.get 17
1257            i32.const 1
1258            i32.add
1259            local.get 24
1260            i32.load offset=32
1261            local.tee 15
1262            i32.eqz
1263            br_if 0 (;@4;)
103 ------------------------------------------------------------
1264            drop
1265            local.get 26
1266            local.get 17
1267            i32.const 1
1268            i32.add
1269            local.tee 13
1270            i32.const 2
1271            i32.shl
1272            local.tee 12
1273            i32.add
1274            local.get 51
1275            local.get 26
1276            local.get 17
1277            i32.const 2
1278            i32.shl
1279            local.tee 16
1280            i32.add
1281            local.tee 21
1282            f32.load
1283            f32.add
1284            f32.store
1285            local.get 12
1286            local.get 28
1287            i32.add
1288            local.get 20
1289            i32.store
1290            local.get 20
1291            i32.const 2
1292            i32.ne
1293            if  ;; label = @5
104 ------------------------------------------------------------
1294              local.get 12
1295              local.get 31
1296              i32.add
1297              local.set 35
1298              local.get 16
1299              local.get 34
1300              i32.add
1301              local.set 16
1302              f32.const 6.01739734877e+301
1303              local.set 51
1304              i32.const 0
1305              local.set 12
1306              loop  ;; label = @6
105 ------------------------------------------------------------
1307                block  ;; label = @7
106 ------------------------------------------------------------
1308                  local.get 28
1309                  local.get 12
1310                  i32.const 2
1311                  i32.shl
1312                  local.tee 20
1313                  i32.add
1314                  i32.load
1315                  local.tee 18
1316                  i32.const 2
1317                  i32.eq
1318                  br_if 0 (;@7;)
107 ------------------------------------------------------------
1319                  local.get 53
1320                  local.get 21
1321                  f32.load
1322                  f32.add
1323                  local.get 20
1324                  local.get 26
1325                  i32.add
1326                  f32.load
1327                  f32.sub
1328                  local.get 20
1329                  local.get 31
1330                  i32.add
1331                  f32.load
1332                  f32.add
1333                  local.get 2
1334                  local.get 17
1335                  local.get 12
1336                  i32.sub
1337                  local.get 18
1338                  i32.add
1339                  i32.const 1104
1340                  i32.add
1341                  i32.load8_u
1342                  local.tee 20
1343                  i32.const 4
1344                  i32.shl
1345                  i32.add
1346                  i32.const 1024
1347                  i32.add
1348                  i32.load8_s
1349                  local.get 20
1350                  i32.add
1351                  f32.convert_i32_s
1352                  f32.add
1353                  local.tee 52
1354                  local.get 51
1355                  f32.lt
1356                  i32.const 1
1357                  i32.xor
1358                  br_if 0 (;@7;)
108 ------------------------------------------------------------
1359                  local.get 16
1360                  local.get 12
1361                  i32.store
1362                  local.get 35
1363                  local.get 52
1364                  f32.store
1365                  local.get 52
1366                  local.set 51
1367                end
109 ------------------------------------------------------------
1368                local.get 12
1369                i32.const 1
1370                i32.add
1371                local.tee 12
1372                local.get 40
1373                i32.ne
1374                br_if 0 (;@6;)
110 ------------------------------------------------------------
1375              end
111 ------------------------------------------------------------
1376            end
112 ------------------------------------------------------------
1377            local.get 13
1378          end
113 ------------------------------------------------------------
1379          local.set 17
1380          local.get 40
1381          i32.const 1
1382          i32.add
1383          local.set 40
1384          local.get 5
1385          local.get 17
1386          i32.ne
1387          br_if 0 (;@3;)
114 ------------------------------------------------------------
1388        end
115 ------------------------------------------------------------
1389      end
116 ------------------------------------------------------------
1390      block (result i32)  ;; label = @2
117 ------------------------------------------------------------
1391        local.get 15
1392        if  ;; label = @3
118 ------------------------------------------------------------
1393          local.get 26
1394          local.get 5
1395          i32.const 2
1396          i32.shl
1397          i32.add
1398          local.set 6
1399          f32.const 6.01739734877e+301
1400          local.set 52
1401          i32.const 0
1402          local.set 12
1403          local.get 5
1404          local.set 1
1405          loop  ;; label = @4
119 ------------------------------------------------------------
1406            local.get 28
1407            local.get 12
1408            i32.const 2
1409            i32.shl
1410            local.tee 10
1411            i32.add
1412            i32.load
1413            local.tee 11
1414            i32.const 2
1415            i32.ne
1416            if  ;; label = @5
120 ------------------------------------------------------------
1417              local.get 6
1418              f32.load
1419              f32.const 0.
1420              f32.add
1421              local.get 10
1422              local.get 26
1423              i32.add
1424              f32.load
1425              f32.sub
1426              local.get 2
1427              local.get 5
1428              local.get 12
1429              i32.sub
1430              local.get 11
1431              i32.add
1432              i32.const 1104
1433              i32.add
1434              i32.load8_u
1435              local.tee 10
1436              i32.const 4
1437              i32.shl
1438              i32.add
1439              i32.const 1024
1440              i32.add
1441              i32.load8_s
1442              local.get 10
1443              i32.add
1444              f32.convert_i32_s
1445              f32.add
1446              local.tee 51
1447              local.get 52
1448              local.get 51
1449              local.get 52
1450              f32.lt
1451              local.tee 10
1452              select
1453              local.set 52
1454              local.get 12
1455              local.get 1
1456              local.get 10
1457              select
1458              local.set 1
1459            end
121 ------------------------------------------------------------
1460            local.get 5
1461            local.get 12
1462            i32.eq
1463            local.set 10
1464            local.get 12
1465            i32.const 1
1466            i32.add
1467            local.set 12
1468            local.get 10
1469            i32.eqz
1470            br_if 0 (;@4;)
122 ------------------------------------------------------------
1471          end
123 ------------------------------------------------------------
1472          local.get 5
1473          i32.const -1
1474          i32.add
1475          local.tee 2
1476          i32.const 0
1477          i32.ge_s
1478          if  ;; label = @4
124 ------------------------------------------------------------
1479            local.get 27
1480            local.get 23
1481            local.get 27
1482            local.get 23
1483            i32.gt_s
1484            select
1485            local.set 6
1486            loop  ;; label = @5
125 ------------------------------------------------------------
1487              local.get 2
1488              local.get 1
1489              i32.ge_s
1490              if  ;; label = @6
126 ------------------------------------------------------------
1491                loop  ;; label = @7
127 ------------------------------------------------------------
1492                  local.get 23
1493                  local.set 12
1494                  loop  ;; label = @8
128 ------------------------------------------------------------
1495                    local.get 3
1496                    local.get 2
1497                    i32.const 7
1498                    i32.shl
1499                    i32.add
1500                    local.get 12
1501                    i32.const 2
1502                    i32.shl
1503                    i32.const 142864
1504                    i32.add
1505                    i32.load
1506                    i32.const 1
1507                    i32.shl
1508                    i32.add
1509                    i32.const 0
1510                    i32.store16
1511                    local.get 6
1512                    local.get 12
1513                    i32.ne
1514                    local.set 10
1515                    local.get 12
1516                    i32.const 1
1517                    i32.add
1518                    local.set 12
1519                    local.get 10
1520                    br_if 0 (;@8;)
129 ------------------------------------------------------------
1521                  end
130 ------------------------------------------------------------
1522                  local.get 2
1523                  local.get 1
1524                  i32.gt_s
1525                  local.set 10
1526                  local.get 2
1527                  i32.const -1
1528                  i32.add
1529                  local.set 2
1530                  local.get 10
1531                  br_if 0 (;@7;)
131 ------------------------------------------------------------
1532                end
132 ------------------------------------------------------------
1533              end
133 ------------------------------------------------------------
1534              local.get 34
1535              local.get 2
1536              i32.const 2
1537              i32.shl
1538              i32.add
1539              i32.load
1540              local.set 1
1541              local.get 2
1542              i32.const -1
1543              i32.add
1544              local.tee 10
1545              local.set 2
1546              local.get 10
1547              i32.const -1
1548              i32.gt_s
1549              br_if 0 (;@5;)
134 ------------------------------------------------------------
1550            end
135 ------------------------------------------------------------
1551          end
136 ------------------------------------------------------------
1552          local.get 26
1553          call 33
1554          local.get 31
1555          call 33
1556          local.get 34
1557          call 33
1558          local.get 28
1559          call 33
1560          local.get 0
1561          i32.load offset=332
1562          local.set 24
1563        end
137 ------------------------------------------------------------
1564        local.get 24
1565        i32.load offset=48
1566        i32.eqz
1567        local.get 5
1568        i32.eqz
1569        i32.or
1570        i32.eqz
1571      end
138 ------------------------------------------------------------
1572      if  ;; label = @2
139 ------------------------------------------------------------
1573        i32.const 0
1574        local.set 2
1575        loop  ;; label = @3
140 ------------------------------------------------------------
1576          i32.const 1
1577          local.set 12
1578          loop  ;; label = @4
141 ------------------------------------------------------------
1579            local.get 7
1580            local.get 12
1581            i32.const 3
1582            i32.shl
1583            local.tee 1
1584            i32.add
1585            local.tee 0
1586            local.get 0
1587            f64.load
1588            local.get 12
1589            i32.const 1
1590            i32.shl
1591            local.tee 6
1592            local.get 3
1593            local.get 2
1594            i32.const 7
1595            i32.shl
1596            local.tee 10
1597            i32.add
1598            i32.add
1599            i32.load16_s
1600            local.tee 0
1601            local.get 4
1602            local.get 10
1603            i32.add
1604            local.get 6
1605            i32.add
1606            i32.load16_s
1607            i32.mul
1608            f64.convert_i32_s
1609            f64.add
1610            f64.store
1611            local.get 1
1612            local.get 8
1613            i32.add
1614            local.tee 1
1615            local.get 1
1616            f64.load
1617            local.get 0
1618            local.get 0
1619            i32.mul
1620            i32.const 3
1621            i32.shl
1622            f64.convert_i32_s
1623            f64.add
1624            f64.store
1625            local.get 12
1626            i32.const 1
1627            i32.add
1628            local.tee 12
1629            i32.const 64
1630            i32.ne
1631            br_if 0 (;@4;)
142 ------------------------------------------------------------
1632          end
143 ------------------------------------------------------------
1633          local.get 2
1634          i32.const 1
1635          i32.add
1636          local.tee 2
1637          local.get 5
1638          i32.ne
1639          br_if 0 (;@3;)
144 ------------------------------------------------------------
1640        end
145 ------------------------------------------------------------
1641      end
146 ------------------------------------------------------------
1642      local.get 24
1643      i32.load offset=28
1644      i32.eqz
1645      br_if 0 (;@1;)
147 ------------------------------------------------------------
1646      local.get 5
1647      i32.const -1
1648      i32.add
1649      local.set 0
1650      i32.const 0
1651      local.set 12
1652      i32.const 1
1653      local.set 13
1654      loop  ;; label = @2
148 ------------------------------------------------------------
1655        local.get 13
1656        local.get 12
1657        local.get 0
1658        i32.const 2
1659        i32.shl
1660        local.tee 1
1661        local.get 14
1662        i32.const 544
1663        i32.add
1664        local.get 13
1665        i32.const 2
1666        i32.shl
1667        i32.add
1668        i32.load
1669        i32.add
1670        f32.load
1671        local.get 14
1672        i32.const 544
1673        i32.add
1674        local.get 12
1675        i32.const 2
1676        i32.shl
1677        i32.add
1678        i32.load
1679        local.get 1
1680        i32.add
1681        f32.load
1682        f32.lt
1683        select
1684        local.set 12
1685        local.get 13
1686        i32.const 1
1687        i32.add
1688        local.tee 13
1689        local.get 29
1690        i32.ne
1691        br_if 0 (;@2;)
149 ------------------------------------------------------------
1692      end
150 ------------------------------------------------------------
1693      i32.const 0
1694      local.set 2
1695      local.get 0
1696      i32.const 0
1697      i32.ge_s
1698      if  ;; label = @2
151 ------------------------------------------------------------
1699        local.get 0
1700        local.set 13
1701        loop  ;; label = @3
152 ------------------------------------------------------------
1702          local.get 3
1703          local.get 13
1704          i32.const 7
1705          i32.shl
1706          i32.add
1707          local.get 12
1708          i32.const 2
1709          i32.shl
1710          local.tee 1
1711          local.get 14
1712          i32.const 448
1713          i32.add
1714          i32.add
1715          i32.load
1716          local.get 13
1717          i32.const 1
1718          i32.shl
1719          i32.add
1720          i32.load16_u
1721          i32.store16
1722          local.get 14
1723          i32.const 496
1724          i32.add
1725          local.get 1
1726          i32.add
1727          i32.load
1728          local.get 13
1729          i32.const 2
1730          i32.shl
1731          i32.add
1732          i32.load
1733          local.set 12
1734          local.get 13
1735          i32.const 0
1736          i32.gt_s
1737          local.set 1
1738          local.get 13
1739          i32.const -1
1740          i32.add
1741          local.set 13
1742          local.get 1
1743          br_if 0 (;@3;)
153 ------------------------------------------------------------
1744        end
154 ------------------------------------------------------------
1745      end
155 ------------------------------------------------------------
1746      local.get 9
1747      local.get 3
1748      local.get 0
1749      i32.const 7
1750      i32.shl
1751      i32.add
1752      i32.load16_u
1753      i32.store16
1754      loop  ;; label = @2
156 ------------------------------------------------------------
1755        local.get 2
1756        i32.const 2
1757        i32.shl
1758        local.tee 0
1759        local.get 14
1760        i32.const 544
1761        i32.add
1762        i32.add
1763        i32.load
1764        call 33
1765        local.get 14
1766        i32.const 496
1767        i32.add
1768        local.get 0
1769        i32.add
1770        i32.load
1771        call 33
1772        local.get 14
1773        i32.const 448
1774        i32.add
1775        local.get 0
1776        i32.add
1777        i32.load
1778        call 33
1779        local.get 2
1780        i32.const 1
1781        i32.add
1782        local.tee 2
1783        local.get 29
1784        i32.ne
1785        br_if 0 (;@2;)
157 ------------------------------------------------------------
1786      end
158 ------------------------------------------------------------
1787    end
159 ------------------------------------------------------------
1788    local.get 14
1789    i32.const 1360
1790    i32.add
1791    global.set 0)
