  (func (;373;) (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    i32.const 64
0001    call 26
0002    local.set 2
0003    i32.const 184
0004    call 26
0005    local.set 3
0006    i32.const 1332
0007    call 26
0008    local.set 4
0009    block  ;; label = @1
1 ------------------------------------------------------------
0010      block  ;; label = @2
2 ------------------------------------------------------------
0011        block  ;; label = @3
3 ------------------------------------------------------------
0012          block  ;; label = @4
4 ------------------------------------------------------------
0013            local.get 3
0014            if  ;; label = @5
5 ------------------------------------------------------------
0015              local.get 3
0016              i32.const 128
0017              call 26
0018              local.tee 5
0019              i32.store offset=16
0020              local.get 2
0021              i32.eqz
0022              local.get 4
0023              i32.eqz
0024              i32.or
0025              br_if 1 (;@4;)
6 ------------------------------------------------------------
0026              local.get 5
0027              i32.eqz
0028              br_if 2 (;@3;)
7 ------------------------------------------------------------
0029              local.get 2
0030              local.get 3
0031              i32.store offset=60
0032              i32.const 0
0033              local.set 5
0034              local.get 2
0035              i32.const 0
0036              i32.store offset=56
0037              local.get 2
0038              i32.const 0
0039              i32.store offset=12
0040              local.get 2
0041              i64.const 0
0042              i64.store offset=4 align=4
0043              local.get 2
0044              i32.const 1044
0045              i32.store
0046              local.get 3
0047              i32.const 111
0048              i32.store offset=8
0049              local.get 3
0050              i32.const 18896
0051              i32.store
0052              local.get 3
0053              i32.const 0
0054              i32.store offset=144
0055              local.get 3
0056              i32.const 0
0057              i32.store offset=12
0058              local.get 3
0059              local.get 4
0060              i32.store offset=4
0061              i32.const 0
0062              local.set 4
0063              local.get 0
0064              i32.const 1
0065              i32.ge_s
0066              if  ;; label = @6
8 ------------------------------------------------------------
0067                local.get 1
0068                i32.load
0069                local.tee 4
0070                call 172
0071                local.tee 6
0072                i32.const 1
0073                i32.add
0074                local.get 4
0075                local.get 6
0076                select
0077                local.set 4
0078              end
9 ------------------------------------------------------------
0079              local.get 3
0080              local.get 0
0081              i32.store offset=28
0082              local.get 3
0083              local.get 4
0084              i32.store offset=140
0085              local.get 3
0086              i32.const 0
0087              i32.store16 offset=156
0088              local.get 3
0089              local.get 1
0090              i32.store offset=24
0091              local.get 3
0092              i64.const -4294967295
0093              i64.store offset=148 align=4
0094              block  ;; label = @6
10 ------------------------------------------------------------
0095                call 264
0096                local.tee 0
0097                i32.eqz
0098                br_if 0 (;@6;)
11 ------------------------------------------------------------
0099                i32.const 1
0100                local.set 5
0101                local.get 0
0102                i32.const 1109
0103                call 127
0104                br_if 0 (;@6;)
12 ------------------------------------------------------------
0105                local.get 0
0106                i32.const 1115
0107                call 127
0108                br_if 0 (;@6;)
13 ------------------------------------------------------------
0109                local.get 0
0110                i32.const 1120
0111                call 127
0112                i32.const 0
0113                i32.ne
0114                local.set 5
0115              end
14 ------------------------------------------------------------
0116              local.get 3
0117              i32.const 0
0118              i32.store offset=120
0119              local.get 3
0120              i64.const 4294967341
0121              i64.store offset=32 align=4
0122              local.get 3
0123              local.get 5
0124              i32.store offset=124
0125              local.get 3
0126              i64.const 1
0127              i64.store offset=112 align=4
0128              local.get 3
0129              i32.const 0
0130              i32.store offset=20
0131              local.get 2
0132              i32.const 1
0133              i32.const 0
0134              i32.const 1
0135              i32.const 0
0136              call 42
0137              drop
0138              local.get 2
0139              i32.const 2
0140              i32.const 1
0141              i32.const 1
0142              i32.const 0
0143              call 42
0144              drop
0145              local.get 2
0146              i32.const 4
0147              i32.const 0
0148              i32.const 2
0149              i32.const 0
0150              call 42
0151              drop
0152              local.get 2
0153              i32.const 5
0154              i32.const 0
0155              i32.const 2
0156              i32.const 1
0157              call 42
0158              drop
0159              local.get 2
0160              i32.const 6
0161              i32.const 0
0162              i32.const 2
0163              i32.const 2
0164              call 42
0165              drop
0166              local.get 2
0167              i32.const 7
0168              i32.const 0
0169              i32.const 2
0170              i32.const 3
0171              call 42
0172              drop
0173              local.get 2
0174              i32.const 3
0175              i32.const 0
0176              i32.const 3
0177              i32.const 0
0178              call 42
0179              drop
0180              local.get 2
0181              i32.const 8
0182              i32.const 0
0183              i32.const 4
0184              i32.const 0
0185              call 42
0186              drop
0187              local.get 2
0188              call 245
0189              local.get 2
0190              return
15 ------------------------------------------------------------
0191            end
16 ------------------------------------------------------------
0192            local.get 4
0193            i32.const 0
0194            i32.ne
0195            local.set 0
0196            local.get 2
0197            br_if 2 (;@2;)
17 ------------------------------------------------------------
0198            br 3 (;@1;)
18 ------------------------------------------------------------
0199          end
19 ------------------------------------------------------------
0200          local.get 5
0201          i32.eqz
0202          br_if 0 (;@3;)
20 ------------------------------------------------------------
0203          local.get 5
0204          call 22
0205        end
21 ------------------------------------------------------------
0206        local.get 4
0207        i32.const 0
0208        i32.ne
0209        local.set 0
0210        local.get 3
0211        call 22
0212        local.get 2
0213        i32.eqz
0214        br_if 1 (;@1;)
22 ------------------------------------------------------------
0215      end
23 ------------------------------------------------------------
0216      local.get 2
0217      call 22
0218    end
24 ------------------------------------------------------------
0219    local.get 0
0220    if  ;; label = @1
25 ------------------------------------------------------------
0221      local.get 4
0222      call 22
0223    end
26 ------------------------------------------------------------
0224    i32.const 0)
