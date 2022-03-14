  (func (;204;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    local.get 0
0002    i32.const 1
0003    i32.const 144
0004    local.get 0
0005    i32.load offset=4
0006    i32.load
0007    call_indirect (type 3)
0008    local.tee 2
0009    i32.store offset=344
0010    local.get 2
0011    i32.const 35
0012    i32.store
0013    block  ;; label = @1
1 ------------------------------------------------------------
0014      local.get 1
0015      if  ;; label = @2
2 ------------------------------------------------------------
0016        local.get 0
0017        i32.load offset=60
0018        i32.const 1
0019        i32.lt_s
0020        br_if 1 (;@1;)
3 ------------------------------------------------------------
0021        local.get 2
0022        i32.const 104
0023        i32.add
0024        local.set 4
0025        local.get 2
0026        i32.const -64
0027        i32.sub
0028        local.set 5
0029        local.get 0
0030        i32.load offset=68
0031        local.set 2
0032        i32.const 0
0033        local.set 1
0034        loop  ;; label = @3
4 ------------------------------------------------------------
0035          local.get 0
0036          i32.load offset=4
0037          i32.load offset=20
0038          local.set 3
0039          local.get 5
0040          local.get 1
0041          i32.const 2
0042          i32.shl
0043          local.tee 6
0044          i32.add
0045          local.get 0
0046          i32.const 1
0047          i32.const 0
0048          local.get 2
0049          i32.load offset=28
0050          local.get 2
0051          i32.load offset=8
0052          call 81
0053          local.get 2
0054          i32.load offset=32
0055          local.get 2
0056          i32.load offset=12
0057          call 81
0058          local.get 2
0059          i32.load offset=12
0060          local.get 3
0061          call_indirect (type 13)
0062          i32.store
0063          local.get 0
0064          i32.load offset=4
0065          i32.load offset=20
0066          local.set 3
0067          local.get 4
0068          local.get 6
0069          i32.add
0070          local.get 0
0071          i32.const 1
0072          i32.const 0
0073          local.get 2
0074          i32.load offset=28
0075          local.get 2
0076          i32.load offset=8
0077          call 81
0078          local.get 2
0079          i32.load offset=32
0080          local.get 2
0081          i32.load offset=12
0082          call 81
0083          local.get 2
0084          i32.load offset=12
0085          local.get 3
0086          call_indirect (type 13)
0087          i32.store
0088          local.get 2
0089          i32.const 84
0090          i32.add
0091          local.set 2
0092          local.get 1
0093          i32.const 1
0094          i32.add
0095          local.tee 1
0096          local.get 0
0097          i32.load offset=60
0098          i32.lt_s
0099          br_if 0 (;@3;)
5 ------------------------------------------------------------
0100        end
6 ------------------------------------------------------------
0101        br 1 (;@1;)
7 ------------------------------------------------------------
0102      end
8 ------------------------------------------------------------
0103      local.get 0
0104      i32.const 1
0105      i32.const 1280
0106      local.get 0
0107      i32.load offset=4
0108      i32.load offset=4
0109      call_indirect (type 3)
0110      local.set 0
0111      local.get 2
0112      i32.const 0
0113      i32.store offset=64
0114      local.get 2
0115      local.get 0
0116      i32.store offset=24
0117      local.get 2
0118      local.get 0
0119      i32.const 1152
0120      i32.add
0121      i32.store offset=60
0122      local.get 2
0123      local.get 0
0124      i32.const 1024
0125      i32.add
0126      i32.store offset=56
0127      local.get 2
0128      local.get 0
0129      i32.const 896
0130      i32.add
0131      i32.store offset=52
0132      local.get 2
0133      local.get 0
0134      i32.const 768
0135      i32.add
0136      i32.store offset=48
0137      local.get 2
0138      local.get 0
0139      i32.const 640
0140      i32.add
0141      i32.store offset=44
0142      local.get 2
0143      local.get 0
0144      i32.const 512
0145      i32.add
0146      i32.store offset=40
0147      local.get 2
0148      local.get 0
0149      i32.const 384
0150      i32.add
0151      i32.store offset=36
0152      local.get 2
0153      local.get 0
0154      i32.const 256
0155      i32.add
0156      i32.store offset=32
0157      local.get 2
0158      local.get 0
0159      i32.const 128
0160      i32.add
0161      i32.store offset=28
0162    end
9 ------------------------------------------------------------)
