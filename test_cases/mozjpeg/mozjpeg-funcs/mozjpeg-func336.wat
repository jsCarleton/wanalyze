  (func (;336;) (type 6) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    block  ;; label = @1
1 ------------------------------------------------------------
0001      local.get 4
0002      i32.const 1
0003      i32.lt_s
0004      br_if 0 (;@1;)
2 ------------------------------------------------------------
0005      local.get 0
0006      i32.load offset=28
0007      local.tee 11
0008      i32.eqz
0009      br_if 0 (;@1;)
3 ------------------------------------------------------------
0010      local.get 0
0011      i32.load offset=352
0012      i32.load offset=8
0013      local.set 6
0014      loop  ;; label = @2
4 ------------------------------------------------------------
0015        local.get 4
0016        i32.const -1
0017        i32.add
0018        local.set 0
0019        local.get 3
0020        i32.const 2
0021        i32.shl
0022        local.tee 5
0023        local.get 2
0024        i32.load offset=12
0025        i32.add
0026        i32.load
0027        local.set 12
0028        local.get 2
0029        i32.load offset=8
0030        local.get 5
0031        i32.add
0032        i32.load
0033        local.set 13
0034        local.get 2
0035        i32.load offset=4
0036        local.get 5
0037        i32.add
0038        i32.load
0039        local.set 14
0040        local.get 2
0041        i32.load
0042        local.get 5
0043        i32.add
0044        i32.load
0045        local.set 15
0046        local.get 1
0047        i32.load
0048        local.set 5
0049        i32.const 0
0050        local.set 7
0051        loop  ;; label = @3
5 ------------------------------------------------------------
0052          local.get 5
0053          i32.load8_u offset=2
0054          local.set 8
0055          local.get 5
0056          i32.load8_u offset=1
0057          local.set 9
0058          local.get 5
0059          i32.load8_u
0060          local.set 10
0061          local.get 7
0062          local.get 12
0063          i32.add
0064          local.get 5
0065          i32.load8_u offset=3
0066          i32.store8
0067          local.get 7
0068          local.get 15
0069          i32.add
0070          local.get 6
0071          local.get 8
0072          i32.const 255
0073          i32.xor
0074          i32.const 2
0075          i32.shl
0076          local.tee 8
0077          i32.const 2048
0078          i32.or
0079          i32.add
0080          i32.load
0081          local.get 6
0082          local.get 9
0083          i32.const 255
0084          i32.xor
0085          i32.const 2
0086          i32.shl
0087          local.tee 9
0088          i32.const 1024
0089          i32.or
0090          i32.add
0091          i32.load
0092          local.get 6
0093          local.get 10
0094          i32.const 255
0095          i32.xor
0096          i32.const 2
0097          i32.shl
0098          local.tee 10
0099          i32.add
0100          i32.load
0101          i32.add
0102          i32.add
0103          i32.const 16
0104          i32.shr_u
0105          i32.store8
0106          local.get 7
0107          local.get 14
0108          i32.add
0109          local.get 6
0110          local.get 8
0111          i32.const 5120
0112          i32.or
0113          i32.add
0114          i32.load
0115          local.get 6
0116          local.get 9
0117          i32.const 4096
0118          i32.or
0119          i32.add
0120          i32.load
0121          local.get 6
0122          local.get 10
0123          i32.const 3072
0124          i32.or
0125          i32.add
0126          i32.load
0127          i32.add
0128          i32.add
0129          i32.const 16
0130          i32.shr_u
0131          i32.store8
0132          local.get 7
0133          local.get 13
0134          i32.add
0135          local.get 6
0136          local.get 8
0137          i32.const 7168
0138          i32.or
0139          i32.add
0140          i32.load
0141          local.get 6
0142          local.get 9
0143          i32.const 6144
0144          i32.or
0145          i32.add
0146          i32.load
0147          local.get 6
0148          local.get 10
0149          i32.const 5120
0150          i32.or
0151          i32.add
0152          i32.load
0153          i32.add
0154          i32.add
0155          i32.const 16
0156          i32.shr_u
0157          i32.store8
0158          local.get 5
0159          i32.const 4
0160          i32.add
0161          local.set 5
0162          local.get 7
0163          i32.const 1
0164          i32.add
0165          local.tee 7
0166          local.get 11
0167          i32.ne
0168          br_if 0 (;@3;)
6 ------------------------------------------------------------
0169        end
7 ------------------------------------------------------------
0170        local.get 3
0171        i32.const 1
0172        i32.add
0173        local.set 3
0174        local.get 1
0175        i32.const 4
0176        i32.add
0177        local.set 1
0178        local.get 4
0179        i32.const 1
0180        i32.gt_s
0181        local.set 5
0182        local.get 0
0183        local.set 4
0184        local.get 5
0185        br_if 0 (;@2;)
8 ------------------------------------------------------------
0186      end
9 ------------------------------------------------------------
0187    end
10 ------------------------------------------------------------)
