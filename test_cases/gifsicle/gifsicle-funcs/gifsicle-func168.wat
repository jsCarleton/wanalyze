  (func (;168;) (type 16) (param f64 f64) (result f64)
    (local f64 f64 f64)
0 ------------------------------------------------------------
0000    f64.const 1.
0001    local.get 0
0002    local.get 0
0003    f64.mul
0004    local.tee 2
0005    f64.const 0.5
0006    f64.mul
0007    local.tee 3
0008    f64.sub
0009    local.tee 4
0010    f64.const 1.
0011    local.get 4
0012    f64.sub
0013    local.get 3
0014    f64.sub
0015    local.get 2
0016    local.get 2
0017    local.get 2
0018    local.get 2
0019    f64.const 2.48015872895e-05
0020    f64.mul
0021    f64.const -0.00138888888889
0022    f64.add
0023    f64.mul
0024    f64.const 0.0416666666667
0025    f64.add
0026    f64.mul
0027    local.get 2
0028    local.get 2
0029    f64.mul
0030    local.tee 3
0031    local.get 3
0032    f64.mul
0033    local.get 2
0034    local.get 2
0035    f64.const -1.13596475578e-11
0036    f64.mul
0037    f64.const 2.0875723213e-09
0038    f64.add
0039    f64.mul
0040    f64.const -2.75573143514e-07
0041    f64.add
0042    f64.mul
0043    f64.add
0044    f64.mul
0045    local.get 0
0046    local.get 1
0047    f64.mul
0048    f64.sub
0049    f64.add
0050    f64.add)
