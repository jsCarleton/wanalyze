  (func (;217;) (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const -64
0002    i32.add
0003    local.tee 3
0004    global.set 0
0005    local.get 1
0006    i32.load
0007    local.tee 4
0008    i32.const -1
0009    i32.add
0010    i32.const 4
0011    i32.div_s
0012    local.set 6
0013    local.get 4
0014    i32.const -2
0015    i32.ge_s
0016    if  ;; label = @1
1 ------------------------------------------------------------
0017      local.get 6
0018      i32.const 1
0019      i32.add
0020      local.set 9
0021      i32.const 0
0022      local.set 4
0023      local.get 6
0024      i32.const 0
0025      local.get 6
0026      i32.const 0
0027      i32.gt_s
0028      select
0029      local.set 10
0030      loop  ;; label = @2
2 ------------------------------------------------------------
0031        local.get 2
0032        local.get 0
0033        call 82
0034        drop
0035        block  ;; label = @3
3 ------------------------------------------------------------
0036          local.get 4
0037          local.tee 6
0038          local.get 1
0039          i32.load
0040          i32.ge_s
0041          br_if 0 (;@3;)
4 ------------------------------------------------------------
0042          local.get 1
0043          i32.load offset=16
0044          local.get 6
0045          i32.const 3
0046          i32.shl
0047          i32.add
0048          local.tee 4
0049          i32.load8_u offset=1
0050          local.set 5
0051          local.get 4
0052          i32.load8_u offset=2
0053          local.set 7
0054          local.get 3
0055          local.get 4
0056          i32.load8_u offset=3
0057          i32.store offset=60
0058          local.get 3
0059          local.get 7
0060          i32.store offset=56
0061          local.get 3
0062          local.get 5
0063          i32.store offset=52
0064          local.get 3
0065          local.get 6
0066          i32.store offset=48
0067          local.get 0
0068          i32.const 10896
0069          local.get 3
0070          i32.const 48
0071          i32.add
0072          call 33
0073          local.get 6
0074          local.get 9
0075          i32.add
0076          local.tee 4
0077          local.get 1
0078          i32.load
0079          i32.ge_s
0080          br_if 0 (;@3;)
5 ------------------------------------------------------------
0081          i32.const 10891
0082          i32.const 4
0083          i32.const 1
0084          local.get 0
0085          call 35
0086          drop
0087          local.get 1
0088          i32.load offset=16
0089          local.get 4
0090          i32.const 3
0091          i32.shl
0092          i32.add
0093          local.tee 5
0094          i32.load8_u offset=1
0095          local.set 7
0096          local.get 5
0097          i32.load8_u offset=2
0098          local.set 8
0099          local.get 3
0100          local.get 5
0101          i32.load8_u offset=3
0102          i32.store offset=44
0103          local.get 3
0104          local.get 8
0105          i32.store offset=40
0106          local.get 3
0107          local.get 7
0108          i32.store offset=36
0109          local.get 3
0110          local.get 4
0111          i32.store offset=32
0112          local.get 0
0113          i32.const 10896
0114          local.get 3
0115          i32.const 32
0116          i32.add
0117          call 33
0118          local.get 4
0119          local.get 9
0120          i32.add
0121          local.tee 4
0122          local.get 1
0123          i32.load
0124          i32.ge_s
0125          br_if 0 (;@3;)
6 ------------------------------------------------------------
0126          i32.const 10891
0127          i32.const 4
0128          i32.const 1
0129          local.get 0
0130          call 35
0131          drop
0132          local.get 1
0133          i32.load offset=16
0134          local.get 4
0135          i32.const 3
0136          i32.shl
0137          i32.add
0138          local.tee 5
0139          i32.load8_u offset=1
0140          local.set 7
0141          local.get 5
0142          i32.load8_u offset=2
0143          local.set 8
0144          local.get 3
0145          local.get 5
0146          i32.load8_u offset=3
0147          i32.store offset=28
0148          local.get 3
0149          local.get 8
0150          i32.store offset=24
0151          local.get 3
0152          local.get 7
0153          i32.store offset=20
0154          local.get 3
0155          local.get 4
0156          i32.store offset=16
0157          local.get 0
0158          i32.const 10896
0159          local.get 3
0160          i32.const 16
0161          i32.add
0162          call 33
0163          local.get 4
0164          local.get 9
0165          i32.add
0166          local.tee 4
0167          local.get 1
0168          i32.load
0169          i32.ge_s
0170          br_if 0 (;@3;)
7 ------------------------------------------------------------
0171          i32.const 10891
0172          i32.const 4
0173          i32.const 1
0174          local.get 0
0175          call 35
0176          drop
0177          local.get 1
0178          i32.load offset=16
0179          local.get 4
0180          i32.const 3
0181          i32.shl
0182          i32.add
0183          local.tee 5
0184          i32.load8_u offset=1
0185          local.set 7
0186          local.get 5
0187          i32.load8_u offset=2
0188          local.set 8
0189          local.get 3
0190          local.get 5
0191          i32.load8_u offset=3
0192          i32.store offset=12
0193          local.get 3
0194          local.get 8
0195          i32.store offset=8
0196          local.get 3
0197          local.get 7
0198          i32.store offset=4
0199          local.get 3
0200          local.get 4
0201          i32.store
0202          local.get 0
0203          i32.const 10896
0204          local.get 3
0205          call 33
0206        end
8 ------------------------------------------------------------
0207        i32.const 10
0208        local.get 0
0209        call 37
0210        local.get 6
0211        i32.const 1
0212        i32.add
0213        local.set 4
0214        local.get 6
0215        local.get 10
0216        i32.ne
0217        br_if 0 (;@2;)
9 ------------------------------------------------------------
0218      end
10 ------------------------------------------------------------
0219    end
11 ------------------------------------------------------------
0220    local.get 3
0221    i32.const -64
0222    i32.sub
0223    global.set 0)
