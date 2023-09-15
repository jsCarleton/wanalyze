  (func (;159;) (type 4) (param i32)
    (local i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 4
0004    global.set 0
0005    local.get 0
0006    i32.load
0007    local.tee 3
0008    i32.const 35168
0009    i32.load
0010    local.tee 1
0011    i32.load
0012    i32.add
0013    local.get 1
0014    i32.load offset=4
0015    local.tee 2
0016    i32.ge_s
0017    if (result i32)  ;; label = @1
1 ------------------------------------------------------------
0018      local.get 1
0019      local.get 2
0020      i32.const 1
0021      i32.shl
0022      local.tee 3
0023      i32.store offset=4
0024      local.get 1
0025      i32.load offset=16
0026      i32.const 8
0027      local.get 3
0028      call 23
0029      local.set 3
0030      i32.const 35168
0031      i32.load
0032      local.get 3
0033      i32.store offset=16
0034      local.get 0
0035      i32.load
0036    else
2 ------------------------------------------------------------
0037      local.get 3
0038    end
3 ------------------------------------------------------------
0039    i32.const 1
0040    i32.ge_s
0041    if  ;; label = @1
4 ------------------------------------------------------------
0042      local.get 0
0043      i32.load offset=16
0044      local.set 2
0045      i32.const 0
0046      local.set 3
0047      loop  ;; label = @2
5 ------------------------------------------------------------
0048        local.get 2
0049        local.get 3
0050        i32.const 3
0051        i32.shl
0052        local.tee 6
0053        i32.add
0054        local.tee 1
0055        i32.load8_u offset=1
0056        local.set 2
0057        local.get 1
0058        i32.load8_u offset=2
0059        local.set 5
0060        local.get 4
0061        local.get 1
0062        i32.load8_u offset=3
0063        local.tee 1
0064        i32.const 7
0065        i32.shl
0066        local.get 1
0067        i32.const 1
0068        i32.shr_u
0069        i32.or
0070        local.tee 1
0071        i32.store16 offset=4
0072        local.get 4
0073        local.get 5
0074        i32.const 7
0075        i32.shl
0076        local.get 5
0077        i32.const 1
0078        i32.shr_u
0079        i32.or
0080        i32.store16 offset=10
0081        local.get 4
0082        local.get 2
0083        i32.const 7
0084        i32.shl
0085        local.get 2
0086        i32.const 1
0087        i32.shr_u
0088        i32.or
0089        i32.store16 offset=8
0090        local.get 4
0091        local.get 1
0092        i32.store16 offset=12
0093        local.get 4
0094        local.get 4
0095        i32.load offset=8
0096        i32.store
0097        i32.const 35176
0098        local.get 4
0099        i32.const 0
0100        call 73
0101        local.tee 5
0102        i32.load offset=8
0103        local.tee 1
0104        i32.eqz
0105        if  ;; label = @3
6 ------------------------------------------------------------
0106          i32.const 35168
0107          i32.load
0108          local.tee 2
0109          i32.load offset=16
0110          local.get 2
0111          i32.load
0112          i32.const 3
0113          i32.shl
0114          i32.add
0115          local.get 0
0116          i32.load offset=16
0117          local.get 6
0118          i32.add
0119          i64.load align=4
0120          i64.store align=4
0121          local.get 2
0122          i32.load offset=16
0123          local.get 2
0124          i32.load
0125          local.tee 1
0126          i32.const 3
0127          i32.shl
0128          i32.add
0129          i32.const 0
0130          i32.store offset=4
0131          local.get 5
0132          local.get 1
0133          i32.store offset=8
0134          local.get 2
0135          local.get 1
0136          i32.const 1
0137          i32.add
0138          i32.store
0139        end
7 ------------------------------------------------------------
0140        local.get 0
0141        i32.load offset=16
0142        local.tee 2
0143        local.get 6
0144        i32.add
0145        local.get 1
0146        i32.store offset=4
0147        local.get 3
0148        i32.const 1
0149        i32.add
0150        local.tee 3
0151        local.get 0
0152        i32.load
0153        i32.lt_s
0154        br_if 0 (;@2;)
8 ------------------------------------------------------------
0155      end
9 ------------------------------------------------------------
0156    end
10 ------------------------------------------------------------
0157    local.get 4
0158    i32.const 16
0159    i32.add
0160    global.set 0)
