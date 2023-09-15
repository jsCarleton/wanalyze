  (func (;271;) (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.const 3
0002    i32.add
0003    local.set 3
0004    local.get 0
0005    i32.load8_u offset=3
0006    local.tee 2
0007    i32.const 0
0008    i32.ne
0009    local.set 4
0010    block  ;; label = @1
1 ------------------------------------------------------------
0011      local.get 2
0012      i32.eqz
0013      local.get 0
0014      i32.load8_u offset=1
0015      i32.const 16
0016      i32.shl
0017      local.get 0
0018      i32.load8_u
0019      i32.const 24
0020      i32.shl
0021      i32.or
0022      local.get 0
0023      i32.load8_u offset=2
0024      i32.const 8
0025      i32.shl
0026      i32.or
0027      local.get 2
0028      i32.or
0029      local.tee 2
0030      local.get 1
0031      i32.load align=1
0032      local.tee 0
0033      i32.const 24
0034      i32.shl
0035      local.get 0
0036      i32.const 8
0037      i32.shl
0038      i32.const 16711680
0039      i32.and
0040      i32.or
0041      local.get 0
0042      i32.const 8
0043      i32.shr_u
0044      i32.const 65280
0045      i32.and
0046      local.get 0
0047      i32.const 24
0048      i32.shr_u
0049      i32.or
0050      i32.or
0051      local.tee 5
0052      i32.eq
0053      i32.or
0054      i32.eqz
0055      if  ;; label = @2
2 ------------------------------------------------------------
0056        loop  ;; label = @3
3 ------------------------------------------------------------
0057          local.get 3
0058          i32.const 1
0059          i32.add
0060          local.set 0
0061          local.get 3
0062          i32.load8_u offset=1
0063          local.tee 1
0064          i32.const 0
0065          i32.ne
0066          local.set 4
0067          local.get 2
0068          i32.const 8
0069          i32.shl
0070          local.get 1
0071          i32.or
0072          local.tee 2
0073          local.get 5
0074          i32.eq
0075          br_if 2 (;@1;)
4 ------------------------------------------------------------
0076          local.get 0
0077          local.set 3
0078          local.get 1
0079          br_if 0 (;@3;)
5 ------------------------------------------------------------
0080          br 2 (;@1;)
6 ------------------------------------------------------------
0081          unreachable
7 ------------------------------------------------------------
0082        end
8 ------------------------------------------------------------
0083        unreachable
9 ------------------------------------------------------------
0084      end
10 ------------------------------------------------------------
0085      local.get 3
0086      local.set 0
0087    end
11 ------------------------------------------------------------
0088    local.get 0
0089    i32.const -3
0090    i32.add
0091    i32.const 0
0092    local.get 4
0093    select)
