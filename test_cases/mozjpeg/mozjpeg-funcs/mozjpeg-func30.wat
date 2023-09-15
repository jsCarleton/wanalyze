  (func (;30;) (type 5) (param i32 i32 i32)
    (local i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load offset=28
0002    local.set 3
0003    local.get 2
0004    i32.eqz
0005    if  ;; label = @1
1 ------------------------------------------------------------
0006      local.get 0
0007      i32.load offset=32
0008      local.tee 4
0009      i32.load
0010      local.tee 5
0011      i32.const 40
0012      i32.store offset=20
0013      local.get 4
0014      local.get 5
0015      i32.load
0016      call_indirect (type 0)
0017    end
2 ------------------------------------------------------------
0018    local.get 0
0019    i32.load offset=12
0020    i32.eqz
0021    if  ;; label = @1
3 ------------------------------------------------------------
0022      local.get 0
0023      i32.load offset=24
0024      i32.const -1
0025      local.get 2
0026      i32.shl
0027      i32.const -1
0028      i32.xor
0029      local.get 1
0030      i32.and
0031      i32.const 24
0032      local.get 2
0033      local.get 3
0034      i32.add
0035      local.tee 1
0036      i32.sub
0037      i32.shl
0038      i32.or
0039      local.set 2
0040      local.get 1
0041      i32.const 8
0042      i32.ge_s
0043      if  ;; label = @2
4 ------------------------------------------------------------
0044        loop  ;; label = @3
5 ------------------------------------------------------------
0045          local.get 0
0046          local.get 0
0047          i32.load offset=16
0048          local.tee 3
0049          i32.const 1
0050          i32.add
0051          i32.store offset=16
0052          local.get 3
0053          local.get 2
0054          i32.const 16
0055          i32.shr_u
0056          i32.store8
0057          local.get 0
0058          local.get 0
0059          i32.load offset=20
0060          i32.const -1
0061          i32.add
0062          local.tee 3
0063          i32.store offset=20
0064          local.get 3
0065          i32.eqz
0066          if  ;; label = @4
6 ------------------------------------------------------------
0067            local.get 0
0068            i32.load offset=32
0069            local.tee 3
0070            local.get 3
0071            i32.load offset=24
0072            local.tee 3
0073            i32.load offset=12
0074            call_indirect (type 1)
0075            i32.eqz
0076            if  ;; label = @5
7 ------------------------------------------------------------
0077              local.get 0
0078              i32.load offset=32
0079              local.tee 4
0080              i32.load
0081              local.tee 5
0082              i32.const 24
0083              i32.store offset=20
0084              local.get 4
0085              local.get 5
0086              i32.load
0087              call_indirect (type 0)
0088            end
8 ------------------------------------------------------------
0089            local.get 0
0090            local.get 3
0091            i32.load
0092            i32.store offset=16
0093            local.get 0
0094            local.get 3
0095            i32.load offset=4
0096            i32.store offset=20
0097          end
9 ------------------------------------------------------------
0098          local.get 1
0099          local.set 3
0100          block  ;; label = @4
10 ------------------------------------------------------------
0101            local.get 2
0102            i32.const 16711680
0103            i32.and
0104            i32.const 16711680
0105            i32.ne
0106            br_if 0 (;@4;)
11 ------------------------------------------------------------
0107            local.get 0
0108            local.get 0
0109            i32.load offset=16
0110            local.tee 1
0111            i32.const 1
0112            i32.add
0113            i32.store offset=16
0114            local.get 1
0115            i32.const 0
0116            i32.store8
0117            local.get 0
0118            local.get 0
0119            i32.load offset=20
0120            i32.const -1
0121            i32.add
0122            local.tee 1
0123            i32.store offset=20
0124            local.get 1
0125            br_if 0 (;@4;)
12 ------------------------------------------------------------
0126            local.get 0
0127            i32.load offset=32
0128            local.tee 1
0129            local.get 1
0130            i32.load offset=24
0131            local.tee 1
0132            i32.load offset=12
0133            call_indirect (type 1)
0134            i32.eqz
0135            if  ;; label = @5
13 ------------------------------------------------------------
0136              local.get 0
0137              i32.load offset=32
0138              local.tee 4
0139              i32.load
0140              local.tee 5
0141              i32.const 24
0142              i32.store offset=20
0143              local.get 4
0144              local.get 5
0145              i32.load
0146              call_indirect (type 0)
0147            end
14 ------------------------------------------------------------
0148            local.get 0
0149            local.get 1
0150            i32.load
0151            i32.store offset=16
0152            local.get 0
0153            local.get 1
0154            i32.load offset=4
0155            i32.store offset=20
0156          end
15 ------------------------------------------------------------
0157          local.get 3
0158          i32.const -8
0159          i32.add
0160          local.set 1
0161          local.get 2
0162          i32.const 8
0163          i32.shl
0164          local.set 2
0165          local.get 3
0166          i32.const 15
0167          i32.gt_s
0168          br_if 0 (;@3;)
16 ------------------------------------------------------------
0169        end
17 ------------------------------------------------------------
0170      end
18 ------------------------------------------------------------
0171      local.get 0
0172      local.get 1
0173      i32.store offset=28
0174      local.get 0
0175      local.get 2
0176      i32.store offset=24
0177    end
19 ------------------------------------------------------------)
