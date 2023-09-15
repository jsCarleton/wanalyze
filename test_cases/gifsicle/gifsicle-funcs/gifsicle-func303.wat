  (func (;303;) (type 3) (param i32 i32 i32) (result i32)
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
0028    local.set 4
0029    i32.const 2
0030    local.set 7
0031    local.get 3
0032    i32.const 16
0033    i32.add
0034    local.set 1
0035    block (result i32)  ;; label = @1
1 ------------------------------------------------------------
0036      block  ;; label = @2
2 ------------------------------------------------------------
0037        block  ;; label = @3
3 ------------------------------------------------------------
0038          local.get 0
0039          i32.load offset=60
0040          local.get 3
0041          i32.const 16
0042          i32.add
0043          i32.const 2
0044          local.get 3
0045          i32.const 12
0046          i32.add
0047          call 6
0048          call 105
0049          i32.eqz
0050          if  ;; label = @4
4 ------------------------------------------------------------
0051            loop  ;; label = @5
5 ------------------------------------------------------------
0052              local.get 4
0053              local.get 3
0054              i32.load offset=12
0055              local.tee 5
0056              i32.eq
0057              br_if 2 (;@3;)
6 ------------------------------------------------------------
0058              local.get 5
0059              i32.const -1
0060              i32.le_s
0061              br_if 3 (;@2;)
7 ------------------------------------------------------------
0062              local.get 1
0063              local.get 5
0064              local.get 1
0065              i32.load offset=4
0066              local.tee 8
0067              i32.gt_u
0068              local.tee 6
0069              i32.const 3
0070              i32.shl
0071              i32.add
0072              local.tee 9
0073              local.get 5
0074              local.get 8
0075              i32.const 0
0076              local.get 6
0077              select
0078              i32.sub
0079              local.tee 8
0080              local.get 9
0081              i32.load
0082              i32.add
0083              i32.store
0084              local.get 1
0085              i32.const 12
0086              i32.const 4
0087              local.get 6
0088              select
0089              i32.add
0090              local.tee 9
0091              local.get 9
0092              i32.load
0093              local.get 8
0094              i32.sub
0095              i32.store
0096              local.get 4
0097              local.get 5
0098              i32.sub
0099              local.set 4
0100              local.get 0
0101              i32.load offset=60
0102              local.get 1
0103              i32.const 8
0104              i32.add
0105              local.get 1
0106              local.get 6
0107              select
0108              local.tee 1
0109              local.get 7
0110              local.get 6
0111              i32.sub
0112              local.tee 7
0113              local.get 3
0114              i32.const 12
0115              i32.add
0116              call 6
0117              call 105
0118              i32.eqz
0119              br_if 0 (;@5;)
8 ------------------------------------------------------------
0120            end
9 ------------------------------------------------------------
0121          end
10 ------------------------------------------------------------
0122          local.get 3
0123          i32.const -1
0124          i32.store offset=12
0125          local.get 4
0126          i32.const -1
0127          i32.ne
0128          br_if 1 (;@2;)
11 ------------------------------------------------------------
0129        end
12 ------------------------------------------------------------
0130        local.get 0
0131        local.get 0
0132        i32.load offset=44
0133        local.tee 1
0134        i32.store offset=28
0135        local.get 0
0136        local.get 1
0137        i32.store offset=20
0138        local.get 0
0139        local.get 1
0140        local.get 0
0141        i32.load offset=48
0142        i32.add
0143        i32.store offset=16
0144        local.get 2
0145        br 1 (;@1;)
13 ------------------------------------------------------------
0146      end
14 ------------------------------------------------------------
0147      local.get 0
0148      i32.const 0
0149      i32.store offset=28
0150      local.get 0
0151      i64.const 0
0152      i64.store offset=16
0153      local.get 0
0154      local.get 0
0155      i32.load
0156      i32.const 32
0157      i32.or
0158      i32.store
0159      i32.const 0
0160      local.get 7
0161      i32.const 2
0162      i32.eq
0163      br_if 0 (;@1;)
15 ------------------------------------------------------------
0164      drop
0165      local.get 2
0166      local.get 1
0167      i32.load offset=4
0168      i32.sub
0169    end
16 ------------------------------------------------------------
0170    local.set 4
0171    local.get 3
0172    i32.const 32
0173    i32.add
0174    global.set 0
0175    local.get 4)
