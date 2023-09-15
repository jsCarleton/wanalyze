  (func (;222;) (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    loop (result i32)  ;; label = @1
1 ------------------------------------------------------------
0001      local.get 3
0002      i32.const 3
0003      i32.rem_s
0004      local.set 9
0005      i32.const 35268
0006      i32.load
0007      local.tee 7
0008      i32.load offset=24
0009      local.get 3
0010      i32.lt_s
0011      if  ;; label = @2
2 ------------------------------------------------------------
0012        local.get 7
0013        local.get 3
0014        i32.store offset=24
0015      end
3 ------------------------------------------------------------
0016      local.get 7
0017      i32.load offset=4
0018      local.tee 4
0019      local.get 2
0020      i32.le_s
0021      if  ;; label = @2
4 ------------------------------------------------------------
0022        local.get 7
0023        i32.load
0024        local.set 6
0025        loop  ;; label = @3
5 ------------------------------------------------------------
0026          local.get 7
0027          local.get 4
0028          i32.const 1
0029          i32.shl
0030          local.tee 5
0031          i32.store offset=4
0032          local.get 7
0033          local.get 6
0034          i32.const 8
0035          local.get 5
0036          call 23
0037          local.tee 6
0038          i32.store
0039          local.get 7
0040          i32.load offset=4
0041          local.tee 4
0042          local.get 2
0043          i32.le_s
0044          br_if 0 (;@3;)
6 ------------------------------------------------------------
0045        end
7 ------------------------------------------------------------
0046      end
8 ------------------------------------------------------------
0047      local.get 1
0048      i32.const 1
0049      i32.le_s
0050      if (result i32)  ;; label = @2
9 ------------------------------------------------------------
0051        i32.const -1
0052        local.set 4
0053        local.get 1
0054        if  ;; label = @3
10 ------------------------------------------------------------
0055          local.get 0
0056          i32.load
0057          local.set 4
0058        end
11 ------------------------------------------------------------
0059        local.get 7
0060        i32.load
0061        local.get 2
0062        i32.const 3
0063        i32.shl
0064        i32.add
0065        local.tee 0
0066        i32.const -1
0067        i32.store offset=4
0068        local.get 0
0069        local.get 4
0070        i32.store
0071        local.get 10
0072        i32.const 2
0073        i32.add
0074      else
12 ------------------------------------------------------------
0075        local.get 0
0076        local.get 1
0077        i32.const 4
0078        local.get 9
0079        i32.const 2
0080        i32.shl
0081        i32.const 9164
0082        i32.add
0083        i32.load
0084        call 57
0085        local.get 1
0086        i32.const 1
0087        i32.shr_u
0088        local.tee 5
0089        local.set 8
0090        block (result i32)  ;; label = @3
13 ------------------------------------------------------------
0091          block  ;; label = @4
14 ------------------------------------------------------------
0092            block  ;; label = @5
15 ------------------------------------------------------------
0093              loop  ;; label = @6
16 ------------------------------------------------------------
0094                local.get 8
0095                local.tee 4
0096                i32.const 1
0097                i32.ge_s
0098                if  ;; label = @7
17 ------------------------------------------------------------
0099                  local.get 9
0100                  i32.const 1
0101                  i32.shl
0102                  local.tee 8
0103                  local.get 7
0104                  i32.load offset=12
0105                  local.tee 6
0106                  local.get 0
0107                  local.get 4
0108                  i32.const 2
0109                  i32.shl
0110                  i32.add
0111                  i32.load
0112                  i32.const 6
0113                  i32.mul
0114                  i32.add
0115                  i32.add
0116                  i32.load16_u
0117                  local.get 8
0118                  local.get 6
0119                  local.get 0
0120                  local.get 4
0121                  i32.const -1
0122                  i32.add
0123                  local.tee 8
0124                  i32.const 2
0125                  i32.shl
0126                  i32.add
0127                  i32.load
0128                  i32.const 6
0129                  i32.mul
0130                  i32.add
0131                  i32.add
0132                  i32.load16_u
0133                  i32.eq
0134                  br_if 1 (;@6;)
18 ------------------------------------------------------------
0135                  br 2 (;@5;)
19 ------------------------------------------------------------
0136                end
20 ------------------------------------------------------------
0137              end
21 ------------------------------------------------------------
0138              local.get 7
0139              i32.load offset=12
0140              local.set 6
0141              block  ;; label = @6
22 ------------------------------------------------------------
0142                local.get 5
0143                local.get 1
0144                i32.const -1
0145                i32.add
0146                local.tee 4
0147                i32.ge_s
0148                br_if 0 (;@6;)
23 ------------------------------------------------------------
0149                loop  ;; label = @7
24 ------------------------------------------------------------
0150                  local.get 9
0151                  i32.const 1
0152                  i32.shl
0153                  local.tee 11
0154                  local.get 6
0155                  local.get 0
0156                  local.get 5
0157                  i32.const 2
0158                  i32.shl
0159                  i32.add
0160                  local.tee 8
0161                  i32.load
0162                  i32.const 6
0163                  i32.mul
0164                  i32.add
0165                  i32.add
0166                  i32.load16_u
0167                  local.get 6
0168                  local.get 8
0169                  i32.const -4
0170                  i32.add
0171                  i32.load
0172                  i32.const 6
0173                  i32.mul
0174                  i32.add
0175                  local.get 11
0176                  i32.add
0177                  i32.load16_u
0178                  i32.ne
0179                  br_if 1 (;@6;)
25 ------------------------------------------------------------
0180                  local.get 5
0181                  i32.const 1
0182                  i32.add
0183                  local.tee 5
0184                  local.get 4
0185                  i32.ne
0186                  br_if 0 (;@7;)
26 ------------------------------------------------------------
0187                end
27 ------------------------------------------------------------
0188                local.get 4
0189                local.set 5
0190              end
28 ------------------------------------------------------------
0191              local.get 5
0192              i32.eqz
0193              br_if 1 (;@4;)
29 ------------------------------------------------------------
0194              local.get 5
0195              local.set 4
0196            end
30 ------------------------------------------------------------
0197            local.get 9
0198            i32.const 1
0199            i32.shl
0200            local.tee 8
0201            local.get 6
0202            local.get 0
0203            local.get 4
0204            i32.const 2
0205            i32.shl
0206            i32.add
0207            local.tee 5
0208            i32.load
0209            i32.const 6
0210            i32.mul
0211            i32.add
0212            i32.add
0213            i32.load16_s
0214            local.get 6
0215            local.get 5
0216            i32.const -4
0217            i32.add
0218            i32.load
0219            i32.const 6
0220            i32.mul
0221            i32.add
0222            local.get 8
0223            i32.add
0224            i32.load16_s
0225            local.tee 5
0226            i32.sub
0227            i32.const 1
0228            i32.shr_s
0229            local.get 5
0230            i32.add
0231            br 1 (;@3;)
31 ------------------------------------------------------------
0232          end
32 ------------------------------------------------------------
0233          i32.const 0
0234          local.set 4
0235          local.get 6
0236          local.get 0
0237          i32.load
0238          i32.const 6
0239          i32.mul
0240          i32.add
0241          local.get 9
0242          i32.const 1
0243          i32.shl
0244          i32.add
0245          i32.load16_s
0246        end
33 ------------------------------------------------------------
0247        local.set 6
0248        local.get 2
0249        i32.const 3
0250        i32.shl
0251        local.tee 5
0252        local.get 7
0253        i32.load
0254        i32.add
0255        local.get 6
0256        i32.store
0257        local.get 0
0258        local.get 4
0259        local.get 2
0260        i32.const 1
0261        i32.add
0262        local.tee 2
0263        local.get 3
0264        i32.const 1
0265        i32.add
0266        local.tee 3
0267        call 222
0268        local.set 8
0269        local.get 7
0270        i32.load
0271        local.get 5
0272        i32.add
0273        local.get 8
0274        i32.const 1
0275        i32.add
0276        local.tee 5
0277        i32.store offset=4
0278        local.get 2
0279        local.get 8
0280        i32.add
0281        local.set 2
0282        local.get 5
0283        local.get 10
0284        i32.add
0285        local.set 10
0286        local.get 1
0287        local.get 4
0288        i32.sub
0289        local.set 1
0290        local.get 0
0291        local.get 4
0292        i32.const 2
0293        i32.shl
0294        i32.add
0295        local.set 0
0296        br 1 (;@1;)
34 ------------------------------------------------------------
0297      end
35 ------------------------------------------------------------
0298    end
36 ------------------------------------------------------------)
