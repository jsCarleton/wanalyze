  (func (;186;) (type 13) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 208
0002    i32.sub
0003    local.tee 5
0004    global.set 0
0005    local.get 5
0006    local.get 2
0007    i32.store offset=204
0008    i32.const 0
0009    local.set 2
0010    local.get 5
0011    i32.const 160
0012    i32.add
0013    i32.const 0
0014    i32.const 40
0015    call 27
0016    drop
0017    local.get 5
0018    local.get 5
0019    i32.load offset=204
0020    i32.store offset=200
0021    block  ;; label = @1
1 ------------------------------------------------------------
0022      i32.const 0
0023      local.get 1
0024      local.get 5
0025      i32.const 200
0026      i32.add
0027      local.get 5
0028      i32.const 80
0029      i32.add
0030      local.get 5
0031      i32.const 160
0032      i32.add
0033      local.get 3
0034      local.get 4
0035      call 131
0036      i32.const 0
0037      i32.lt_s
0038      if  ;; label = @2
2 ------------------------------------------------------------
0039        i32.const -1
0040        local.set 1
0041        br 1 (;@1;)
3 ------------------------------------------------------------
0042      end
4 ------------------------------------------------------------
0043      local.get 0
0044      i32.load offset=76
0045      i32.const 0
0046      i32.ge_s
0047      if  ;; label = @2
5 ------------------------------------------------------------
0048        i32.const 1
0049        local.set 2
0050      end
6 ------------------------------------------------------------
0051      local.get 0
0052      i32.load
0053      local.set 6
0054      local.get 0
0055      i32.load8_s offset=74
0056      i32.const 0
0057      i32.le_s
0058      if  ;; label = @2
7 ------------------------------------------------------------
0059        local.get 0
0060        local.get 6
0061        i32.const -33
0062        i32.and
0063        i32.store
0064      end
8 ------------------------------------------------------------
0065      local.get 6
0066      i32.const 32
0067      i32.and
0068      local.set 7
0069      block (result i32)  ;; label = @2
9 ------------------------------------------------------------
0070        local.get 0
0071        i32.load offset=48
0072        if  ;; label = @3
10 ------------------------------------------------------------
0073          local.get 0
0074          local.get 1
0075          local.get 5
0076          i32.const 200
0077          i32.add
0078          local.get 5
0079          i32.const 80
0080          i32.add
0081          local.get 5
0082          i32.const 160
0083          i32.add
0084          local.get 3
0085          local.get 4
0086          call 131
0087          br 1 (;@2;)
11 ------------------------------------------------------------
0088        end
12 ------------------------------------------------------------
0089        local.get 0
0090        i32.const 80
0091        i32.store offset=48
0092        local.get 0
0093        local.get 5
0094        i32.const 80
0095        i32.add
0096        i32.store offset=16
0097        local.get 0
0098        local.get 5
0099        i32.store offset=28
0100        local.get 0
0101        local.get 5
0102        i32.store offset=20
0103        local.get 0
0104        i32.load offset=44
0105        local.set 6
0106        local.get 0
0107        local.get 5
0108        i32.store offset=44
0109        local.get 0
0110        local.get 1
0111        local.get 5
0112        i32.const 200
0113        i32.add
0114        local.get 5
0115        i32.const 80
0116        i32.add
0117        local.get 5
0118        i32.const 160
0119        i32.add
0120        local.get 3
0121        local.get 4
0122        call 131
0123        local.tee 1
0124        local.get 6
0125        i32.eqz
0126        br_if 0 (;@2;)
13 ------------------------------------------------------------
0127        drop
0128        local.get 0
0129        i32.const 0
0130        i32.const 0
0131        local.get 0
0132        i32.load offset=36
0133        call_indirect (type 3)
0134        drop
0135        local.get 0
0136        i32.const 0
0137        i32.store offset=48
0138        local.get 0
0139        local.get 6
0140        i32.store offset=44
0141        local.get 0
0142        i32.const 0
0143        i32.store offset=28
0144        local.get 0
0145        i32.const 0
0146        i32.store offset=16
0147        local.get 0
0148        i32.load offset=20
0149        local.set 3
0150        local.get 0
0151        i32.const 0
0152        i32.store offset=20
0153        local.get 1
0154        i32.const -1
0155        local.get 3
0156        select
0157      end
14 ------------------------------------------------------------
0158      local.set 1
0159      local.get 0
0160      local.get 0
0161      i32.load
0162      local.tee 0
0163      local.get 7
0164      i32.or
0165      i32.store
0166      i32.const -1
0167      local.get 1
0168      local.get 0
0169      i32.const 32
0170      i32.and
0171      select
0172      local.set 1
0173      local.get 2
0174      i32.eqz
0175      br_if 0 (;@1;)
15 ------------------------------------------------------------
0176    end
16 ------------------------------------------------------------
0177    local.get 5
0178    i32.const 208
0179    i32.add
0180    global.set 0
0181    local.get 1)
