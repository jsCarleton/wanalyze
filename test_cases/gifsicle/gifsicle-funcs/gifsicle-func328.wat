  (func (;328;) (type 36) (param i32 f64 f64 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 240
0002    i32.sub
0003    local.tee 6
0004    global.set 0
0005    i32.const 35428
0006    i32.load
0007    local.set 7
0008    local.get 0
0009    call 74
0010    local.get 0
0011    i32.load offset=4
0012    i32.const 0
0013    i32.gt_s
0014    if  ;; label = @1
1 ------------------------------------------------------------
0015      local.get 6
0016      local.get 0
0017      i32.load16_u offset=18
0018      i32.store offset=236
0019      local.get 6
0020      local.get 0
0021      i32.load16_u offset=20
0022      i32.store offset=232
0023      local.get 6
0024      i32.const 236
0025      i32.add
0026      local.get 6
0027      i32.const 232
0028      i32.add
0029      local.get 1
0030      local.get 2
0031      local.get 3
0032      call 329
0033      block  ;; label = @2
2 ------------------------------------------------------------
0034        local.get 6
0035        i32.load offset=236
0036        local.tee 8
0037        local.get 0
0038        i32.load16_u offset=18
0039        local.tee 3
0040        i32.eq
0041        if  ;; label = @3
3 ------------------------------------------------------------
0042          local.get 6
0043          i32.load offset=232
0044          local.get 0
0045          i32.load16_u offset=20
0046          i32.eq
0047          br_if 1 (;@2;)
4 ------------------------------------------------------------
0048        end
5 ------------------------------------------------------------
0049        block  ;; label = @3
6 ------------------------------------------------------------
0050          block  ;; label = @4
7 ------------------------------------------------------------
0051            block  ;; label = @5
8 ------------------------------------------------------------
0052              local.get 4
0053              i32.const -1
0054              i32.add
0055              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;)
9 ------------------------------------------------------------
0056            end
10 ------------------------------------------------------------
0057            i32.const 1
0058            local.set 4
0059            local.get 8
0060            local.get 3
0061            i32.lt_s
0062            br_if 1 (;@3;)
11 ------------------------------------------------------------
0063            local.get 6
0064            i32.load offset=232
0065            local.get 0
0066            i32.load16_u offset=20
0067            i32.lt_s
0068            local.set 4
0069            br 1 (;@3;)
12 ------------------------------------------------------------
0070          end
13 ------------------------------------------------------------
0071          i32.const 2
0072          local.set 4
0073          local.get 8
0074          local.get 3
0075          i32.lt_s
0076          br_if 0 (;@3;)
14 ------------------------------------------------------------
0077          local.get 6
0078          i32.load offset=232
0079          local.tee 9
0080          local.get 0
0081          i32.load16_u offset=20
0082          local.tee 10
0083          i32.lt_s
0084          br_if 0 (;@3;)
15 ------------------------------------------------------------
0085          local.get 8
0086          local.get 3
0087          i32.rem_s
0088          br_if 0 (;@3;)
16 ------------------------------------------------------------
0089          local.get 9
0090          local.get 10
0091          i32.rem_s
0092          i32.const 0
0093          i32.ne
0094          i32.const 1
0095          i32.shl
0096          local.set 4
0097        end
17 ------------------------------------------------------------
0098        local.get 4
0099        i32.const 0
0100        local.get 4
0101        i32.const -1
0102        i32.add
0103        i32.const 6
0104        i32.lt_u
0105        select
0106        local.set 12
0107        block  ;; label = @3
18 ------------------------------------------------------------
0108          block  ;; label = @4
19 ------------------------------------------------------------
0109            local.get 0
0110            i32.load offset=4
0111            local.tee 4
0112            local.get 7
0113            local.get 7
0114            local.get 4
0115            i32.gt_s
0116            select
0117            local.tee 9
0118            i32.const 2
0119            i32.lt_s
0120            br_if 0 (;@4;)
20 ------------------------------------------------------------
0121            block  ;; label = @5
21 ------------------------------------------------------------
0122              local.get 4
0123              i32.const 1
0124              i32.ge_s
0125              if  ;; label = @6
22 ------------------------------------------------------------
0126                local.get 0
0127                i32.load
0128                local.set 10
0129                i32.const 0
0130                local.set 3
0131                loop  ;; label = @7
23 ------------------------------------------------------------
0132                  local.get 10
0133                  local.get 3
0134                  i32.const 2
0135                  i32.shl
0136                  i32.add
0137                  local.tee 11
0138                  i32.load
0139                  local.tee 7
0140                  i32.load16_u offset=12
0141                  br_if 2 (;@5;)
24 ------------------------------------------------------------
0142                  local.get 7
0143                  i32.load16_u offset=14
0144                  br_if 2 (;@5;)
25 ------------------------------------------------------------
0145                  local.get 7
0146                  i32.load16_u offset=8
0147                  local.get 0
0148                  i32.load16_u offset=18
0149                  i32.ne
0150                  br_if 2 (;@5;)
26 ------------------------------------------------------------
0151                  local.get 7
0152                  i32.load16_u offset=10
0153                  local.get 0
0154                  i32.load16_u offset=20
0155                  i32.ne
0156                  br_if 2 (;@5;)
27 ------------------------------------------------------------
0157                  block  ;; label = @8
28 ------------------------------------------------------------
0158                    local.get 3
0159                    local.get 4
0160                    i32.const -1
0161                    i32.add
0162                    i32.eq
0163                    br_if 0 (;@8;)
29 ------------------------------------------------------------
0164                    local.get 7
0165                    i32.load8_u offset=18
0166                    i32.const 2
0167                    i32.eq
0168                    br_if 0 (;@8;)
30 ------------------------------------------------------------
0169                    local.get 11
0170                    i32.load offset=4
0171                    i32.load16_s offset=20
0172                    i32.const -1
0173                    i32.gt_s
0174                    br_if 3 (;@5;)
31 ------------------------------------------------------------
0175                  end
32 ------------------------------------------------------------
0176                  local.get 3
0177                  i32.const 1
0178                  i32.add
0179                  local.tee 3
0180                  local.get 0
0181                  i32.load offset=4
0182                  local.tee 4
0183                  i32.lt_s
0184                  br_if 0 (;@7;)
33 ------------------------------------------------------------
0185                end
34 ------------------------------------------------------------
0186              end
35 ------------------------------------------------------------
0187              local.get 6
0188              local.get 9
0189              i32.const -1
0190              i32.add
0191              i32.store offset=8
0192              i32.const 0
0193              local.set 4
0194              i32.const 0
0195              i32.const 32
0196              local.get 9
0197              call 23
0198              local.set 10
0199              local.get 6
0200              i32.load offset=232
0201              local.set 11
0202              i32.const 0
0203              local.set 3
0204              loop  ;; label = @6
36 ------------------------------------------------------------
0205                local.get 10
0206                local.get 3
0207                i32.const 5
0208                i32.shl
0209                i32.add
0210                local.tee 7
0211                local.get 12
0212                i32.store offset=28
0213                local.get 7
0214                local.get 5
0215                i32.store offset=24
0216                local.get 7
0217                local.get 11
0218                i32.store offset=20
0219                local.get 7
0220                local.get 8
0221                i32.store offset=16
0222                local.get 7
0223                local.get 3
0224                i32.store offset=8
0225                local.get 7
0226                local.get 0
0227                i32.store offset=4
0228                local.get 7
0229                local.get 6
0230                i32.const 8
0231                i32.add
0232                i32.store offset=12
0233                local.get 7
0234                i32.const 0
0235                i32.const 34
0236                local.get 7
0237                call 11
0238                drop
0239                local.get 3
0240                i32.const 1
0241                i32.add
0242                local.tee 3
0243                local.get 9
0244                i32.ne
0245                br_if 0 (;@6;)
37 ------------------------------------------------------------
0246              end
38 ------------------------------------------------------------
0247              loop  ;; label = @6
39 ------------------------------------------------------------
0248                local.get 10
0249                local.get 4
0250                i32.const 5
0251                i32.shl
0252                i32.add
0253                i32.load
0254                i32.const 0
0255                call 10
0256                drop
0257                local.get 4
0258                i32.const 1
0259                i32.add
0260                local.tee 4
0261                local.get 9
0262                i32.ne
0263                br_if 0 (;@6;)
40 ------------------------------------------------------------
0264              end
41 ------------------------------------------------------------
0265              local.get 10
0266              call 22
0267              local.get 9
0268              i32.const 2
0269              i32.lt_s
0270              br_if 1 (;@4;)
42 ------------------------------------------------------------
0271              local.get 6
0272              i32.load offset=232
0273              local.set 3
0274              br 2 (;@3;)
43 ------------------------------------------------------------
0275            end
44 ------------------------------------------------------------
0276            i32.const 1
0277            i32.const 17048
0278            i32.const 0
0279            call 25
0280          end
45 ------------------------------------------------------------
0281          local.get 6
0282          i32.const 0
0283          i32.store offset=200
0284          local.get 6
0285          i32.const 0
0286          i32.store offset=164
0287          local.get 6
0288          i32.const 0
0289          i32.store offset=12
0290          local.get 6
0291          i64.const 0
0292          i64.store offset=24
0293          local.get 6
0294          i64.const 0
0295          i64.store offset=56
0296          local.get 6
0297          i64.const 0
0298          i64.store offset=80
0299          local.get 6
0300          local.get 0
0301          i32.store offset=8
0302          local.get 6
0303          local.get 0
0304          i32.load16_u offset=18
0305          local.tee 4
0306          i32.store offset=32
0307          local.get 6
0308          local.get 0
0309          i32.load16_u offset=20
0310          local.tee 7
0311          i32.store offset=36
0312          local.get 6
0313          i64.const 0
0314          i64.store offset=144
0315          local.get 6
0316          i32.const -64
0317          i32.sub
0318          local.get 8
0319          i32.store
0320          local.get 6
0321          local.get 6
0322          i32.load offset=232
0323          local.tee 3
0324          i32.store offset=68
0325          local.get 6
0326          local.get 8
0327          i32.store offset=88
0328          local.get 6
0329          local.get 3
0330          i32.store offset=92
0331          local.get 6
0332          local.get 5
0333          i32.store offset=228
0334          local.get 6
0335          i32.const 16000
0336          i32.store offset=224
0337          local.get 6
0338          local.get 4
0339          f64.convert_i32_u
0340          local.tee 1
0341          local.get 8
0342          f64.convert_i32_s
0343          local.tee 2
0344          f64.div
0345          f64.store offset=104
0346          local.get 6
0347          i64.const 0
0348          i64.store offset=136
0349          local.get 6
0350          local.get 2
0351          local.get 1
0352          f64.div
0353          f64.store offset=120
0354          local.get 6
0355          i64.const 0
0356          i64.store offset=16
0357          local.get 6
0358          local.get 7
0359          f64.convert_i32_u
0360          local.tee 1
0361          local.get 3
0362          f64.convert_i32_s
0363          local.tee 2
0364          f64.div
0365          f64.store offset=112
0366          local.get 6
0367          local.get 2
0368          local.get 1
0369          f64.div
0370          f64.store offset=128
0371          local.get 0
0372          i32.load offset=4
0373          i32.const 1
0374          i32.ge_s
0375          if  ;; label = @4
46 ------------------------------------------------------------
0376            i32.const 0
0377            local.set 4
0378            loop  ;; label = @5
47 ------------------------------------------------------------
0379              local.get 6
0380              local.get 0
0381              i32.load
0382              local.get 4
0383              i32.const 2
0384              i32.shl
0385              i32.add
0386              i32.load
0387              i32.store offset=12
0388              local.get 6
0389              i32.const 8
0390              i32.add
0391              local.get 12
0392              call 207
0393              local.get 6
0394              local.get 6
0395              i32.load offset=16
0396              i32.const 1
0397              i32.add
0398              local.tee 4
0399              i32.store offset=16
0400              local.get 4
0401              local.get 0
0402              i32.load offset=4
0403              i32.lt_s
0404              br_if 0 (;@5;)
48 ------------------------------------------------------------
0405            end
49 ------------------------------------------------------------
0406          end
50 ------------------------------------------------------------
0407          local.get 6
0408          i32.const 8
0409          i32.add
0410          call 206
0411        end
51 ------------------------------------------------------------
0412        local.get 0
0413        local.get 3
0414        i32.store16 offset=20
0415        local.get 0
0416        local.get 8
0417        i32.store16 offset=18
0418      end
52 ------------------------------------------------------------
0419      local.get 6
0420      i32.const 240
0421      i32.add
0422      global.set 0
0423      return
53 ------------------------------------------------------------
0424    end
54 ------------------------------------------------------------
0425    i32.const 17017
0426    i32.const 16564
0427    i32.const 1307
0428    i32.const 17034
0429    call 0
0430    unreachable
55 ------------------------------------------------------------)
