  (func (;11;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 32
0002    i32.sub
0003    local.tee 3
0004    global.set 0
0005    local.get 3
0006    local.get 0
0007    i32.load offset=28
0008    local.tee 4
0009    i32.store offset=16
0010    local.get 0
0011    i32.load offset=20
0012    local.set 5
0013    local.get 3
0014    local.get 2
0015    i32.store offset=28
0016    local.get 3
0017    local.get 1
0018    i32.store offset=24
0019    local.get 3
0020    local.get 5
0021    local.get 4
0022    i32.sub
0023    local.tee 1
0024    i32.store offset=20
0025    local.get 1
0026    local.get 2
0027    i32.add
0028    local.set 6
0029    local.get 3
0030    i32.const 16
0031    i32.add
0032    local.set 4
0033    i32.const 2
0034    local.set 7
0035    block  ;; label = @1
1 ------------------------------------------------------------
0036      block  ;; label = @2
2 ------------------------------------------------------------
0037        block  ;; label = @3
3 ------------------------------------------------------------
0038          block  ;; label = @4
4 ------------------------------------------------------------
0039            block  ;; label = @5
5 ------------------------------------------------------------
0040              local.get 0
0041              i32.load offset=60
0042              local.get 3
0043              i32.const 16
0044              i32.add
0045              i32.const 2
0046              local.get 3
0047              i32.const 12
0048              i32.add
0049              call 1
0050              call 37
0051              i32.eqz
0052              br_if 0 (;@5;)
6 ------------------------------------------------------------
0053              local.get 4
0054              local.set 5
0055              br 1 (;@4;)
7 ------------------------------------------------------------
0056            end
8 ------------------------------------------------------------
0057            loop  ;; label = @5
9 ------------------------------------------------------------
0058              local.get 6
0059              local.get 3
0060              i32.load offset=12
0061              local.tee 1
0062              i32.eq
0063              br_if 2 (;@3;)
10 ------------------------------------------------------------
0064              block  ;; label = @6
11 ------------------------------------------------------------
0065                local.get 1
0066                i32.const -1
0067                i32.gt_s
0068                br_if 0 (;@6;)
12 ------------------------------------------------------------
0069                local.get 4
0070                local.set 5
0071                br 4 (;@2;)
13 ------------------------------------------------------------
0072              end
14 ------------------------------------------------------------
0073              local.get 4
0074              i32.const 8
0075              i32.const 0
0076              local.get 1
0077              local.get 4
0078              i32.load offset=4
0079              local.tee 8
0080              i32.gt_u
0081              local.tee 9
0082              select
0083              i32.add
0084              local.tee 5
0085              local.get 5
0086              i32.load
0087              local.get 1
0088              local.get 8
0089              i32.const 0
0090              local.get 9
0091              select
0092              i32.sub
0093              local.tee 8
0094              i32.add
0095              i32.store
0096              local.get 4
0097              i32.const 12
0098              i32.const 4
0099              local.get 9
0100              select
0101              i32.add
0102              local.tee 4
0103              local.get 4
0104              i32.load
0105              local.get 8
0106              i32.sub
0107              i32.store
0108              local.get 6
0109              local.get 1
0110              i32.sub
0111              local.set 6
0112              local.get 5
0113              local.set 4
0114              local.get 0
0115              i32.load offset=60
0116              local.get 5
0117              local.get 7
0118              local.get 9
0119              i32.sub
0120              local.tee 7
0121              local.get 3
0122              i32.const 12
0123              i32.add
0124              call 1
0125              call 37
0126              i32.eqz
0127              br_if 0 (;@5;)
15 ------------------------------------------------------------
0128            end
16 ------------------------------------------------------------
0129          end
17 ------------------------------------------------------------
0130          local.get 6
0131          i32.const -1
0132          i32.ne
0133          br_if 1 (;@2;)
18 ------------------------------------------------------------
0134        end
19 ------------------------------------------------------------
0135        local.get 0
0136        local.get 0
0137        i32.load offset=44
0138        local.tee 1
0139        i32.store offset=28
0140        local.get 0
0141        local.get 1
0142        i32.store offset=20
0143        local.get 0
0144        local.get 1
0145        local.get 0
0146        i32.load offset=48
0147        i32.add
0148        i32.store offset=16
0149        local.get 2
0150        local.set 1
0151        br 1 (;@1;)
20 ------------------------------------------------------------
0152      end
21 ------------------------------------------------------------
0153      i32.const 0
0154      local.set 1
0155      local.get 0
0156      i32.const 0
0157      i32.store offset=28
0158      local.get 0
0159      i64.const 0
0160      i64.store offset=16
0161      local.get 0
0162      local.get 0
0163      i32.load
0164      i32.const 32
0165      i32.or
0166      i32.store
0167      local.get 7
0168      i32.const 2
0169      i32.eq
0170      br_if 0 (;@1;)
22 ------------------------------------------------------------
0171      local.get 2
0172      local.get 5
0173      i32.load offset=4
0174      i32.sub
0175      local.set 1
0176    end
23 ------------------------------------------------------------
0177    local.get 3
0178    i32.const 32
0179    i32.add
0180    global.set 0
0181    local.get 1)
