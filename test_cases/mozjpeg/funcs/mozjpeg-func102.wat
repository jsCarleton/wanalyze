  (func (;102;) (type 24) (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f64 f64)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 1344
0002    i32.sub
0003    local.tee 13
0004    global.set 0
0005    i32.const 60
0006    local.get 5
0007    i32.load16_u
0008    i32.div_u
0009    local.set 11
0010    block  ;; label = @1
1 ------------------------------------------------------------
0011      local.get 0
0012      i32.load
0013      local.tee 26
0014      local.get 0
0015      i32.load
0016      local.tee 12
0017      i32.const 1
0018      local.get 12
0019      select
0020      local.tee 20
0021      i32.lt_s
0022      br_if 0 (;@1;)
2 ------------------------------------------------------------
0023      local.get 11
0024      i32.const 2
0025      i32.add
0026      i32.const 1
0027      i32.or
0028      local.tee 11
0029      i32.const 9
0030      local.get 11
0031      i32.const 9
0032      i32.lt_u
0033      select
0034      local.set 23
0035      local.get 0
0036      i32.load
0037      i32.load
0038      if  ;; label = @2
3 ------------------------------------------------------------
0039        local.get 4
0040        i32.const 1
0041        i32.shl
0042        local.set 27
0043        local.get 4
0044        i32.const 2
0045        i32.shl
0046        local.set 11
0047        loop  ;; label = @3
4 ------------------------------------------------------------
0048          local.get 19
0049          i32.const 2
0050          i32.shl
0051          local.tee 12
0052          local.get 13
0053          i32.const 528
0054          i32.add
0055          i32.add
0056          local.get 11
0057          call 32
0058          local.tee 14
0059          i32.store
0060          local.get 13
0061          i32.const 480
0062          i32.add
0063          local.get 12
0064          i32.add
0065          local.get 11
0066          call 32
0067          local.tee 15
0068          i32.store
0069          local.get 13
0070          i32.const 432
0071          i32.add
0072          local.get 12
0073          i32.add
0074          local.get 27
0075          call 32
0076          local.tee 17
0077          i32.store
0078          local.get 13
0079          i32.const 384
0080          i32.add
0081          local.get 12
0082          i32.add
0083          local.get 11
0084          call 32
0085          local.tee 12
0086          i32.store
0087          local.get 12
0088          i32.eqz
0089          local.get 14
0090          i32.eqz
0091          local.get 15
0092          i32.eqz
0093          i32.or
0094          i32.or
0095          i32.eqz
0096          i32.const 0
0097          local.get 17
0098          select
0099          i32.eqz
0100          if  ;; label = @4
5 ------------------------------------------------------------
0101            local.get 0
0102            i32.load
0103            local.tee 12
0104            i32.const 54
0105            i32.store
0106            local.get 0
0107            local.get 12
0108            i32.load
0109            call_indirect (type 0)
0110          end
6 ------------------------------------------------------------
0111          local.get 19
0112          i32.const 1
0113          i32.add
0114          local.tee 19
0115          local.get 23
0116          i32.ne
0117          br_if 0 (;@3;)
7 ------------------------------------------------------------
0118        end
8 ------------------------------------------------------------
0119      end
9 ------------------------------------------------------------
0120      i32.const 0
0121      local.set 11
0122      loop  ;; label = @2
10 ------------------------------------------------------------
0123        local.get 13
0124        i32.const 128
0125        i32.add
0126        local.get 11
0127        i32.const 2
0128        i32.shl
0129        i32.add
0130        f64.const 3.03865194162e-319
0131        local.get 5
0132        local.get 11
0133        i32.const 1
0134        i32.shl
0135        i32.add
0136        i32.load16_u
0137        local.tee 12
0138        local.get 12
0139        i32.mul
0140        f64.convert_i32_s
0141        f64.div
0142        f32.demote_f64
0143        f32.store
0144        local.get 11
0145        i32.const 1
0146        i32.add
0147        local.tee 11
0148        i32.const 64
0149        i32.ne
0150        br_if 0 (;@2;)
11 ------------------------------------------------------------
0151      end
12 ------------------------------------------------------------
0152      block  ;; label = @2
13 ------------------------------------------------------------
0153        local.get 4
0154        i32.eqz
0155        if  ;; label = @3
14 ------------------------------------------------------------
0156          local.get 0
0157          i32.load
0158          local.set 22
0159          br 1 (;@2;)
15 ------------------------------------------------------------
0160        end
16 ------------------------------------------------------------
0161        local.get 9
0162        i32.const 0
0163        i32.ne
0164        local.get 10
0165        i32.const 0
0166        i32.ne
0167        i32.and
0168        local.set 41
0169        local.get 26
0170        local.get 20
0171        local.get 26
0172        local.get 20
0173        i32.gt_s
0174        select
0175        local.set 40
0176        local.get 23
0177        i32.const -2
0178        i32.div_s
0179        local.set 42
0180        local.get 13
0181        i32.const 1088
0182        i32.add
0183        local.get 26
0184        i32.const 2
0185        i32.shl
0186        i32.add
0187        local.set 43
0188        local.get 20
0189        i32.const -1
0190        i32.add
0191        local.tee 27
0192        i32.const 2
0193        i32.shl
0194        local.tee 11
0195        local.get 13
0196        i32.const 832
0197        i32.add
0198        i32.add
0199        local.set 44
0200        local.get 13
0201        i32.const 1088
0202        i32.add
0203        local.get 11
0204        i32.add
0205        local.set 45
0206        local.get 0
0207        i32.load
0208        local.set 22
0209        local.get 13
0210        f32.load
0211        local.set 52
0212        loop  ;; label = @3
17 ------------------------------------------------------------
0213          i32.const 1
0214          local.set 11
0215          f32.const 0.
0216          local.set 47
0217          loop  ;; label = @4
18 ------------------------------------------------------------
0218            local.get 47
0219            local.get 3
0220            local.get 18
0221            i32.const 7
0222            i32.shl
0223            local.tee 28
0224            i32.add
0225            local.tee 31
0226            local.get 11
0227            i32.const 1
0228            i32.shl
0229            i32.add
0230            i32.load16_s
0231            local.tee 0
0232            local.get 0
0233            i32.mul
0234            f32.convert_i32_s
0235            f32.add
0236            local.set 47
0237            local.get 11
0238            i32.const 1
0239            i32.add
0240            local.tee 11
0241            i32.const 64
0242            i32.ne
0243            br_if 0 (;@4;)
19 ------------------------------------------------------------
0244          end
20 ------------------------------------------------------------
0245          local.get 22
0246          f32.load
0247          f64.promote_f64
0248          local.set 56
0249          block (result f64)  ;; label = @4
21 ------------------------------------------------------------
0250            local.get 22
0251            f32.load
0252            local.tee 48
0253            f32.const 0.
0254            f32.gt
0255            i32.const 1
0256            i32.xor
0257            i32.eqz
0258            if  ;; label = @5
22 ------------------------------------------------------------
0259              local.get 48
0260              f64.promote_f64
0261              call 62
0262              local.set 57
0263              local.get 56
0264              call 62
0265              local.get 57
0266              local.get 47
0267              f32.const 6.75006861106e-310
0268              f32.div
0269              f64.promote_f64
0270              f64.add
0271              f64.div
0272              br 1 (;@4;)
23 ------------------------------------------------------------
0273            end
24 ------------------------------------------------------------
0274            local.get 56
0275            f64.const 5.15409281742e-320
0276            f64.add
0277            call 62
0278          end
25 ------------------------------------------------------------
0279          local.set 56
0280          local.get 45
0281          i32.const 0
0282          i32.store
0283          local.get 44
0284          i32.const 0
0285          i32.store
0286          local.get 56
0287          f32.demote_f64
0288          local.set 50
0289          local.get 22
0290          i32.load
0291          if  ;; label = @4
26 ------------------------------------------------------------
0292            local.get 52
0293            local.get 50
0294            f32.mul
0295            local.set 49
0296            local.get 23
0297            i32.const 1
0298            local.get 18
0299            select
0300            local.set 32
0301            local.get 31
0302            i32.load16_s
0303            local.tee 0
0304            local.get 0
0305            i32.const 31
0306            i32.shr_s
0307            local.tee 11
0308            i32.add
0309            local.get 11
0310            i32.xor
0311            local.tee 33
0312            local.get 5
0313            i32.load16_u
0314            local.tee 11
0315            i32.const 2
0316            i32.shl
0317            i32.add
0318            local.get 11
0319            i32.const 3
0320            i32.shl
0321            local.tee 24
0322            i32.div_u
0323            local.get 42
0324            i32.add
0325            local.set 34
0326            local.get 18
0327            i32.const -1
0328            i32.add
0329            local.set 17
0330            local.get 9
0331            local.get 28
0332            i32.add
0333            local.set 35
0334            local.get 10
0335            local.get 28
0336            i32.add
0337            local.set 36
0338            local.get 0
0339            i32.const 30
0340            i32.shr_s
0341            i32.const 1
0342            i32.or
0343            local.set 37
0344            i32.const 0
0345            local.set 15
0346            loop  ;; label = @5
27 ------------------------------------------------------------
0347              local.get 15
0348              i32.const 2
0349              i32.shl
0350              local.tee 0
0351              local.get 13
0352              i32.const 432
0353              i32.add
0354              i32.add
0355              i32.load
0356              local.get 18
0357              i32.const 1
0358              i32.shl
0359              i32.add
0360              local.get 15
0361              local.get 34
0362              i32.add
0363              i32.const 16
0364              i32.shl
0365              i32.const 16
0366              i32.shr_s
0367              local.tee 12
0368              local.get 37
0369              i32.mul
0370              local.tee 11
0371              i32.store16
0372              local.get 49
0373              local.get 12
0374              local.get 24
0375              i32.mul
0376              local.get 33
0377              i32.sub
0378              local.tee 12
0379              local.get 12
0380              i32.mul
0381              f32.convert_i32_s
0382              f32.mul
0383              local.set 48
0384              block  ;; label = @6
28 ------------------------------------------------------------
0385                local.get 41
0386                i32.eqz
0387                br_if 0 (;@6;)
29 ------------------------------------------------------------
0388                local.get 22
0389                f32.load
0390                local.tee 47
0391                f32.const 0.
0392                f32.gt
0393                i32.const 1
0394                i32.xor
0395                br_if 0 (;@6;)
30 ------------------------------------------------------------
0396                local.get 48
0397                local.get 47
0398                local.get 49
0399                local.get 36
0400                i32.load16_s
0401                local.get 31
0402                i32.load16_s
0403                i32.sub
0404                local.get 11
0405                i32.const 16
0406                i32.shl
0407                i32.const 16
0408                i32.shr_s
0409                local.get 35
0410                i32.load16_s
0411                i32.sub
0412                local.get 24
0413                i32.mul
0414                i32.add
0415                local.tee 12
0416                local.get 12
0417                i32.mul
0418                f32.convert_i32_s
0419                f32.mul
0420                local.get 48
0421                f32.sub
0422                f32.mul
0423                f32.add
0424                local.set 48
0425              end
31 ------------------------------------------------------------
0426              local.get 18
0427              i32.const 2
0428              i32.shl
0429              local.tee 25
0430              local.get 13
0431              i32.const 528
0432              i32.add
0433              local.get 0
0434              i32.add
0435              i32.load
0436              i32.add
0437              local.set 29
0438              local.get 11
0439              i32.const 16
0440              i32.shl
0441              i32.const 16
0442              i32.shr_s
0443              local.set 38
0444              local.get 13
0445              i32.const 384
0446              i32.add
0447              local.get 0
0448              i32.add
0449              local.set 39
0450              local.get 13
0451              i32.const 480
0452              i32.add
0453              local.get 0
0454              i32.add
0455              local.set 46
0456              i32.const 0
0457              local.set 16
0458              loop  ;; label = @6
32 ------------------------------------------------------------
0459                local.get 8
0460                local.set 12
0461                i32.const 0
0462                local.set 11
0463                i32.const 0
0464                local.set 21
0465                local.get 18
0466                if  ;; label = @7
33 ------------------------------------------------------------
0467                  local.get 16
0468                  i32.const 2
0469                  i32.shl
0470                  local.tee 0
0471                  local.get 13
0472                  i32.const 432
0473                  i32.add
0474                  i32.add
0475                  i32.load
0476                  local.get 17
0477                  i32.const 1
0478                  i32.shl
0479                  i32.add
0480                  local.set 12
0481                  local.get 13
0482                  i32.const 384
0483                  i32.add
0484                  local.get 0
0485                  i32.add
0486                  i32.load
0487                  local.get 17
0488                  i32.const 2
0489                  i32.shl
0490                  i32.add
0491                  i32.load
0492                  local.set 11
0493                end
34 ------------------------------------------------------------
0494                local.get 1
0495                local.get 11
0496                i32.const 3
0497                i32.shl
0498                i32.add
0499                local.tee 0
0500                local.get 38
0501                local.get 12
0502                i32.load16_s
0503                i32.sub
0504                local.tee 14
0505                i32.const 0
0506                i32.ne
0507                i32.const 2
0508                i32.shl
0509                i32.add
0510                f32.load
0511                local.set 47
0512                block  ;; label = @7
35 ------------------------------------------------------------
0513                  local.get 14
0514                  i32.eqz
0515                  br_if 0 (;@7;)
36 ------------------------------------------------------------
0516                  local.get 47
0517                  local.get 0
0518                  local.get 14
0519                  i32.const 31
0520                  i32.shr_u
0521                  local.tee 12
0522                  i32.const 2
0523                  i32.shl
0524                  i32.add
0525                  f32.load
0526                  f32.add
0527                  local.set 47
0528                  local.get 12
0529                  i32.const 2
0530                  i32.or
0531                  local.get 11
0532                  i32.add
0533                  local.set 0
0534                  block  ;; label = @8
37 ------------------------------------------------------------
0535                    local.get 14
0536                    local.get 14
0537                    i32.const 31
0538                    i32.shr_s
0539                    local.tee 11
0540                    i32.add
0541                    local.get 11
0542                    i32.xor
0543                    i32.const -1
0544                    i32.add
0545                    local.tee 30
0546                    i32.eqz
0547                    if  ;; label = @9
38 ------------------------------------------------------------
0548                      i32.const 0
0549                      local.set 12
0550                      br 1 (;@8;)
39 ------------------------------------------------------------
0551                    end
40 ------------------------------------------------------------
0552                    i32.const 1
0553                    local.set 12
0554                    local.get 47
0555                    local.get 1
0556                    local.get 0
0557                    i32.const 3
0558                    i32.shl
0559                    i32.add
0560                    f32.load
0561                    f32.add
0562                    local.set 47
0563                    i32.const 20
0564                    local.set 11
0565                    i32.const 20
0566                    local.set 0
0567                    local.get 30
0568                    i32.const 1
0569                    i32.shr_u
0570                    local.tee 19
0571                    i32.eqz
0572                    br_if 0 (;@8;)
41 ------------------------------------------------------------
0573                    loop  ;; label = @9
42 ------------------------------------------------------------
0574                      local.get 12
0575                      i32.const 1
0576                      i32.shl
0577                      local.set 12
0578                      local.get 47
0579                      local.get 1
0580                      local.get 11
0581                      i32.const 3
0582                      i32.shl
0583                      i32.add
0584                      f32.load
0585                      f32.add
0586                      local.set 47
0587                      local.get 11
0588                      i32.const 1
0589                      i32.add
0590                      local.tee 0
0591                      local.set 11
0592                      local.get 19
0593                      i32.const 1
0594                      i32.shr_s
0595                      local.tee 19
0596                      br_if 0 (;@9;)
43 ------------------------------------------------------------
0597                    end
44 ------------------------------------------------------------
0598                  end
45 ------------------------------------------------------------
0599                  local.get 1
0600                  local.get 0
0601                  i32.const 3
0602                  i32.shl
0603                  i32.add
0604                  f32.load
0605                  local.set 51
0606                  local.get 12
0607                  i32.const 1
0608                  local.get 1
0609                  i32.load
0610                  i32.shl
0611                  i32.const 1
0612                  i32.shr_s
0613                  i32.ge_s
0614                  if  ;; label = @8
46 ------------------------------------------------------------
0615                    i32.const 8
0616                    i32.const 4
0617                    local.get 14
0618                    i32.const 0
0619                    i32.lt_s
0620                    select
0621                    local.tee 11
0622                    i32.const 8
0623                    i32.add
0624                    local.get 11
0625                    local.get 12
0626                    i32.const 1
0627                    local.get 1
0628                    i32.load
0629                    i32.shl
0630                    i32.const 1
0631                    i32.shr_s
0632                    i32.gt_s
0633                    select
0634                    local.set 21
0635                  end
47 ------------------------------------------------------------
0636                  local.get 47
0637                  local.get 51
0638                  f32.add
0639                  local.set 47
0640                  local.get 12
0641                  i32.const 1
0642                  i32.shr_s
0643                  local.tee 11
0644                  i32.eqz
0645                  br_if 0 (;@7;)
48 ------------------------------------------------------------
0646                  local.get 0
0647                  i32.const 14
0648                  i32.add
0649                  local.set 0
0650                  loop  ;; label = @8
49 ------------------------------------------------------------
0651                    local.get 47
0652                    local.get 1
0653                    local.get 0
0654                    i32.const 3
0655                    i32.shl
0656                    i32.add
0657                    local.get 11
0658                    local.get 30
0659                    i32.and
0660                    i32.const 0
0661                    i32.ne
0662                    i32.const 2
0663                    i32.shl
0664                    i32.add
0665                    f32.load
0666                    f32.add
0667                    local.set 47
0668                    local.get 11
0669                    i32.const 1
0670                    i32.shr_s
0671                    local.tee 11
0672                    br_if 0 (;@8;)
50 ------------------------------------------------------------
0673                  end
51 ------------------------------------------------------------
0674                end
52 ------------------------------------------------------------
0675                local.get 48
0676                local.get 47
0677                f32.add
0678                local.set 47
0679                local.get 18
0680                if  ;; label = @7
53 ------------------------------------------------------------
0681                  local.get 47
0682                  local.get 13
0683                  i32.const 528
0684                  i32.add
0685                  local.get 16
0686                  i32.const 2
0687                  i32.shl
0688                  i32.add
0689                  i32.load
0690                  local.get 17
0691                  i32.const 2
0692                  i32.shl
0693                  i32.add
0694                  f32.load
0695                  f32.add
0696                  local.set 47
0697                end
54 ------------------------------------------------------------
0698                block  ;; label = @7
55 ------------------------------------------------------------
0699                  local.get 16
0700                  if  ;; label = @8
56 ------------------------------------------------------------
0701                    local.get 47
0702                    local.get 29
0703                    f32.load
0704                    f32.lt
0705                    i32.const 1
0706                    i32.xor
0707                    br_if 1 (;@7;)
57 ------------------------------------------------------------
0708                  end
58 ------------------------------------------------------------
0709                  local.get 29
0710                  local.get 47
0711                  f32.store
0712                  local.get 46
0713                  i32.load
0714                  local.get 25
0715                  i32.add
0716                  local.get 16
0717                  i32.const -1
0718                  local.get 18
0719                  select
0720                  i32.store
0721                  local.get 39
0722                  i32.load
0723                  local.get 25
0724                  i32.add
0725                  local.get 21
0726                  i32.store
0727                end
59 ------------------------------------------------------------
0728                local.get 16
0729                i32.const 1
0730                i32.add
0731                local.tee 16
0732                local.get 32
0733                i32.ne
0734                br_if 0 (;@6;)
60 ------------------------------------------------------------
0735              end
61 ------------------------------------------------------------
0736              local.get 15
0737              i32.const 1
0738              i32.add
0739              local.tee 15
0740              local.get 23
0741              i32.ne
0742              br_if 0 (;@5;)
62 ------------------------------------------------------------
0743            end
63 ------------------------------------------------------------
0744          end
64 ------------------------------------------------------------
0745          f32.const 0.
0746          local.set 49
0747          local.get 20
0748          local.set 11
0749          loop  ;; label = @4
65 ------------------------------------------------------------
0750            local.get 5
0751            local.get 11
0752            local.tee 14
0753            i32.const 2
0754            i32.shl
0755            local.tee 0
0756            i32.const 142864
0757            i32.add
0758            i32.load
0759            local.tee 17
0760            i32.const 1
0761            i32.shl
0762            local.tee 12
0763            i32.add
0764            i32.load16_u
0765            local.set 15
0766            local.get 13
0767            i32.const 1088
0768            i32.add
0769            local.get 0
0770            i32.add
0771            local.get 50
0772            local.get 12
0773            local.get 31
0774            i32.add
0775            i32.load16_s
0776            local.tee 11
0777            local.get 11
0778            i32.mul
0779            f32.convert_i32_s
0780            f32.mul
0781            local.get 13
0782            i32.const 128
0783            i32.add
0784            local.get 17
0785            i32.const 2
0786            i32.shl
0787            i32.add
0788            f32.load
0789            local.tee 48
0790            f32.mul
0791            local.get 49
0792            local.tee 51
0793            f32.add
0794            local.tee 49
0795            f32.store
0796            local.get 11
0797            local.get 11
0798            i32.const 31
0799            i32.shr_s
0800            local.tee 21
0801            i32.add
0802            local.get 21
0803            i32.xor
0804            local.tee 17
0805            local.get 15
0806            i32.const 2
0807            i32.shl
0808            i32.add
0809            local.tee 16
0810            local.get 15
0811            i32.const 3
0812            i32.shl
0813            local.tee 15
0814            i32.div_u
0815            local.set 11
0816            block  ;; label = @5
66 ------------------------------------------------------------
0817              local.get 15
0818              local.get 16
0819              i32.gt_u
0820              if  ;; label = @6
67 ------------------------------------------------------------
0821                local.get 2
0822                local.get 28
0823                i32.add
0824                local.get 12
0825                i32.add
0826                i32.const 0
0827                i32.store16
0828                local.get 13
0829                i32.const 832
0830                i32.add
0831                local.get 0
0832                i32.add
0833                i32.const 2123789977
0834                i32.store
0835                br 1 (;@5;)
68 ------------------------------------------------------------
0836              end
69 ------------------------------------------------------------
0837              local.get 13
0838              local.get 11
0839              i32.store
0840              local.get 13
0841              local.get 48
0842              local.get 50
0843              local.get 11
0844              local.get 15
0845              i32.mul
0846              local.get 17
0847              i32.sub
0848              local.tee 16
0849              local.get 16
0850              i32.mul
0851              f32.convert_i32_s
0852              f32.mul
0853              f32.mul
0854              f32.store
0855              i32.const 1
0856              local.set 25
0857              local.get 11
0858              i32.const 2
0859              i32.ge_u
0860              if  ;; label = @6
70 ------------------------------------------------------------
0861                local.get 13
0862                local.get 11
0863                i32.const -1
0864                i32.add
0865                local.tee 11
0866                i32.store
0867                local.get 13
0868                local.get 48
0869                local.get 50
0870                local.get 11
0871                local.get 15
0872                i32.mul
0873                local.get 17
0874                i32.sub
0875                local.tee 11
0876                local.get 11
0877                i32.mul
0878                f32.convert_i32_s
0879                f32.mul
0880                f32.mul
0881                f32.store
0882                i32.const 2
0883                local.set 25
0884              end
71 ------------------------------------------------------------
0885              local.get 13
0886              i32.const 832
0887              i32.add
0888              local.get 0
0889              i32.add
0890              local.tee 30
0891              i32.const 2123789977
0892              i32.store
0893              local.get 20
0894              local.get 14
0895              i32.gt_s
0896              local.tee 11
0897              br_if 0 (;@5;)
72 ------------------------------------------------------------
0898              local.get 20
0899              local.get 14
0900              local.get 11
0901              select
0902              local.set 32
0903              local.get 2
0904              local.get 28
0905              i32.add
0906              local.tee 33
0907              local.get 12
0908              i32.add
0909              local.set 34
0910              local.get 1
0911              local.get 14
0912              i32.const 24
0913              i32.mul
0914              i32.add
0915              local.tee 29
0916              local.set 35
0917              local.get 13
0918              i32.const 576
0919              i32.add
0920              local.get 0
0921              i32.add
0922              local.set 36
0923              f32.const -5.19131973105e-186
0924              local.set 48
0925              local.get 27
0926              local.set 0
0927              loop  ;; label = @6
73 ------------------------------------------------------------
0928                local.get 32
0929                block (result i32)  ;; label = @7
74 ------------------------------------------------------------
0930                  block  ;; label = @8
75 ------------------------------------------------------------
0931                    local.get 0
0932                    local.get 27
0933                    i32.eq
0934                    br_if 0 (;@8;)
76 ------------------------------------------------------------
0935                    local.get 33
0936                    local.get 0
0937                    i32.const 2
0938                    i32.shl
0939                    i32.const 142864
0940                    i32.add
0941                    i32.load
0942                    i32.const 1
0943                    i32.shl
0944                    i32.add
0945                    i32.load16_u
0946                    br_if 0 (;@8;)
77 ------------------------------------------------------------
0947                    local.get 0
0948                    i32.const 1
0949                    i32.add
0950                    br 1 (;@7;)
78 ------------------------------------------------------------
0951                  end
79 ------------------------------------------------------------
0952                  local.get 1
0953                  local.get 0
0954                  i32.const 24
0955                  i32.mul
0956                  i32.add
0957                  f32.load
0958                  local.set 47
0959                  local.get 0
0960                  i32.const 1
0961                  i32.add
0962                  local.tee 15
0963                  local.set 11
0964                  local.get 0
0965                  local.set 12
0966                  local.get 15
0967                  local.get 14
0968                  i32.lt_s
0969                  if  ;; label = @8
80 ------------------------------------------------------------
0970                    loop  ;; label = @9
81 ------------------------------------------------------------
0971                      local.get 47
0972                      local.get 12
0973                      i32.const 24
0974                      i32.mul
0975                      local.get 1
0976                      i32.add
0977                      f32.load
0978                      f32.add
0979                      local.set 47
0980                      local.get 11
0981                      local.tee 12
0982                      i32.const 1
0983                      i32.add
0984                      local.tee 11
0985                      local.get 14
0986                      i32.ne
0987                      br_if 0 (;@9;)
82 ------------------------------------------------------------
0988                    end
83 ------------------------------------------------------------
0989                  end
84 ------------------------------------------------------------
0990                  local.get 47
0991                  local.get 29
0992                  f32.load
0993                  f32.add
0994                  local.set 53
0995                  local.get 51
0996                  local.get 0
0997                  i32.const 2
0998                  i32.shl
0999                  local.tee 11
1000                  local.get 13
1001                  i32.const 1088
1002                  i32.add
1003                  i32.add
1004                  f32.load
1005                  f32.sub
1006                  local.set 54
1007                  local.get 13
1008                  i32.const 832
1009                  i32.add
1010                  local.get 11
1011                  i32.add
1012                  local.set 37
1013                  i32.const 0
1014                  local.set 16
1015                  loop  ;; label = @8
85 ------------------------------------------------------------
1016                    block  ;; label = @9
86 ------------------------------------------------------------
1017                      block  ;; label = @10
87 ------------------------------------------------------------
1018                        local.get 16
1019                        i32.const 2
1020                        i32.shl
1021                        local.tee 38
1022                        local.get 13
1023                        i32.const -64
1024                        i32.sub
1025                        i32.add
1026                        i32.load
1027                        local.tee 39
1028                        i32.const -1
1029                        i32.add
1030                        local.tee 24
1031                        i32.eqz
1032                        if  ;; label = @11
88 ------------------------------------------------------------
1033                          f32.const 6.96672438132e-310
1034                          local.set 47
1035                          br 1 (;@10;)
89 ------------------------------------------------------------
1036                        end
90 ------------------------------------------------------------
1037                        local.get 29
1038                        f32.load
1039                        local.tee 55
1040                        f32.const 6.96672438132e-310
1041                        f32.add
1042                        local.set 47
1043                        local.get 24
1044                        i32.const 1
1045                        i32.eq
1046                        br_if 0 (;@10;)
91 ------------------------------------------------------------
1047                        i32.const 217
1048                        i32.const 189
1049                        local.get 14
1050                        local.get 1
1051                        i32.load
1052                        i32.gt_s
1053                        select
1054                        local.set 11
1055                        i32.const 2
1056                        local.set 12
1057                        local.get 55
1058                        local.get 47
1059                        f32.add
1060                        local.set 47
1061                        block  ;; label = @11
92 ------------------------------------------------------------
1062                          local.get 24
1063                          i32.const 2
1064                          i32.shr_s
1065                          local.tee 19
1066                          i32.eqz
1067                          if  ;; label = @12
93 ------------------------------------------------------------
1068                            local.get 11
1069                            i32.const 14
1070                            i32.add
1071                            local.set 12
1072                            local.get 47
1073                            local.get 1
1074                            local.get 11
1075                            i32.const 3
1076                            i32.shl
1077                            i32.add
1078                            f32.load
1079                            f32.add
1080                            local.set 47
1081                            i32.const 1
1082                            local.set 11
1083                            br 1 (;@11;)
94 ------------------------------------------------------------
1084                          end
95 ------------------------------------------------------------
1085                          loop  ;; label = @12
96 ------------------------------------------------------------
1086                            local.get 11
1087                            local.tee 17
1088                            i32.const 1
1089                            i32.add
1090                            local.set 11
1091                            local.get 12
1092                            i32.const 1
1093                            i32.shl
1094                            local.set 12
1095                            local.get 47
1096                            local.get 1
1097                            local.get 17
1098                            i32.const 3
1099                            i32.shl
1100                            i32.add
1101                            f32.load
1102                            f32.add
1103                            local.set 47
1104                            local.get 19
1105                            i32.const 1
1106                            i32.shr_s
1107                            local.tee 19
1108                            br_if 0 (;@12;)
97 ------------------------------------------------------------
1109                          end
98 ------------------------------------------------------------
1110                          local.get 47
1111                          local.get 1
1112                          local.get 11
1113                          i32.const 3
1114                          i32.shl
1115                          i32.add
1116                          f32.load
1117                          f32.add
1118                          local.set 47
1119                          local.get 12
1120                          i32.eqz
1121                          br_if 2 (;@9;)
99 ------------------------------------------------------------
1122                          local.get 12
1123                          i32.const 1
1124                          i32.shr_s
1125                          local.set 11
1126                          local.get 17
1127                          i32.const 15
1128                          i32.add
1129                          local.set 12
1130                        end
100 ------------------------------------------------------------
1131                        loop  ;; label = @11
101 ------------------------------------------------------------
1132                          local.get 47
1133                          local.get 1
1134                          local.get 12
1135                          i32.const 3
1136                          i32.shl
1137                          i32.add
1138                          local.get 11
1139                          local.get 24
1140                          i32.and
1141                          i32.const 0
1142                          i32.ne
1143                          i32.const 2
1144                          i32.shl
1145                          i32.add
1146                          f32.load
1147                          f32.add
1148                          local.set 47
1149                          local.get 11
1150                          i32.const 1
1151                          i32.shr_s
1152                          local.tee 11
1153                          br_if 0 (;@11;)
102 ------------------------------------------------------------
1154                        end
103 ------------------------------------------------------------
1155                        br 1 (;@9;)
104 ------------------------------------------------------------
1156                      end
105 ------------------------------------------------------------
1157                      local.get 47
1158                      local.get 35
1159                      f32.load
1160                      f32.add
1161                      local.set 47
1162                    end
106 ------------------------------------------------------------
1163                    local.get 13
1164                    local.get 38
1165                    i32.add
1166                    f32.load
1167                    block (result i32)  ;; label = @9
107 ------------------------------------------------------------
1168                      local.get 53
1169                      local.get 47
1170                      f32.add
1171                      local.tee 47
1172                      f32.abs
1173                      f32.const 1.67637667486e-312
1174                      f32.lt
1175                      if  ;; label = @10
108 ------------------------------------------------------------
1176                        local.get 47
1177                        i32.trunc_f32_s
1178                        br 1 (;@9;)
109 ------------------------------------------------------------
1179                      end
110 ------------------------------------------------------------
1180                      i32.const -2147483648
1181                    end
111 ------------------------------------------------------------
1182                    f32.convert_i32_s
1183                    f32.add
1184                    local.get 54
1185                    local.get 37
1186                    f32.load
1187                    f32.add
1188                    f32.add
1189                    local.tee 47
1190                    local.get 48
1191                    f32.lt
1192                    i32.const 1
1193                    i32.xor
1194                    i32.eqz
1195                    if  ;; label = @9
112 ------------------------------------------------------------
1196                      local.get 34
1197                      local.get 21
1198                      local.get 39
1199                      i32.xor
1200                      local.get 21
1201                      i32.sub
1202                      i32.store16
1203                      local.get 30
1204                      local.get 47
1205                      f32.store
1206                      local.get 36
1207                      local.get 0
1208                      i32.store
1209                      local.get 47
1210                      local.set 48
1211                    end
113 ------------------------------------------------------------
1212                    local.get 16
1213                    i32.const 1
1214                    i32.add
1215                    local.tee 16
1216                    local.get 25
1217                    i32.ne
1218                    br_if 0 (;@8;)
114 ------------------------------------------------------------
1219                  end
115 ------------------------------------------------------------
1220                  local.get 15
1221                end
116 ------------------------------------------------------------
1222                local.tee 0
1223                i32.ne
1224                br_if 0 (;@6;)
117 ------------------------------------------------------------
1225              end
118 ------------------------------------------------------------
1226            end
119 ------------------------------------------------------------
1227            local.get 14
1228            i32.const 1
1229            i32.add
1230            local.set 11
1231            local.get 14
1232            local.get 40
1233            i32.ne
1234            br_if 0 (;@4;)
120 ------------------------------------------------------------
1235          end
121 ------------------------------------------------------------
1236          local.get 43
1237          f32.load
1238          local.tee 49
1239          local.get 1
1240          f32.load
1241          f32.add
1242          local.set 48
1243          local.get 20
1244          local.set 11
1245          local.get 27
1246          local.set 12
1247          loop  ;; label = @4
122 ------------------------------------------------------------
1248            local.get 2
1249            local.get 28
1250            i32.add
1251            local.tee 14
1252            local.get 11
1253            i32.const 2
1254            i32.shl
1255            local.tee 0
1256            i32.const 142864
1257            i32.add
1258            i32.load
1259            i32.const 1
1260            i32.shl
1261            i32.add
1262            i32.load16_u
1263            if  ;; label = @5
123 ------------------------------------------------------------
1264              local.get 49
1265              local.get 13
1266              i32.const 832
1267              i32.add
1268              local.get 0
1269              i32.add
1270              f32.load
1271              f32.add
1272              local.get 13
1273              i32.const 1088
1274              i32.add
1275              local.get 0
1276              i32.add
1277              f32.load
1278              f32.sub
1279              local.set 47
1280              block (result f32)  ;; label = @6
124 ------------------------------------------------------------
1281                local.get 11
1282                local.get 26
1283                i32.lt_s
1284                if  ;; label = @7
125 ------------------------------------------------------------
1285                  local.get 47
1286                  local.get 11
1287                  i32.const 24
1288                  i32.mul
1289                  local.get 1
1290                  i32.add
1291                  f32.load
1292                  f32.add
1293                  local.set 47
1294                end
126 ------------------------------------------------------------
1295                local.get 47
1296              end
127 ------------------------------------------------------------
1297              local.get 48
1298              local.get 47
1299              local.get 48
1300              f32.lt
1301              local.tee 0
1302              select
1303              local.set 48
1304              local.get 11
1305              local.get 12
1306              local.get 0
1307              select
1308              local.set 12
1309            end
128 ------------------------------------------------------------
1310            local.get 11
1311            local.get 40
1312            i32.ne
1313            local.set 0
1314            local.get 11
1315            i32.const 1
1316            i32.add
1317            local.set 11
1318            local.get 0
1319            br_if 0 (;@4;)
129 ------------------------------------------------------------
1320          end
130 ------------------------------------------------------------
1321          local.get 26
1322          local.set 11
1323          loop  ;; label = @4
131 ------------------------------------------------------------
1324            local.get 11
1325            local.get 12
1326            i32.gt_s
1327            if  ;; label = @5
132 ------------------------------------------------------------
1328              loop  ;; label = @6
133 ------------------------------------------------------------
1329                local.get 14
1330                local.get 11
1331                i32.const 2
1332                i32.shl
1333                i32.const 142864
1334                i32.add
1335                i32.load
1336                i32.const 1
1337                i32.shl
1338                i32.add
1339                i32.const 0
1340                i32.store16
1341                local.get 11
1342                i32.const -1
1343                i32.add
1344                local.tee 11
1345                local.get 12
1346                i32.gt_s
1347                br_if 0 (;@6;)
134 ------------------------------------------------------------
1348              end
135 ------------------------------------------------------------
1349              local.get 12
1350              local.set 11
1351            end
136 ------------------------------------------------------------
1352            local.get 11
1353            local.get 20
1354            i32.gt_s
1355            local.set 0
1356            local.get 13
1357            i32.const 576
1358            i32.add
1359            local.get 11
1360            i32.const 2
1361            i32.shl
1362            i32.add
1363            i32.load
1364            local.set 12
1365            local.get 11
1366            i32.const -1
1367            i32.add
1368            local.set 11
1369            local.get 0
1370            br_if 0 (;@4;)
137 ------------------------------------------------------------
1371          end
138 ------------------------------------------------------------
1372          local.get 18
1373          i32.const 1
1374          i32.add
1375          local.tee 18
1376          local.get 4
1377          i32.ne
1378          br_if 0 (;@3;)
139 ------------------------------------------------------------
1379        end
140 ------------------------------------------------------------
1380        local.get 22
1381        i32.load
1382        i32.eqz
1383        br_if 0 (;@2;)
141 ------------------------------------------------------------
1384        i32.const 0
1385        local.set 0
1386        loop  ;; label = @3
142 ------------------------------------------------------------
1387          i32.const 1
1388          local.set 11
1389          loop  ;; label = @4
143 ------------------------------------------------------------
1390            local.get 6
1391            local.get 11
1392            i32.const 3
1393            i32.shl
1394            local.tee 5
1395            i32.add
1396            local.tee 1
1397            local.get 1
1398            f64.load
1399            local.get 11
1400            i32.const 1
1401            i32.shl
1402            local.tee 9
1403            local.get 2
1404            local.get 0
1405            i32.const 7
1406            i32.shl
1407            local.tee 10
1408            i32.add
1409            i32.add
1410            i32.load16_s
1411            local.tee 1
1412            local.get 3
1413            local.get 10
1414            i32.add
1415            local.get 9
1416            i32.add
1417            i32.load16_s
1418            i32.mul
1419            f64.convert_i32_s
1420            f64.add
1421            f64.store
1422            local.get 5
1423            local.get 7
1424            i32.add
1425            local.tee 5
1426            local.get 5
1427            f64.load
1428            local.get 1
1429            local.get 1
1430            i32.mul
1431            i32.const 3
1432            i32.shl
1433            f64.convert_i32_s
1434            f64.add
1435            f64.store
1436            local.get 11
1437            i32.const 1
1438            i32.add
1439            local.tee 11
1440            i32.const 64
1441            i32.ne
1442            br_if 0 (;@4;)
144 ------------------------------------------------------------
1443          end
145 ------------------------------------------------------------
1444          local.get 0
1445          i32.const 1
1446          i32.add
1447          local.tee 0
1448          local.get 4
1449          i32.ne
1450          br_if 0 (;@3;)
146 ------------------------------------------------------------
1451        end
147 ------------------------------------------------------------
1452      end
148 ------------------------------------------------------------
1453      local.get 22
1454      i32.load
1455      i32.eqz
1456      br_if 0 (;@1;)
149 ------------------------------------------------------------
1457      local.get 4
1458      i32.const -1
1459      i32.add
1460      local.set 0
1461      i32.const 0
1462      local.set 11
1463      i32.const 1
1464      local.set 1
1465      loop  ;; label = @2
150 ------------------------------------------------------------
1466        local.get 1
1467        local.get 11
1468        local.get 0
1469        i32.const 2
1470        i32.shl
1471        local.tee 3
1472        local.get 13
1473        i32.const 528
1474        i32.add
1475        local.get 1
1476        i32.const 2
1477        i32.shl
1478        i32.add
1479        i32.load
1480        i32.add
1481        f32.load
1482        local.get 13
1483        i32.const 528
1484        i32.add
1485        local.get 11
1486        i32.const 2
1487        i32.shl
1488        i32.add
1489        i32.load
1490        local.get 3
1491        i32.add
1492        f32.load
1493        f32.lt
1494        select
1495        local.set 11
1496        local.get 1
1497        i32.const 1
1498        i32.add
1499        local.tee 1
1500        local.get 23
1501        i32.ne
1502        br_if 0 (;@2;)
151 ------------------------------------------------------------
1503      end
152 ------------------------------------------------------------
1504      i32.const 0
1505      local.set 12
1506      local.get 0
1507      i32.const 0
1508      i32.ge_s
1509      if  ;; label = @2
153 ------------------------------------------------------------
1510        local.get 0
1511        local.set 1
1512        loop  ;; label = @3
154 ------------------------------------------------------------
1513          local.get 2
1514          local.get 1
1515          i32.const 7
1516          i32.shl
1517          i32.add
1518          local.get 11
1519          i32.const 2
1520          i32.shl
1521          local.tee 3
1522          local.get 13
1523          i32.const 432
1524          i32.add
1525          i32.add
1526          i32.load
1527          local.get 1
1528          i32.const 1
1529          i32.shl
1530          i32.add
1531          i32.load16_u
1532          i32.store16
1533          local.get 13
1534          i32.const 480
1535          i32.add
1536          local.get 3
1537          i32.add
1538          i32.load
1539          local.get 1
1540          i32.const 2
1541          i32.shl
1542          i32.add
1543          i32.load
1544          local.set 11
1545          local.get 1
1546          i32.const 0
1547          i32.gt_s
1548          local.set 3
1549          local.get 1
1550          i32.const -1
1551          i32.add
1552          local.set 1
1553          local.get 3
1554          br_if 0 (;@3;)
155 ------------------------------------------------------------
1555        end
156 ------------------------------------------------------------
1556      end
157 ------------------------------------------------------------
1557      local.get 8
1558      local.get 2
1559      local.get 0
1560      i32.const 7
1561      i32.shl
1562      i32.add
1563      i32.load16_u
1564      i32.store16
1565      loop  ;; label = @2
158 ------------------------------------------------------------
1566        local.get 12
1567        i32.const 2
1568        i32.shl
1569        local.tee 0
1570        local.get 13
1571        i32.const 528
1572        i32.add
1573        i32.add
1574        i32.load
1575        call 33
1576        local.get 13
1577        i32.const 480
1578        i32.add
1579        local.get 0
1580        i32.add
1581        i32.load
1582        call 33
1583        local.get 13
1584        i32.const 432
1585        i32.add
1586        local.get 0
1587        i32.add
1588        i32.load
1589        call 33
1590        local.get 13
1591        i32.const 384
1592        i32.add
1593        local.get 0
1594        i32.add
1595        i32.load
1596        call 33
1597        local.get 12
1598        i32.const 1
1599        i32.add
1600        local.tee 12
1601        local.get 23
1602        i32.ne
1603        br_if 0 (;@2;)
159 ------------------------------------------------------------
1604      end
160 ------------------------------------------------------------
1605    end
161 ------------------------------------------------------------
1606    local.get 13
1607    i32.const 1344
1608    i32.add
1609    global.set 0)
