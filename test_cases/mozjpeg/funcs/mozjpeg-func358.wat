  (func (;358;) (type 0) (param i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    i32.load
0002    local.get 0
0003    i32.const 1
0004    i32.const 8192
0005    local.get 0
0006    i32.load
0007    i32.load
0008    call_indirect (type 3)
0009    local.tee 2
0010    i32.store
0011    i32.const 0
0012    local.set 0
0013    loop  ;; label = @1
1 ------------------------------------------------------------
0014      local.get 2
0015      local.get 0
0016      i32.const 2
0017      i32.shl
0018      i32.add
0019      local.tee 1
0020      local.get 0
0021      i32.const 19595
0022      i32.mul
0023      i32.store
0024      local.get 1
0025      i32.const 7168
0026      i32.add
0027      local.get 0
0028      i32.const -5329
0029      i32.mul
0030      i32.store
0031      local.get 1
0032      i32.const 6144
0033      i32.add
0034      local.get 0
0035      i32.const -27439
0036      i32.mul
0037      i32.store
0038      local.get 1
0039      i32.const 5120
0040      i32.add
0041      local.get 0
0042      i32.const 15
0043      i32.shl
0044      i32.const 8421375
0045      i32.add
0046      i32.store
0047      local.get 1
0048      i32.const 4096
0049      i32.add
0050      local.get 0
0051      i32.const -21709
0052      i32.mul
0053      i32.store
0054      local.get 1
0055      i32.const 3072
0056      i32.add
0057      local.get 0
0058      i32.const -11059
0059      i32.mul
0060      i32.store
0061      local.get 1
0062      i32.const 2048
0063      i32.add
0064      local.get 0
0065      i32.const 7471
0066      i32.mul
0067      i32.const 32768
0068      i32.add
0069      i32.store
0070      local.get 1
0071      i32.const 1024
0072      i32.add
0073      local.get 0
0074      i32.const 38470
0075      i32.mul
0076      i32.store
0077      local.get 0
0078      i32.const 1
0079      i32.add
0080      local.tee 0
0081      i32.const 256
0082      i32.ne
0083      br_if 0 (;@1;)
2 ------------------------------------------------------------
0084    end
3 ------------------------------------------------------------)
