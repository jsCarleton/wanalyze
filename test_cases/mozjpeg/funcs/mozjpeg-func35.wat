  (func (;35;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 48
0002    i32.sub
0003    local.tee 3
0004    global.set 0
0005    local.get 0
0006    i32.load
0007    local.tee 9
0008    local.get 1
0009    i32.const 2
0010    i32.shl
0011    i32.add
0012    local.tee 4
0013    i32.const 4228
0014    i32.add
0015    i32.load
0016    local.set 5
0017    local.get 4
0018    i32.const 4484
0019    i32.add
0020    i32.load
0021    local.set 4
0022    local.get 0
0023    i32.load
0024    i32.load
0025    i32.const 1
0026    i32.ge_s
0027    if  ;; label = @1
1 ------------------------------------------------------------
0028      i32.const 132407
0029      i32.const 5
0030      i32.const 154560
0031      i32.load
0032      local.tee 6
0033      call 147
0034      local.get 0
0035      i32.load
0036      local.tee 8
0037      local.get 1
0038      i32.const 36
0039      i32.mul
0040      local.tee 7
0041      i32.add
0042      i32.load
0043      i32.const 1
0044      i32.ge_s
0045      if  ;; label = @2
2 ------------------------------------------------------------
0046        loop  ;; label = @3
3 ------------------------------------------------------------
0047          local.get 3
0048          local.get 7
0049          local.get 8
0050          i32.add
0051          local.get 2
0052          i32.const 2
0053          i32.shl
0054          i32.add
0055          i32.load
0056          i32.store
0057          local.get 3
0058          i32.const 132419
0059          i32.const 132418
0060          local.get 2
0061          select
0062          i32.store
0063          local.get 6
0064          i32.const 132413
0065          local.get 3
0066          i32.const 32
0067          i32.add
0068          call 75
0069          local.get 2
0070          i32.const 1
0071          i32.add
0072          local.tee 2
0073          local.get 0
0074          i32.load
0075          local.tee 8
0076          local.get 7
0077          i32.add
0078          i32.load
0079          i32.lt_s
0080          br_if 0 (;@3;)
4 ------------------------------------------------------------
0081        end
5 ------------------------------------------------------------
0082      end
6 ------------------------------------------------------------
0083      local.get 3
0084      local.get 7
0085      local.get 8
0086      i32.add
0087      i64.load align=4
0088      i64.store
0089      local.get 6
0090      i32.const 132421
0091      local.get 3
0092      i32.const 16
0093      i32.add
0094      call 75
0095      local.get 0
0096      i32.load
0097      local.get 7
0098      i32.add
0099      i32.load
0100      local.set 2
0101      local.get 3
0102      local.get 9
0103      local.get 1
0104      i32.const 2
0105      i32.shl
0106      i32.add
0107      i32.const 4740
0108      i32.add
0109      i32.load
0110      i32.store
0111      local.get 3
0112      local.get 2
0113      i32.store
0114      local.get 6
0115      i32.const 132429
0116      local.get 3
0117      call 75
0118      local.get 6
0119      call 282
0120    end
7 ------------------------------------------------------------
0121    local.get 0
0122    i32.load
0123    local.tee 2
0124    i32.load
0125    local.set 1
0126    local.get 4
0127    local.get 2
0128    i32.load
0129    local.tee 2
0130    i32.ge_u
0131    if  ;; label = @1
8 ------------------------------------------------------------
0132      loop  ;; label = @2
9 ------------------------------------------------------------
0133        local.get 1
0134        local.get 5
0135        local.get 2
0136        call 34
0137        drop
0138        local.get 0
0139        i32.load
0140        local.tee 1
0141        i32.load
0142        local.set 2
0143        local.get 1
0144        i32.const 0
0145        i32.store
0146        local.get 1
0147        local.get 2
0148        local.get 1
0149        i32.load
0150        i32.add
0151        i32.store
0152        local.get 4
0153        local.get 2
0154        i32.sub
0155        local.set 4
0156        local.get 0
0157        local.get 1
0158        i32.load
0159        call_indirect (type 1)
0160        i32.eqz
0161        if  ;; label = @3
10 ------------------------------------------------------------
0162          local.get 0
0163          i32.load
0164          local.tee 1
0165          i32.const 129
0166          i32.store
0167          local.get 0
0168          local.get 1
0169          i32.load
0170          call_indirect (type 0)
0171        end
11 ------------------------------------------------------------
0172        local.get 2
0173        local.get 5
0174        i32.add
0175        local.set 5
0176        local.get 0
0177        i32.load
0178        local.tee 2
0179        i32.load
0180        local.set 1
0181        local.get 4
0182        local.get 2
0183        i32.load
0184        local.tee 2
0185        i32.ge_u
0186        br_if 0 (;@2;)
12 ------------------------------------------------------------
0187      end
13 ------------------------------------------------------------
0188    end
14 ------------------------------------------------------------
0189    local.get 1
0190    local.get 5
0191    local.get 4
0192    call 34
0193    drop
0194    local.get 0
0195    i32.load
0196    local.tee 0
0197    local.get 0
0198    i32.load
0199    local.get 4
0200    i32.add
0201    i32.store
0202    local.get 0
0203    local.get 0
0204    i32.load
0205    local.get 4
0206    i32.sub
0207    i32.store
0208    local.get 3
0209    i32.const 48
0210    i32.add
0211    global.set 0)
