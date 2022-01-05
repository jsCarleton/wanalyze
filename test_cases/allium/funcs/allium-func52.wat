  (func (;52;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    global.get 5
0001    local.set 3
0002    global.get 5
0003    i32.const 32
0004    i32.add
0005    global.set 5
0006    global.get 5
0007    global.get 6
0008    i32.ge_s
0009    if  ;; label = @1
1 ------------------------------------------------------------
0010      i32.const 32
0011      call 2
0012    end
2 ------------------------------------------------------------
0013    local.get 3
0014    i32.const 0
0015    local.get 0
0016    i32.const 60
0017    call 20
0018    call 17
0019    local.get 3
0020    i32.const 4
0021    i32.const 0
0022    call 17
0023    local.get 3
0024    i32.const 8
0025    local.get 1
0026    call 17
0027    local.get 3
0028    i32.const 12
0029    local.get 3
0030    i32.const 20
0031    i32.add
0032    local.tee 0
0033    call 17
0034    local.get 3
0035    i32.const 16
0036    local.get 2
0037    call 17
0038    i32.const 140
0039    local.get 3
0040    call 13
0041    local.tee 1
0042    i32.const -4096
0043    i32.gt_u
0044    if (result i32)  ;; label = @1
3 ------------------------------------------------------------
0045      i32.const 19424
0046      i32.const 0
0047      i32.const 0
0048      local.get 1
0049      i32.sub
0050      call 17
0051      i32.const -1
0052    else
4 ------------------------------------------------------------
0053      local.get 1
0054    end
5 ------------------------------------------------------------
0055    i32.const 0
0056    i32.lt_s
0057    if (result i32)  ;; label = @1
6 ------------------------------------------------------------
0058      local.get 0
0059      i32.const 0
0060      i32.const -1
0061      call 17
0062      i32.const -1
0063    else
7 ------------------------------------------------------------
0064      local.get 0
0065      i32.const 0
0066      call 20
0067    end
8 ------------------------------------------------------------
0068    local.set 4
0069    local.get 3
0070    global.set 5
0071    local.get 4)
