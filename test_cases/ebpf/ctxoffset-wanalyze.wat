(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i64 i32) (result i64)))
  (func (;0;) (type 1)
    call 5)
  (func (;1;) (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=12
    i32.const 1
    local.set 4
    local.get 3
    local.get 4
    i32.store offset=8
    local.get 3
    i32.load offset=12
    local.set 5
    i32.const 8
    local.set 6
    local.get 5
    local.get 6
    i32.add
    local.set 7
    local.get 3
    local.get 7
    i32.store offset=12
    i32.const 0
    local.set 8
    local.get 8
    i32.load offset=1024
    local.set 9
    local.get 3
    i32.load offset=12
    local.set 10
    i32.const 8
    local.set 11
    local.get 3
    local.get 11
    i32.add
    local.set 12
    local.get 12
    local.set 13
    i32.const 1028
    local.set 14
    i32.const 0
    local.set 15
    local.get 10
    local.get 14
    local.get 13
    local.get 15
    local.get 9
    call_indirect (type 4)
    local.set 16
    local.get 3
    local.get 16
    i32.store offset=4
    local.get 3
    i32.load offset=4
    local.set 17
    i32.const 16
    local.set 18
    local.get 3
    local.get 18
    i32.add
    local.set 19
    local.get 19
    global.set 0
    local.get 17
    return)
  (func (;2;) (type 0) (result i32)
    global.get 0)
  (func (;3;) (type 3) (param i32)
    local.get 0
    global.set 0)
  (func (;4;) (type 2) (param i32) (result i32)
    (local i32 i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 1
    global.set 0
    local.get 1)
  (func (;5;) (type 1)
    i32.const 5243952
    global.set 2
    i32.const 1072
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    global.set 1)
  (func (;6;) (type 0) (result i32)
    global.get 0
    global.get 1
    i32.sub)
  (func (;7;) (type 0) (result i32)
    global.get 2)
  (func (;8;) (type 0) (result i32)
    global.get 1)
  (func (;9;) (type 3) (param i32))
  (func (;10;) (type 0) (result i32)
    i32.const 1056
    call 9
    i32.const 1060)
  (func (;11;) (type 2) (param i32) (result i32)
    i32.const 1)
  (func (;12;) (type 1)
    (local i32)
    block  ;; label = @1
      call 10
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 0
        call 13
        local.get 0
        i32.load offset=56
        local.tee 0
        br_if 0 (;@2;)
      end
    end
    i32.const 0
    i32.load offset=1064
    call 13
    i32.const 0
    i32.load offset=1064
    call 13
    i32.const 0
    i32.load offset=1064
    call 13)
  (func (;13;) (type 3) (param i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load offset=76
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 0
        call 11
        drop
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=20
        local.get 0
        i32.load offset=28
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=36
        call_indirect (type 5)
        drop
      end
      local.get 0
      i32.load offset=4
      local.tee 1
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get 0
      i32.load offset=40
      call_indirect (type 6)
      drop
    end)
  (func (;14;) (type 0) (result i32)
    i32.const 1068)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 5243952))
  (global (;1;) (mut i32) (i32.const 0))
  (global (;2;) (mut i32) (i32.const 0))
  (global (;3;) i32 (i32.const 1028))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 0))
  (export "func" (func 1))
  (export "map" (global 3))
  (export "__indirect_function_table" (table 0))
  (export "__errno_location" (func 14))
  (export "__stdio_exit" (func 12))
  (export "emscripten_stack_init" (func 5))
  (export "emscripten_stack_get_free" (func 6))
  (export "emscripten_stack_get_base" (func 7))
  (export "emscripten_stack_get_end" (func 8))
  (export "stackSave" (func 2))
  (export "stackRestore" (func 3))
  (export "stackAlloc" (func 4))
  (data (;0;) (i32.const 1024) "5\00\00\00")
  (data (;1;) (i32.const 1028) "\02\00\00\00\04\00\00\00\04\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
