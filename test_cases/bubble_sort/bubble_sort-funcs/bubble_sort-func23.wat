  (func (;23;) (type 0) (param i32 i32 i32) (result i32)
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
0049              call 4
0050              call 52
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
0074              local.get 1
0075              local.get 4
0076              i32.load offset=4
0077              local.tee 8
0078              i32.gt_u
0079              local.tee 9
0080              i32.const 3
0081              i32.shl
0082              i32.add
0083              local.tee 5
0084              local.get 5
0085              i32.load
0086              local.get 1
0087              local.get 8
0088              i32.const 0
0089              local.get 9
0090              select
0091              i32.sub
0092              local.tee 8
0093              i32.add
0094              i32.store
0095              local.get 4
0096              i32.const 12
0097              i32.const 4
0098              local.get 9
0099              select
0100              i32.add
0101              local.tee 4
0102              local.get 4
0103              i32.load
0104              local.get 8
0105              i32.sub
0106              i32.store
0107              local.get 6
0108              local.get 1
0109              i32.sub
0110              local.set 6
0111              local.get 5
0112              local.set 4
0113              local.get 0
0114              i32.load offset=60
0115              local.get 5
0116              local.get 7
0117              local.get 9
0118              i32.sub
0119              local.tee 7
0120              local.get 3
0121              i32.const 12
0122              i32.add
0123              call 4
0124              call 52
0125              i32.eqz
0126              br_if 0 (;@5;)
15 ------------------------------------------------------------
0127            end
16 ------------------------------------------------------------
0128          end
17 ------------------------------------------------------------
0129          local.get 6
0130          i32.const -1
0131          i32.ne
0132          br_if 1 (;@2;)
18 ------------------------------------------------------------
0133        end
19 ------------------------------------------------------------
0134        local.get 0
0135        local.get 0
0136        i32.load offset=44
0137        local.tee 1
0138        i32.store offset=28
0139        local.get 0
0140        local.get 1
0141        i32.store offset=20
0142        local.get 0
0143        local.get 1
0144        local.get 0
0145        i32.load offset=48
0146        i32.add
0147        i32.store offset=16
0148        local.get 2
0149        local.set 1
0150        br 1 (;@1;)
20 ------------------------------------------------------------
0151      end
21 ------------------------------------------------------------
0152      i32.const 0
0153      local.set 1
0154      local.get 0
0155      i32.const 0
0156      i32.store offset=28
0157      local.get 0
0158      i64.const 0
0159      i64.store offset=16
0160      local.get 0
0161      local.get 0
0162      i32.load
0163      i32.const 32
0164      i32.or
0165      i32.store
0166      local.get 7
0167      i32.const 2
0168      i32.eq
0169      br_if 0 (;@1;)
22 ------------------------------------------------------------
0170      local.get 2
0171      local.get 5
0172      i32.load offset=4
0173      i32.sub
0174      local.set 1
0175    end
23 ------------------------------------------------------------
0176    local.get 3
0177    i32.const 32
0178    i32.add
0179    global.set 0
0180    local.get 1)
