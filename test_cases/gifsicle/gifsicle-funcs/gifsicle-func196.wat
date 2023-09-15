  (func (;196;) (type 11) (param i32 i64 i64 i64 i64)
    (local i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 192
0002    i32.sub
0003    local.tee 5
0004    global.set 0
0005    local.get 4
0006    i64.const 281474976710655
0007    i64.and
0008    local.set 18
0009    local.get 2
0010    i64.const 281474976710655
0011    i64.and
0012    local.set 12
0013    local.get 2
0014    local.get 4
0015    i64.xor
0016    i64.const -9223372036854775808
0017    i64.and
0018    local.set 17
0019    local.get 4
0020    i64.const 48
0021    i64.shr_u
0022    i32.wrap_i64
0023    i32.const 32767
0024    i32.and
0025    local.set 7
0026    block  ;; label = @1
1 ------------------------------------------------------------
0027      block  ;; label = @2
2 ------------------------------------------------------------
0028        block  ;; label = @3
3 ------------------------------------------------------------
0029          local.get 2
0030          i64.const 48
0031          i64.shr_u
0032          i32.wrap_i64
0033          i32.const 32767
0034          i32.and
0035          local.tee 9
0036          i32.const -1
0037          i32.add
0038          i32.const 32765
0039          i32.le_u
0040          if  ;; label = @4
4 ------------------------------------------------------------
0041            local.get 7
0042            i32.const -1
0043            i32.add
0044            i32.const 32766
0045            i32.lt_u
0046            br_if 1 (;@3;)
5 ------------------------------------------------------------
0047          end
6 ------------------------------------------------------------
0048          local.get 1
0049          i64.eqz
0050          local.get 2
0051          i64.const 9223372036854775807
0052          i64.and
0053          local.tee 10
0054          i64.const 9223090561878065152
0055          i64.lt_u
0056          local.get 10
0057          i64.const 9223090561878065152
0058          i64.eq
0059          select
0060          i32.eqz
0061          if  ;; label = @4
7 ------------------------------------------------------------
0062            local.get 2
0063            i64.const 140737488355328
0064            i64.or
0065            local.set 17
0066            br 2 (;@2;)
8 ------------------------------------------------------------
0067          end
9 ------------------------------------------------------------
0068          local.get 3
0069          i64.eqz
0070          local.get 4
0071          i64.const 9223372036854775807
0072          i64.and
0073          local.tee 2
0074          i64.const 9223090561878065152
0075          i64.lt_u
0076          local.get 2
0077          i64.const 9223090561878065152
0078          i64.eq
0079          select
0080          i32.eqz
0081          if  ;; label = @4
10 ------------------------------------------------------------
0082            local.get 4
0083            i64.const 140737488355328
0084            i64.or
0085            local.set 17
0086            local.get 3
0087            local.set 1
0088            br 2 (;@2;)
11 ------------------------------------------------------------
0089          end
12 ------------------------------------------------------------
0090          local.get 1
0091          local.get 10
0092          i64.const 9223090561878065152
0093          i64.xor
0094          i64.or
0095          i64.eqz
0096          if  ;; label = @4
13 ------------------------------------------------------------
0097            local.get 3
0098            local.get 2
0099            i64.const 9223090561878065152
0100            i64.xor
0101            i64.or
0102            i64.eqz
0103            if  ;; label = @5
14 ------------------------------------------------------------
0104              i64.const 0
0105              local.set 1
0106              i64.const 9223231299366420480
0107              local.set 17
0108              br 3 (;@2;)
15 ------------------------------------------------------------
0109            end
16 ------------------------------------------------------------
0110            local.get 17
0111            i64.const 9223090561878065152
0112            i64.or
0113            local.set 17
0114            i64.const 0
0115            local.set 1
0116            br 2 (;@2;)
17 ------------------------------------------------------------
0117          end
18 ------------------------------------------------------------
0118          local.get 3
0119          local.get 2
0120          i64.const 9223090561878065152
0121          i64.xor
0122          i64.or
0123          i64.eqz
0124          if  ;; label = @4
19 ------------------------------------------------------------
0125            i64.const 0
0126            local.set 1
0127            br 2 (;@2;)
20 ------------------------------------------------------------
0128          end
21 ------------------------------------------------------------
0129          local.get 1
0130          local.get 10
0131          i64.or
0132          i64.eqz
0133          br_if 2 (;@1;)
22 ------------------------------------------------------------
0134          local.get 2
0135          local.get 3
0136          i64.or
0137          i64.eqz
0138          if  ;; label = @4
23 ------------------------------------------------------------
0139            local.get 17
0140            i64.const 9223090561878065152
0141            i64.or
0142            local.set 17
0143            i64.const 0
0144            local.set 1
0145            br 2 (;@2;)
24 ------------------------------------------------------------
0146          end
25 ------------------------------------------------------------
0147          local.get 10
0148          i64.const 281474976710655
0149          i64.le_u
0150          if  ;; label = @4
26 ------------------------------------------------------------
0151            local.get 5
0152            i32.const 176
0153            i32.add
0154            local.get 1
0155            local.get 12
0156            local.get 1
0157            local.get 12
0158            local.get 12
0159            i64.eqz
0160            local.tee 6
0161            select
0162            i64.clz
0163            local.get 6
0164            i32.const 6
0165            i32.shl
0166            i64.extend_i32_u
0167            i64.add
0168            i32.wrap_i64
0169            local.tee 6
0170            i32.const -15
0171            i32.add
0172            call 40
0173            i32.const 16
0174            local.get 6
0175            i32.sub
0176            local.set 6
0177            local.get 5
0178            i64.load offset=184
0179            local.set 12
0180            local.get 5
0181            i64.load offset=176
0182            local.set 1
0183          end
27 ------------------------------------------------------------
0184          local.get 2
0185          i64.const 281474976710655
0186          i64.gt_u
0187          br_if 0 (;@3;)
28 ------------------------------------------------------------
0188          local.get 5
0189          i32.const 160
0190          i32.add
0191          local.get 3
0192          local.get 18
0193          local.get 3
0194          local.get 18
0195          local.get 18
0196          i64.eqz
0197          local.tee 8
0198          select
0199          i64.clz
0200          local.get 8
0201          i32.const 6
0202          i32.shl
0203          i64.extend_i32_u
0204          i64.add
0205          i32.wrap_i64
0206          local.tee 8
0207          i32.const -15
0208          i32.add
0209          call 40
0210          local.get 6
0211          local.get 8
0212          i32.add
0213          i32.const -16
0214          i32.add
0215          local.set 6
0216          local.get 5
0217          i64.load offset=168
0218          local.set 18
0219          local.get 5
0220          i64.load offset=160
0221          local.set 3
0222        end
29 ------------------------------------------------------------
0223        local.get 5
0224        i32.const 144
0225        i32.add
0226        local.get 18
0227        i64.const 281474976710656
0228        i64.or
0229        local.tee 20
0230        i64.const 15
0231        i64.shl
0232        local.get 3
0233        i64.const 49
0234        i64.shr_u
0235        i64.or
0236        local.tee 2
0237        i64.const 8432131806905394308
0238        local.get 2
0239        i64.sub
0240        local.tee 4
0241        call 58
0242        local.get 5
0243        i32.const 128
0244        i32.add
0245        i64.const 0
0246        local.get 5
0247        i64.load offset=152
0248        i64.sub
0249        local.get 4
0250        call 58
0251        local.get 5
0252        i32.const 112
0253        i32.add
0254        local.get 5
0255        i64.load offset=136
0256        i64.const 1
0257        i64.shl
0258        local.get 5
0259        i64.load offset=128
0260        i64.const 63
0261        i64.shr_u
0262        i64.or
0263        local.tee 4
0264        local.get 2
0265        call 58
0266        local.get 5
0267        i32.const 96
0268        i32.add
0269        local.get 4
0270        i64.const 0
0271        local.get 5
0272        i64.load offset=120
0273        i64.sub
0274        call 58
0275        local.get 5
0276        i32.const 80
0277        i32.add
0278        local.get 5
0279        i64.load offset=104
0280        i64.const 1
0281        i64.shl
0282        local.get 5
0283        i64.load offset=96
0284        i64.const 63
0285        i64.shr_u
0286        i64.or
0287        local.tee 4
0288        local.get 2
0289        call 58
0290        local.get 5
0291        i32.const -64
0292        i32.sub
0293        local.get 4
0294        i64.const 0
0295        local.get 5
0296        i64.load offset=88
0297        i64.sub
0298        call 58
0299        local.get 5
0300        i32.const 48
0301        i32.add
0302        local.get 5
0303        i64.load offset=72
0304        i64.const 1
0305        i64.shl
0306        local.get 5
0307        i64.load offset=64
0308        i64.const 63
0309        i64.shr_u
0310        i64.or
0311        local.tee 4
0312        local.get 2
0313        call 58
0314        local.get 5
0315        i32.const 32
0316        i32.add
0317        local.get 4
0318        i64.const 0
0319        local.get 5
0320        i64.load offset=56
0321        i64.sub
0322        call 58
0323        local.get 5
0324        i32.const 16
0325        i32.add
0326        local.get 5
0327        i64.load offset=40
0328        i64.const 1
0329        i64.shl
0330        local.get 5
0331        i64.load offset=32
0332        i64.const 63
0333        i64.shr_u
0334        i64.or
0335        local.tee 4
0336        local.get 2
0337        call 58
0338        local.get 5
0339        local.get 4
0340        i64.const 0
0341        local.get 5
0342        i64.load offset=24
0343        i64.sub
0344        call 58
0345        local.get 6
0346        local.get 9
0347        local.get 7
0348        i32.sub
0349        i32.add
0350        local.set 6
0351        block (result i64)  ;; label = @3
30 ------------------------------------------------------------
0352          i64.const 0
0353          local.get 5
0354          i64.load offset=8
0355          i64.const 1
0356          i64.shl
0357          local.get 5
0358          i64.load
0359          i64.const 63
0360          i64.shr_u
0361          i64.or
0362          i64.const -1
0363          i64.add
0364          local.tee 10
0365          i64.const 4294967295
0366          i64.and
0367          local.tee 4
0368          local.get 2
0369          i64.const 32
0370          i64.shr_u
0371          local.tee 14
0372          i64.mul
0373          local.tee 16
0374          local.get 10
0375          i64.const 32
0376          i64.shr_u
0377          local.tee 10
0378          local.get 2
0379          i64.const 4294967295
0380          i64.and
0381          local.tee 11
0382          i64.mul
0383          i64.add
0384          local.tee 2
0385          i64.const 32
0386          i64.shl
0387          local.tee 13
0388          local.get 4
0389          local.get 11
0390          i64.mul
0391          i64.add
0392          local.tee 11
0393          local.get 13
0394          i64.lt_u
0395          i64.extend_i32_u
0396          local.get 10
0397          local.get 14
0398          i64.mul
0399          local.get 2
0400          local.get 16
0401          i64.lt_u
0402          i64.extend_i32_u
0403          i64.const 32
0404          i64.shl
0405          local.get 2
0406          i64.const 32
0407          i64.shr_u
0408          i64.or
0409          i64.add
0410          i64.add
0411          local.get 11
0412          local.get 4
0413          local.get 3
0414          i64.const 17
0415          i64.shr_u
0416          i64.const 4294967295
0417          i64.and
0418          local.tee 14
0419          i64.mul
0420          local.tee 16
0421          local.get 10
0422          local.get 3
0423          i64.const 15
0424          i64.shl
0425          i64.const 4294934528
0426          i64.and
0427          local.tee 13
0428          i64.mul
0429          i64.add
0430          local.tee 2
0431          i64.const 32
0432          i64.shl
0433          local.tee 15
0434          local.get 4
0435          local.get 13
0436          i64.mul
0437          i64.add
0438          local.get 15
0439          i64.lt_u
0440          i64.extend_i32_u
0441          local.get 10
0442          local.get 14
0443          i64.mul
0444          local.get 2
0445          local.get 16
0446          i64.lt_u
0447          i64.extend_i32_u
0448          i64.const 32
0449          i64.shl
0450          local.get 2
0451          i64.const 32
0452          i64.shr_u
0453          i64.or
0454          i64.add
0455          i64.add
0456          i64.add
0457          local.tee 2
0458          local.get 11
0459          i64.lt_u
0460          i64.extend_i32_u
0461          i64.add
0462          local.get 2
0463          i64.const 0
0464          i64.ne
0465          i64.extend_i32_u
0466          i64.add
0467          i64.sub
0468          local.tee 11
0469          i64.const 4294967295
0470          i64.and
0471          local.tee 14
0472          local.get 4
0473          i64.mul
0474          local.tee 16
0475          local.get 10
0476          local.get 14
0477          i64.mul
0478          local.tee 13
0479          local.get 4
0480          local.get 11
0481          i64.const 32
0482          i64.shr_u
0483          local.tee 15
0484          i64.mul
0485          i64.add
0486          local.tee 11
0487          i64.const 32
0488          i64.shl
0489          i64.add
0490          local.tee 14
0491          local.get 16
0492          i64.lt_u
0493          i64.extend_i32_u
0494          local.get 10
0495          local.get 15
0496          i64.mul
0497          local.get 11
0498          local.get 13
0499          i64.lt_u
0500          i64.extend_i32_u
0501          i64.const 32
0502          i64.shl
0503          local.get 11
0504          i64.const 32
0505          i64.shr_u
0506          i64.or
0507          i64.add
0508          i64.add
0509          local.get 14
0510          i64.const 0
0511          local.get 2
0512          i64.sub
0513          local.tee 2
0514          i64.const 32
0515          i64.shr_u
0516          local.tee 11
0517          local.get 4
0518          i64.mul
0519          local.tee 16
0520          local.get 2
0521          i64.const 4294967295
0522          i64.and
0523          local.tee 13
0524          local.get 10
0525          i64.mul
0526          i64.add
0527          local.tee 2
0528          i64.const 32
0529          i64.shl
0530          local.tee 15
0531          local.get 4
0532          local.get 13
0533          i64.mul
0534          i64.add
0535          local.get 15
0536          i64.lt_u
0537          i64.extend_i32_u
0538          local.get 10
0539          local.get 11
0540          i64.mul
0541          local.get 2
0542          local.get 16
0543          i64.lt_u
0544          i64.extend_i32_u
0545          i64.const 32
0546          i64.shl
0547          local.get 2
0548          i64.const 32
0549          i64.shr_u
0550          i64.or
0551          i64.add
0552          i64.add
0553          i64.add
0554          local.tee 2
0555          local.get 14
0556          i64.lt_u
0557          i64.extend_i32_u
0558          i64.add
0559          local.get 2
0560          i64.const -2
0561          i64.add
0562          local.tee 16
0563          local.get 2
0564          i64.lt_u
0565          i64.extend_i32_u
0566          i64.add
0567          i64.const -1
0568          i64.add
0569          local.tee 11
0570          i64.const 4294967295
0571          i64.and
0572          local.tee 2
0573          local.get 12
0574          i64.const 2
0575          i64.shl
0576          local.get 1
0577          i64.const 62
0578          i64.shr_u
0579          i64.or
0580          i64.const 4294967295
0581          i64.and
0582          local.tee 4
0583          i64.mul
0584          local.tee 14
0585          local.get 1
0586          i64.const 30
0587          i64.shr_u
0588          i64.const 4294967295
0589          i64.and
0590          local.tee 10
0591          local.get 11
0592          i64.const 32
0593          i64.shr_u
0594          local.tee 11
0595          i64.mul
0596          i64.add
0597          local.tee 13
0598          local.get 14
0599          i64.lt_u
0600          i64.extend_i32_u
0601          local.get 13
0602          local.get 16
0603          i64.const 32
0604          i64.shr_u
0605          local.tee 14
0606          local.get 12
0607          i64.const 30
0608          i64.shr_u
0609          i64.const 4294705151
0610          i64.and
0611          i64.const 262144
0612          i64.or
0613          local.tee 12
0614          i64.mul
0615          i64.add
0616          local.tee 15
0617          local.get 13
0618          i64.lt_u
0619          i64.extend_i32_u
0620          i64.add
0621          local.get 11
0622          local.get 12
0623          i64.mul
0624          i64.add
0625          local.get 2
0626          local.get 12
0627          i64.mul
0628          local.tee 19
0629          local.get 4
0630          local.get 11
0631          i64.mul
0632          i64.add
0633          local.tee 13
0634          local.get 19
0635          i64.lt_u
0636          i64.extend_i32_u
0637          i64.const 32
0638          i64.shl
0639          local.get 13
0640          i64.const 32
0641          i64.shr_u
0642          i64.or
0643          i64.add
0644          local.get 15
0645          local.get 13
0646          i64.const 32
0647          i64.shl
0648          i64.add
0649          local.tee 13
0650          local.get 15
0651          i64.lt_u
0652          i64.extend_i32_u
0653          i64.add
0654          local.get 13
0655          local.get 10
0656          local.get 14
0657          i64.mul
0658          local.tee 19
0659          local.get 16
0660          i64.const 4294967295
0661          i64.and
0662          local.tee 16
0663          local.get 4
0664          i64.mul
0665          i64.add
0666          local.tee 15
0667          local.get 19
0668          i64.lt_u
0669          i64.extend_i32_u
0670          local.get 15
0671          local.get 2
0672          local.get 1
0673          i64.const 2
0674          i64.shl
0675          i64.const 4294967292
0676          i64.and
0677          local.tee 19
0678          i64.mul
0679          i64.add
0680          local.tee 21
0681          local.get 15
0682          i64.lt_u
0683          i64.extend_i32_u
0684          i64.add
0685          i64.add
0686          local.tee 15
0687          local.get 13
0688          i64.lt_u
0689          i64.extend_i32_u
0690          i64.add
0691          local.get 15
0692          local.get 11
0693          local.get 19
0694          i64.mul
0695          local.tee 11
0696          local.get 12
0697          local.get 16
0698          i64.mul
0699          i64.add
0700          local.tee 12
0701          local.get 4
0702          local.get 14
0703          i64.mul
0704          i64.add
0705          local.tee 4
0706          local.get 2
0707          local.get 10
0708          i64.mul
0709          i64.add
0710          local.tee 2
0711          i64.const 32
0712          i64.shr_u
0713          local.get 2
0714          local.get 4
0715          i64.lt_u
0716          i64.extend_i32_u
0717          local.get 12
0718          local.get 11
0719          i64.lt_u
0720          i64.extend_i32_u
0721          local.get 4
0722          local.get 12
0723          i64.lt_u
0724          i64.extend_i32_u
0725          i64.add
0726          i64.add
0727          i64.const 32
0728          i64.shl
0729          i64.or
0730          i64.add
0731          local.tee 12
0732          local.get 15
0733          i64.lt_u
0734          i64.extend_i32_u
0735          i64.add
0736          local.get 12
0737          local.get 21
0738          local.get 14
0739          local.get 19
0740          i64.mul
0741          local.tee 4
0742          local.get 10
0743          local.get 16
0744          i64.mul
0745          i64.add
0746          local.tee 10
0747          i64.const 32
0748          i64.shr_u
0749          local.get 10
0750          local.get 4
0751          i64.lt_u
0752          i64.extend_i32_u
0753          i64.const 32
0754          i64.shl
0755          i64.or
0756          i64.add
0757          local.tee 4
0758          local.get 21
0759          i64.lt_u
0760          i64.extend_i32_u
0761          local.get 4
0762          local.get 2
0763          i64.const 32
0764          i64.shl
0765          i64.add
0766          local.get 4
0767          i64.lt_u
0768          i64.extend_i32_u
0769          i64.add
0770          i64.add
0771          local.tee 4
0772          local.get 12
0773          i64.lt_u
0774          i64.extend_i32_u
0775          i64.add
0776          local.tee 2
0777          i64.const 562949953421311
0778          i64.le_u
0779          if  ;; label = @4
31 ------------------------------------------------------------
0780            local.get 1
0781            i64.const 49
0782            i64.shl
0783            local.get 4
0784            i64.const 4294967295
0785            i64.and
0786            local.tee 1
0787            local.get 3
0788            i64.const 4294967295
0789            i64.and
0790            local.tee 10
0791            i64.mul
0792            local.tee 12
0793            i64.const 0
0794            i64.ne
0795            i64.extend_i32_u
0796            i64.sub
0797            i64.const 0
0798            local.get 12
0799            i64.sub
0800            local.tee 16
0801            local.get 4
0802            i64.const 32
0803            i64.shr_u
0804            local.tee 12
0805            local.get 10
0806            i64.mul
0807            local.tee 13
0808            local.get 1
0809            local.get 3
0810            i64.const 32
0811            i64.shr_u
0812            local.tee 11
0813            i64.mul
0814            i64.add
0815            local.tee 14
0816            i64.const 32
0817            i64.shl
0818            local.tee 15
0819            i64.lt_u
0820            i64.extend_i32_u
0821            i64.sub
0822            local.get 2
0823            i64.const 4294967295
0824            i64.and
0825            local.get 10
0826            i64.mul
0827            local.get 1
0828            local.get 18
0829            i64.const 4294967295
0830            i64.and
0831            i64.mul
0832            i64.add
0833            local.get 11
0834            local.get 12
0835            i64.mul
0836            i64.add
0837            local.get 14
0838            local.get 13
0839            i64.lt_u
0840            i64.extend_i32_u
0841            i64.const 32
0842            i64.shl
0843            local.get 14
0844            i64.const 32
0845            i64.shr_u
0846            i64.or
0847            i64.add
0848            local.get 4
0849            local.get 20
0850            i64.const 32
0851            i64.shr_u
0852            i64.mul
0853            local.get 3
0854            local.get 2
0855            i64.const 32
0856            i64.shr_u
0857            i64.mul
0858            i64.add
0859            local.get 2
0860            local.get 11
0861            i64.mul
0862            i64.add
0863            local.get 12
0864            local.get 18
0865            i64.mul
0866            i64.add
0867            i64.const 32
0868            i64.shl
0869            i64.add
0870            i64.sub
0871            local.set 18
0872            local.get 6
0873            i32.const -1
0874            i32.add
0875            local.set 6
0876            local.get 16
0877            local.get 15
0878            i64.sub
0879            br 1 (;@3;)
32 ------------------------------------------------------------
0880          end
33 ------------------------------------------------------------
0881          local.get 4
0882          i64.const 33
0883          i64.shr_u
0884          local.set 11
0885          local.get 1
0886          i64.const 48
0887          i64.shl
0888          local.get 2
0889          i64.const 63
0890          i64.shl
0891          local.get 4
0892          i64.const 1
0893          i64.shr_u
0894          i64.or
0895          local.tee 4
0896          i64.const 4294967295
0897          i64.and
0898          local.tee 1
0899          local.get 3
0900          i64.const 4294967295
0901          i64.and
0902          local.tee 10
0903          i64.mul
0904          local.tee 12
0905          i64.const 0
0906          i64.ne
0907          i64.extend_i32_u
0908          i64.sub
0909          i64.const 0
0910          local.get 12
0911          i64.sub
0912          local.tee 14
0913          local.get 1
0914          local.get 3
0915          i64.const 32
0916          i64.shr_u
0917          local.tee 12
0918          i64.mul
0919          local.tee 16
0920          local.get 11
0921          local.get 2
0922          i64.const 31
0923          i64.shl
0924          i64.or
0925          local.tee 13
0926          i64.const 4294967295
0927          i64.and
0928          local.tee 15
0929          local.get 10
0930          i64.mul
0931          i64.add
0932          local.tee 11
0933          i64.const 32
0934          i64.shl
0935          local.tee 19
0936          i64.lt_u
0937          i64.extend_i32_u
0938          i64.sub
0939          local.get 12
0940          local.get 15
0941          i64.mul
0942          local.get 10
0943          local.get 2
0944          i64.const 1
0945          i64.shr_u
0946          local.tee 10
0947          i64.const 4294967295
0948          i64.and
0949          i64.mul
0950          i64.add
0951          local.get 1
0952          local.get 18
0953          i64.const 4294967295
0954          i64.and
0955          i64.mul
0956          i64.add
0957          local.get 11
0958          local.get 16
0959          i64.lt_u
0960          i64.extend_i32_u
0961          i64.const 32
0962          i64.shl
0963          local.get 11
0964          i64.const 32
0965          i64.shr_u
0966          i64.or
0967          i64.add
0968          local.get 4
0969          local.get 20
0970          i64.const 32
0971          i64.shr_u
0972          i64.mul
0973          local.get 3
0974          local.get 2
0975          i64.const 33
0976          i64.shr_u
0977          i64.mul
0978          i64.add
0979          local.get 10
0980          local.get 12
0981          i64.mul
0982          i64.add
0983          local.get 13
0984          local.get 18
0985          i64.mul
0986          i64.add
0987          i64.const 32
0988          i64.shl
0989          i64.add
0990          i64.sub
0991          local.set 18
0992          local.get 10
0993          local.set 2
0994          local.get 14
0995          local.get 19
0996          i64.sub
0997        end
34 ------------------------------------------------------------
0998        local.set 1
0999        local.get 6
1000        i32.const 16384
1001        i32.ge_s
1002        if  ;; label = @3
35 ------------------------------------------------------------
1003          local.get 17
1004          i64.const 9223090561878065152
1005          i64.or
1006          local.set 17
1007          i64.const 0
1008          local.set 1
1009          br 1 (;@2;)
36 ------------------------------------------------------------
1010        end
37 ------------------------------------------------------------
1011        local.get 6
1012        i32.const 16383
1013        i32.add
1014        local.set 7
1015        local.get 6
1016        i32.const -16383
1017        i32.le_s
1018        if  ;; label = @3
38 ------------------------------------------------------------
1019          block  ;; label = @4
39 ------------------------------------------------------------
1020            local.get 7
1021            br_if 0 (;@4;)
40 ------------------------------------------------------------
1022            local.get 4
1023            local.get 1
1024            i64.const 1
1025            i64.shl
1026            local.get 3
1027            i64.gt_u
1028            local.get 18
1029            i64.const 1
1030            i64.shl
1031            local.get 1
1032            i64.const 63
1033            i64.shr_u
1034            i64.or
1035            local.tee 1
1036            local.get 20
1037            i64.gt_u
1038            local.get 1
1039            local.get 20
1040            i64.eq
1041            select
1042            i64.extend_i32_u
1043            i64.add
1044            local.tee 1
1045            local.get 4
1046            i64.lt_u
1047            i64.extend_i32_u
1048            local.get 2
1049            i64.const 281474976710655
1050            i64.and
1051            i64.add
1052            local.tee 2
1053            i64.const 281474976710656
1054            i64.and
1055            i64.eqz
1056            br_if 0 (;@4;)
41 ------------------------------------------------------------
1057            local.get 2
1058            local.get 17
1059            i64.or
1060            local.set 17
1061            br 2 (;@2;)
42 ------------------------------------------------------------
1062          end
43 ------------------------------------------------------------
1063          i64.const 0
1064          local.set 1
1065          br 1 (;@2;)
44 ------------------------------------------------------------
1066        end
45 ------------------------------------------------------------
1067        local.get 4
1068        local.get 1
1069        i64.const 1
1070        i64.shl
1071        local.get 3
1072        i64.ge_u
1073        local.get 18
1074        i64.const 1
1075        i64.shl
1076        local.get 1
1077        i64.const 63
1078        i64.shr_u
1079        i64.or
1080        local.tee 1
1081        local.get 20
1082        i64.ge_u
1083        local.get 1
1084        local.get 20
1085        i64.eq
1086        select
1087        i64.extend_i32_u
1088        i64.add
1089        local.tee 1
1090        local.get 4
1091        i64.lt_u
1092        i64.extend_i32_u
1093        local.get 2
1094        i64.const 281474976710655
1095        i64.and
1096        local.get 7
1097        i64.extend_i32_u
1098        i64.const 48
1099        i64.shl
1100        i64.or
1101        i64.add
1102        local.get 17
1103        i64.or
1104        local.set 17
1105      end
46 ------------------------------------------------------------
1106      local.get 0
1107      local.get 1
1108      i64.store
1109      local.get 0
1110      local.get 17
1111      i64.store offset=8
1112      local.get 5
1113      i32.const 192
1114      i32.add
1115      global.set 0
1116      return
47 ------------------------------------------------------------
1117    end
48 ------------------------------------------------------------
1118    local.get 0
1119    i64.const 0
1120    i64.store
1121    local.get 0
1122    local.get 17
1123    i64.const 9223231299366420480
1124    local.get 2
1125    local.get 3
1126    i64.or
1127    i64.const 0
1128    i64.ne
1129    select
1130    i64.store offset=8
1131    local.get 5
1132    i32.const 192
1133    i32.add
1134    global.set 0)
