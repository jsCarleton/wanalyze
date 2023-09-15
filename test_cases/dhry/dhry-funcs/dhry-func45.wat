  (func (;45;) (type 17) (param i32 i32) (result i64)
    (local i32 i32 i32 i64 i64)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 3
0004    global.set 0
0005    local.get 1
0006    i64.extend_i32_s
0007    local.get 3
0008    i32.const 12
0009    i32.add
0010    call 23
0011    local.set 5
0012    local.get 0
0013    i32.load offset=4
0014    local.set 1
0015    block  ;; label = @1
1 ------------------------------------------------------------
0016      block  ;; label = @2
2 ------------------------------------------------------------
0017        block  ;; label = @3
3 ------------------------------------------------------------
0018          local.get 0
0019          i32.load
0020          i32.const 74
0021          i32.sub
0022          br_table 0 (;@3;) 2 (;@1;) 2 (;@1;) 1 (;@2;) 2 (;@1;)
4 ------------------------------------------------------------
0023        end
5 ------------------------------------------------------------
0024        local.get 1
0025        local.get 3
0026        i32.load offset=12
0027        i32.eqz
0028        local.get 1
0029        i32.const 60
0030        i32.lt_s
0031        i32.or
0032        i32.sub
0033        local.set 1
0034        br 1 (;@1;)
6 ------------------------------------------------------------
0035      end
7 ------------------------------------------------------------
0036      local.get 0
0037      i32.load offset=12
0038      local.get 5
0039      local.get 1
0040      i32.const 1
0041      i32.sub
0042      local.tee 4
0043      i32.const 2
0044      i32.shl
0045      i32.const 2544
0046      i32.add
0047      i32.load
0048      local.tee 2
0049      i32.const 86400
0050      i32.add
0051      local.get 2
0052      local.get 3
0053      i32.load offset=12
0054      select
0055      local.get 2
0056      local.get 4
0057      i32.const 1
0058      i32.gt_s
0059      select
0060      i64.extend_i32_s
0061      i64.add
0062      local.tee 5
0063      i64.const 345600
0064      i64.add
0065      i64.const 604800
0066      i64.rem_s
0067      i32.wrap_i64
0068      i32.const -86400
0069      i32.div_s
0070      i32.add
0071      local.tee 2
0072      i32.const 7
0073      i32.add
0074      local.get 2
0075      local.get 2
0076      i32.const 0
0077      i32.lt_s
0078      select
0079      local.set 2
0080      local.get 2
0081      local.get 0
0082      i32.load offset=8
0083      local.tee 4
0084      i32.const 5
0085      i32.eq
0086      if (result i32)  ;; label = @2
8 ------------------------------------------------------------
0087        i32.const 5
0088        i32.const 4
0089        local.get 2
0090        i32.const 28
0091        i32.add
0092        local.get 3
0093        i32.load offset=12
0094        i32.const 28
0095        i32.add
0096        i32.const 2773
0097        local.get 1
0098        i32.const 1
0099        i32.sub
0100        i32.shr_u
0101        i32.const 1
0102        i32.and
0103        i32.const 30
0104        i32.or
0105        local.get 1
0106        i32.const 2
0107        i32.eq
0108        select
0109        i32.lt_s
0110        select
0111      else
9 ------------------------------------------------------------
0112        local.get 4
0113      end
10 ------------------------------------------------------------
0114      i32.const 7
0115      i32.mul
0116      i32.add
0117      i32.const 7
0118      i32.sub
0119      local.set 1
0120    end
11 ------------------------------------------------------------
0121    local.get 0
0122    i64.load32_s offset=16
0123    local.set 6
0124    local.get 3
0125    i32.const 16
0126    i32.add
0127    global.set 0
0128    local.get 6
0129    local.get 5
0130    local.get 1
0131    i32.const 86400
0132    i32.mul
0133    i64.extend_i32_s
0134    i64.add
0135    i64.add)
