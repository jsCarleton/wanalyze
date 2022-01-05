  (func (;41;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 5
0001    local.set 8
0002    global.get 5
0003    i32.const 48
0004    i32.add
0005    global.set 5
0006    global.get 5
0007    global.get 6
0008    i32.ge_s
0009    if  ;; label = @1
1 ------------------------------------------------------------
0010      i32.const 48
0011      call 2
0012    end
2 ------------------------------------------------------------
0013    local.get 8
0014    i32.const 32
0015    i32.add
0016    local.set 6
0017    local.get 8
0018    local.tee 3
0019    i32.const 0
0020    local.get 0
0021    i32.const 28
0022    i32.add
0023    local.tee 9
0024    i32.const 0
0025    call 20
0026    local.tee 5
0027    call 17
0028    local.get 3
0029    i32.const 4
0030    local.get 0
0031    i32.const 20
0032    i32.add
0033    local.tee 10
0034    i32.const 0
0035    call 20
0036    local.get 5
0037    i32.sub
0038    local.tee 5
0039    call 17
0040    local.get 3
0041    i32.const 8
0042    local.get 1
0043    call 17
0044    local.get 3
0045    i32.const 12
0046    local.get 2
0047    call 17
0048    local.get 3
0049    i32.const 16
0050    i32.add
0051    local.tee 1
0052    i32.const 0
0053    local.get 0
0054    i32.const 60
0055    i32.add
0056    local.tee 12
0057    i32.const 0
0058    call 20
0059    call 17
0060    local.get 1
0061    i32.const 4
0062    local.get 3
0063    call 17
0064    local.get 1
0065    i32.const 8
0066    i32.const 2
0067    call 17
0068    block  ;; label = @1
3 ------------------------------------------------------------
0069      block  ;; label = @2
4 ------------------------------------------------------------
0070        local.get 5
0071        local.get 2
0072        i32.add
0073        local.tee 5
0074        i32.const 146
0075        local.get 1
0076        call 4
0077        local.tee 4
0078        i32.const -4096
0079        i32.gt_u
0080        if (result i32)  ;; label = @3
5 ------------------------------------------------------------
0081          i32.const 19424
0082          i32.const 0
0083          i32.const 0
0084          local.get 4
0085          i32.sub
0086          call 17
0087          i32.const -1
0088          local.tee 4
0089        else
6 ------------------------------------------------------------
0090          local.get 4
0091        end
7 ------------------------------------------------------------
0092        i32.eq
0093        br_if 0 (;@2;)
8 ------------------------------------------------------------
0094        i32.const 2
0095        local.set 7
0096        local.get 3
0097        local.set 1
0098        local.get 4
0099        local.set 3
0100        loop  ;; label = @3
9 ------------------------------------------------------------
0101          local.get 3
0102          i32.const 0
0103          i32.ge_s
0104          if  ;; label = @4
10 ------------------------------------------------------------
0105            local.get 5
0106            local.get 3
0107            i32.sub
0108            local.set 5
0109            local.get 1
0110            i32.const 8
0111            i32.add
0112            local.set 4
0113            local.get 3
0114            local.get 1
0115            i32.const 4
0116            call 20
0117            local.tee 13
0118            i32.gt_u
0119            local.tee 11
0120            if  ;; label = @5
11 ------------------------------------------------------------
0121              local.get 4
0122              local.set 1
0123            end
12 ------------------------------------------------------------
0124            local.get 7
0125            local.get 11
0126            i32.const 31
0127            i32.shl
0128            i32.const 31
0129            i32.shr_s
0130            i32.add
0131            local.set 7
0132            local.get 1
0133            i32.const 0
0134            local.get 1
0135            i32.const 0
0136            call 20
0137            local.get 3
0138            local.get 11
0139            if (result i32)  ;; label = @5
13 ------------------------------------------------------------
0140              local.get 13
0141            else
14 ------------------------------------------------------------
0142              i32.const 0
0143            end
15 ------------------------------------------------------------
0144            i32.sub
0145            local.tee 3
0146            i32.add
0147            call 17
0148            local.get 1
0149            i32.const 4
0150            i32.add
0151            local.tee 4
0152            i32.const 0
0153            local.get 4
0154            i32.const 0
0155            call 20
0156            local.get 3
0157            i32.sub
0158            call 17
0159            local.get 6
0160            i32.const 0
0161            local.get 12
0162            i32.const 0
0163            call 20
0164            call 17
0165            local.get 6
0166            i32.const 4
0167            local.get 1
0168            call 17
0169            local.get 6
0170            i32.const 8
0171            local.get 7
0172            call 17
0173            local.get 5
0174            i32.const 146
0175            local.get 6
0176            call 4
0177            local.tee 3
0178            i32.const -4096
0179            i32.gt_u
0180            if (result i32)  ;; label = @5
16 ------------------------------------------------------------
0181              i32.const 19424
0182              i32.const 0
0183              i32.const 0
0184              local.get 3
0185              i32.sub
0186              call 17
0187              i32.const -1
0188              local.tee 3
0189            else
17 ------------------------------------------------------------
0190              local.get 3
0191            end
18 ------------------------------------------------------------
0192            i32.eq
0193            br_if 2 (;@2;)
19 ------------------------------------------------------------
0194            br 1 (;@3;)
20 ------------------------------------------------------------
0195          end
21 ------------------------------------------------------------
0196        end
22 ------------------------------------------------------------
0197        local.get 0
0198        i32.const 16
0199        i32.const 0
0200        call 17
0201        local.get 9
0202        i32.const 0
0203        i32.const 0
0204        call 17
0205        local.get 10
0206        i32.const 0
0207        i32.const 0
0208        call 17
0209        local.get 0
0210        i32.const 0
0211        local.get 0
0212        i32.const 0
0213        call 20
0214        i32.const 32
0215        i32.or
0216        call 17
0217        local.get 7
0218        i32.const 2
0219        i32.eq
0220        if (result i32)  ;; label = @3
23 ------------------------------------------------------------
0221          i32.const 0
0222        else
24 ------------------------------------------------------------
0223          local.get 2
0224          local.get 1
0225          i32.const 4
0226          call 20
0227          i32.sub
0228        end
25 ------------------------------------------------------------
0229        local.set 2
0230        br 1 (;@1;)
26 ------------------------------------------------------------
0231      end
27 ------------------------------------------------------------
0232      local.get 0
0233      i32.const 16
0234      local.get 0
0235      i32.const 44
0236      call 20
0237      local.tee 1
0238      local.get 0
0239      i32.const 48
0240      call 20
0241      i32.add
0242      call 17
0243      local.get 9
0244      i32.const 0
0245      local.get 1
0246      call 17
0247      local.get 10
0248      i32.const 0
0249      local.get 1
0250      call 17
0251    end
28 ------------------------------------------------------------
0252    local.get 8
0253    global.set 5
0254    local.get 2)
