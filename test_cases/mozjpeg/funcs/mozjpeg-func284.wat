  (func (;284;) (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    loop  ;; label = @1
1 ------------------------------------------------------------
0001      local.get 1
0002      local.get 4
0003      i32.const 2
0004      i32.shl
0005      local.tee 5
0006      i32.add
0007      local.tee 3
0008      i32.load
0009      local.set 6
0010      local.get 3
0011      i32.load offset=768
0012      local.set 7
0013      local.get 3
0014      i32.load offset=256
0015      local.set 3
0016      local.get 0
0017      local.get 4
0018      i32.const 1
0019      i32.shl
0020      i32.add
0021      block (result i32)  ;; label = @2
2 ------------------------------------------------------------
0022        local.get 2
0023        local.get 5
0024        i32.add
0025        i32.load
0026        local.tee 5
0027        i32.const -1
0028        i32.le_s
0029        if  ;; label = @3
3 ------------------------------------------------------------
0030          i32.const 0
0031          local.get 3
0032          local.get 5
0033          i32.sub
0034          i64.extend_i32_u
0035          local.get 6
0036          i64.extend_i32_u
0037          i64.mul
0038          local.get 7
0039          i32.const 32
0040          i32.add
0041          i64.extend_i32_u
0042          i64.shr_u
0043          i32.wrap_i64
0044          i32.sub
0045          br 1 (;@2;)
4 ------------------------------------------------------------
0046        end
5 ------------------------------------------------------------
0047        local.get 3
0048        local.get 5
0049        i32.add
0050        i64.extend_i32_u
0051        local.get 6
0052        i64.extend_i32_u
0053        i64.mul
0054        local.get 7
0055        i32.const 32
0056        i32.add
0057        i64.extend_i32_u
0058        i64.shr_u
0059        i32.wrap_i64
0060      end
6 ------------------------------------------------------------
0061      i32.store16
0062      local.get 4
0063      i32.const 1
0064      i32.add
0065      local.tee 4
0066      i32.const 64
0067      i32.ne
0068      br_if 0 (;@1;)
7 ------------------------------------------------------------
0069    end
8 ------------------------------------------------------------)
