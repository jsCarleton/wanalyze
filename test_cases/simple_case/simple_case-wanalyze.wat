(module
  (type (;0;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (func (;0;) (type 0) (param i32 i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            br_table 3 (;@1;) 0 (;@4;) 1 (;@3;) 2 (;@2;)
          end
          local.get 2
          local.get 1
          i32.mul
          local.get 3
          i32.add
          return
        end
        local.get 2
        local.get 1
        i32.mul
        local.get 3
        i32.add
        local.get 1
        i32.mul
        local.get 4
        i32.add
        return
      end
      local.get 1
      local.set 2
    end
    local.get 2)
  (memory (;0;) 256 256)
  (export "compute" (func 0))
  (export "memory" (memory 0)))
