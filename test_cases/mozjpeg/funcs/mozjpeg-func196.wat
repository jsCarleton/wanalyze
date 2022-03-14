  (func (;196;) (type 7) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    block  ;; label = @1
1 ------------------------------------------------------------
0001      local.get 0
0002      i32.load offset=336
0003      local.tee 4
0004      i32.load offset=8
0005      local.get 0
0006      i32.load offset=240
0007      i32.ge_u
0008      br_if 0 (;@1;)
2 ------------------------------------------------------------
0009      local.get 4
0010      i32.const 24
0011      i32.add
0012      local.set 7
0013      local.get 4
0014      i32.const 12
0015      i32.add
0016      local.set 8
0017      local.get 4
0018      i32.load offset=12
0019      local.set 5
0020      loop  ;; label = @2
3 ------------------------------------------------------------
0021        local.get 5
0022        i32.const 7
0023        i32.le_u
0024        if (result i32)  ;; label = @3
4 ------------------------------------------------------------
0025          local.get 0
0026          local.get 1
0027          local.get 2
0028          local.get 3
0029          local.get 7
0030          local.get 8
0031          i32.const 8
0032          local.get 0
0033          i32.load offset=340
0034          i32.load offset=4
0035          call_indirect (type 14)
0036          local.get 8
0037          i32.load
0038        else
5 ------------------------------------------------------------
0039          local.get 5
0040        end
6 ------------------------------------------------------------
0041        i32.const 8
0042        i32.ne
0043        br_if 1 (;@1;)
7 ------------------------------------------------------------
0044        local.get 0
0045        local.get 7
0046        local.get 0
0047        i32.load offset=344
0048        i32.load offset=4
0049        call_indirect (type 4)
0050        local.set 6
0051        local.get 4
0052        i32.load offset=16
0053        local.set 5
0054        local.get 6
0055        i32.eqz
0056        if  ;; label = @3
8 ------------------------------------------------------------
0057          local.get 5
0058          br_if 2 (;@1;)
9 ------------------------------------------------------------
0059          local.get 2
0060          local.get 2
0061          i32.load
0062          i32.const -1
0063          i32.add
0064          i32.store
0065          local.get 4
0066          i32.const 1
0067          i32.store offset=16
0068          return
10 ------------------------------------------------------------
0069        end
11 ------------------------------------------------------------
0070        local.get 5
0071        if  ;; label = @3
12 ------------------------------------------------------------
0072          local.get 2
0073          local.get 2
0074          i32.load
0075          i32.const 1
0076          i32.add
0077          i32.store
0078          local.get 4
0079          i32.const 0
0080          i32.store offset=16
0081        end
13 ------------------------------------------------------------
0082        i32.const 0
0083        local.set 5
0084        local.get 4
0085        i32.const 0
0086        i32.store offset=12
0087        local.get 4
0088        local.get 4
0089        i32.load offset=8
0090        i32.const 1
0091        i32.add
0092        local.tee 6
0093        i32.store offset=8
0094        local.get 6
0095        local.get 0
0096        i32.load offset=240
0097        i32.lt_u
0098        br_if 0 (;@2;)
14 ------------------------------------------------------------
0099      end
15 ------------------------------------------------------------
0100    end
16 ------------------------------------------------------------)
