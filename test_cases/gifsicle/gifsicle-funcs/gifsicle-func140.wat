  (func (;140;) (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
0 ------------------------------------------------------------
0000    global.get 0
0001    i32.const 16
0002    i32.sub
0003    local.tee 3
0004    global.set 0
0005    local.get 0
0006    i32.load offset=60
0007    local.tee 2
0008    i32.load offset=28
0009    local.set 4
0010    local.get 2
0011    i32.load offset=24
0012    local.set 5
0013    local.get 3
0014    local.get 2
0015    i32.load8_u offset=132
0016    i32.store8 offset=12
0017    local.get 3
0018    local.get 2
0019    i32.load offset=128
0020    i32.store offset=8
0021    local.get 2
0022    i32.load offset=136
0023    local.set 6
0024    local.get 2
0025    i32.load offset=148
0026    local.set 7
0027    local.get 2
0028    i32.load offset=12
0029    local.set 8
0030    local.get 2
0031    i32.load offset=152
0032    local.set 9
0033    local.get 2
0034    i32.load8_u offset=156
0035    local.set 10
0036    local.get 2
0037    i32.load8_u offset=157
0038    local.set 11
0039    local.get 2
0040    i32.load8_u offset=159
0041    local.set 12
0042    local.get 2
0043    i32.load8_u offset=160
0044    local.set 2
0045    local.get 0
0046    i32.const 2
0047    i32.const 1
0048    local.get 1
0049    select
0050    call 110
0051    drop
0052    local.get 0
0053    i32.load offset=8
0054    i32.eqz
0055    if  ;; label = @1
1 ------------------------------------------------------------
0056      local.get 0
0057      i32.load offset=60
0058      local.tee 1
0059      local.get 4
0060      i32.store offset=28
0061      local.get 1
0062      local.get 5
0063      i32.store offset=24
0064      local.get 1
0065      local.get 3
0066      i32.load offset=8
0067      i32.store offset=128
0068      local.get 1
0069      local.get 3
0070      i32.load8_u offset=12
0071      i32.store8 offset=132
0072      local.get 1
0073      local.get 2
0074      i32.store8 offset=160
0075      local.get 1
0076      local.get 12
0077      i32.store8 offset=159
0078      local.get 1
0079      local.get 11
0080      i32.store8 offset=157
0081      local.get 1
0082      local.get 10
0083      i32.store8 offset=156
0084      local.get 1
0085      local.get 7
0086      i32.store offset=148
0087      local.get 1
0088      local.get 6
0089      i32.store offset=136
0090      local.get 1
0091      local.get 9
0092      i32.const -1
0093      local.get 1
0094      i32.load offset=12
0095      local.get 8
0096      i32.eq
0097      select
0098      i32.store offset=152
0099    end
2 ------------------------------------------------------------
0100    local.get 0
0101    i32.load offset=12
0102    local.set 0
0103    local.get 3
0104    i32.const 16
0105    i32.add
0106    global.set 0
0107    local.get 0)
