  (func (;161;) (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 256
0002    i32.sub
0003    local.tee 8
0004    global.set 0
0005    block  ;; label = @1
1 ------------------------------------------------------------
0006      block  ;; label = @2
2 ------------------------------------------------------------
0007        block  ;; label = @3
3 ------------------------------------------------------------
0008          local.get 1
0009          local.get 1
0010          i32.load offset=24
0011          call_indirect (type 0)
0012          local.tee 6
0013          i32.eqz
0014          br_if 0 (;@3;)
4 ------------------------------------------------------------
0015          loop  ;; label = @4
5 ------------------------------------------------------------
0016            local.get 7
0017            i32.const 1
0018            local.get 5
0019            local.get 6
0020            i32.const 255
0021            i32.and
0022            local.tee 9
0023            i32.add
0024            local.tee 10
0025            i32.const 2
0026            i32.add
0027            call 23
0028            local.tee 7
0029            i32.eqz
0030            br_if 2 (;@2;)
6 ------------------------------------------------------------
0031            local.get 5
0032            local.get 7
0033            i32.add
0034            local.tee 5
0035            local.get 6
0036            i32.store8
0037            local.get 5
0038            i32.const 1
0039            i32.add
0040            local.get 9
0041            local.get 1
0042            local.get 1
0043            i32.load offset=28
0044            call_indirect (type 3)
0045            drop
0046            local.get 10
0047            i32.const 1
0048            i32.add
0049            local.set 5
0050            local.get 1
0051            local.get 1
0052            i32.load offset=24
0053            call_indirect (type 0)
0054            local.tee 6
0055            br_if 0 (;@4;)
7 ------------------------------------------------------------
0056          end
8 ------------------------------------------------------------
0057          local.get 2
0058          local.get 3
0059          local.get 4
0060          call 130
0061          local.tee 1
0062          i32.eqz
0063          br_if 0 (;@3;)
9 ------------------------------------------------------------
0064          local.get 1
0065          i32.const 6
0066          i32.store offset=36
0067          local.get 1
0068          local.get 7
0069          i32.store offset=12
0070          local.get 1
0071          i32.const 1
0072          i32.store offset=20
0073          local.get 1
0074          local.get 5
0075          i32.store offset=16
0076          local.get 5
0077          local.get 7
0078          i32.add
0079          i32.const 0
0080          i32.store8
0081          local.get 0
0082          i32.load
0083          local.get 0
0084          i32.load offset=32
0085          local.get 1
0086          call 124
0087          br 2 (;@1;)
10 ------------------------------------------------------------
0088        end
11 ------------------------------------------------------------
0089        local.get 7
0090        call 22
0091        br 1 (;@1;)
12 ------------------------------------------------------------
0092      end
13 ------------------------------------------------------------
0093      loop  ;; label = @2
14 ------------------------------------------------------------
0094        local.get 8
0095        local.get 6
0096        i32.const 255
0097        i32.and
0098        local.get 1
0099        local.get 1
0100        i32.load offset=28
0101        call_indirect (type 3)
0102        drop
0103        local.get 1
0104        local.get 1
0105        i32.load offset=24
0106        call_indirect (type 0)
0107        local.tee 6
0108        br_if 0 (;@2;)
15 ------------------------------------------------------------
0109      end
16 ------------------------------------------------------------
0110    end
17 ------------------------------------------------------------
0111    local.get 8
0112    i32.const 256
0113    i32.add
0114    global.set 0)
