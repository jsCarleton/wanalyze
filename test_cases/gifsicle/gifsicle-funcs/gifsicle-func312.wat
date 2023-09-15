  (func (;312;) (type 4) (param i32)
    (local i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    block  ;; label = @1
1 ------------------------------------------------------------
0001      local.get 0
0002      i32.load offset=60
0003      local.tee 2
0004      i32.load offset=152
0005      local.tee 4
0006      i32.const -1
0007      i32.le_s
0008      if  ;; label = @2
2 ------------------------------------------------------------
0009        i32.const 34896
0010        i32.const 1426
0011        i32.const 20
0012        local.tee 0
0013        call 24
0014        drop
0015        br 1 (;@1;)
3 ------------------------------------------------------------
0016      end
4 ------------------------------------------------------------
0017      local.get 2
0018      i32.load8_u offset=159
0019      if  ;; label = @2
5 ------------------------------------------------------------
0020        i32.const 34896
0021        local.get 2
0022        i32.const 128
0023        i32.add
0024        local.tee 0
0025        i32.const 255
0026        local.get 0
0027        call 28
0028        local.tee 1
0029        local.get 1
0030        i32.const 255
0031        i32.gt_s
0032        select
0033        local.tee 0
0034        call 24
0035        local.set 3
0036        local.get 2
0037        i32.load offset=124
0038        if  ;; label = @3
6 ------------------------------------------------------------
0039          local.get 0
0040          local.get 3
0041          i32.add
0042          local.set 1
0043          local.get 0
0044          i32.const -1
0045          i32.xor
0046          i32.const 256
0047          i32.add
0048          local.tee 0
0049          i32.const 1
0050          i32.lt_s
0051          i32.const 65533
0052          i32.const 65533
0053          local.get 2
0054          i32.load
0055          local.get 4
0056          i32.const 20
0057          i32.mul
0058          i32.add
0059          i32.load offset=4
0060          local.tee 2
0061          local.get 2
0062          i32.const -2048
0063          i32.and
0064          i32.const 55296
0065          i32.eq
0066          select
0067          local.get 2
0068          i32.const 1114111
0069          i32.gt_u
0070          select
0071          local.tee 2
0072          i32.const 127
0073          i32.gt_s
0074          i32.or
0075          i32.eqz
0076          if  ;; label = @4
7 ------------------------------------------------------------
0077            local.get 1
0078            local.get 2
0079            i32.store8
0080            local.get 1
0081            i32.const 1
0082            i32.add
0083            local.get 3
0084            i32.sub
0085            local.set 0
0086            br 3 (;@1;)
8 ------------------------------------------------------------
0087          end
9 ------------------------------------------------------------
0088          block  ;; label = @4
10 ------------------------------------------------------------
0089            local.get 0
0090            i32.const 2
0091            i32.lt_s
0092            local.get 2
0093            i32.const 2047
0094            i32.gt_s
0095            i32.or
0096            if (result i32)  ;; label = @5
11 ------------------------------------------------------------
0097              block (result i32)  ;; label = @6
12 ------------------------------------------------------------
0098                local.get 0
0099                i32.const 3
0100                i32.lt_s
0101                local.get 2
0102                i32.const 65535
0103                i32.gt_s
0104                i32.or
0105                i32.eqz
0106                if  ;; label = @7
13 ------------------------------------------------------------
0107                  i32.const 1
0108                  local.set 4
0109                  local.get 1
0110                  local.set 0
0111                  local.get 2
0112                  i32.const 12
0113                  i32.shr_u
0114                  i32.const -32
0115                  i32.or
0116                  br 1 (;@6;)
14 ------------------------------------------------------------
0117                end
15 ------------------------------------------------------------
0118                local.get 0
0119                i32.const 4
0120                i32.lt_s
0121                br_if 2 (;@4;)
16 ------------------------------------------------------------
0122                local.get 1
0123                local.get 2
0124                i32.const 18
0125                i32.shr_u
0126                i32.const 240
0127                i32.or
0128                i32.store8
0129                local.get 1
0130                i32.const 1
0131                i32.add
0132                local.set 0
0133                i32.const 2
0134                local.set 4
0135                local.get 2
0136                i32.const 12
0137                i32.shr_u
0138                i32.const 63
0139                i32.and
0140                i32.const -128
0141                i32.or
0142              end
17 ------------------------------------------------------------
0143              local.set 5
0144              local.get 0
0145              local.get 5
0146              i32.store8
0147              local.get 1
0148              local.get 4
0149              i32.add
0150              local.set 1
0151              local.get 2
0152              i32.const 6
0153              i32.shr_u
0154              i32.const 63
0155              i32.and
0156              i32.const -128
0157              i32.or
0158            else
18 ------------------------------------------------------------
0159              local.get 2
0160              i32.const 6
0161              i32.shr_u
0162              i32.const -64
0163              i32.or
0164            end
19 ------------------------------------------------------------
0165            local.set 0
0166            local.get 1
0167            local.get 0
0168            i32.store8
0169            local.get 1
0170            local.get 2
0171            i32.const 63
0172            i32.and
0173            i32.const 128
0174            i32.or
0175            i32.store8 offset=1
0176            local.get 1
0177            i32.const 2
0178            i32.add
0179            local.set 1
0180          end
20 ------------------------------------------------------------
0181          local.get 1
0182          local.get 3
0183          i32.sub
0184          local.set 0
0185          br 2 (;@1;)
21 ------------------------------------------------------------
0186        end
22 ------------------------------------------------------------
0187        i32.const 255
0188        local.get 1
0189        i32.le_s
0190        br_if 1 (;@1;)
23 ------------------------------------------------------------
0191        local.get 0
0192        local.get 3
0193        i32.add
0194        local.get 2
0195        i32.load
0196        local.get 4
0197        i32.const 20
0198        i32.mul
0199        i32.add
0200        i32.load offset=4
0201        i32.store8
0202        local.get 0
0203        i32.const 1
0204        i32.add
0205        local.set 0
0206        br 1 (;@1;)
24 ------------------------------------------------------------
0207      end
25 ------------------------------------------------------------
0208      local.get 2
0209      i32.load8_u offset=160
0210      local.set 3
0211      i32.const 34896
0212      local.get 2
0213      i32.const 128
0214      i32.add
0215      local.tee 0
0216      i32.const 255
0217      local.get 0
0218      call 28
0219      local.tee 0
0220      local.get 0
0221      i32.const 255
0222      i32.gt_s
0223      select
0224      local.tee 0
0225      call 24
0226      local.set 1
0227      local.get 3
0228      if  ;; label = @2
26 ------------------------------------------------------------
0229        local.get 0
0230        local.get 1
0231        i32.add
0232        i32.const 1178
0233        local.get 0
0234        i32.const -1
0235        i32.xor
0236        i32.const 256
0237        i32.add
0238        local.tee 3
0239        i32.const 3
0240        local.get 3
0241        i32.const 3
0242        i32.lt_s
0243        select
0244        local.tee 3
0245        call 24
0246        drop
0247        local.get 1
0248        local.get 0
0249        local.get 3
0250        i32.add
0251        local.tee 0
0252        i32.add
0253        local.get 2
0254        i32.load
0255        local.get 4
0256        i32.const 20
0257        i32.mul
0258        i32.add
0259        i32.load
0260        local.get 2
0261        i32.load offset=4
0262        local.get 4
0263        i32.const 12
0264        i32.mul
0265        i32.add
0266        i32.load8_u offset=2
0267        i32.add
0268        local.tee 1
0269        local.get 0
0270        i32.const -1
0271        i32.xor
0272        i32.const 256
0273        i32.add
0274        local.tee 2
0275        local.get 1
0276        call 28
0277        local.tee 1
0278        local.get 1
0279        local.get 2
0280        i32.gt_s
0281        select
0282        local.tee 1
0283        call 24
0284        drop
0285        local.get 0
0286        local.get 1
0287        i32.add
0288        local.set 0
0289        br 1 (;@1;)
27 ------------------------------------------------------------
0290      end
28 ------------------------------------------------------------
0291      local.get 0
0292      local.get 1
0293      i32.add
0294      local.get 2
0295      i32.load
0296      local.get 4
0297      i32.const 20
0298      i32.mul
0299      i32.add
0300      i32.load
0301      local.get 2
0302      i32.load offset=4
0303      local.get 4
0304      i32.const 12
0305      i32.mul
0306      i32.add
0307      i32.load8_u offset=2
0308      i32.add
0309      local.tee 1
0310      local.get 0
0311      i32.const -1
0312      i32.xor
0313      i32.const 256
0314      i32.add
0315      local.tee 2
0316      local.get 1
0317      call 28
0318      local.tee 1
0319      local.get 1
0320      local.get 2
0321      i32.gt_s
0322      select
0323      local.tee 1
0324      call 24
0325      drop
0326      local.get 0
0327      local.get 1
0328      i32.add
0329      local.set 0
0330    end
29 ------------------------------------------------------------
0331    local.get 0
0332    i32.const 256
0333    i32.lt_s
0334    if  ;; label = @1
30 ------------------------------------------------------------
0335      local.get 0
0336      i32.const 34896
0337      i32.add
0338      i32.const 0
0339      i32.store8
0340    end
31 ------------------------------------------------------------)
