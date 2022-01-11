  (func (;251;) (type 4) (param i32 i32) (result i32)
    (local i32 i32)
0 ------------------------------------------------------------
0000    local.get 0
0001    call 96
0002    local.set 3
0003    block  ;; label = @1
1 ------------------------------------------------------------
0004      local.get 0
0005      call 119
0006      local.tee 2
0007      local.get 3
0008      i32.sub
0009      local.get 1
0010      i32.ge_u
0011      if  ;; label = @2
2 ------------------------------------------------------------
0012        local.get 1
0013        i32.eqz
0014        br_if 1 (;@1;)
3 ------------------------------------------------------------
0015        local.get 0
0016        call 57
0017        local.tee 2
0018        local.get 3
0019        if (result i32)  ;; label = @3
4 ------------------------------------------------------------
0020          local.get 1
0021          local.get 2
0022          i32.add
0023          local.get 2
0024          local.get 3
0025          call 116
0026          drop
0027          local.get 1
0028          i32.const 148326
0029          i32.add
0030          i32.const 148326
0031          local.get 2
0032          local.get 3
0033          i32.add
0034          i32.const 148326
0035          i32.gt_u
0036          select
0037          i32.const 148326
0038          local.get 2
0039          i32.const 148326
0040          i32.le_u
0041          select
0042        else
5 ------------------------------------------------------------
0043          i32.const 148326
0044        end
6 ------------------------------------------------------------
0045        local.get 1
0046        call 116
0047        local.set 2
0048        local.get 0
0049        local.get 1
0050        local.get 3
0051        i32.add
0052        local.tee 1
0053        call 118
0054        local.get 1
0055        local.get 2
0056        i32.add
0057        i32.const 0
0058        call 59
0059        local.get 0
0060        return
7 ------------------------------------------------------------
0061      end
8 ------------------------------------------------------------
0062      local.get 0
0063      local.get 2
0064      local.get 1
0065      local.get 3
0066      i32.add
0067      local.get 2
0068      i32.sub
0069      local.get 3
0070      i32.const 0
0071      local.get 1
0072      i32.const 148326
0073      call 117
0074    end
9 ------------------------------------------------------------
0075    local.get 0)
