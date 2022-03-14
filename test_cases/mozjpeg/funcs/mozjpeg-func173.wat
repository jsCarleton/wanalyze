  (func (;173;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load offset=328
0002    local.set 7
0003    local.get 0
0004    i32.load offset=364
0005    local.tee 3
0006    local.get 0
0007    i32.load offset=24
0008    local.tee 2
0009    i32.load
0010    i32.store offset=16
0011    local.get 3
0012    local.get 2
0013    i32.load offset=4
0014    i32.store offset=20
0015    block  ;; label = @1
1 ------------------------------------------------------------
0016      local.get 0
0017      i32.load offset=200
0018      i32.eqz
0019      br_if 0 (;@1;)
2 ------------------------------------------------------------
0020      local.get 3
0021      i32.load offset=68
0022      br_if 0 (;@1;)
3 ------------------------------------------------------------
0023      local.get 3
0024      local.get 3
0025      i32.load offset=72
0026      call 69
0027    end
4 ------------------------------------------------------------
0028    local.get 0
0029    i32.load offset=272
0030    i32.const 1
0031    i32.ge_s
0032    if  ;; label = @1
5 ------------------------------------------------------------
0033      loop  ;; label = @2
6 ------------------------------------------------------------
0034        local.get 0
0035        local.get 0
0036        local.get 6
0037        i32.const 2
0038        i32.shl
0039        local.tee 4
0040        i32.add
0041        i32.load offset=276
0042        i32.const 2
0043        i32.shl
0044        local.tee 2
0045        i32.add
0046        i32.load offset=248
0047        local.set 8
0048        local.get 2
0049        local.get 3
0050        i32.add
0051        local.tee 2
0052        i32.const 36
0053        i32.add
0054        i32.load
0055        local.set 5
0056        local.get 2
0057        local.get 1
0058        local.get 4
0059        i32.add
0060        i32.load
0061        i32.load16_s
0062        local.get 7
0063        i32.shr_s
0064        local.tee 2
0065        i32.store offset=36
0066        i32.const 0
0067        local.set 4
0068        block  ;; label = @3
7 ------------------------------------------------------------
0069          local.get 2
0070          local.get 5
0071          i32.sub
0072          local.tee 5
0073          i32.const 31
0074          i32.shr_s
0075          local.tee 2
0076          local.get 5
0077          i32.add
0078          local.tee 5
0079          local.get 2
0080          i32.xor
0081          local.tee 2
0082          i32.eqz
0083          br_if 0 (;@3;)
8 ------------------------------------------------------------
0084          i32.const 32
0085          local.get 2
0086          i32.clz
0087          i32.sub
0088          local.set 4
0089          local.get 2
0090          i32.const 2048
0091          i32.lt_u
0092          br_if 0 (;@3;)
9 ------------------------------------------------------------
0093          local.get 0
0094          i32.load
0095          local.tee 2
0096          i32.const 6
0097          i32.store offset=20
0098          local.get 0
0099          local.get 2
0100          i32.load
0101          call_indirect (type 0)
0102        end
10 ------------------------------------------------------------
0103        local.get 8
0104        i32.load offset=20
0105        local.set 2
0106        block  ;; label = @3
11 ------------------------------------------------------------
0107          local.get 3
0108          i32.load offset=12
0109          if  ;; label = @4
12 ------------------------------------------------------------
0110            local.get 3
0111            local.get 2
0112            i32.const 2
0113            i32.shl
0114            i32.add
0115            i32.load offset=92
0116            local.get 4
0117            i32.const 2
0118            i32.shl
0119            i32.add
0120            local.tee 2
0121            local.get 2
0122            i32.load
0123            i32.const 1
0124            i32.add
0125            i32.store
0126            br 1 (;@3;)
13 ------------------------------------------------------------
0127          end
14 ------------------------------------------------------------
0128          local.get 3
0129          local.get 3
0130          local.get 2
0131          i32.const 2
0132          i32.shl
0133          i32.add
0134          i32.load offset=76
0135          local.tee 2
0136          local.get 4
0137          i32.const 2
0138          i32.shl
0139          i32.add
0140          i32.load
0141          local.get 2
0142          local.get 4
0143          i32.add
0144          i32.const 1024
0145          i32.add
0146          i32.load8_s
0147          call 30
0148        end
15 ------------------------------------------------------------
0149        local.get 4
0150        if  ;; label = @3
16 ------------------------------------------------------------
0151          local.get 3
0152          local.get 5
0153          local.get 4
0154          call 30
0155        end
17 ------------------------------------------------------------
0156        local.get 6
0157        i32.const 1
0158        i32.add
0159        local.tee 6
0160        local.get 0
0161        i32.load offset=272
0162        i32.lt_s
0163        br_if 0 (;@2;)
18 ------------------------------------------------------------
0164      end
19 ------------------------------------------------------------
0165    end
20 ------------------------------------------------------------
0166    local.get 0
0167    i32.load offset=24
0168    local.tee 1
0169    local.get 3
0170    i32.load offset=16
0171    i32.store
0172    local.get 1
0173    local.get 3
0174    i32.load offset=20
0175    i32.store offset=4
0176    local.get 0
0177    i32.load offset=200
0178    local.tee 1
0179    if  ;; label = @1
21 ------------------------------------------------------------
0180      local.get 3
0181      local.get 3
0182      i32.load offset=68
0183      local.tee 0
0184      if (result i32)  ;; label = @2
22 ------------------------------------------------------------
0185        local.get 0
0186      else
23 ------------------------------------------------------------
0187        local.get 3
0188        local.get 1
0189        i32.store offset=68
0190        local.get 3
0191        local.get 3
0192        i32.load offset=72
0193        i32.const 1
0194        i32.add
0195        i32.const 7
0196        i32.and
0197        i32.store offset=72
0198        local.get 1
0199      end
24 ------------------------------------------------------------
0200      i32.const -1
0201      i32.add
0202      i32.store offset=68
0203    end
25 ------------------------------------------------------------
0204    i32.const 1)
