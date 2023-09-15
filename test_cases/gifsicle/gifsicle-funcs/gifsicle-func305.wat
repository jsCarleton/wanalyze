  (func (;305;) (type 0) (param i32) (result i32)
    (local i32)
0 ------------------------------------------------------------
0000    i32.const 2
0001    local.set 1
0002    block (result i32)  ;; label = @1
1 ------------------------------------------------------------
0003      local.get 0
0004      i32.const 43
0005      call 50
0006      i32.eqz
0007      if  ;; label = @2
2 ------------------------------------------------------------
0008        local.get 0
0009        i32.load8_u
0010        i32.const 114
0011        i32.ne
0012        local.set 1
0013      end
3 ------------------------------------------------------------
0014      local.get 1
0015      i32.const 128
0016      i32.or
0017    end
4 ------------------------------------------------------------
0018    local.get 1
0019    local.get 0
0020    i32.const 120
0021    call 50
0022    select
0023    local.tee 1
0024    i32.const 524288
0025    i32.or
0026    local.get 1
0027    local.get 0
0028    i32.const 101
0029    call 50
0030    select
0031    local.tee 1
0032    local.get 1
0033    i32.const 64
0034    i32.or
0035    local.get 0
0036    i32.load8_u
0037    local.tee 0
0038    i32.const 114
0039    i32.eq
0040    select
0041    local.tee 1
0042    i32.const 512
0043    i32.or
0044    local.get 1
0045    local.get 0
0046    i32.const 119
0047    i32.eq
0048    select
0049    local.tee 1
0050    i32.const 1024
0051    i32.or
0052    local.get 1
0053    local.get 0
0054    i32.const 97
0055    i32.eq
0056    select)
