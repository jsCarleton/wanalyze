  (func (;238;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load
0002    local.tee 2
0003    i32.const 31
0004    i32.const 32
0005    local.get 1
0006    select
0007    i32.store
0008    local.get 2
0009    i32.const 33
0010    i32.const 34
0011    local.get 1
0012    select
0013    i32.store
0014    local.get 2
0015    i32.const 0
0016    i32.store
0017    block  ;; label = @1
1 ------------------------------------------------------------
0018      local.get 0
0019      i32.load
0020      i32.const 1
0021      i32.lt_s
0022      br_if 0 (;@1;)
2 ------------------------------------------------------------
0023      local.get 1
0024      if  ;; label = @2
3 ------------------------------------------------------------
0025        loop  ;; label = @3
4 ------------------------------------------------------------
0026          local.get 0
0027          local.get 4
0028          i32.const 2
0029          i32.shl
0030          local.tee 5
0031          i32.add
0032          i32.load
0033          local.tee 3
0034          i32.load
0035          local.set 1
0036          local.get 3
0037          i32.load
0038          local.tee 3
0039          i32.const 4
0040          i32.ge_u
0041          if  ;; label = @4
5 ------------------------------------------------------------
0042            local.get 0
0043            i32.load
0044            local.tee 6
0045            local.get 3
0046            i32.store
0047            local.get 6
0048            i32.const 50
0049            i32.store
0050            local.get 0
0051            local.get 0
0052            i32.load
0053            i32.load
0054            call_indirect (type 0)
0055          end
6 ------------------------------------------------------------
0056          local.get 1
0057          i32.const 4
0058          i32.ge_u
0059          if  ;; label = @4
7 ------------------------------------------------------------
0060            local.get 0
0061            i32.load
0062            local.tee 6
0063            local.get 1
0064            i32.store
0065            local.get 6
0066            i32.const 50
0067            i32.store
0068            local.get 0
0069            local.get 0
0070            i32.load
0071            i32.load
0072            call_indirect (type 0)
0073          end
8 ------------------------------------------------------------
0074          local.get 2
0075          local.get 3
0076          i32.const 2
0077          i32.shl
0078          i32.add
0079          local.tee 6
0080          i32.load
0081          local.tee 3
0082          i32.eqz
0083          if  ;; label = @4
9 ------------------------------------------------------------
0084            local.get 6
0085            local.get 0
0086            i32.const 1
0087            i32.const 1028
0088            local.get 0
0089            i32.load
0090            i32.load
0091            call_indirect (type 3)
0092            local.tee 3
0093            i32.store
0094          end
10 ------------------------------------------------------------
0095          local.get 3
0096          i32.const 0
0097          i32.const 1028
0098          call 27
0099          drop
0100          local.get 2
0101          local.get 1
0102          i32.const 2
0103          i32.shl
0104          i32.add
0105          local.tee 3
0106          i32.load
0107          local.tee 1
0108          i32.eqz
0109          if  ;; label = @4
11 ------------------------------------------------------------
0110            local.get 3
0111            local.get 0
0112            i32.const 1
0113            i32.const 1028
0114            local.get 0
0115            i32.load
0116            i32.load
0117            call_indirect (type 3)
0118            local.tee 1
0119            i32.store
0120          end
12 ------------------------------------------------------------
0121          local.get 1
0122          i32.const 0
0123          i32.const 1028
0124          call 27
0125          drop
0126          local.get 2
0127          local.get 5
0128          i32.add
0129          i32.const 0
0130          i32.store
0131          local.get 4
0132          i32.const 1
0133          i32.add
0134          local.tee 4
0135          local.get 0
0136          i32.load
0137          i32.lt_s
0138          br_if 0 (;@3;)
13 ------------------------------------------------------------
0139          br 2 (;@1;)
14 ------------------------------------------------------------
0140          unreachable
15 ------------------------------------------------------------
0141        end
16 ------------------------------------------------------------
0142        unreachable
17 ------------------------------------------------------------
0143      end
18 ------------------------------------------------------------
0144      loop  ;; label = @2
19 ------------------------------------------------------------
0145        local.get 0
0146        local.get 4
0147        i32.const 2
0148        i32.shl
0149        local.tee 3
0150        i32.add
0151        i32.load
0152        local.tee 5
0153        i32.load
0154        local.set 1
0155        local.get 0
0156        i32.const 1
0157        local.get 5
0158        i32.load
0159        local.tee 5
0160        local.get 2
0161        local.get 5
0162        i32.const 2
0163        i32.shl
0164        i32.add
0165        i32.const 44
0166        i32.add
0167        call 54
0168        local.get 0
0169        i32.const 0
0170        local.get 1
0171        local.get 2
0172        local.get 1
0173        i32.const 2
0174        i32.shl
0175        i32.add
0176        i32.const 60
0177        i32.add
0178        call 54
0179        local.get 2
0180        local.get 3
0181        i32.add
0182        i32.const 0
0183        i32.store
0184        local.get 4
0185        i32.const 1
0186        i32.add
0187        local.tee 4
0188        local.get 0
0189        i32.load
0190        i32.lt_s
0191        br_if 0 (;@2;)
20 ------------------------------------------------------------
0192      end
21 ------------------------------------------------------------
0193    end
22 ------------------------------------------------------------
0194    local.get 2
0195    i64.const 0
0196    i64.store align=4
0197    local.get 0
0198    i32.load
0199    local.set 0
0200    local.get 2
0201    i32.const 0
0202    i32.store
0203    local.get 2
0204    local.get 0
0205    i32.store)
