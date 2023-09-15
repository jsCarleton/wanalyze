  (func (;32;) (type 11) (param i32 i64 i64 i64 i64)
    (local i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 96
0002    i32.sub
0003    local.tee 5
0004    global.set 0
0005    local.get 2
0006    i64.const 32
0007    i64.shl
0008    local.get 1
0009    i64.const 32
0010    i64.shr_u
0011    i64.or
0012    local.set 15
0013    local.get 4
0014    i64.const 47
0015    i64.shl
0016    local.get 3
0017    i64.const 17
0018    i64.shr_u
0019    i64.or
0020    local.set 13
0021    local.get 4
0022    i64.const 281474976710655
0023    i64.and
0024    local.tee 14
0025    i64.const 15
0026    i64.shl
0027    local.get 3
0028    i64.const 49
0029    i64.shr_u
0030    i64.or
0031    local.set 16
0032    local.get 2
0033    local.get 4
0034    i64.xor
0035    i64.const -9223372036854775808
0036    i64.and
0037    local.set 10
0038    local.get 2
0039    i64.const 281474976710655
0040    i64.and
0041    local.tee 11
0042    i64.const 32
0043    i64.shr_u
0044    local.set 17
0045    local.get 14
0046    i64.const 17
0047    i64.shr_u
0048    local.set 18
0049    local.get 4
0050    i64.const 48
0051    i64.shr_u
0052    i32.wrap_i64
0053    i32.const 32767
0054    i32.and
0055    local.set 7
0056    block  ;; label = @1
1 ------------------------------------------------------------
0057      block (result i32)  ;; label = @2
2 ------------------------------------------------------------
0058        local.get 2
0059        i64.const 48
0060        i64.shr_u
0061        i32.wrap_i64
0062        i32.const 32767
0063        i32.and
0064        local.tee 9
0065        i32.const -1
0066        i32.add
0067        i32.const 32765
0068        i32.le_u
0069        if  ;; label = @3
3 ------------------------------------------------------------
0070          i32.const 0
0071          local.get 7
0072          i32.const -1
0073          i32.add
0074          i32.const 32766
0075          i32.lt_u
0076          br_if 1 (;@2;)
4 ------------------------------------------------------------
0077          drop
0078        end
5 ------------------------------------------------------------
0079        local.get 1
0080        i64.eqz
0081        local.get 2
0082        i64.const 9223372036854775807
0083        i64.and
0084        local.tee 12
0085        i64.const 9223090561878065152
0086        i64.lt_u
0087        local.get 12
0088        i64.const 9223090561878065152
0089        i64.eq
0090        select
0091        i32.eqz
0092        if  ;; label = @3
6 ------------------------------------------------------------
0093          local.get 2
0094          i64.const 140737488355328
0095          i64.or
0096          local.set 10
0097          br 2 (;@1;)
7 ------------------------------------------------------------
0098        end
8 ------------------------------------------------------------
0099        local.get 3
0100        i64.eqz
0101        local.get 4
0102        i64.const 9223372036854775807
0103        i64.and
0104        local.tee 2
0105        i64.const 9223090561878065152
0106        i64.lt_u
0107        local.get 2
0108        i64.const 9223090561878065152
0109        i64.eq
0110        select
0111        i32.eqz
0112        if  ;; label = @3
9 ------------------------------------------------------------
0113          local.get 4
0114          i64.const 140737488355328
0115          i64.or
0116          local.set 10
0117          local.get 3
0118          local.set 1
0119          br 2 (;@1;)
10 ------------------------------------------------------------
0120        end
11 ------------------------------------------------------------
0121        local.get 1
0122        local.get 12
0123        i64.const 9223090561878065152
0124        i64.xor
0125        i64.or
0126        i64.eqz
0127        if  ;; label = @3
12 ------------------------------------------------------------
0128          local.get 2
0129          local.get 3
0130          i64.or
0131          i64.eqz
0132          if  ;; label = @4
13 ------------------------------------------------------------
0133            i64.const 9223231299366420480
0134            local.set 10
0135            i64.const 0
0136            local.set 1
0137            br 3 (;@1;)
14 ------------------------------------------------------------
0138          end
15 ------------------------------------------------------------
0139          local.get 10
0140          i64.const 9223090561878065152
0141          i64.or
0142          local.set 10
0143          i64.const 0
0144          local.set 1
0145          br 2 (;@1;)
16 ------------------------------------------------------------
0146        end
17 ------------------------------------------------------------
0147        local.get 3
0148        local.get 2
0149        i64.const 9223090561878065152
0150        i64.xor
0151        i64.or
0152        i64.eqz
0153        if  ;; label = @3
18 ------------------------------------------------------------
0154          local.get 1
0155          local.get 12
0156          i64.or
0157          local.set 2
0158          i64.const 0
0159          local.set 1
0160          local.get 2
0161          i64.eqz
0162          if  ;; label = @4
19 ------------------------------------------------------------
0163            i64.const 9223231299366420480
0164            local.set 10
0165            br 3 (;@1;)
20 ------------------------------------------------------------
0166          end
21 ------------------------------------------------------------
0167          local.get 10
0168          i64.const 9223090561878065152
0169          i64.or
0170          local.set 10
0171          br 2 (;@1;)
22 ------------------------------------------------------------
0172        end
23 ------------------------------------------------------------
0173        local.get 1
0174        local.get 12
0175        i64.or
0176        i64.eqz
0177        if  ;; label = @3
24 ------------------------------------------------------------
0178          i64.const 0
0179          local.set 1
0180          br 2 (;@1;)
25 ------------------------------------------------------------
0181        end
26 ------------------------------------------------------------
0182        local.get 2
0183        local.get 3
0184        i64.or
0185        i64.eqz
0186        if  ;; label = @3
27 ------------------------------------------------------------
0187          i64.const 0
0188          local.set 1
0189          br 2 (;@1;)
28 ------------------------------------------------------------
0190        end
29 ------------------------------------------------------------
0191        local.get 12
0192        i64.const 281474976710655
0193        i64.le_u
0194        if  ;; label = @3
30 ------------------------------------------------------------
0195          local.get 5
0196          i32.const 80
0197          i32.add
0198          local.get 1
0199          local.get 11
0200          local.get 1
0201          local.get 11
0202          local.get 11
0203          i64.eqz
0204          local.tee 6
0205          select
0206          i64.clz
0207          local.get 6
0208          i32.const 6
0209          i32.shl
0210          i64.extend_i32_u
0211          i64.add
0212          i32.wrap_i64
0213          local.tee 6
0214          i32.const -15
0215          i32.add
0216          call 40
0217          local.get 5
0218          i64.load offset=88
0219          local.tee 11
0220          i64.const 32
0221          i64.shl
0222          local.get 5
0223          i64.load offset=80
0224          local.tee 1
0225          i64.const 32
0226          i64.shr_u
0227          i64.or
0228          local.set 15
0229          local.get 11
0230          i64.const 32
0231          i64.shr_u
0232          local.set 17
0233          i32.const 16
0234          local.get 6
0235          i32.sub
0236          local.set 6
0237        end
31 ------------------------------------------------------------
0238        local.get 6
0239        local.get 2
0240        i64.const 281474976710655
0241        i64.gt_u
0242        br_if 0 (;@2;)
32 ------------------------------------------------------------
0243        drop
0244        local.get 5
0245        i32.const -64
0246        i32.sub
0247        local.get 3
0248        local.get 14
0249        local.get 3
0250        local.get 14
0251        local.get 14
0252        i64.eqz
0253        local.tee 8
0254        select
0255        i64.clz
0256        local.get 8
0257        i32.const 6
0258        i32.shl
0259        i64.extend_i32_u
0260        i64.add
0261        i32.wrap_i64
0262        local.tee 8
0263        i32.const -15
0264        i32.add
0265        call 40
0266        local.get 5
0267        i64.load offset=72
0268        local.tee 2
0269        i64.const 15
0270        i64.shl
0271        local.get 5
0272        i64.load offset=64
0273        local.tee 3
0274        i64.const 49
0275        i64.shr_u
0276        i64.or
0277        local.set 16
0278        local.get 2
0279        i64.const 47
0280        i64.shl
0281        local.get 3
0282        i64.const 17
0283        i64.shr_u
0284        i64.or
0285        local.set 13
0286        local.get 2
0287        i64.const 17
0288        i64.shr_u
0289        local.set 18
0290        local.get 6
0291        local.get 8
0292        i32.sub
0293        i32.const 16
0294        i32.add
0295      end
33 ------------------------------------------------------------
0296      local.set 6
0297      local.get 13
0298      i64.const 4294967295
0299      i64.and
0300      local.tee 2
0301      local.get 1
0302      i64.const 4294967295
0303      i64.and
0304      local.tee 1
0305      i64.mul
0306      local.tee 19
0307      local.get 3
0308      i64.const 15
0309      i64.shl
0310      i64.const 4294934528
0311      i64.and
0312      local.tee 3
0313      local.get 15
0314      i64.const 4294967295
0315      i64.and
0316      local.tee 12
0317      i64.mul
0318      i64.add
0319      local.tee 4
0320      i64.const 32
0321      i64.shl
0322      local.tee 14
0323      local.get 1
0324      local.get 3
0325      i64.mul
0326      i64.add
0327      local.tee 13
0328      local.get 14
0329      i64.lt_u
0330      i64.extend_i32_u
0331      local.get 2
0332      local.get 12
0333      i64.mul
0334      local.tee 21
0335      local.get 3
0336      local.get 11
0337      i64.const 4294967295
0338      i64.and
0339      local.tee 11
0340      i64.mul
0341      i64.add
0342      local.tee 20
0343      local.get 16
0344      i64.const 4294967295
0345      i64.and
0346      local.tee 14
0347      local.get 1
0348      i64.mul
0349      i64.add
0350      local.tee 16
0351      local.get 4
0352      local.get 19
0353      i64.lt_u
0354      i64.extend_i32_u
0355      i64.const 32
0356      i64.shl
0357      local.get 4
0358      i64.const 32
0359      i64.shr_u
0360      i64.or
0361      i64.add
0362      local.tee 19
0363      local.get 2
0364      local.get 11
0365      i64.mul
0366      local.tee 22
0367      local.get 3
0368      local.get 17
0369      i64.const 65536
0370      i64.or
0371      local.tee 15
0372      i64.mul
0373      i64.add
0374      local.tee 3
0375      local.get 12
0376      local.get 14
0377      i64.mul
0378      i64.add
0379      local.tee 17
0380      local.get 1
0381      local.get 18
0382      i64.const 2147483647
0383      i64.and
0384      i64.const 2147483648
0385      i64.or
0386      local.tee 1
0387      i64.mul
0388      i64.add
0389      local.tee 18
0390      i64.const 32
0391      i64.shl
0392      i64.add
0393      local.tee 23
0394      i64.add
0395      local.set 4
0396      local.get 7
0397      local.get 9
0398      i32.add
0399      local.get 6
0400      i32.add
0401      i32.const -16383
0402      i32.add
0403      local.set 6
0404      block  ;; label = @2
34 ------------------------------------------------------------
0405        local.get 11
0406        local.get 14
0407        i64.mul
0408        local.tee 24
0409        local.get 2
0410        local.get 15
0411        i64.mul
0412        i64.add
0413        local.tee 2
0414        local.get 24
0415        i64.lt_u
0416        i64.extend_i32_u
0417        local.get 2
0418        local.get 1
0419        local.get 12
0420        i64.mul
0421        i64.add
0422        local.tee 12
0423        local.get 2
0424        i64.lt_u
0425        i64.extend_i32_u
0426        i64.add
0427        local.get 12
0428        local.get 20
0429        local.get 21
0430        i64.lt_u
0431        i64.extend_i32_u
0432        local.get 16
0433        local.get 20
0434        i64.lt_u
0435        i64.extend_i32_u
0436        i64.add
0437        i64.add
0438        local.tee 2
0439        local.get 12
0440        i64.lt_u
0441        i64.extend_i32_u
0442        i64.add
0443        local.get 1
0444        local.get 15
0445        i64.mul
0446        i64.add
0447        local.get 1
0448        local.get 11
0449        i64.mul
0450        local.tee 11
0451        local.get 14
0452        local.get 15
0453        i64.mul
0454        i64.add
0455        local.tee 1
0456        local.get 11
0457        i64.lt_u
0458        i64.extend_i32_u
0459        i64.const 32
0460        i64.shl
0461        local.get 1
0462        i64.const 32
0463        i64.shr_u
0464        i64.or
0465        i64.add
0466        local.get 2
0467        local.get 1
0468        i64.const 32
0469        i64.shl
0470        i64.add
0471        local.tee 1
0472        local.get 2
0473        i64.lt_u
0474        i64.extend_i32_u
0475        i64.add
0476        local.get 1
0477        local.get 18
0478        local.get 17
0479        i64.lt_u
0480        i64.extend_i32_u
0481        local.get 3
0482        local.get 22
0483        i64.lt_u
0484        i64.extend_i32_u
0485        local.get 17
0486        local.get 3
0487        i64.lt_u
0488        i64.extend_i32_u
0489        i64.add
0490        i64.add
0491        i64.const 32
0492        i64.shl
0493        local.get 18
0494        i64.const 32
0495        i64.shr_u
0496        i64.or
0497        i64.add
0498        local.tee 3
0499        local.get 1
0500        i64.lt_u
0501        i64.extend_i32_u
0502        i64.add
0503        local.get 3
0504        local.get 19
0505        local.get 16
0506        i64.lt_u
0507        i64.extend_i32_u
0508        local.get 23
0509        local.get 19
0510        i64.lt_u
0511        i64.extend_i32_u
0512        i64.add
0513        i64.add
0514        local.tee 2
0515        local.get 3
0516        i64.lt_u
0517        i64.extend_i32_u
0518        i64.add
0519        local.tee 1
0520        i64.const 281474976710656
0521        i64.and
0522        i64.eqz
0523        i32.eqz
0524        if  ;; label = @3
35 ------------------------------------------------------------
0525          local.get 6
0526          i32.const 1
0527          i32.add
0528          local.set 6
0529          br 1 (;@2;)
36 ------------------------------------------------------------
0530        end
37 ------------------------------------------------------------
0531        local.get 13
0532        i64.const 63
0533        i64.shr_u
0534        local.set 3
0535        local.get 1
0536        i64.const 1
0537        i64.shl
0538        local.get 2
0539        i64.const 63
0540        i64.shr_u
0541        i64.or
0542        local.set 1
0543        local.get 2
0544        i64.const 1
0545        i64.shl
0546        local.get 4
0547        i64.const 63
0548        i64.shr_u
0549        i64.or
0550        local.set 2
0551        local.get 13
0552        i64.const 1
0553        i64.shl
0554        local.set 13
0555        local.get 3
0556        local.get 4
0557        i64.const 1
0558        i64.shl
0559        i64.or
0560        local.set 4
0561      end
38 ------------------------------------------------------------
0562      local.get 6
0563      i32.const 32767
0564      i32.ge_s
0565      if  ;; label = @2
39 ------------------------------------------------------------
0566        local.get 10
0567        i64.const 9223090561878065152
0568        i64.or
0569        local.set 10
0570        i64.const 0
0571        local.set 1
0572        br 1 (;@1;)
40 ------------------------------------------------------------
0573      end
41 ------------------------------------------------------------
0574      block (result i64)  ;; label = @2
42 ------------------------------------------------------------
0575        local.get 6
0576        i32.const 0
0577        i32.le_s
0578        if  ;; label = @3
43 ------------------------------------------------------------
0579          i32.const 1
0580          local.get 6
0581          i32.sub
0582          local.tee 7
0583          i32.const 127
0584          i32.le_u
0585          if  ;; label = @4
44 ------------------------------------------------------------
0586            local.get 5
0587            i32.const 48
0588            i32.add
0589            local.get 13
0590            local.get 4
0591            local.get 6
0592            i32.const 127
0593            i32.add
0594            local.tee 6
0595            call 40
0596            local.get 5
0597            i32.const 32
0598            i32.add
0599            local.get 2
0600            local.get 1
0601            local.get 6
0602            call 40
0603            local.get 5
0604            i32.const 16
0605            i32.add
0606            local.get 13
0607            local.get 4
0608            local.get 7
0609            call 83
0610            local.get 5
0611            local.get 2
0612            local.get 1
0613            local.get 7
0614            call 83
0615            local.get 5
0616            i64.load offset=48
0617            local.get 5
0618            i64.load offset=56
0619            i64.or
0620            i64.const 0
0621            i64.ne
0622            i64.extend_i32_u
0623            local.get 5
0624            i64.load offset=32
0625            local.get 5
0626            i64.load offset=16
0627            i64.or
0628            i64.or
0629            local.set 13
0630            local.get 5
0631            i64.load offset=40
0632            local.get 5
0633            i64.load offset=24
0634            i64.or
0635            local.set 4
0636            local.get 5
0637            i64.load
0638            local.set 2
0639            local.get 5
0640            i64.load offset=8
0641            br 2 (;@2;)
45 ------------------------------------------------------------
0642          end
46 ------------------------------------------------------------
0643          i64.const 0
0644          local.set 1
0645          br 2 (;@1;)
47 ------------------------------------------------------------
0646        end
48 ------------------------------------------------------------
0647        local.get 1
0648        i64.const 281474976710655
0649        i64.and
0650        local.get 6
0651        i64.extend_i32_u
0652        i64.const 48
0653        i64.shl
0654        i64.or
0655      end
49 ------------------------------------------------------------
0656      local.get 10
0657      i64.or
0658      local.set 10
0659      local.get 13
0660      i64.eqz
0661      local.get 4
0662      i64.const -1
0663      i64.gt_s
0664      local.get 4
0665      i64.const -9223372036854775808
0666      i64.eq
0667      select
0668      i32.eqz
0669      if  ;; label = @2
50 ------------------------------------------------------------
0670        local.get 10
0671        local.get 2
0672        i64.const 1
0673        i64.add
0674        local.tee 1
0675        local.get 2
0676        i64.lt_u
0677        i64.extend_i32_u
0678        i64.add
0679        local.set 10
0680        br 1 (;@1;)
51 ------------------------------------------------------------
0681      end
52 ------------------------------------------------------------
0682      local.get 13
0683      local.get 4
0684      i64.const -9223372036854775808
0685      i64.xor
0686      i64.or
0687      i64.eqz
0688      i32.eqz
0689      if  ;; label = @2
53 ------------------------------------------------------------
0690        local.get 2
0691        local.set 1
0692        br 1 (;@1;)
54 ------------------------------------------------------------
0693      end
55 ------------------------------------------------------------
0694      local.get 10
0695      local.get 2
0696      local.get 2
0697      i64.const 1
0698      i64.and
0699      i64.add
0700      local.tee 1
0701      local.get 2
0702      i64.lt_u
0703      i64.extend_i32_u
0704      i64.add
0705      local.set 10
0706    end
56 ------------------------------------------------------------
0707    local.get 0
0708    local.get 1
0709    i64.store
0710    local.get 0
0711    local.get 10
0712    i64.store offset=8
0713    local.get 5
0714    i32.const 96
0715    i32.add
0716    global.set 0)
