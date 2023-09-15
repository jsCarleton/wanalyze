  (func (;115;) (type 7) (param i32 i32 i32 i32)
    (local i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load offset=4
0002    local.set 4
0003    local.get 0
0004    i32.load
0005    local.tee 0
0006    local.get 1
0007    block (result i32)  ;; label = @1
1 ------------------------------------------------------------
0008      i32.const 0
0009      local.get 2
0010      i32.eqz
0011      br_if 0 (;@1;)
2 ------------------------------------------------------------
0012      drop
0013      local.get 4
0014      i32.const 8
0015      i32.shr_s
0016      local.tee 1
0017      local.get 4
0018      i32.const 1
0019      i32.and
0020      i32.eqz
0021      br_if 0 (;@1;)
3 ------------------------------------------------------------
0022      drop
0023      local.get 2
0024      i32.load
0025      local.get 1
0026      i32.add
0027      i32.load
0028    end
4 ------------------------------------------------------------
0029    local.get 2
0030    i32.add
0031    local.get 3
0032    i32.const 2
0033    local.get 4
0034    i32.const 2
0035    i32.and
0036    select
0037    local.get 0
0038    i32.load
0039    i32.load offset=28
0040    call_indirect (type 7))
