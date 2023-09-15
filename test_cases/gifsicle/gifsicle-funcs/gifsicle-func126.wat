  (func (;126;) (type 46) (param f64 f64 i32) (result f64)
    (local f64 f64 f64)
0 ------------------------------------------------------------
0000    local.get 0
0001    local.get 0
0002    f64.mul
0003    local.tee 3
0004    local.get 3
0005    local.get 3
0006    f64.mul
0007    f64.mul
0008    local.get 3
0009    f64.const 1.58969099521e-10
0010    f64.mul
0011    f64.const -2.50507602534e-08
0012    f64.add
0013    f64.mul
0014    local.get 3
0015    local.get 3
0016    f64.const 2.75573137071e-06
0017    f64.mul
0018    f64.const -0.000198412698299
0019    f64.add
0020    f64.mul
0021    f64.const 0.00833333333332
0022    f64.add
0023    f64.add
0024    local.set 5
0025    local.get 3
0026    local.get 0
0027    f64.mul
0028    local.set 4
0029    local.get 2
0030    i32.eqz
0031    if  ;; label = @1
1 ------------------------------------------------------------
0032      local.get 4
0033      local.get 3
0034      local.get 5
0035      f64.mul
0036      f64.const -0.166666666667
0037      f64.add
0038      f64.mul
0039      local.get 0
0040      f64.add
0041      return
2 ------------------------------------------------------------
0042    end
3 ------------------------------------------------------------
0043    local.get 0
0044    local.get 3
0045    local.get 1
0046    f64.const 0.5
0047    f64.mul
0048    local.get 4
0049    local.get 5
0050    f64.mul
0051    f64.sub
0052    f64.mul
0053    local.get 1
0054    f64.sub
0055    local.get 4
0056    f64.const 0.166666666667
0057    f64.mul
0058    f64.add
0059    f64.sub)
