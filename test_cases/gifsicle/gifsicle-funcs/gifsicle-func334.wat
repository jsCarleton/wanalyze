  (func (;334;) (type 9) (param f64) (result f64)
    (local f64)
0 ------------------------------------------------------------
0000    local.get 0
0001    f64.abs
0002    local.tee 0
0003    f64.const 1.
0004    f64.lt
0005    i32.const 1
0006    i32.xor
0007    i32.eqz
0008    if  ;; label = @1
1 ------------------------------------------------------------
0009      local.get 0
0010      local.get 0
0011      local.get 0
0012      f64.const 7.
0013      f64.mul
0014      f64.mul
0015      f64.mul
0016      local.get 0
0017      local.get 0
0018      f64.const -12.
0019      f64.mul
0020      f64.mul
0021      f64.add
0022      f64.const 5.33333333333
0023      f64.add
0024      f64.const 6.
0025      f64.div
0026      return
2 ------------------------------------------------------------
0027    end
3 ------------------------------------------------------------
0028    f64.const 0.
0029    local.get 0
0030    local.get 0
0031    f64.const 12.
0032    f64.mul
0033    f64.mul
0034    local.get 0
0035    local.get 0
0036    local.get 0
0037    f64.const -2.33333333333
0038    f64.mul
0039    f64.mul
0040    f64.mul
0041    f64.add
0042    local.get 0
0043    f64.const -20.
0044    f64.mul
0045    f64.add
0046    f64.const 10.6666666667
0047    f64.add
0048    f64.const 6.
0049    f64.div
0050    local.get 0
0051    f64.const 2.
0052    f64.lt
0053    i32.const 1
0054    i32.xor
0055    select)
