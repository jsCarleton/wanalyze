  (func (;53;) (type 0) (param i32 i32 i32) (result i32)
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
0028    local.set 5
0029    i32.const 2
0030    local.set 7
0031    block (result i32)  ;; label = @1
1 ------------------------------------------------------------
0032      block  ;; label = @2
2 ------------------------------------------------------------
0033        block  ;; label = @3
3 ------------------------------------------------------------
0034          block  ;; label = @4
4 ------------------------------------------------------------
0035            local.get 0
0036            i32.load offset=60
0037            local.get 3
0038            i32.const 16
0039            i32.add
0040            local.tee 1
0041            i32.const 2
0042            local.get 3
0043            i32.const 12
0044            i32.add
0045            call 1
0046            local.tee 4
0047            if (result i32)  ;; label = @5
5 ------------------------------------------------------------
0048              i32.const 13720
0049              local.get 4
0050              i32.store
0051              i32.const -1
0052            else
6 ------------------------------------------------------------
0053              i32.const 0
0054            end
7 ------------------------------------------------------------
0055            if  ;; label = @5
8 ------------------------------------------------------------
0056              local.get 1
0057              local.set 4
0058              br 1 (;@4;)
9 ------------------------------------------------------------
0059            end
10 ------------------------------------------------------------
0060            loop  ;; label = @5
11 ------------------------------------------------------------
0061              local.get 5
0062              local.get 3
0063              i32.load offset=12
0064              local.tee 6
0065              i32.eq
0066              br_if 2 (;@3;)
12 ------------------------------------------------------------
0067              local.get 6
0068              i32.const 0
0069              i32.lt_s
0070              if  ;; label = @6
13 ------------------------------------------------------------
0071                local.get 1
0072                local.set 4
0073                br 4 (;@2;)
14 ------------------------------------------------------------
0074              end
15 ------------------------------------------------------------
0075              local.get 1
0076              local.get 6
0077              local.get 1
0078              i32.load offset=4
0079              local.tee 8
0080              i32.gt_u
0081              local.tee 9
0082              i32.const 3
0083              i32.shl
0084              i32.add
0085              local.tee 4
0086              local.get 6
0087              local.get 8
0088              i32.const 0
0089              local.get 9
0090              select
0091              i32.sub
0092              local.tee 8
0093              local.get 4
0094              i32.load
0095              i32.add
0096              i32.store
0097              local.get 1
0098              i32.const 12
0099              i32.const 4
0100              local.get 9
0101              select
0102              i32.add
0103              local.tee 1
0104              local.get 1
0105              i32.load
0106              local.get 8
0107              i32.sub
0108              i32.store
0109              local.get 5
0110              local.get 6
0111              i32.sub
0112              local.set 5
0113              local.get 0
0114              i32.load offset=60
0115              local.get 4
0116              local.tee 1
0117              local.get 7
0118              local.get 9
0119              i32.sub
0120              local.tee 7
0121              local.get 3
0122              i32.const 12
0123              i32.add
0124              call 1
0125              local.tee 6
0126              if (result i32)  ;; label = @6
16 ------------------------------------------------------------
0127                i32.const 13720
0128                local.get 6
0129                i32.store
0130                i32.const -1
0131              else
17 ------------------------------------------------------------
0132                i32.const 0
0133              end
18 ------------------------------------------------------------
0134              i32.eqz
0135              br_if 0 (;@5;)
19 ------------------------------------------------------------
0136            end
20 ------------------------------------------------------------
0137          end
21 ------------------------------------------------------------
0138          local.get 5
0139          i32.const -1
0140          i32.ne
0141          br_if 1 (;@2;)
22 ------------------------------------------------------------
0142        end
23 ------------------------------------------------------------
0143        local.get 0
0144        local.get 0
0145        i32.load offset=44
0146        local.tee 1
0147        i32.store offset=28
0148        local.get 0
0149        local.get 1
0150        i32.store offset=20
0151        local.get 0
0152        local.get 1
0153        local.get 0
0154        i32.load offset=48
0155        i32.add
0156        i32.store offset=16
0157        local.get 2
0158        br 1 (;@1;)
24 ------------------------------------------------------------
0159      end
25 ------------------------------------------------------------
0160      local.get 0
0161      i32.const 0
0162      i32.store offset=28
0163      local.get 0
0164      i64.const 0
0165      i64.store offset=16
0166      local.get 0
0167      local.get 0
0168      i32.load
0169      i32.const 32
0170      i32.or
0171      i32.store
0172      i32.const 0
0173      local.get 7
0174      i32.const 2
0175      i32.eq
0176      br_if 0 (;@1;)
26 ------------------------------------------------------------
0177      drop
0178      local.get 2
0179      local.get 4
0180      i32.load offset=4
0181      i32.sub
0182    end
27 ------------------------------------------------------------
0183    local.set 0
0184    local.get 3
0185    i32.const 32
0186    i32.add
0187    global.set 0
0188    local.get 0)
