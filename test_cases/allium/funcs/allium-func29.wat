  (func (;29;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 2
0001    i32.const 8192
0002    i32.ge_s
0003    if  ;; label = @1
1 ------------------------------------------------------------
0004      local.get 0
0005      local.get 1
0006      local.get 2
0007      call 9
0008      return
2 ------------------------------------------------------------
0009    end
3 ------------------------------------------------------------
0010    local.get 0
0011    local.set 4
0012    local.get 0
0013    local.get 2
0014    i32.add
0015    local.set 3
0016    local.get 0
0017    i32.const 3
0018    i32.and
0019    local.get 1
0020    i32.const 3
0021    i32.and
0022    i32.eq
0023    if  ;; label = @1
4 ------------------------------------------------------------
0024      loop  ;; label = @2
5 ------------------------------------------------------------
0025        local.get 0
0026        i32.const 3
0027        i32.and
0028        if  ;; label = @3
6 ------------------------------------------------------------
0029          local.get 2
0030          i32.eqz
0031          if  ;; label = @4
7 ------------------------------------------------------------
0032            local.get 4
0033            return
8 ------------------------------------------------------------
0034          end
9 ------------------------------------------------------------
0035          local.get 0
0036          local.get 1
0037          i32.const 1
0038          call 27
0039          i32.const 1
0040          call 24
0041          local.get 0
0042          i32.const 1
0043          i32.add
0044          local.set 0
0045          local.get 1
0046          i32.const 1
0047          i32.add
0048          local.set 1
0049          local.get 2
0050          i32.const 1
0051          i32.sub
0052          local.set 2
0053          br 1 (;@2;)
10 ------------------------------------------------------------
0054        end
11 ------------------------------------------------------------
0055      end
12 ------------------------------------------------------------
0056      local.get 3
0057      i32.const -4
0058      i32.and
0059      local.tee 2
0060      i32.const -64
0061      i32.add
0062      local.set 5
0063      loop  ;; label = @2
13 ------------------------------------------------------------
0064        local.get 0
0065        local.get 5
0066        i32.le_s
0067        if  ;; label = @3
14 ------------------------------------------------------------
0068          local.get 0
0069          local.get 1
0070          i32.const 4
0071          call 27
0072          i32.const 4
0073          call 24
0074          local.get 0
0075          i32.const 4
0076          i32.add
0077          local.get 1
0078          i32.const 4
0079          i32.add
0080          i32.const 4
0081          call 27
0082          i32.const 4
0083          call 24
0084          local.get 0
0085          i32.const 8
0086          i32.add
0087          local.get 1
0088          i32.const 8
0089          i32.add
0090          i32.const 4
0091          call 27
0092          i32.const 4
0093          call 24
0094          local.get 0
0095          i32.const 12
0096          i32.add
0097          local.get 1
0098          i32.const 12
0099          i32.add
0100          i32.const 4
0101          call 27
0102          i32.const 4
0103          call 24
0104          local.get 0
0105          i32.const 16
0106          i32.add
0107          local.get 1
0108          i32.const 16
0109          i32.add
0110          i32.const 4
0111          call 27
0112          i32.const 4
0113          call 24
0114          local.get 0
0115          i32.const 20
0116          i32.add
0117          local.get 1
0118          i32.const 20
0119          i32.add
0120          i32.const 4
0121          call 27
0122          i32.const 4
0123          call 24
0124          local.get 0
0125          i32.const 24
0126          i32.add
0127          local.get 1
0128          i32.const 24
0129          i32.add
0130          i32.const 4
0131          call 27
0132          i32.const 4
0133          call 24
0134          local.get 0
0135          i32.const 28
0136          i32.add
0137          local.get 1
0138          i32.const 28
0139          i32.add
0140          i32.const 4
0141          call 27
0142          i32.const 4
0143          call 24
0144          local.get 0
0145          i32.const 32
0146          i32.add
0147          local.get 1
0148          i32.const 32
0149          i32.add
0150          i32.const 4
0151          call 27
0152          i32.const 4
0153          call 24
0154          local.get 0
0155          i32.const 36
0156          i32.add
0157          local.get 1
0158          i32.const 36
0159          i32.add
0160          i32.const 4
0161          call 27
0162          i32.const 4
0163          call 24
0164          local.get 0
0165          i32.const 40
0166          i32.add
0167          local.get 1
0168          i32.const 40
0169          i32.add
0170          i32.const 4
0171          call 27
0172          i32.const 4
0173          call 24
0174          local.get 0
0175          i32.const 44
0176          i32.add
0177          local.get 1
0178          i32.const 44
0179          i32.add
0180          i32.const 4
0181          call 27
0182          i32.const 4
0183          call 24
0184          local.get 0
0185          i32.const 48
0186          i32.add
0187          local.get 1
0188          i32.const 48
0189          i32.add
0190          i32.const 4
0191          call 27
0192          i32.const 4
0193          call 24
0194          local.get 0
0195          i32.const 52
0196          i32.add
0197          local.get 1
0198          i32.const 52
0199          i32.add
0200          i32.const 4
0201          call 27
0202          i32.const 4
0203          call 24
0204          local.get 0
0205          i32.const 56
0206          i32.add
0207          local.get 1
0208          i32.const 56
0209          i32.add
0210          i32.const 4
0211          call 27
0212          i32.const 4
0213          call 24
0214          local.get 0
0215          i32.const 60
0216          i32.add
0217          local.get 1
0218          i32.const 60
0219          i32.add
0220          i32.const 4
0221          call 27
0222          i32.const 4
0223          call 24
0224          local.get 0
0225          i32.const -64
0226          i32.sub
0227          local.set 0
0228          local.get 1
0229          i32.const -64
0230          i32.sub
0231          local.set 1
0232          br 1 (;@2;)
15 ------------------------------------------------------------
0233        end
16 ------------------------------------------------------------
0234      end
17 ------------------------------------------------------------
0235      loop  ;; label = @2
18 ------------------------------------------------------------
0236        local.get 0
0237        local.get 2
0238        i32.lt_s
0239        if  ;; label = @3
19 ------------------------------------------------------------
0240          local.get 0
0241          local.get 1
0242          i32.const 4
0243          call 27
0244          i32.const 4
0245          call 24
0246          local.get 0
0247          i32.const 4
0248          i32.add
0249          local.set 0
0250          local.get 1
0251          i32.const 4
0252          i32.add
0253          local.set 1
0254          br 1 (;@2;)
20 ------------------------------------------------------------
0255        end
21 ------------------------------------------------------------
0256      end
22 ------------------------------------------------------------
0257    else
23 ------------------------------------------------------------
0258      local.get 3
0259      i32.const 4
0260      i32.sub
0261      local.set 2
0262      loop  ;; label = @2
24 ------------------------------------------------------------
0263        local.get 0
0264        local.get 2
0265        i32.lt_s
0266        if  ;; label = @3
25 ------------------------------------------------------------
0267          local.get 0
0268          local.get 1
0269          i32.const 1
0270          call 27
0271          i32.const 1
0272          call 24
0273          local.get 0
0274          i32.const 1
0275          i32.add
0276          local.get 1
0277          i32.const 1
0278          i32.add
0279          i32.const 1
0280          call 27
0281          i32.const 1
0282          call 24
0283          local.get 0
0284          i32.const 2
0285          i32.add
0286          local.get 1
0287          i32.const 2
0288          i32.add
0289          i32.const 1
0290          call 27
0291          i32.const 1
0292          call 24
0293          local.get 0
0294          i32.const 3
0295          i32.add
0296          local.get 1
0297          i32.const 3
0298          i32.add
0299          i32.const 1
0300          call 27
0301          i32.const 1
0302          call 24
0303          local.get 0
0304          i32.const 4
0305          i32.add
0306          local.set 0
0307          local.get 1
0308          i32.const 4
0309          i32.add
0310          local.set 1
0311          br 1 (;@2;)
26 ------------------------------------------------------------
0312        end
27 ------------------------------------------------------------
0313      end
28 ------------------------------------------------------------
0314    end
29 ------------------------------------------------------------
0315    loop  ;; label = @1
30 ------------------------------------------------------------
0316      local.get 0
0317      local.get 3
0318      i32.lt_s
0319      if  ;; label = @2
31 ------------------------------------------------------------
0320        local.get 0
0321        local.get 1
0322        i32.const 1
0323        call 27
0324        i32.const 1
0325        call 24
0326        local.get 0
0327        i32.const 1
0328        i32.add
0329        local.set 0
0330        local.get 1
0331        i32.const 1
0332        i32.add
0333        local.set 1
0334        br 1 (;@1;)
32 ------------------------------------------------------------
0335      end
33 ------------------------------------------------------------
0336    end
34 ------------------------------------------------------------
0337    local.get 4)
