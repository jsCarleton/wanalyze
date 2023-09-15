  (func (;100;) (type 17) (param i32 i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 240
0002    i32.sub
0003    local.tee 8
0004    global.set 0
0005    local.get 8
0006    local.get 4
0007    i32.store offset=236
0008    local.get 8
0009    local.get 0
0010    i32.store
0011    local.get 8
0012    local.get 3
0013    i32.store offset=232
0014    block  ;; label = @1
1 ------------------------------------------------------------
0015      block  ;; label = @2
2 ------------------------------------------------------------
0016        block  ;; label = @3
3 ------------------------------------------------------------
0017          block  ;; label = @4
4 ------------------------------------------------------------
0018            i32.const 0
0019            local.get 3
0020            i32.const 1
0021            i32.eq
0022            local.get 4
0023            select
0024            br_if 0 (;@4;)
5 ------------------------------------------------------------
0025            local.get 0
0026            local.get 7
0027            local.get 5
0028            i32.const 2
0029            i32.shl
0030            i32.add
0031            i32.load
0032            i32.sub
0033            local.tee 9
0034            local.get 0
0035            local.get 2
0036            call_indirect (type 2)
0037            i32.const 1
0038            i32.lt_s
0039            br_if 0 (;@4;)
6 ------------------------------------------------------------
0040            i32.const 0
0041            local.get 1
0042            i32.sub
0043            local.set 10
0044            local.get 6
0045            i32.eqz
0046            local.set 6
0047            i32.const 1
0048            local.set 4
0049            loop  ;; label = @5
7 ------------------------------------------------------------
0050              local.get 9
0051              local.set 3
0052              local.get 6
0053              i32.const 1
0054              i32.and
0055              i32.eqz
0056              local.get 5
0057              i32.const 2
0058              i32.lt_s
0059              i32.or
0060              i32.eqz
0061              if  ;; label = @6
8 ------------------------------------------------------------
0062                local.get 5
0063                i32.const 2
0064                i32.shl
0065                local.get 7
0066                i32.add
0067                i32.const -8
0068                i32.add
0069                i32.load
0070                local.set 6
0071                local.get 0
0072                local.get 10
0073                i32.add
0074                local.tee 9
0075                local.get 3
0076                local.get 2
0077                call_indirect (type 2)
0078                i32.const -1
0079                i32.gt_s
0080                br_if 3 (;@3;)
9 ------------------------------------------------------------
0081                local.get 9
0082                local.get 6
0083                i32.sub
0084                local.get 3
0085                local.get 2
0086                call_indirect (type 2)
0087                i32.const -1
0088                i32.gt_s
0089                br_if 3 (;@3;)
10 ------------------------------------------------------------
0090              end
11 ------------------------------------------------------------
0091              local.get 8
0092              local.get 4
0093              i32.const 2
0094              i32.shl
0095              i32.add
0096              local.get 3
0097              i32.store
0098              local.get 8
0099              i32.const 232
0100              i32.add
0101              local.get 8
0102              i32.const 232
0103              i32.add
0104              call 176
0105              local.tee 0
0106              call 101
0107              local.get 4
0108              i32.const 1
0109              i32.add
0110              local.set 4
0111              local.get 0
0112              local.get 5
0113              i32.add
0114              local.set 5
0115              local.get 8
0116              i32.load offset=232
0117              i32.const 1
0118              i32.eq
0119              if  ;; label = @6
12 ------------------------------------------------------------
0120                local.get 8
0121                i32.load offset=236
0122                i32.eqz
0123                br_if 4 (;@2;)
13 ------------------------------------------------------------
0124              end
14 ------------------------------------------------------------
0125              i32.const 1
0126              local.set 6
0127              local.get 3
0128              local.set 0
0129              local.get 3
0130              local.get 7
0131              local.get 5
0132              i32.const 2
0133              i32.shl
0134              i32.add
0135              i32.load
0136              i32.sub
0137              local.tee 9
0138              local.get 8
0139              i32.load
0140              local.get 2
0141              call_indirect (type 2)
0142              i32.const 1
0143              i32.ge_s
0144              br_if 0 (;@5;)
15 ------------------------------------------------------------
0145            end
16 ------------------------------------------------------------
0146            br 2 (;@2;)
17 ------------------------------------------------------------
0147          end
18 ------------------------------------------------------------
0148          local.get 6
0149          br_if 2 (;@1;)
19 ------------------------------------------------------------
0150          i32.const 1
0151          local.set 4
0152        end
20 ------------------------------------------------------------
0153        local.get 0
0154        local.set 3
0155      end
21 ------------------------------------------------------------
0156      local.get 1
0157      local.get 8
0158      local.get 4
0159      call 175
0160      local.get 3
0161      local.get 1
0162      local.get 2
0163      local.get 5
0164      local.get 7
0165      call 129
0166    end
22 ------------------------------------------------------------
0167    local.get 8
0168    i32.const 240
0169    i32.add
0170    global.set 0)
