(module
  (type (;0;) (func (param i32) (result i32)))
  (func (;0;) (type 0) (param i32) (result i32)
    local.get 0
    i32.const 2
    i32.lt_s
    if  ;; label = @1
      local.get 0
      return
    end
    local.get 0
    i32.const 1
    i32.sub
    call 0
    local.get 0
    i32.const 2
    i32.sub
    call 0
    i32.add)
  (export "fibonacci" (func 0)))
