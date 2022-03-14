  (func (;215;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load offset=364
0002    local.set 5
0003    local.get 0
0004    i32.load offset=200
0005    local.tee 2
0006    if  ;; label = @1
1 ------------------------------------------------------------
0007      local.get 5
0008      local.get 5
0009      i32.load offset=36
0010      local.tee 3
0011      if (result i32)  ;; label = @2
2 ------------------------------------------------------------
0012        local.get 3
0013      else
3 ------------------------------------------------------------
0014        local.get 0
0015        i32.load offset=244
0016        i32.const 1
0017        i32.ge_s
0018        if  ;; label = @3
4 ------------------------------------------------------------
0019          i32.const 0
0020          local.set 2
0021          loop  ;; label = @4
5 ------------------------------------------------------------
0022            local.get 5
0023            local.get 2
0024            i32.const 2
0025            i32.shl
0026            i32.add
0027            i32.const 0
0028            i32.store offset=20
0029            local.get 2
0030            i32.const 1
0031            i32.add
0032            local.tee 2
0033            local.get 0
0034            i32.load offset=244
0035            i32.lt_s
0036            br_if 0 (;@4;)
6 ------------------------------------------------------------
0037          end
7 ------------------------------------------------------------
0038          local.get 0
0039          i32.load offset=200
0040          local.set 2
0041        end
8 ------------------------------------------------------------
0042        local.get 5
0043        local.get 2
0044        i32.store offset=36
0045        local.get 2
0046      end
9 ------------------------------------------------------------
0047      i32.const -1
0048      i32.add
0049      i32.store offset=36
0050    end
10 ------------------------------------------------------------
0051    local.get 0
0052    i32.load offset=272
0053    i32.const 1
0054    i32.ge_s
0055    if  ;; label = @1
11 ------------------------------------------------------------
0056      loop  ;; label = @2
12 ------------------------------------------------------------
0057        local.get 5
0058        local.get 0
0059        local.get 0
0060        local.get 8
0061        i32.const 2
0062        i32.shl
0063        local.tee 3
0064        i32.add
0065        i32.load offset=276
0066        i32.const 2
0067        i32.shl
0068        local.tee 4
0069        i32.add
0070        i32.load offset=248
0071        local.tee 2
0072        i32.load offset=24
0073        i32.const 2
0074        i32.shl
0075        i32.add
0076        i32.load offset=92
0077        local.set 7
0078        local.get 5
0079        local.get 2
0080        i32.load offset=20
0081        i32.const 2
0082        i32.shl
0083        i32.add
0084        i32.load offset=76
0085        local.set 6
0086        i32.const 0
0087        local.set 2
0088        block  ;; label = @3
13 ------------------------------------------------------------
0089          local.get 1
0090          local.get 3
0091          i32.add
0092          local.tee 9
0093          i32.load
0094          local.tee 10
0095          i32.load16_s
0096          local.get 4
0097          local.get 5
0098          i32.add
0099          local.tee 11
0100          i32.const 20
0101          i32.add
0102          i32.load
0103          i32.sub
0104          local.tee 3
0105          local.get 3
0106          i32.const 31
0107          i32.shr_s
0108          local.tee 3
0109          i32.add
0110          local.get 3
0111          i32.xor
0112          local.tee 3
0113          i32.eqz
0114          br_if 0 (;@3;)
14 ------------------------------------------------------------
0115          i32.const 32
0116          local.get 3
0117          i32.clz
0118          i32.sub
0119          local.set 2
0120          local.get 3
0121          i32.const 2048
0122          i32.lt_u
0123          br_if 0 (;@3;)
15 ------------------------------------------------------------
0124          local.get 0
0125          i32.load
0126          local.tee 3
0127          i32.const 6
0128          i32.store offset=20
0129          local.get 0
0130          local.get 3
0131          i32.load
0132          call_indirect (type 0)
0133        end
16 ------------------------------------------------------------
0134        i32.const 1
0135        local.set 3
0136        local.get 6
0137        local.get 2
0138        i32.const 2
0139        i32.shl
0140        i32.add
0141        local.tee 2
0142        local.get 2
0143        i32.load
0144        i32.const 1
0145        i32.add
0146        i32.store
0147        i32.const 0
0148        local.set 4
0149        block  ;; label = @3
17 ------------------------------------------------------------
0150          loop  ;; label = @4
18 ------------------------------------------------------------
0151            local.get 4
0152            local.set 2
0153            local.get 10
0154            local.get 3
0155            i32.const 2
0156            i32.shl
0157            i32.const 142864
0158            i32.add
0159            i32.load
0160            i32.const 1
0161            i32.shl
0162            i32.add
0163            i32.load16_s
0164            local.tee 4
0165            if  ;; label = @5
19 ------------------------------------------------------------
0166              local.get 2
0167              i32.const 16
0168              i32.ge_s
0169              if  ;; label = @6
20 ------------------------------------------------------------
0170                local.get 7
0171                local.get 7
0172                i32.load offset=960
0173                local.get 2
0174                local.get 2
0175                i32.const 31
0176                local.get 2
0177                i32.const 31
0178                i32.lt_s
0179                select
0180                i32.sub
0181                i32.const 15
0182                i32.add
0183                local.tee 6
0184                i32.const 4
0185                i32.shr_u
0186                i32.add
0187                i32.const 1
0188                i32.add
0189                i32.store offset=960
0190                local.get 2
0191                local.get 6
0192                i32.const -16
0193                i32.and
0194                i32.sub
0195                i32.const -16
0196                i32.add
0197                local.set 2
0198              end
21 ------------------------------------------------------------
0199              i32.const 33
0200              local.get 4
0201              local.get 4
0202              i32.const 31
0203              i32.shr_s
0204              local.tee 6
0205              i32.add
0206              local.get 6
0207              i32.xor
0208              local.tee 4
0209              i32.const 1
0210              i32.shr_u
0211              i32.clz
0212              i32.sub
0213              local.set 6
0214              local.get 4
0215              i32.const 1024
0216              i32.ge_u
0217              if  ;; label = @6
22 ------------------------------------------------------------
0218                local.get 0
0219                i32.load
0220                local.tee 4
0221                i32.const 6
0222                i32.store offset=20
0223                local.get 0
0224                local.get 4
0225                i32.load
0226                call_indirect (type 0)
0227              end
23 ------------------------------------------------------------
0228              local.get 7
0229              local.get 6
0230              local.get 2
0231              i32.const 4
0232              i32.shl
0233              i32.add
0234              i32.const 2
0235              i32.shl
0236              i32.add
0237              local.tee 2
0238              local.get 2
0239              i32.load
0240              i32.const 1
0241              i32.add
0242              i32.store
0243              i32.const 0
0244              local.set 4
0245              local.get 3
0246              i32.const 1
0247              i32.add
0248              local.tee 3
0249              i32.const 64
0250              i32.ne
0251              br_if 1 (;@4;)
24 ------------------------------------------------------------
0252              br 2 (;@3;)
25 ------------------------------------------------------------
0253            end
26 ------------------------------------------------------------
0254            local.get 2
0255            i32.const 1
0256            i32.add
0257            local.set 4
0258            local.get 3
0259            i32.const 1
0260            i32.add
0261            local.tee 3
0262            i32.const 64
0263            i32.ne
0264            br_if 0 (;@4;)
27 ------------------------------------------------------------
0265          end
28 ------------------------------------------------------------
0266          local.get 2
0267          i32.const 0
0268          i32.lt_s
0269          br_if 0 (;@3;)
29 ------------------------------------------------------------
0270          local.get 7
0271          local.get 7
0272          i32.load
0273          i32.const 1
0274          i32.add
0275          i32.store
0276        end
30 ------------------------------------------------------------
0277        local.get 11
0278        local.get 9
0279        i32.load
0280        i32.load16_s
0281        i32.store offset=20
0282        local.get 8
0283        i32.const 1
0284        i32.add
0285        local.tee 8
0286        local.get 0
0287        i32.load offset=272
0288        i32.lt_s
0289        br_if 0 (;@2;)
31 ------------------------------------------------------------
0290      end
32 ------------------------------------------------------------
0291    end
33 ------------------------------------------------------------
0292    i32.const 1)
