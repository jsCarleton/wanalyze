  (func (;38;) (type 15) (param i32 i64 i64 i64 i64)
    (local i32 i32 i32 i32 i64 i64 i64 i64)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 112
0002    i32.sub
0003    local.tee 5
0004    global.set 0
0005    local.get 4
0006    i64.const 9223372036854775807
0007    i64.and
0008    local.set 10
0009    block  ;; label = @1
1 ------------------------------------------------------------
0010      block  ;; label = @2
2 ------------------------------------------------------------
0011        local.get 1
0012        i64.const -1
0013        i64.add
0014        local.tee 11
0015        i64.const -1
0016        i64.eq
0017        local.get 2
0018        i64.const 9223372036854775807
0019        i64.and
0020        local.tee 9
0021        local.get 11
0022        local.get 1
0023        i64.lt_u
0024        i64.extend_i32_u
0025        i64.add
0026        i64.const -1
0027        i64.add
0028        local.tee 11
0029        i64.const 9223090561878065151
0030        i64.gt_u
0031        local.get 11
0032        i64.const 9223090561878065151
0033        i64.eq
0034        select
0035        i32.eqz
0036        if  ;; label = @3
3 ------------------------------------------------------------
0037          local.get 3
0038          i64.const -1
0039          i64.add
0040          local.tee 11
0041          i64.const -1
0042          i64.ne
0043          local.get 10
0044          local.get 11
0045          local.get 3
0046          i64.lt_u
0047          i64.extend_i32_u
0048          i64.add
0049          i64.const -1
0050          i64.add
0051          local.tee 11
0052          i64.const 9223090561878065151
0053          i64.lt_u
0054          local.get 11
0055          i64.const 9223090561878065151
0056          i64.eq
0057          select
0058          br_if 1 (;@2;)
4 ------------------------------------------------------------
0059        end
5 ------------------------------------------------------------
0060        local.get 1
0061        i64.eqz
0062        local.get 9
0063        i64.const 9223090561878065152
0064        i64.lt_u
0065        local.get 9
0066        i64.const 9223090561878065152
0067        i64.eq
0068        select
0069        i32.eqz
0070        if  ;; label = @3
6 ------------------------------------------------------------
0071          local.get 2
0072          i64.const 140737488355328
0073          i64.or
0074          local.set 4
0075          local.get 1
0076          local.set 3
0077          br 2 (;@1;)
7 ------------------------------------------------------------
0078        end
8 ------------------------------------------------------------
0079        local.get 3
0080        i64.eqz
0081        local.get 10
0082        i64.const 9223090561878065152
0083        i64.lt_u
0084        local.get 10
0085        i64.const 9223090561878065152
0086        i64.eq
0087        select
0088        i32.eqz
0089        if  ;; label = @3
9 ------------------------------------------------------------
0090          local.get 4
0091          i64.const 140737488355328
0092          i64.or
0093          local.set 4
0094          br 2 (;@1;)
10 ------------------------------------------------------------
0095        end
11 ------------------------------------------------------------
0096        local.get 1
0097        local.get 9
0098        i64.const 9223090561878065152
0099        i64.xor
0100        i64.or
0101        i64.eqz
0102        if  ;; label = @3
12 ------------------------------------------------------------
0103          i64.const 9223231299366420480
0104          local.get 2
0105          local.get 1
0106          local.get 3
0107          i64.xor
0108          local.get 2
0109          local.get 4
0110          i64.xor
0111          i64.const -9223372036854775808
0112          i64.xor
0113          i64.or
0114          i64.eqz
0115          local.tee 6
0116          select
0117          local.set 4
0118          i64.const 0
0119          local.get 1
0120          local.get 6
0121          select
0122          local.set 3
0123          br 2 (;@1;)
13 ------------------------------------------------------------
0124        end
14 ------------------------------------------------------------
0125        local.get 3
0126        local.get 10
0127        i64.const 9223090561878065152
0128        i64.xor
0129        i64.or
0130        i64.eqz
0131        br_if 1 (;@1;)
15 ------------------------------------------------------------
0132        local.get 1
0133        local.get 9
0134        i64.or
0135        i64.eqz
0136        if  ;; label = @3
16 ------------------------------------------------------------
0137          local.get 3
0138          local.get 10
0139          i64.or
0140          i64.const 0
0141          i64.ne
0142          br_if 2 (;@1;)
17 ------------------------------------------------------------
0143          local.get 1
0144          local.get 3
0145          i64.and
0146          local.set 3
0147          local.get 2
0148          local.get 4
0149          i64.and
0150          local.set 4
0151          br 2 (;@1;)
18 ------------------------------------------------------------
0152        end
19 ------------------------------------------------------------
0153        local.get 3
0154        local.get 10
0155        i64.or
0156        i64.eqz
0157        i32.eqz
0158        br_if 0 (;@2;)
20 ------------------------------------------------------------
0159        local.get 1
0160        local.set 3
0161        local.get 2
0162        local.set 4
0163        br 1 (;@1;)
21 ------------------------------------------------------------
0164      end
22 ------------------------------------------------------------
0165      local.get 3
0166      local.get 1
0167      local.get 3
0168      local.get 1
0169      i64.gt_u
0170      local.get 10
0171      local.get 9
0172      i64.gt_u
0173      local.get 9
0174      local.get 10
0175      i64.eq
0176      select
0177      local.tee 7
0178      select
0179      local.set 10
0180      local.get 4
0181      local.get 2
0182      local.get 7
0183      select
0184      local.tee 11
0185      i64.const 281474976710655
0186      i64.and
0187      local.set 9
0188      local.get 2
0189      local.get 4
0190      local.get 7
0191      select
0192      local.tee 2
0193      i64.const 48
0194      i64.shr_u
0195      i32.wrap_i64
0196      i32.const 32767
0197      i32.and
0198      local.set 8
0199      local.get 11
0200      i64.const 48
0201      i64.shr_u
0202      i32.wrap_i64
0203      i32.const 32767
0204      i32.and
0205      local.tee 6
0206      i32.eqz
0207      if  ;; label = @2
23 ------------------------------------------------------------
0208        local.get 5
0209        i32.const 96
0210        i32.add
0211        local.get 10
0212        local.get 9
0213        local.get 10
0214        local.get 9
0215        local.get 9
0216        i64.eqz
0217        local.tee 6
0218        select
0219        i64.clz
0220        local.get 6
0221        i32.const 6
0222        i32.shl
0223        i64.extend_i32_u
0224        i64.add
0225        i32.wrap_i64
0226        local.tee 6
0227        i32.const -15
0228        i32.add
0229        call 36
0230        local.get 5
0231        i64.load
0232        local.set 9
0233        local.get 5
0234        i64.load
0235        local.set 10
0236        i32.const 16
0237        local.get 6
0238        i32.sub
0239        local.set 6
0240      end
24 ------------------------------------------------------------
0241      local.get 1
0242      local.get 3
0243      local.get 7
0244      select
0245      local.set 3
0246      local.get 2
0247      i64.const 281474976710655
0248      i64.and
0249      local.set 1
0250      local.get 8
0251      if (result i64)  ;; label = @2
25 ------------------------------------------------------------
0252        local.get 1
0253      else
26 ------------------------------------------------------------
0254        local.get 5
0255        i32.const 80
0256        i32.add
0257        local.get 3
0258        local.get 1
0259        local.get 3
0260        local.get 1
0261        local.get 1
0262        i64.eqz
0263        local.tee 7
0264        select
0265        i64.clz
0266        local.get 7
0267        i32.const 6
0268        i32.shl
0269        i64.extend_i32_u
0270        i64.add
0271        i32.wrap_i64
0272        local.tee 7
0273        i32.const -15
0274        i32.add
0275        call 36
0276        i32.const 16
0277        local.get 7
0278        i32.sub
0279        local.set 8
0280        local.get 5
0281        i64.load
0282        local.set 3
0283        local.get 5
0284        i64.load
0285      end
27 ------------------------------------------------------------
0286      i64.const 3
0287      i64.shl
0288      local.get 3
0289      i64.const 61
0290      i64.shr_u
0291      i64.or
0292      i64.const 2251799813685248
0293      i64.or
0294      local.set 4
0295      local.get 9
0296      i64.const 3
0297      i64.shl
0298      local.get 10
0299      i64.const 61
0300      i64.shr_u
0301      i64.or
0302      local.set 1
0303      local.get 2
0304      local.get 11
0305      i64.xor
0306      local.set 12
0307      block (result i64)  ;; label = @2
28 ------------------------------------------------------------
0308        local.get 3
0309        i64.const 3
0310        i64.shl
0311        local.tee 3
0312        local.get 6
0313        local.get 8
0314        i32.sub
0315        local.tee 7
0316        i32.eqz
0317        br_if 0 (;@2;)
29 ------------------------------------------------------------
0318        drop
0319        local.get 7
0320        i32.const 127
0321        i32.gt_u
0322        if  ;; label = @3
30 ------------------------------------------------------------
0323          i64.const 0
0324          local.set 4
0325          i64.const 1
0326          br 1 (;@2;)
31 ------------------------------------------------------------
0327        end
32 ------------------------------------------------------------
0328        local.get 5
0329        i32.const -64
0330        i32.sub
0331        local.get 3
0332        local.get 4
0333        i32.const 128
0334        local.get 7
0335        i32.sub
0336        call 36
0337        local.get 5
0338        i32.const 48
0339        i32.add
0340        local.get 3
0341        local.get 4
0342        local.get 7
0343        call 63
0344        local.get 5
0345        i64.load
0346        local.set 4
0347        local.get 5
0348        i64.load
0349        local.get 5
0350        i64.load
0351        local.get 5
0352        i64.load
0353        i64.or
0354        i64.const 0
0355        i64.ne
0356        i64.extend_i32_u
0357        i64.or
0358      end
33 ------------------------------------------------------------
0359      local.set 3
0360      local.get 1
0361      i64.const 2251799813685248
0362      i64.or
0363      local.set 9
0364      local.get 10
0365      i64.const 3
0366      i64.shl
0367      local.set 2
0368      block  ;; label = @2
34 ------------------------------------------------------------
0369        local.get 12
0370        i64.const -1
0371        i64.le_s
0372        if  ;; label = @3
35 ------------------------------------------------------------
0373          local.get 2
0374          local.get 3
0375          i64.sub
0376          local.tee 1
0377          local.get 9
0378          local.get 4
0379          i64.sub
0380          local.get 2
0381          local.get 3
0382          i64.lt_u
0383          i64.extend_i32_u
0384          i64.sub
0385          local.tee 3
0386          i64.or
0387          i64.eqz
0388          if  ;; label = @4
36 ------------------------------------------------------------
0389            i64.const 0
0390            local.set 3
0391            i64.const 0
0392            local.set 4
0393            br 3 (;@1;)
37 ------------------------------------------------------------
0394          end
38 ------------------------------------------------------------
0395          local.get 3
0396          i64.const 2251799813685247
0397          i64.gt_u
0398          br_if 1 (;@2;)
39 ------------------------------------------------------------
0399          local.get 5
0400          i32.const 32
0401          i32.add
0402          local.get 1
0403          local.get 3
0404          local.get 1
0405          local.get 3
0406          local.get 3
0407          i64.eqz
0408          local.tee 7
0409          select
0410          i64.clz
0411          local.get 7
0412          i32.const 6
0413          i32.shl
0414          i64.extend_i32_u
0415          i64.add
0416          i32.wrap_i64
0417          i32.const -12
0418          i32.add
0419          local.tee 7
0420          call 36
0421          local.get 6
0422          local.get 7
0423          i32.sub
0424          local.set 6
0425          local.get 5
0426          i64.load
0427          local.set 3
0428          local.get 5
0429          i64.load
0430          local.set 1
0431          br 1 (;@2;)
40 ------------------------------------------------------------
0432        end
41 ------------------------------------------------------------
0433        local.get 2
0434        local.get 3
0435        i64.add
0436        local.tee 1
0437        local.get 3
0438        i64.lt_u
0439        i64.extend_i32_u
0440        local.get 4
0441        local.get 9
0442        i64.add
0443        i64.add
0444        local.tee 3
0445        i64.const 4503599627370496
0446        i64.and
0447        i64.eqz
0448        br_if 0 (;@2;)
42 ------------------------------------------------------------
0449        local.get 1
0450        i64.const 1
0451        i64.and
0452        local.get 3
0453        i64.const 63
0454        i64.shl
0455        local.get 1
0456        i64.const 1
0457        i64.shr_u
0458        i64.or
0459        i64.or
0460        local.set 1
0461        local.get 6
0462        i32.const 1
0463        i32.add
0464        local.set 6
0465        local.get 3
0466        i64.const 1
0467        i64.shr_u
0468        local.set 3
0469      end
43 ------------------------------------------------------------
0470      local.get 11
0471      i64.const -9223372036854775808
0472      i64.and
0473      local.set 2
0474      local.get 6
0475      i32.const 32767
0476      i32.ge_s
0477      if  ;; label = @2
44 ------------------------------------------------------------
0478        local.get 2
0479        i64.const 9223090561878065152
0480        i64.or
0481        local.set 4
0482        i64.const 0
0483        local.set 3
0484        br 1 (;@1;)
45 ------------------------------------------------------------
0485      end
46 ------------------------------------------------------------
0486      i32.const 0
0487      local.set 7
0488      block  ;; label = @2
47 ------------------------------------------------------------
0489        local.get 6
0490        i32.const 0
0491        i32.gt_s
0492        if  ;; label = @3
48 ------------------------------------------------------------
0493          local.get 6
0494          local.set 7
0495          br 1 (;@2;)
49 ------------------------------------------------------------
0496        end
50 ------------------------------------------------------------
0497        local.get 5
0498        i32.const 16
0499        i32.add
0500        local.get 1
0501        local.get 3
0502        local.get 6
0503        i32.const 127
0504        i32.add
0505        call 36
0506        local.get 5
0507        local.get 1
0508        local.get 3
0509        i32.const 1
0510        local.get 6
0511        i32.sub
0512        call 63
0513        local.get 5
0514        i64.load
0515        local.get 5
0516        i64.load
0517        local.get 5
0518        i64.load
0519        i64.or
0520        i64.const 0
0521        i64.ne
0522        i64.extend_i32_u
0523        i64.or
0524        local.set 1
0525        local.get 5
0526        i64.load
0527        local.set 3
0528      end
51 ------------------------------------------------------------
0529      local.get 3
0530      i64.const 61
0531      i64.shl
0532      local.get 1
0533      i64.const 3
0534      i64.shr_u
0535      i64.or
0536      local.tee 4
0537      local.get 1
0538      i32.wrap_i64
0539      i32.const 7
0540      i32.and
0541      local.tee 6
0542      i32.const 4
0543      i32.gt_u
0544      i64.extend_i32_u
0545      i64.add
0546      local.tee 1
0547      local.get 4
0548      i64.lt_u
0549      i64.extend_i32_u
0550      local.get 3
0551      i64.const 3
0552      i64.shr_u
0553      i64.const 281474976710655
0554      i64.and
0555      local.get 2
0556      i64.or
0557      local.get 7
0558      i64.extend_i32_u
0559      i64.const 48
0560      i64.shl
0561      i64.or
0562      i64.add
0563      local.get 1
0564      local.get 1
0565      i64.const 1
0566      i64.and
0567      i64.const 0
0568      local.get 6
0569      i32.const 4
0570      i32.eq
0571      select
0572      local.tee 1
0573      i64.add
0574      local.tee 3
0575      local.get 1
0576      i64.lt_u
0577      i64.extend_i32_u
0578      i64.add
0579      local.set 4
0580    end
52 ------------------------------------------------------------
0581    local.get 0
0582    local.get 3
0583    i64.store
0584    local.get 0
0585    local.get 4
0586    i64.store
0587    local.get 5
0588    i32.const 112
0589    i32.add
0590    global.set 0)
