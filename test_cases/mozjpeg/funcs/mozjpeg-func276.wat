  (func (;276;) (type 5) (param i32 i32 i32)
    (local i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 208
0002    i32.sub
0003    local.tee 3
0004    global.set 0
0005    local.get 3
0006    local.get 2
0007    i32.store
0008    i32.const 0
0009    local.set 2
0010    local.get 3
0011    i32.const 160
0012    i32.add
0013    i32.const 0
0014    i32.const 40
0015    call 27
0016    drop
0017    local.get 3
0018    local.get 3
0019    i32.load
0020    i32.store
0021    block  ;; label = @1
1 ------------------------------------------------------------
0022      i32.const 0
0023      local.get 1
0024      local.get 3
0025      i32.const 200
0026      i32.add
0027      local.get 3
0028      i32.const 80
0029      i32.add
0030      local.get 3
0031      i32.const 160
0032      i32.add
0033      call 92
0034      i32.const 0
0035      i32.lt_s
0036      br_if 0 (;@1;)
2 ------------------------------------------------------------
0037      local.get 0
0038      i32.load
0039      i32.const 0
0040      i32.ge_s
0041      if  ;; label = @2
3 ------------------------------------------------------------
0042        i32.const 1
0043        local.set 2
0044      end
4 ------------------------------------------------------------
0045      local.get 0
0046      i32.load
0047      local.set 4
0048      local.get 0
0049      i32.load8_s
0050      i32.const 0
0051      i32.le_s
0052      if  ;; label = @2
5 ------------------------------------------------------------
0053        local.get 0
0054        local.get 4
0055        i32.const -33
0056        i32.and
0057        i32.store
0058      end
6 ------------------------------------------------------------
0059      local.get 4
0060      i32.const 32
0061      i32.and
0062      local.set 5
0063      block (result i32)  ;; label = @2
7 ------------------------------------------------------------
0064        local.get 0
0065        i32.load
0066        if  ;; label = @3
8 ------------------------------------------------------------
0067          local.get 0
0068          local.get 1
0069          local.get 3
0070          i32.const 200
0071          i32.add
0072          local.get 3
0073          i32.const 80
0074          i32.add
0075          local.get 3
0076          i32.const 160
0077          i32.add
0078          call 92
0079          br 1 (;@2;)
9 ------------------------------------------------------------
0080        end
10 ------------------------------------------------------------
0081        local.get 0
0082        i32.const 80
0083        i32.store
0084        local.get 0
0085        local.get 3
0086        i32.const 80
0087        i32.add
0088        i32.store
0089        local.get 0
0090        local.get 3
0091        i32.store
0092        local.get 0
0093        local.get 3
0094        i32.store
0095        local.get 0
0096        i32.load
0097        local.set 4
0098        local.get 0
0099        local.get 3
0100        i32.store
0101        local.get 0
0102        local.get 1
0103        local.get 3
0104        i32.const 200
0105        i32.add
0106        local.get 3
0107        i32.const 80
0108        i32.add
0109        local.get 3
0110        i32.const 160
0111        i32.add
0112        call 92
0113        local.get 4
0114        i32.eqz
0115        br_if 0 (;@2;)
11 ------------------------------------------------------------
0116        drop
0117        local.get 0
0118        i32.const 0
0119        i32.const 0
0120        local.get 0
0121        i32.load
0122        call_indirect (type 3)
0123        drop
0124        local.get 0
0125        i32.const 0
0126        i32.store
0127        local.get 0
0128        local.get 4
0129        i32.store
0130        local.get 0
0131        i32.const 0
0132        i32.store
0133        local.get 0
0134        i32.const 0
0135        i32.store
0136        local.get 0
0137        i32.load
0138        drop
0139        local.get 0
0140        i32.const 0
0141        i32.store
0142        i32.const 0
0143      end
12 ------------------------------------------------------------
0144      drop
0145      local.get 0
0146      local.get 0
0147      i32.load
0148      local.get 5
0149      i32.or
0150      i32.store
0151      local.get 2
0152      i32.eqz
0153      br_if 0 (;@1;)
13 ------------------------------------------------------------
0154    end
14 ------------------------------------------------------------
0155    local.get 3
0156    i32.const 208
0157    i32.add
0158    global.set 0)
