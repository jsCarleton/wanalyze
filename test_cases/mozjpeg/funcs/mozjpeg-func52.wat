  (func (;52;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load offset=4
0002    local.set 6
0003    local.get 2
0004    i32.const 1000000001
0005    i32.ge_u
0006    if  ;; label = @1
1 ------------------------------------------------------------
0007      local.get 0
0008      i32.load
0009      i64.const 30064771126
0010      i64.store offset=20 align=4
0011      local.get 0
0012      local.get 0
0013      i32.load
0014      i32.load
0015      call_indirect (type 0)
0016    end
2 ------------------------------------------------------------
0017    local.get 2
0018    i32.const 7
0019    i32.add
0020    i32.const -8
0021    i32.and
0022    local.tee 4
0023    i32.const 19
0024    i32.add
0025    local.tee 7
0026    i32.const 1000000001
0027    i32.ge_u
0028    if  ;; label = @1
3 ------------------------------------------------------------
0029      local.get 0
0030      i32.load
0031      i64.const 4294967350
0032      i64.store offset=20 align=4
0033      local.get 0
0034      local.get 0
0035      i32.load
0036      i32.load
0037      call_indirect (type 0)
0038    end
4 ------------------------------------------------------------
0039    local.get 1
0040    i32.const 2
0041    i32.ge_u
0042    if  ;; label = @1
5 ------------------------------------------------------------
0043      local.get 0
0044      i32.load
0045      local.tee 2
0046      local.get 1
0047      i32.store offset=24
0048      local.get 2
0049      i32.const 14
0050      i32.store offset=20
0051      local.get 0
0052      local.get 0
0053      i32.load
0054      i32.load
0055      call_indirect (type 0)
0056    end
6 ------------------------------------------------------------
0057    block  ;; label = @1
7 ------------------------------------------------------------
0058      local.get 6
0059      local.get 1
0060      i32.const 2
0061      i32.shl
0062      i32.add
0063      i32.const 52
0064      i32.add
0065      local.tee 9
0066      i32.load
0067      local.tee 2
0068      if  ;; label = @2
8 ------------------------------------------------------------
0069        loop  ;; label = @3
9 ------------------------------------------------------------
0070          local.get 2
0071          local.tee 5
0072          i32.load offset=8
0073          local.get 4
0074          i32.ge_u
0075          if  ;; label = @4
10 ------------------------------------------------------------
0076            local.get 5
0077            local.set 3
0078            br 3 (;@1;)
11 ------------------------------------------------------------
0079          end
12 ------------------------------------------------------------
0080          local.get 5
0081          i32.load
0082          local.tee 2
0083          br_if 0 (;@3;)
13 ------------------------------------------------------------
0084        end
14 ------------------------------------------------------------
0085      end
15 ------------------------------------------------------------
0086      block  ;; label = @2
16 ------------------------------------------------------------
0087        i32.const 999999981
0088        local.get 4
0089        i32.sub
0090        local.tee 2
0091        local.get 1
0092        i32.const 2
0093        i32.shl
0094        i32.const 143208
0095        i32.const 143200
0096        local.get 5
0097        select
0098        i32.add
0099        i32.load
0100        local.tee 1
0101        local.get 1
0102        local.get 2
0103        i32.gt_u
0104        select
0105        local.tee 2
0106        local.get 7
0107        i32.add
0108        local.tee 8
0109        call 32
0110        local.tee 3
0111        if  ;; label = @3
17 ------------------------------------------------------------
0112          local.get 2
0113          local.set 1
0114          br 1 (;@2;)
18 ------------------------------------------------------------
0115        end
19 ------------------------------------------------------------
0116        loop  ;; label = @3
20 ------------------------------------------------------------
0117          local.get 2
0118          i32.const 1
0119          i32.shr_u
0120          local.set 1
0121          local.get 2
0122          i32.const 99
0123          i32.le_u
0124          if  ;; label = @4
21 ------------------------------------------------------------
0125            local.get 0
0126            i32.load
0127            i64.const 8589934646
0128            i64.store offset=20 align=4
0129            local.get 0
0130            local.get 0
0131            i32.load
0132            i32.load
0133            call_indirect (type 0)
0134          end
22 ------------------------------------------------------------
0135          local.get 1
0136          local.set 2
0137          local.get 1
0138          local.get 7
0139          i32.add
0140          local.tee 8
0141          call 32
0142          local.tee 3
0143          i32.eqz
0144          br_if 0 (;@3;)
23 ------------------------------------------------------------
0145        end
24 ------------------------------------------------------------
0146      end
25 ------------------------------------------------------------
0147      local.get 6
0148      local.get 6
0149      i32.load offset=76
0150      local.get 8
0151      i32.add
0152      i32.store offset=76
0153      local.get 3
0154      local.get 1
0155      local.get 4
0156      i32.add
0157      i32.store offset=8
0158      local.get 3
0159      i64.const 0
0160      i64.store align=4
0161      local.get 5
0162      local.get 9
0163      local.get 5
0164      select
0165      local.get 3
0166      i32.store
0167    end
26 ------------------------------------------------------------
0168    local.get 3
0169    local.get 3
0170    i32.load offset=4
0171    local.tee 1
0172    local.get 4
0173    i32.add
0174    i32.store offset=4
0175    local.get 3
0176    local.get 3
0177    i32.load offset=8
0178    local.get 4
0179    i32.sub
0180    i32.store offset=8
0181    local.get 1
0182    local.get 3
0183    i32.const 12
0184    i32.add
0185    local.tee 0
0186    i32.const -8
0187    i32.and
0188    i32.const 8
0189    i32.add
0190    local.get 0
0191    local.get 0
0192    i32.const 7
0193    i32.and
0194    select
0195    i32.add)
