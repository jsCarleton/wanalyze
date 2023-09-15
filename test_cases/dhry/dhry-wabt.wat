(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param i32 i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func))
  (type (;6;) (func (param i32 i32 i32)))
  (type (;7;) (func (param i32 i64 i32) (result i64)))
  (type (;8;) (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32 i32 i32)))
  (type (;10;) (func (param i64 i32) (result i32)))
  (type (;11;) (func (param i64 i32) (result i64)))
  (type (;12;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i32 i32 i32 i32)))
  (type (;15;) (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;16;) (func (param f64 i32) (result f64)))
  (type (;17;) (func (param i32 i32) (result i64)))
  (type (;18;) (func (param i32 i64 i32) (result i32)))
  (import "wasi_snapshot_preview1" "proc_exit" (func (;0;) (type 4)))
  (import "wasi_snapshot_preview1" "fd_write" (func (;1;) (type 13)))
  (import "wasi_snapshot_preview1" "environ_get" (func (;2;) (type 2)))
  (import "wasi_snapshot_preview1" "environ_sizes_get" (func (;3;) (type 2)))
  (import "wasi_snapshot_preview1" "clock_time_get" (func (;4;) (type 18)))
  (import "wasi_snapshot_preview1" "args_get" (func (;5;) (type 2)))
  (import "wasi_snapshot_preview1" "args_sizes_get" (func (;6;) (type 2)))
  (func (;7;) (type 3) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    i32.const 3216
    local.get 0
    local.get 1
    i32.const 0
    i32.const 0
    call 25
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;8;) (type 6) (param i32 i32 i32)
    local.get 0
    i32.load8_u
    i32.const 32
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 1
      local.get 2
      local.get 0
      call 26
      drop
    end)
  (func (;9;) (type 9) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 256
    i32.sub
    local.tee 5
    global.set 0
    block  ;; label = @1
      local.get 2
      local.get 3
      i32.le_s
      br_if 0 (;@1;)
      local.get 4
      i32.const 73728
      i32.and
      br_if 0 (;@1;)
      local.get 5
      local.get 1
      i32.const 255
      i32.and
      local.get 2
      local.get 3
      i32.sub
      local.tee 2
      i32.const 256
      local.get 2
      i32.const 256
      i32.lt_u
      local.tee 1
      select
      call 29
      drop
      local.get 1
      i32.eqz
      if  ;; label = @2
        loop  ;; label = @3
          local.get 0
          local.get 5
          i32.const 256
          call 8
          local.get 2
          i32.const 256
          i32.sub
          local.tee 2
          i32.const 255
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 5
      local.get 2
      call 8
    end
    local.get 5
    i32.const 256
    i32.add
    global.set 0)
  (func (;10;) (type 4) (param i32)
    (local i32)
    i32.const 3292
    i32.load
    drop
    block  ;; label = @1
      i32.const -1
      i32.const 0
      block (result i32)  ;; label = @2
        local.get 0
        call 17
        local.tee 1
        local.get 1
        block (result i32)  ;; label = @3
          i32.const 3292
          i32.load
          i32.const 0
          i32.lt_s
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.const 3216
            call 26
            br 1 (;@3;)
          end
          local.get 0
          local.get 1
          i32.const 3216
          call 26
        end
        local.tee 0
        i32.eq
        br_if 0 (;@2;)
        drop
        local.get 0
      end
      local.get 1
      i32.ne
      select
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      block  ;; label = @2
        i32.const 3296
        i32.load
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        i32.const 3236
        i32.load
        local.tee 0
        i32.const 3232
        i32.load
        i32.eq
        br_if 0 (;@2;)
        i32.const 3236
        local.get 0
        i32.const 1
        i32.add
        i32.store
        local.get 0
        i32.const 10
        i32.store8
        br 1 (;@1;)
      end
      call 27
    end)
  (func (;11;) (type 1) (param i32) (result i32)
    (local i32 i32)
    i32.const 3364
    i32.load
    local.tee 1
    local.get 0
    i32.const 3
    i32.add
    i32.const -4
    i32.and
    local.tee 2
    i32.add
    local.set 0
    block  ;; label = @1
      local.get 2
      i32.const 0
      local.get 0
      local.get 1
      i32.le_u
      select
      br_if 0 (;@1;)
      memory.size
      i32.const 16
      i32.shl
      local.get 0
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 3364
      local.get 0
      i32.store
      local.get 1
      return
    end
    i32.const 13720
    i32.const 48
    i32.store
    i32.const -1)
  (func (;12;) (type 6) (param i32 i32 i32)
    (local i32 i32)
    local.get 0
    local.get 2
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          local.get 1
          i32.xor
          i32.const 3
          i32.and
          i32.eqz
          if  ;; label = @4
            local.get 0
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 2
            i32.const 0
            i32.le_s
            br_if 1 (;@3;)
            local.get 0
            local.set 2
            loop  ;; label = @5
              local.get 2
              local.get 1
              i32.load8_u
              i32.store8
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              local.get 2
              i32.const 1
              i32.add
              local.tee 2
              i32.const 3
              i32.and
              i32.eqz
              br_if 3 (;@2;)
              local.get 2
              local.get 3
              i32.lt_u
              br_if 0 (;@5;)
            end
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 3
            i32.const 4
            i32.lt_u
            br_if 0 (;@4;)
            local.get 3
            i32.const 4
            i32.sub
            local.tee 4
            local.get 0
            i32.lt_u
            br_if 0 (;@4;)
            local.get 0
            local.set 2
            loop  ;; label = @5
              local.get 2
              local.get 1
              i32.load8_u
              i32.store8
              local.get 2
              local.get 1
              i32.load8_u offset=1
              i32.store8 offset=1
              local.get 2
              local.get 1
              i32.load8_u offset=2
              i32.store8 offset=2
              local.get 2
              local.get 1
              i32.load8_u offset=3
              i32.store8 offset=3
              local.get 1
              i32.const 4
              i32.add
              local.set 1
              local.get 2
              i32.const 4
              i32.add
              local.tee 2
              local.get 4
              i32.le_u
              br_if 0 (;@5;)
            end
            br 3 (;@1;)
          end
          local.get 0
          local.set 2
          br 2 (;@1;)
        end
        local.get 0
        local.set 2
      end
      block  ;; label = @2
        local.get 3
        i32.const -4
        i32.and
        local.tee 0
        i32.const 64
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        local.get 0
        i32.const -64
        i32.add
        local.tee 4
        i32.gt_u
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 2
          local.get 1
          i32.load
          i32.store
          local.get 2
          local.get 1
          i32.load offset=4
          i32.store offset=4
          local.get 2
          local.get 1
          i32.load offset=8
          i32.store offset=8
          local.get 2
          local.get 1
          i32.load offset=12
          i32.store offset=12
          local.get 2
          local.get 1
          i32.load offset=16
          i32.store offset=16
          local.get 2
          local.get 1
          i32.load offset=20
          i32.store offset=20
          local.get 2
          local.get 1
          i32.load offset=24
          i32.store offset=24
          local.get 2
          local.get 1
          i32.load offset=28
          i32.store offset=28
          local.get 2
          local.get 1
          i32.load offset=32
          i32.store offset=32
          local.get 2
          local.get 1
          i32.load offset=36
          i32.store offset=36
          local.get 2
          local.get 1
          i32.load offset=40
          i32.store offset=40
          local.get 2
          local.get 1
          i32.load offset=44
          i32.store offset=44
          local.get 2
          local.get 1
          i32.load offset=48
          i32.store offset=48
          local.get 2
          local.get 1
          i32.load offset=52
          i32.store offset=52
          local.get 2
          local.get 1
          i32.load offset=56
          i32.store offset=56
          local.get 2
          local.get 1
          i32.load offset=60
          i32.store offset=60
          local.get 1
          i32.const -64
          i32.sub
          local.set 1
          local.get 2
          i32.const -64
          i32.sub
          local.tee 2
          local.get 4
          i32.le_u
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 2
      i32.le_u
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 2
        local.get 1
        i32.load
        i32.store
        local.get 1
        i32.const 4
        i32.add
        local.set 1
        local.get 2
        i32.const 4
        i32.add
        local.tee 2
        local.get 0
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 2
    local.get 3
    i32.lt_u
    if  ;; label = @1
      loop  ;; label = @2
        local.get 2
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        local.get 3
        i32.ne
        br_if 0 (;@2;)
      end
    end)
  (func (;13;) (type 10) (param i64 i32) (result i32)
    (local i32 i32 i32 i64)
    block  ;; label = @1
      local.get 0
      i64.const 4294967296
      i64.lt_u
      if  ;; label = @2
        local.get 0
        local.set 5
        br 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 1
        i32.const 1
        i32.sub
        local.tee 1
        local.get 0
        local.get 0
        i64.const 10
        i64.div_u
        local.tee 5
        i64.const 10
        i64.mul
        i64.sub
        i32.wrap_i64
        i32.const 48
        i32.or
        i32.store8
        local.get 0
        i64.const 42949672959
        i64.gt_u
        local.set 2
        local.get 5
        local.set 0
        local.get 2
        br_if 0 (;@2;)
      end
    end
    local.get 5
    i32.wrap_i64
    local.tee 2
    if  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.const 1
        i32.sub
        local.tee 1
        local.get 2
        local.get 2
        i32.const 10
        i32.div_u
        local.tee 3
        i32.const 10
        i32.mul
        i32.sub
        i32.const 48
        i32.or
        i32.store8
        local.get 2
        i32.const 9
        i32.gt_u
        local.set 4
        local.get 3
        local.set 2
        local.get 4
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func (;14;) (type 5)
    (local i32)
    block  ;; label = @1
      i32.const 3292
      i32.load
      local.tee 0
      i32.const 0
      i32.ge_s
      if  ;; label = @2
        local.get 0
        i32.eqz
        br_if 1 (;@1;)
        i32.const 14052
        i32.load
        local.get 0
        i32.const -1073741825
        i32.and
        i32.ne
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        i32.const 3296
        i32.load
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        i32.const 3236
        i32.load
        local.tee 0
        i32.const 3232
        i32.load
        i32.eq
        br_if 0 (;@2;)
        i32.const 3236
        local.get 0
        i32.const 1
        i32.add
        i32.store
        local.get 0
        i32.const 10
        i32.store8
        return
      end
      call 27
      return
    end
    i32.const 3292
    i32.const 3292
    i32.load
    local.tee 0
    i32.const 1073741823
    local.get 0
    select
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        i32.const 3296
        i32.load
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        i32.const 3236
        i32.load
        local.tee 0
        i32.const 3232
        i32.load
        i32.eq
        br_if 0 (;@2;)
        i32.const 3236
        local.get 0
        i32.const 1
        i32.add
        i32.store
        local.get 0
        i32.const 10
        i32.store8
        br 1 (;@1;)
      end
      call 27
    end
    i32.const 3292
    i32.load
    drop
    i32.const 3292
    i32.const 0
    i32.store)
  (func (;15;) (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.load
    local.tee 3
    i32.load8_s
    i32.const 48
    i32.sub
    local.tee 1
    i32.const 9
    i32.le_u
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        local.get 3
        i32.const 1
        i32.add
        local.tee 4
        i32.store
        local.get 1
        local.get 2
        i32.const 10
        i32.mul
        i32.add
        local.set 2
        local.get 3
        i32.load8_s offset=1
        local.set 1
        local.get 4
        local.set 3
        local.get 1
        i32.const 48
        i32.sub
        local.tee 1
        i32.const 10
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 2)
  (func (;16;) (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 11
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          i32.const 244
                          i32.le_u
                          if  ;; label = @12
                            i32.const 15192
                            i32.load
                            local.tee 6
                            i32.const 16
                            local.get 0
                            i32.const 11
                            i32.add
                            i32.const -8
                            i32.and
                            local.get 0
                            i32.const 11
                            i32.lt_u
                            select
                            local.tee 7
                            i32.const 3
                            i32.shr_u
                            local.tee 2
                            i32.shr_u
                            local.tee 1
                            i32.const 3
                            i32.and
                            if  ;; label = @13
                              block  ;; label = @14
                                local.get 1
                                i32.const -1
                                i32.xor
                                i32.const 1
                                i32.and
                                local.get 2
                                i32.add
                                local.tee 2
                                i32.const 3
                                i32.shl
                                local.tee 0
                                i32.const 15232
                                i32.add
                                local.tee 1
                                local.get 0
                                i32.const 15240
                                i32.add
                                i32.load
                                local.tee 3
                                i32.load offset=8
                                local.tee 0
                                i32.eq
                                if  ;; label = @15
                                  i32.const 15192
                                  local.get 6
                                  i32.const -2
                                  local.get 2
                                  i32.rotl
                                  i32.and
                                  i32.store
                                  br 1 (;@14;)
                                end
                                local.get 0
                                local.get 1
                                i32.store offset=12
                                local.get 1
                                local.get 0
                                i32.store offset=8
                              end
                              local.get 3
                              i32.const 8
                              i32.add
                              local.set 0
                              local.get 3
                              local.get 2
                              i32.const 3
                              i32.shl
                              local.tee 1
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 1
                              local.get 3
                              i32.add
                              local.tee 1
                              local.get 1
                              i32.load offset=4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              br 12 (;@1;)
                            end
                            local.get 7
                            i32.const 15200
                            i32.load
                            local.tee 10
                            i32.le_u
                            br_if 1 (;@11;)
                            local.get 1
                            if  ;; label = @13
                              block  ;; label = @14
                                i32.const 2
                                local.get 2
                                i32.shl
                                local.tee 0
                                i32.const 0
                                local.get 0
                                i32.sub
                                i32.or
                                local.get 1
                                local.get 2
                                i32.shl
                                i32.and
                                local.tee 0
                                i32.const 0
                                local.get 0
                                i32.sub
                                i32.and
                                i32.const 1
                                i32.sub
                                local.tee 0
                                local.get 0
                                i32.const 12
                                i32.shr_u
                                i32.const 16
                                i32.and
                                local.tee 2
                                i32.shr_u
                                local.tee 1
                                i32.const 5
                                i32.shr_u
                                i32.const 8
                                i32.and
                                local.tee 0
                                local.get 2
                                i32.or
                                local.get 1
                                local.get 0
                                i32.shr_u
                                local.tee 1
                                i32.const 2
                                i32.shr_u
                                i32.const 4
                                i32.and
                                local.tee 0
                                i32.or
                                local.get 1
                                local.get 0
                                i32.shr_u
                                local.tee 1
                                i32.const 1
                                i32.shr_u
                                i32.const 2
                                i32.and
                                local.tee 0
                                i32.or
                                local.get 1
                                local.get 0
                                i32.shr_u
                                local.tee 1
                                i32.const 1
                                i32.shr_u
                                i32.const 1
                                i32.and
                                local.tee 0
                                i32.or
                                local.get 1
                                local.get 0
                                i32.shr_u
                                i32.add
                                local.tee 2
                                i32.const 3
                                i32.shl
                                local.tee 0
                                i32.const 15232
                                i32.add
                                local.tee 1
                                local.get 0
                                i32.const 15240
                                i32.add
                                i32.load
                                local.tee 4
                                i32.load offset=8
                                local.tee 0
                                i32.eq
                                if  ;; label = @15
                                  i32.const 15192
                                  local.get 6
                                  i32.const -2
                                  local.get 2
                                  i32.rotl
                                  i32.and
                                  local.tee 6
                                  i32.store
                                  br 1 (;@14;)
                                end
                                local.get 0
                                local.get 1
                                i32.store offset=12
                                local.get 1
                                local.get 0
                                i32.store offset=8
                              end
                              local.get 4
                              local.get 7
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 4
                              local.get 7
                              i32.add
                              local.tee 1
                              local.get 2
                              i32.const 3
                              i32.shl
                              local.tee 0
                              local.get 7
                              i32.sub
                              local.tee 2
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              local.get 0
                              local.get 4
                              i32.add
                              local.get 2
                              i32.store
                              local.get 10
                              if  ;; label = @14
                                local.get 10
                                i32.const 3
                                i32.shr_u
                                local.tee 0
                                i32.const 3
                                i32.shl
                                i32.const 15232
                                i32.add
                                local.set 5
                                i32.const 15212
                                i32.load
                                local.set 3
                                block (result i32)  ;; label = @15
                                  local.get 6
                                  i32.const 1
                                  local.get 0
                                  i32.shl
                                  local.tee 0
                                  i32.and
                                  i32.eqz
                                  if  ;; label = @16
                                    i32.const 15192
                                    local.get 0
                                    local.get 6
                                    i32.or
                                    i32.store
                                    local.get 5
                                    br 1 (;@15;)
                                  end
                                  local.get 5
                                  i32.load offset=8
                                end
                                local.set 0
                                local.get 5
                                local.get 3
                                i32.store offset=8
                                local.get 0
                                local.get 3
                                i32.store offset=12
                                local.get 3
                                local.get 5
                                i32.store offset=12
                                local.get 3
                                local.get 0
                                i32.store offset=8
                              end
                              local.get 4
                              i32.const 8
                              i32.add
                              local.set 0
                              i32.const 15212
                              local.get 1
                              i32.store
                              i32.const 15200
                              local.get 2
                              i32.store
                              br 12 (;@1;)
                            end
                            i32.const 15196
                            i32.load
                            local.tee 9
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 9
                            i32.const 0
                            local.get 9
                            i32.sub
                            i32.and
                            i32.const 1
                            i32.sub
                            local.tee 0
                            local.get 0
                            i32.const 12
                            i32.shr_u
                            i32.const 16
                            i32.and
                            local.tee 2
                            i32.shr_u
                            local.tee 1
                            i32.const 5
                            i32.shr_u
                            i32.const 8
                            i32.and
                            local.tee 0
                            local.get 2
                            i32.or
                            local.get 1
                            local.get 0
                            i32.shr_u
                            local.tee 1
                            i32.const 2
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee 0
                            i32.or
                            local.get 1
                            local.get 0
                            i32.shr_u
                            local.tee 1
                            i32.const 1
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee 0
                            i32.or
                            local.get 1
                            local.get 0
                            i32.shr_u
                            local.tee 1
                            i32.const 1
                            i32.shr_u
                            i32.const 1
                            i32.and
                            local.tee 0
                            i32.or
                            local.get 1
                            local.get 0
                            i32.shr_u
                            i32.add
                            i32.const 2
                            i32.shl
                            i32.const 15496
                            i32.add
                            i32.load
                            local.tee 1
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.get 7
                            i32.sub
                            local.set 3
                            local.get 1
                            local.set 2
                            loop  ;; label = @13
                              block  ;; label = @14
                                local.get 2
                                i32.load offset=16
                                local.tee 0
                                i32.eqz
                                if  ;; label = @15
                                  local.get 2
                                  i32.load offset=20
                                  local.tee 0
                                  i32.eqz
                                  br_if 1 (;@14;)
                                end
                                local.get 0
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 7
                                i32.sub
                                local.tee 2
                                local.get 3
                                local.get 2
                                local.get 3
                                i32.lt_u
                                local.tee 2
                                select
                                local.set 3
                                local.get 0
                                local.get 1
                                local.get 2
                                select
                                local.set 1
                                local.get 0
                                local.set 2
                                br 1 (;@13;)
                              end
                            end
                            local.get 1
                            i32.load offset=24
                            local.set 8
                            local.get 1
                            local.get 1
                            i32.load offset=12
                            local.tee 5
                            i32.ne
                            if  ;; label = @13
                              local.get 1
                              i32.load offset=8
                              local.tee 0
                              i32.const 15208
                              i32.load
                              i32.lt_u
                              drop
                              local.get 0
                              local.get 5
                              i32.store offset=12
                              local.get 5
                              local.get 0
                              i32.store offset=8
                              br 11 (;@2;)
                            end
                            local.get 1
                            i32.const 20
                            i32.add
                            local.tee 2
                            i32.load
                            local.tee 0
                            i32.eqz
                            if  ;; label = @13
                              local.get 1
                              i32.load offset=16
                              local.tee 0
                              i32.eqz
                              br_if 3 (;@10;)
                              local.get 1
                              i32.const 16
                              i32.add
                              local.set 2
                            end
                            loop  ;; label = @13
                              local.get 2
                              local.set 4
                              local.get 0
                              local.tee 5
                              i32.const 20
                              i32.add
                              local.tee 2
                              i32.load
                              local.tee 0
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 16
                              i32.add
                              local.set 2
                              local.get 5
                              i32.load offset=16
                              local.tee 0
                              br_if 0 (;@13;)
                            end
                            local.get 4
                            i32.const 0
                            i32.store
                            br 10 (;@2;)
                          end
                          i32.const -1
                          local.set 7
                          local.get 0
                          i32.const -65
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const 11
                          i32.add
                          local.tee 0
                          i32.const -8
                          i32.and
                          local.set 7
                          i32.const 15196
                          i32.load
                          local.tee 9
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 0
                          local.get 7
                          i32.sub
                          local.set 3
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block (result i32)  ;; label = @15
                                  i32.const 0
                                  local.get 7
                                  i32.const 256
                                  i32.lt_u
                                  br_if 0 (;@15;)
                                  drop
                                  i32.const 31
                                  local.get 7
                                  i32.const 16777215
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                  drop
                                  local.get 0
                                  i32.const 8
                                  i32.shr_u
                                  local.tee 0
                                  local.get 0
                                  i32.const 1048320
                                  i32.add
                                  i32.const 16
                                  i32.shr_u
                                  i32.const 8
                                  i32.and
                                  local.tee 2
                                  i32.shl
                                  local.tee 0
                                  local.get 0
                                  i32.const 520192
                                  i32.add
                                  i32.const 16
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  local.tee 1
                                  i32.shl
                                  local.tee 0
                                  local.get 0
                                  i32.const 245760
                                  i32.add
                                  i32.const 16
                                  i32.shr_u
                                  i32.const 2
                                  i32.and
                                  local.tee 0
                                  i32.shl
                                  i32.const 15
                                  i32.shr_u
                                  local.get 1
                                  local.get 2
                                  i32.or
                                  local.get 0
                                  i32.or
                                  i32.sub
                                  local.tee 0
                                  i32.const 1
                                  i32.shl
                                  local.get 7
                                  local.get 0
                                  i32.const 21
                                  i32.add
                                  i32.shr_u
                                  i32.const 1
                                  i32.and
                                  i32.or
                                  i32.const 28
                                  i32.add
                                end
                                local.tee 6
                                i32.const 2
                                i32.shl
                                i32.const 15496
                                i32.add
                                i32.load
                                local.tee 2
                                i32.eqz
                                if  ;; label = @15
                                  i32.const 0
                                  local.set 0
                                  br 1 (;@14;)
                                end
                                i32.const 0
                                local.set 0
                                local.get 7
                                i32.const 0
                                i32.const 25
                                local.get 6
                                i32.const 1
                                i32.shr_u
                                i32.sub
                                local.get 6
                                i32.const 31
                                i32.eq
                                select
                                i32.shl
                                local.set 1
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 2
                                    i32.load offset=4
                                    i32.const -8
                                    i32.and
                                    local.get 7
                                    i32.sub
                                    local.tee 4
                                    local.get 3
                                    i32.ge_u
                                    br_if 0 (;@16;)
                                    local.get 2
                                    local.set 5
                                    local.get 4
                                    local.tee 3
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.set 3
                                    local.get 2
                                    local.set 0
                                    br 3 (;@13;)
                                  end
                                  local.get 0
                                  local.get 2
                                  i32.load offset=20
                                  local.tee 4
                                  local.get 4
                                  local.get 2
                                  local.get 1
                                  i32.const 29
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  i32.add
                                  i32.load offset=16
                                  local.tee 2
                                  i32.eq
                                  select
                                  local.get 0
                                  local.get 4
                                  select
                                  local.set 0
                                  local.get 1
                                  i32.const 1
                                  i32.shl
                                  local.set 1
                                  local.get 2
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 0
                              local.get 5
                              i32.or
                              i32.eqz
                              if  ;; label = @14
                                i32.const 0
                                local.set 5
                                i32.const 2
                                local.get 6
                                i32.shl
                                local.tee 0
                                i32.const 0
                                local.get 0
                                i32.sub
                                i32.or
                                local.get 9
                                i32.and
                                local.tee 0
                                i32.eqz
                                br_if 3 (;@11;)
                                local.get 0
                                i32.const 0
                                local.get 0
                                i32.sub
                                i32.and
                                i32.const 1
                                i32.sub
                                local.tee 0
                                local.get 0
                                i32.const 12
                                i32.shr_u
                                i32.const 16
                                i32.and
                                local.tee 2
                                i32.shr_u
                                local.tee 1
                                i32.const 5
                                i32.shr_u
                                i32.const 8
                                i32.and
                                local.tee 0
                                local.get 2
                                i32.or
                                local.get 1
                                local.get 0
                                i32.shr_u
                                local.tee 1
                                i32.const 2
                                i32.shr_u
                                i32.const 4
                                i32.and
                                local.tee 0
                                i32.or
                                local.get 1
                                local.get 0
                                i32.shr_u
                                local.tee 1
                                i32.const 1
                                i32.shr_u
                                i32.const 2
                                i32.and
                                local.tee 0
                                i32.or
                                local.get 1
                                local.get 0
                                i32.shr_u
                                local.tee 1
                                i32.const 1
                                i32.shr_u
                                i32.const 1
                                i32.and
                                local.tee 0
                                i32.or
                                local.get 1
                                local.get 0
                                i32.shr_u
                                i32.add
                                i32.const 2
                                i32.shl
                                i32.const 15496
                                i32.add
                                i32.load
                                local.set 0
                              end
                              local.get 0
                              i32.eqz
                              br_if 1 (;@12;)
                            end
                            loop  ;; label = @13
                              local.get 0
                              i32.load offset=4
                              i32.const -8
                              i32.and
                              local.get 7
                              i32.sub
                              local.tee 1
                              local.get 3
                              i32.lt_u
                              local.set 2
                              local.get 1
                              local.get 3
                              local.get 2
                              select
                              local.set 3
                              local.get 0
                              local.get 5
                              local.get 2
                              select
                              local.set 5
                              local.get 0
                              i32.load offset=16
                              local.tee 1
                              if (result i32)  ;; label = @14
                                local.get 1
                              else
                                local.get 0
                                i32.load offset=20
                              end
                              local.tee 0
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 5
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 3
                          i32.const 15200
                          i32.load
                          local.get 7
                          i32.sub
                          i32.ge_u
                          br_if 0 (;@11;)
                          local.get 5
                          i32.load offset=24
                          local.set 6
                          local.get 5
                          local.get 5
                          i32.load offset=12
                          local.tee 1
                          i32.ne
                          if  ;; label = @12
                            local.get 5
                            i32.load offset=8
                            local.tee 0
                            i32.const 15208
                            i32.load
                            i32.lt_u
                            drop
                            local.get 0
                            local.get 1
                            i32.store offset=12
                            local.get 1
                            local.get 0
                            i32.store offset=8
                            br 9 (;@3;)
                          end
                          local.get 5
                          i32.const 20
                          i32.add
                          local.tee 2
                          i32.load
                          local.tee 0
                          i32.eqz
                          if  ;; label = @12
                            local.get 5
                            i32.load offset=16
                            local.tee 0
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 5
                            i32.const 16
                            i32.add
                            local.set 2
                          end
                          loop  ;; label = @12
                            local.get 2
                            local.set 4
                            local.get 0
                            local.tee 1
                            i32.const 20
                            i32.add
                            local.tee 2
                            i32.load
                            local.tee 0
                            br_if 0 (;@12;)
                            local.get 1
                            i32.const 16
                            i32.add
                            local.set 2
                            local.get 1
                            i32.load offset=16
                            local.tee 0
                            br_if 0 (;@12;)
                          end
                          local.get 4
                          i32.const 0
                          i32.store
                          br 8 (;@3;)
                        end
                        local.get 7
                        i32.const 15200
                        i32.load
                        local.tee 2
                        i32.le_u
                        if  ;; label = @11
                          i32.const 15212
                          i32.load
                          local.set 3
                          block  ;; label = @12
                            local.get 2
                            local.get 7
                            i32.sub
                            local.tee 1
                            i32.const 16
                            i32.ge_u
                            if  ;; label = @13
                              i32.const 15200
                              local.get 1
                              i32.store
                              i32.const 15212
                              local.get 3
                              local.get 7
                              i32.add
                              local.tee 0
                              i32.store
                              local.get 0
                              local.get 1
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              local.get 2
                              local.get 3
                              i32.add
                              local.get 1
                              i32.store
                              local.get 3
                              local.get 7
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              br 1 (;@12;)
                            end
                            i32.const 15212
                            i32.const 0
                            i32.store
                            i32.const 15200
                            i32.const 0
                            i32.store
                            local.get 3
                            local.get 2
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get 2
                            local.get 3
                            i32.add
                            local.tee 0
                            local.get 0
                            i32.load offset=4
                            i32.const 1
                            i32.or
                            i32.store offset=4
                          end
                          local.get 3
                          i32.const 8
                          i32.add
                          local.set 0
                          br 10 (;@1;)
                        end
                        local.get 7
                        i32.const 15204
                        i32.load
                        local.tee 8
                        i32.lt_u
                        if  ;; label = @11
                          i32.const 15204
                          local.get 8
                          local.get 7
                          i32.sub
                          local.tee 1
                          i32.store
                          i32.const 15216
                          i32.const 15216
                          i32.load
                          local.tee 2
                          local.get 7
                          i32.add
                          local.tee 0
                          i32.store
                          local.get 0
                          local.get 1
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 2
                          local.get 7
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 2
                          i32.const 8
                          i32.add
                          local.set 0
                          br 10 (;@1;)
                        end
                        i32.const 0
                        local.set 0
                        local.get 7
                        i32.const 47
                        i32.add
                        local.tee 9
                        block (result i32)  ;; label = @11
                          i32.const 15664
                          i32.load
                          if  ;; label = @12
                            i32.const 15672
                            i32.load
                            br 1 (;@11;)
                          end
                          i32.const 15676
                          i64.const -1
                          i64.store align=4
                          i32.const 15668
                          i64.const 17592186048512
                          i64.store align=4
                          i32.const 15664
                          local.get 11
                          i32.const 12
                          i32.add
                          i32.const -16
                          i32.and
                          i32.const 1431655768
                          i32.xor
                          i32.store
                          i32.const 15684
                          i32.const 0
                          i32.store
                          i32.const 15636
                          i32.const 0
                          i32.store
                          i32.const 4096
                        end
                        local.tee 1
                        i32.add
                        local.tee 6
                        i32.const 0
                        local.get 1
                        i32.sub
                        local.tee 4
                        i32.and
                        local.tee 2
                        local.get 7
                        i32.le_u
                        br_if 9 (;@1;)
                        i32.const 15632
                        i32.load
                        local.tee 5
                        if  ;; label = @11
                          i32.const 15624
                          i32.load
                          local.tee 3
                          local.get 2
                          i32.add
                          local.tee 1
                          local.get 3
                          i32.le_u
                          br_if 10 (;@1;)
                          local.get 1
                          local.get 5
                          i32.gt_u
                          br_if 10 (;@1;)
                        end
                        i32.const 15636
                        i32.load8_u
                        i32.const 4
                        i32.and
                        br_if 4 (;@6;)
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 15216
                            i32.load
                            local.tee 3
                            if  ;; label = @13
                              i32.const 15640
                              local.set 0
                              loop  ;; label = @14
                                local.get 3
                                local.get 0
                                i32.load
                                local.tee 1
                                i32.ge_u
                                if  ;; label = @15
                                  local.get 1
                                  local.get 0
                                  i32.load offset=4
                                  i32.add
                                  local.get 3
                                  i32.gt_u
                                  br_if 3 (;@12;)
                                end
                                local.get 0
                                i32.load offset=8
                                local.tee 0
                                br_if 0 (;@14;)
                              end
                            end
                            i32.const 0
                            call 11
                            local.tee 1
                            i32.const -1
                            i32.eq
                            br_if 5 (;@7;)
                            local.get 2
                            local.set 6
                            i32.const 15668
                            i32.load
                            local.tee 3
                            i32.const 1
                            i32.sub
                            local.tee 0
                            local.get 1
                            i32.and
                            if  ;; label = @13
                              local.get 2
                              local.get 1
                              i32.sub
                              local.get 0
                              local.get 1
                              i32.add
                              i32.const 0
                              local.get 3
                              i32.sub
                              i32.and
                              i32.add
                              local.set 6
                            end
                            local.get 6
                            local.get 7
                            i32.le_u
                            br_if 5 (;@7;)
                            local.get 6
                            i32.const 2147483646
                            i32.gt_u
                            br_if 5 (;@7;)
                            i32.const 15632
                            i32.load
                            local.tee 5
                            if  ;; label = @13
                              i32.const 15624
                              i32.load
                              local.tee 3
                              local.get 6
                              i32.add
                              local.tee 0
                              local.get 3
                              i32.le_u
                              br_if 6 (;@7;)
                              local.get 0
                              local.get 5
                              i32.gt_u
                              br_if 6 (;@7;)
                            end
                            local.get 6
                            call 11
                            local.tee 0
                            local.get 1
                            i32.ne
                            br_if 1 (;@11;)
                            br 7 (;@5;)
                          end
                          local.get 6
                          local.get 8
                          i32.sub
                          local.get 4
                          i32.and
                          local.tee 6
                          i32.const 2147483646
                          i32.gt_u
                          br_if 4 (;@7;)
                          local.get 6
                          call 11
                          local.tee 1
                          local.get 0
                          i32.load
                          local.get 0
                          i32.load offset=4
                          i32.add
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 1
                          local.set 0
                        end
                        block  ;; label = @11
                          local.get 0
                          i32.const -1
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 7
                          i32.const 48
                          i32.add
                          local.get 6
                          i32.le_u
                          br_if 0 (;@11;)
                          i32.const 15672
                          i32.load
                          local.tee 1
                          local.get 9
                          local.get 6
                          i32.sub
                          i32.add
                          i32.const 0
                          local.get 1
                          i32.sub
                          i32.and
                          local.tee 1
                          i32.const 2147483646
                          i32.gt_u
                          if  ;; label = @12
                            local.get 0
                            local.set 1
                            br 7 (;@5;)
                          end
                          local.get 1
                          call 11
                          i32.const -1
                          i32.ne
                          if  ;; label = @12
                            local.get 1
                            local.get 6
                            i32.add
                            local.set 6
                            local.get 0
                            local.set 1
                            br 7 (;@5;)
                          end
                          i32.const 0
                          local.get 6
                          i32.sub
                          call 11
                          drop
                          br 4 (;@7;)
                        end
                        local.get 0
                        local.tee 1
                        i32.const -1
                        i32.ne
                        br_if 5 (;@5;)
                        br 3 (;@7;)
                      end
                      i32.const 0
                      local.set 5
                      br 7 (;@2;)
                    end
                    i32.const 0
                    local.set 1
                    br 5 (;@3;)
                  end
                  local.get 1
                  i32.const -1
                  i32.ne
                  br_if 2 (;@5;)
                end
                i32.const 15636
                i32.const 15636
                i32.load
                i32.const 4
                i32.or
                i32.store
              end
              local.get 2
              i32.const 2147483646
              i32.gt_u
              br_if 1 (;@4;)
              local.get 2
              call 11
              local.set 1
              i32.const 0
              call 11
              local.set 0
              local.get 1
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              local.get 0
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              local.get 0
              local.get 1
              i32.le_u
              br_if 1 (;@4;)
              local.get 0
              local.get 1
              i32.sub
              local.tee 6
              local.get 7
              i32.const 40
              i32.add
              i32.le_u
              br_if 1 (;@4;)
            end
            i32.const 15624
            i32.const 15624
            i32.load
            local.get 6
            i32.add
            local.tee 0
            i32.store
            i32.const 15628
            i32.load
            local.get 0
            i32.lt_u
            if  ;; label = @5
              i32.const 15628
              local.get 0
              i32.store
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 15216
                  i32.load
                  local.tee 4
                  if  ;; label = @8
                    i32.const 15640
                    local.set 0
                    loop  ;; label = @9
                      local.get 1
                      local.get 0
                      i32.load
                      local.tee 3
                      local.get 0
                      i32.load offset=4
                      local.tee 2
                      i32.add
                      i32.eq
                      br_if 2 (;@7;)
                      local.get 0
                      i32.load offset=8
                      local.tee 0
                      br_if 0 (;@9;)
                    end
                    br 2 (;@6;)
                  end
                  i32.const 15208
                  i32.load
                  local.tee 0
                  i32.const 0
                  local.get 0
                  local.get 1
                  i32.le_u
                  select
                  i32.eqz
                  if  ;; label = @8
                    i32.const 15208
                    local.get 1
                    i32.store
                  end
                  i32.const 0
                  local.set 0
                  i32.const 15644
                  local.get 6
                  i32.store
                  i32.const 15640
                  local.get 1
                  i32.store
                  i32.const 15224
                  i32.const -1
                  i32.store
                  i32.const 15228
                  i32.const 15664
                  i32.load
                  i32.store
                  i32.const 15652
                  i32.const 0
                  i32.store
                  loop  ;; label = @8
                    local.get 0
                    i32.const 3
                    i32.shl
                    local.tee 3
                    i32.const 15240
                    i32.add
                    local.get 3
                    i32.const 15232
                    i32.add
                    local.tee 2
                    i32.store
                    local.get 3
                    i32.const 15244
                    i32.add
                    local.get 2
                    i32.store
                    local.get 0
                    i32.const 1
                    i32.add
                    local.tee 0
                    i32.const 32
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  i32.const 15204
                  local.get 6
                  i32.const 40
                  i32.sub
                  local.tee 3
                  i32.const -8
                  local.get 1
                  i32.sub
                  i32.const 7
                  i32.and
                  i32.const 0
                  local.get 1
                  i32.const 8
                  i32.add
                  i32.const 7
                  i32.and
                  select
                  local.tee 0
                  i32.sub
                  local.tee 2
                  i32.store
                  i32.const 15216
                  local.get 0
                  local.get 1
                  i32.add
                  local.tee 0
                  i32.store
                  local.get 0
                  local.get 2
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 1
                  local.get 3
                  i32.add
                  i32.const 40
                  i32.store offset=4
                  i32.const 15220
                  i32.const 15680
                  i32.load
                  i32.store
                  br 2 (;@5;)
                end
                local.get 0
                i32.load8_u offset=12
                i32.const 8
                i32.and
                br_if 0 (;@6;)
                local.get 3
                local.get 4
                i32.gt_u
                br_if 0 (;@6;)
                local.get 1
                local.get 4
                i32.le_u
                br_if 0 (;@6;)
                local.get 0
                local.get 2
                local.get 6
                i32.add
                i32.store offset=4
                i32.const 15216
                local.get 4
                i32.const -8
                local.get 4
                i32.sub
                i32.const 7
                i32.and
                i32.const 0
                local.get 4
                i32.const 8
                i32.add
                i32.const 7
                i32.and
                select
                local.tee 0
                i32.add
                local.tee 2
                i32.store
                i32.const 15204
                i32.const 15204
                i32.load
                local.get 6
                i32.add
                local.tee 1
                local.get 0
                i32.sub
                local.tee 0
                i32.store
                local.get 2
                local.get 0
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 1
                local.get 4
                i32.add
                i32.const 40
                i32.store offset=4
                i32.const 15220
                i32.const 15680
                i32.load
                i32.store
                br 1 (;@5;)
              end
              i32.const 15208
              i32.load
              local.get 1
              i32.gt_u
              if  ;; label = @6
                i32.const 15208
                local.get 1
                i32.store
              end
              local.get 1
              local.get 6
              i32.add
              local.set 2
              i32.const 15640
              local.set 0
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          loop  ;; label = @12
                            local.get 2
                            local.get 0
                            i32.load
                            i32.ne
                            if  ;; label = @13
                              local.get 0
                              i32.load offset=8
                              local.tee 0
                              br_if 1 (;@12;)
                              br 2 (;@11;)
                            end
                          end
                          local.get 0
                          i32.load8_u offset=12
                          i32.const 8
                          i32.and
                          i32.eqz
                          br_if 1 (;@10;)
                        end
                        i32.const 15640
                        local.set 0
                        loop  ;; label = @11
                          local.get 4
                          local.get 0
                          i32.load
                          local.tee 2
                          i32.ge_u
                          if  ;; label = @12
                            local.get 2
                            local.get 0
                            i32.load offset=4
                            i32.add
                            local.tee 5
                            local.get 4
                            i32.gt_u
                            br_if 3 (;@9;)
                          end
                          local.get 0
                          i32.load offset=8
                          local.set 0
                          br 0 (;@11;)
                        end
                        unreachable
                      end
                      local.get 0
                      local.get 1
                      i32.store
                      local.get 0
                      local.get 0
                      i32.load offset=4
                      local.get 6
                      i32.add
                      i32.store offset=4
                      local.get 1
                      i32.const -8
                      local.get 1
                      i32.sub
                      i32.const 7
                      i32.and
                      i32.const 0
                      local.get 1
                      i32.const 8
                      i32.add
                      i32.const 7
                      i32.and
                      select
                      i32.add
                      local.tee 9
                      local.get 7
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 2
                      i32.const -8
                      local.get 2
                      i32.sub
                      i32.const 7
                      i32.and
                      i32.const 0
                      local.get 2
                      i32.const 8
                      i32.add
                      i32.const 7
                      i32.and
                      select
                      i32.add
                      local.tee 6
                      local.get 7
                      local.get 9
                      i32.add
                      local.tee 8
                      i32.sub
                      local.set 2
                      local.get 4
                      local.get 6
                      i32.eq
                      if  ;; label = @10
                        i32.const 15216
                        local.get 8
                        i32.store
                        i32.const 15204
                        i32.const 15204
                        i32.load
                        local.get 2
                        i32.add
                        local.tee 0
                        i32.store
                        local.get 8
                        local.get 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        br 3 (;@7;)
                      end
                      i32.const 15212
                      i32.load
                      local.get 6
                      i32.eq
                      if  ;; label = @10
                        i32.const 15212
                        local.get 8
                        i32.store
                        i32.const 15200
                        i32.const 15200
                        i32.load
                        local.get 2
                        i32.add
                        local.tee 0
                        i32.store
                        local.get 8
                        local.get 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 0
                        local.get 8
                        i32.add
                        local.get 0
                        i32.store
                        br 3 (;@7;)
                      end
                      local.get 6
                      i32.load offset=4
                      local.tee 0
                      i32.const 3
                      i32.and
                      i32.const 1
                      i32.eq
                      if  ;; label = @10
                        local.get 0
                        i32.const -8
                        i32.and
                        local.set 4
                        block  ;; label = @11
                          local.get 0
                          i32.const 255
                          i32.le_u
                          if  ;; label = @12
                            local.get 6
                            i32.load offset=8
                            local.tee 3
                            local.get 0
                            i32.const 3
                            i32.shr_u
                            local.tee 0
                            i32.const 3
                            i32.shl
                            i32.const 15232
                            i32.add
                            i32.eq
                            drop
                            local.get 3
                            local.get 6
                            i32.load offset=12
                            local.tee 1
                            i32.eq
                            if  ;; label = @13
                              i32.const 15192
                              i32.const 15192
                              i32.load
                              i32.const -2
                              local.get 0
                              i32.rotl
                              i32.and
                              i32.store
                              br 2 (;@11;)
                            end
                            local.get 3
                            local.get 1
                            i32.store offset=12
                            local.get 1
                            local.get 3
                            i32.store offset=8
                            br 1 (;@11;)
                          end
                          local.get 6
                          i32.load offset=24
                          local.set 7
                          block  ;; label = @12
                            local.get 6
                            local.get 6
                            i32.load offset=12
                            local.tee 1
                            i32.ne
                            if  ;; label = @13
                              local.get 6
                              i32.load offset=8
                              local.tee 0
                              local.get 1
                              i32.store offset=12
                              local.get 1
                              local.get 0
                              i32.store offset=8
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              local.get 6
                              i32.const 20
                              i32.add
                              local.tee 0
                              i32.load
                              local.tee 3
                              br_if 0 (;@13;)
                              local.get 6
                              i32.const 16
                              i32.add
                              local.tee 0
                              i32.load
                              local.tee 3
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 1
                              br 1 (;@12;)
                            end
                            loop  ;; label = @13
                              local.get 0
                              local.set 5
                              local.get 3
                              local.tee 1
                              i32.const 20
                              i32.add
                              local.tee 0
                              i32.load
                              local.tee 3
                              br_if 0 (;@13;)
                              local.get 1
                              i32.const 16
                              i32.add
                              local.set 0
                              local.get 1
                              i32.load offset=16
                              local.tee 3
                              br_if 0 (;@13;)
                            end
                            local.get 5
                            i32.const 0
                            i32.store
                          end
                          local.get 7
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            local.get 6
                            i32.load offset=28
                            local.tee 3
                            i32.const 2
                            i32.shl
                            i32.const 15496
                            i32.add
                            local.tee 0
                            i32.load
                            local.get 6
                            i32.eq
                            if  ;; label = @13
                              local.get 0
                              local.get 1
                              i32.store
                              local.get 1
                              br_if 1 (;@12;)
                              i32.const 15196
                              i32.const 15196
                              i32.load
                              i32.const -2
                              local.get 3
                              i32.rotl
                              i32.and
                              i32.store
                              br 2 (;@11;)
                            end
                            local.get 7
                            i32.const 16
                            i32.const 20
                            local.get 7
                            i32.load offset=16
                            local.get 6
                            i32.eq
                            select
                            i32.add
                            local.get 1
                            i32.store
                            local.get 1
                            i32.eqz
                            br_if 1 (;@11;)
                          end
                          local.get 1
                          local.get 7
                          i32.store offset=24
                          local.get 6
                          i32.load offset=16
                          local.tee 0
                          if  ;; label = @12
                            local.get 1
                            local.get 0
                            i32.store offset=16
                            local.get 0
                            local.get 1
                            i32.store offset=24
                          end
                          local.get 6
                          i32.load offset=20
                          local.tee 0
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 1
                          local.get 0
                          i32.store offset=20
                          local.get 0
                          local.get 1
                          i32.store offset=24
                        end
                        local.get 2
                        local.get 4
                        i32.add
                        local.set 2
                        local.get 4
                        local.get 6
                        i32.add
                        local.tee 6
                        i32.load offset=4
                        local.set 0
                      end
                      local.get 6
                      local.get 0
                      i32.const -2
                      i32.and
                      i32.store offset=4
                      local.get 8
                      local.get 2
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 2
                      local.get 8
                      i32.add
                      local.get 2
                      i32.store
                      local.get 2
                      i32.const 255
                      i32.le_u
                      if  ;; label = @10
                        local.get 2
                        i32.const 3
                        i32.shr_u
                        local.tee 0
                        i32.const 3
                        i32.shl
                        i32.const 15232
                        i32.add
                        local.set 2
                        block (result i32)  ;; label = @11
                          i32.const 15192
                          i32.load
                          local.tee 1
                          i32.const 1
                          local.get 0
                          i32.shl
                          local.tee 0
                          i32.and
                          i32.eqz
                          if  ;; label = @12
                            i32.const 15192
                            local.get 0
                            local.get 1
                            i32.or
                            i32.store
                            local.get 2
                            br 1 (;@11;)
                          end
                          local.get 2
                          i32.load offset=8
                        end
                        local.set 0
                        local.get 2
                        local.get 8
                        i32.store offset=8
                        local.get 0
                        local.get 8
                        i32.store offset=12
                        local.get 8
                        local.get 2
                        i32.store offset=12
                        local.get 8
                        local.get 0
                        i32.store offset=8
                        br 3 (;@7;)
                      end
                      i32.const 31
                      local.set 0
                      local.get 2
                      i32.const 16777215
                      i32.le_u
                      if  ;; label = @10
                        local.get 2
                        i32.const 8
                        i32.shr_u
                        local.tee 0
                        local.get 0
                        i32.const 1048320
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 8
                        i32.and
                        local.tee 3
                        i32.shl
                        local.tee 0
                        local.get 0
                        i32.const 520192
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 4
                        i32.and
                        local.tee 1
                        i32.shl
                        local.tee 0
                        local.get 0
                        i32.const 245760
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 2
                        i32.and
                        local.tee 0
                        i32.shl
                        i32.const 15
                        i32.shr_u
                        local.get 1
                        local.get 3
                        i32.or
                        local.get 0
                        i32.or
                        i32.sub
                        local.tee 0
                        i32.const 1
                        i32.shl
                        local.get 2
                        local.get 0
                        i32.const 21
                        i32.add
                        i32.shr_u
                        i32.const 1
                        i32.and
                        i32.or
                        i32.const 28
                        i32.add
                        local.set 0
                      end
                      local.get 8
                      local.get 0
                      i32.store offset=28
                      local.get 8
                      i64.const 0
                      i64.store offset=16 align=4
                      local.get 0
                      i32.const 2
                      i32.shl
                      i32.const 15496
                      i32.add
                      local.set 5
                      block  ;; label = @10
                        i32.const 15196
                        i32.load
                        local.tee 3
                        i32.const 1
                        local.get 0
                        i32.shl
                        local.tee 1
                        i32.and
                        i32.eqz
                        if  ;; label = @11
                          i32.const 15196
                          local.get 1
                          local.get 3
                          i32.or
                          i32.store
                          local.get 5
                          local.get 8
                          i32.store
                          local.get 8
                          local.get 5
                          i32.store offset=24
                          br 1 (;@10;)
                        end
                        local.get 2
                        i32.const 0
                        i32.const 25
                        local.get 0
                        i32.const 1
                        i32.shr_u
                        i32.sub
                        local.get 0
                        i32.const 31
                        i32.eq
                        select
                        i32.shl
                        local.set 0
                        local.get 5
                        i32.load
                        local.set 1
                        loop  ;; label = @11
                          local.get 1
                          local.tee 3
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          local.get 2
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 0
                          i32.const 29
                          i32.shr_u
                          local.set 1
                          local.get 0
                          i32.const 1
                          i32.shl
                          local.set 0
                          local.get 3
                          local.get 1
                          i32.const 4
                          i32.and
                          i32.add
                          local.tee 5
                          i32.load offset=16
                          local.tee 1
                          br_if 0 (;@11;)
                        end
                        local.get 5
                        local.get 8
                        i32.store offset=16
                        local.get 8
                        local.get 3
                        i32.store offset=24
                      end
                      local.get 8
                      local.get 8
                      i32.store offset=12
                      local.get 8
                      local.get 8
                      i32.store offset=8
                      br 2 (;@7;)
                    end
                    i32.const 15204
                    local.get 6
                    i32.const 40
                    i32.sub
                    local.tee 3
                    i32.const -8
                    local.get 1
                    i32.sub
                    i32.const 7
                    i32.and
                    i32.const 0
                    local.get 1
                    i32.const 8
                    i32.add
                    i32.const 7
                    i32.and
                    select
                    local.tee 0
                    i32.sub
                    local.tee 2
                    i32.store
                    i32.const 15216
                    local.get 0
                    local.get 1
                    i32.add
                    local.tee 0
                    i32.store
                    local.get 0
                    local.get 2
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 1
                    local.get 3
                    i32.add
                    i32.const 40
                    i32.store offset=4
                    i32.const 15220
                    i32.const 15680
                    i32.load
                    i32.store
                    local.get 4
                    local.get 5
                    i32.const 39
                    local.get 5
                    i32.sub
                    i32.const 7
                    i32.and
                    i32.const 0
                    local.get 5
                    i32.const 39
                    i32.sub
                    i32.const 7
                    i32.and
                    select
                    i32.add
                    i32.const 47
                    i32.sub
                    local.tee 0
                    local.get 0
                    local.get 4
                    i32.const 16
                    i32.add
                    i32.lt_u
                    select
                    local.tee 2
                    i32.const 27
                    i32.store offset=4
                    local.get 2
                    i32.const 15648
                    i64.load align=4
                    i64.store offset=16 align=4
                    local.get 2
                    i32.const 15640
                    i64.load align=4
                    i64.store offset=8 align=4
                    i32.const 15648
                    local.get 2
                    i32.const 8
                    i32.add
                    i32.store
                    i32.const 15644
                    local.get 6
                    i32.store
                    i32.const 15640
                    local.get 1
                    i32.store
                    i32.const 15652
                    i32.const 0
                    i32.store
                    local.get 2
                    i32.const 24
                    i32.add
                    local.set 0
                    loop  ;; label = @9
                      local.get 0
                      i32.const 7
                      i32.store offset=4
                      local.get 0
                      i32.const 8
                      i32.add
                      local.set 1
                      local.get 0
                      i32.const 4
                      i32.add
                      local.set 0
                      local.get 1
                      local.get 5
                      i32.lt_u
                      br_if 0 (;@9;)
                    end
                    local.get 2
                    local.get 4
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 2
                    local.get 2
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get 4
                    local.get 2
                    local.get 4
                    i32.sub
                    local.tee 5
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 2
                    local.get 5
                    i32.store
                    local.get 5
                    i32.const 255
                    i32.le_u
                    if  ;; label = @9
                      local.get 5
                      i32.const 3
                      i32.shr_u
                      local.tee 0
                      i32.const 3
                      i32.shl
                      i32.const 15232
                      i32.add
                      local.set 2
                      block (result i32)  ;; label = @10
                        i32.const 15192
                        i32.load
                        local.tee 1
                        i32.const 1
                        local.get 0
                        i32.shl
                        local.tee 0
                        i32.and
                        i32.eqz
                        if  ;; label = @11
                          i32.const 15192
                          local.get 0
                          local.get 1
                          i32.or
                          i32.store
                          local.get 2
                          br 1 (;@10;)
                        end
                        local.get 2
                        i32.load offset=8
                      end
                      local.set 0
                      local.get 2
                      local.get 4
                      i32.store offset=8
                      local.get 0
                      local.get 4
                      i32.store offset=12
                      local.get 4
                      local.get 2
                      i32.store offset=12
                      local.get 4
                      local.get 0
                      i32.store offset=8
                      br 4 (;@5;)
                    end
                    i32.const 31
                    local.set 0
                    local.get 5
                    i32.const 16777215
                    i32.le_u
                    if  ;; label = @9
                      local.get 5
                      i32.const 8
                      i32.shr_u
                      local.tee 0
                      local.get 0
                      i32.const 1048320
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 8
                      i32.and
                      local.tee 2
                      i32.shl
                      local.tee 0
                      local.get 0
                      i32.const 520192
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 4
                      i32.and
                      local.tee 1
                      i32.shl
                      local.tee 0
                      local.get 0
                      i32.const 245760
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 2
                      i32.and
                      local.tee 0
                      i32.shl
                      i32.const 15
                      i32.shr_u
                      local.get 1
                      local.get 2
                      i32.or
                      local.get 0
                      i32.or
                      i32.sub
                      local.tee 0
                      i32.const 1
                      i32.shl
                      local.get 5
                      local.get 0
                      i32.const 21
                      i32.add
                      i32.shr_u
                      i32.const 1
                      i32.and
                      i32.or
                      i32.const 28
                      i32.add
                      local.set 0
                    end
                    local.get 4
                    local.get 0
                    i32.store offset=28
                    local.get 4
                    i64.const 0
                    i64.store offset=16 align=4
                    local.get 0
                    i32.const 2
                    i32.shl
                    i32.const 15496
                    i32.add
                    local.set 3
                    block  ;; label = @9
                      i32.const 15196
                      i32.load
                      local.tee 2
                      i32.const 1
                      local.get 0
                      i32.shl
                      local.tee 1
                      i32.and
                      i32.eqz
                      if  ;; label = @10
                        i32.const 15196
                        local.get 1
                        local.get 2
                        i32.or
                        i32.store
                        local.get 3
                        local.get 4
                        i32.store
                        local.get 4
                        local.get 3
                        i32.store offset=24
                        br 1 (;@9;)
                      end
                      local.get 5
                      i32.const 0
                      i32.const 25
                      local.get 0
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      local.get 0
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      local.set 0
                      local.get 3
                      i32.load
                      local.set 1
                      loop  ;; label = @10
                        local.get 1
                        local.tee 2
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 5
                        i32.eq
                        br_if 4 (;@6;)
                        local.get 0
                        i32.const 29
                        i32.shr_u
                        local.set 1
                        local.get 0
                        i32.const 1
                        i32.shl
                        local.set 0
                        local.get 2
                        local.get 1
                        i32.const 4
                        i32.and
                        i32.add
                        local.tee 3
                        i32.load offset=16
                        local.tee 1
                        br_if 0 (;@10;)
                      end
                      local.get 3
                      local.get 4
                      i32.store offset=16
                      local.get 4
                      local.get 2
                      i32.store offset=24
                    end
                    local.get 4
                    local.get 4
                    i32.store offset=12
                    local.get 4
                    local.get 4
                    i32.store offset=8
                    br 3 (;@5;)
                  end
                  local.get 3
                  i32.load offset=8
                  local.tee 0
                  local.get 8
                  i32.store offset=12
                  local.get 3
                  local.get 8
                  i32.store offset=8
                  local.get 8
                  i32.const 0
                  i32.store offset=24
                  local.get 8
                  local.get 3
                  i32.store offset=12
                  local.get 8
                  local.get 0
                  i32.store offset=8
                end
                local.get 9
                i32.const 8
                i32.add
                local.set 0
                br 5 (;@1;)
              end
              local.get 2
              i32.load offset=8
              local.tee 0
              local.get 4
              i32.store offset=12
              local.get 2
              local.get 4
              i32.store offset=8
              local.get 4
              i32.const 0
              i32.store offset=24
              local.get 4
              local.get 2
              i32.store offset=12
              local.get 4
              local.get 0
              i32.store offset=8
            end
            i32.const 15204
            i32.load
            local.tee 0
            local.get 7
            i32.le_u
            br_if 0 (;@4;)
            i32.const 15204
            local.get 0
            local.get 7
            i32.sub
            local.tee 1
            i32.store
            i32.const 15216
            i32.const 15216
            i32.load
            local.tee 2
            local.get 7
            i32.add
            local.tee 0
            i32.store
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 2
            local.get 7
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 2
            i32.const 8
            i32.add
            local.set 0
            br 3 (;@1;)
          end
          i32.const 13720
          i32.const 48
          i32.store
          i32.const 0
          local.set 0
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 6
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 5
            i32.load offset=28
            local.tee 2
            i32.const 2
            i32.shl
            i32.const 15496
            i32.add
            local.tee 0
            i32.load
            local.get 5
            i32.eq
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.store
              local.get 1
              br_if 1 (;@4;)
              i32.const 15196
              local.get 9
              i32.const -2
              local.get 2
              i32.rotl
              i32.and
              local.tee 9
              i32.store
              br 2 (;@3;)
            end
            local.get 6
            i32.const 16
            i32.const 20
            local.get 6
            i32.load offset=16
            local.get 5
            i32.eq
            select
            i32.add
            local.get 1
            i32.store
            local.get 1
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 1
          local.get 6
          i32.store offset=24
          local.get 5
          i32.load offset=16
          local.tee 0
          if  ;; label = @4
            local.get 1
            local.get 0
            i32.store offset=16
            local.get 0
            local.get 1
            i32.store offset=24
          end
          local.get 5
          i32.load offset=20
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 0
          i32.store offset=20
          local.get 0
          local.get 1
          i32.store offset=24
        end
        block  ;; label = @3
          local.get 3
          i32.const 15
          i32.le_u
          if  ;; label = @4
            local.get 5
            local.get 3
            local.get 7
            i32.add
            local.tee 0
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 0
            local.get 5
            i32.add
            local.tee 0
            local.get 0
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@3;)
          end
          local.get 5
          local.get 7
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 5
          local.get 7
          i32.add
          local.tee 4
          local.get 3
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 3
          local.get 4
          i32.add
          local.get 3
          i32.store
          local.get 3
          i32.const 255
          i32.le_u
          if  ;; label = @4
            local.get 3
            i32.const 3
            i32.shr_u
            local.tee 0
            i32.const 3
            i32.shl
            i32.const 15232
            i32.add
            local.set 2
            block (result i32)  ;; label = @5
              i32.const 15192
              i32.load
              local.tee 1
              i32.const 1
              local.get 0
              i32.shl
              local.tee 0
              i32.and
              i32.eqz
              if  ;; label = @6
                i32.const 15192
                local.get 0
                local.get 1
                i32.or
                i32.store
                local.get 2
                br 1 (;@5;)
              end
              local.get 2
              i32.load offset=8
            end
            local.set 0
            local.get 2
            local.get 4
            i32.store offset=8
            local.get 0
            local.get 4
            i32.store offset=12
            local.get 4
            local.get 2
            i32.store offset=12
            local.get 4
            local.get 0
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 31
          local.set 0
          local.get 3
          i32.const 16777215
          i32.le_u
          if  ;; label = @4
            local.get 3
            i32.const 8
            i32.shr_u
            local.tee 0
            local.get 0
            i32.const 1048320
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 8
            i32.and
            local.tee 2
            i32.shl
            local.tee 0
            local.get 0
            i32.const 520192
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 4
            i32.and
            local.tee 1
            i32.shl
            local.tee 0
            local.get 0
            i32.const 245760
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 2
            i32.and
            local.tee 0
            i32.shl
            i32.const 15
            i32.shr_u
            local.get 1
            local.get 2
            i32.or
            local.get 0
            i32.or
            i32.sub
            local.tee 0
            i32.const 1
            i32.shl
            local.get 3
            local.get 0
            i32.const 21
            i32.add
            i32.shr_u
            i32.const 1
            i32.and
            i32.or
            i32.const 28
            i32.add
            local.set 0
          end
          local.get 4
          local.get 0
          i32.store offset=28
          local.get 4
          i64.const 0
          i64.store offset=16 align=4
          local.get 0
          i32.const 2
          i32.shl
          i32.const 15496
          i32.add
          local.set 1
          block  ;; label = @4
            block  ;; label = @5
              local.get 9
              i32.const 1
              local.get 0
              i32.shl
              local.tee 2
              i32.and
              i32.eqz
              if  ;; label = @6
                i32.const 15196
                local.get 2
                local.get 9
                i32.or
                i32.store
                local.get 1
                local.get 4
                i32.store
                br 1 (;@5;)
              end
              local.get 3
              i32.const 0
              i32.const 25
              local.get 0
              i32.const 1
              i32.shr_u
              i32.sub
              local.get 0
              i32.const 31
              i32.eq
              select
              i32.shl
              local.set 0
              local.get 1
              i32.load
              local.set 7
              loop  ;; label = @6
                local.get 7
                local.tee 1
                i32.load offset=4
                i32.const -8
                i32.and
                local.get 3
                i32.eq
                br_if 2 (;@4;)
                local.get 0
                i32.const 29
                i32.shr_u
                local.set 2
                local.get 0
                i32.const 1
                i32.shl
                local.set 0
                local.get 1
                local.get 2
                i32.const 4
                i32.and
                i32.add
                local.tee 2
                i32.load offset=16
                local.tee 7
                br_if 0 (;@6;)
              end
              local.get 2
              local.get 4
              i32.store offset=16
            end
            local.get 4
            local.get 1
            i32.store offset=24
            local.get 4
            local.get 4
            i32.store offset=12
            local.get 4
            local.get 4
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 1
          i32.load offset=8
          local.tee 0
          local.get 4
          i32.store offset=12
          local.get 1
          local.get 4
          i32.store offset=8
          local.get 4
          i32.const 0
          i32.store offset=24
          local.get 4
          local.get 1
          i32.store offset=12
          local.get 4
          local.get 0
          i32.store offset=8
        end
        local.get 5
        i32.const 8
        i32.add
        local.set 0
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 8
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 1
          i32.load offset=28
          local.tee 2
          i32.const 2
          i32.shl
          i32.const 15496
          i32.add
          local.tee 0
          i32.load
          local.get 1
          i32.eq
          if  ;; label = @4
            local.get 0
            local.get 5
            i32.store
            local.get 5
            br_if 1 (;@3;)
            i32.const 15196
            local.get 9
            i32.const -2
            local.get 2
            i32.rotl
            i32.and
            i32.store
            br 2 (;@2;)
          end
          local.get 8
          i32.const 16
          i32.const 20
          local.get 8
          i32.load offset=16
          local.get 1
          i32.eq
          select
          i32.add
          local.get 5
          i32.store
          local.get 5
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 5
        local.get 8
        i32.store offset=24
        local.get 1
        i32.load offset=16
        local.tee 0
        if  ;; label = @3
          local.get 5
          local.get 0
          i32.store offset=16
          local.get 0
          local.get 5
          i32.store offset=24
        end
        local.get 1
        i32.load offset=20
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        local.get 0
        i32.store offset=20
        local.get 0
        local.get 5
        i32.store offset=24
      end
      block  ;; label = @2
        local.get 3
        i32.const 15
        i32.le_u
        if  ;; label = @3
          local.get 1
          local.get 3
          local.get 7
          i32.add
          local.tee 0
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 0
          local.get 1
          i32.add
          local.tee 0
          local.get 0
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 1
        local.get 7
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 1
        local.get 7
        i32.add
        local.tee 2
        local.get 3
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 2
        local.get 3
        i32.add
        local.get 3
        i32.store
        local.get 10
        if  ;; label = @3
          local.get 10
          i32.const 3
          i32.shr_u
          local.tee 0
          i32.const 3
          i32.shl
          i32.const 15232
          i32.add
          local.set 4
          i32.const 15212
          i32.load
          local.set 5
          block (result i32)  ;; label = @4
            i32.const 1
            local.get 0
            i32.shl
            local.tee 0
            local.get 6
            i32.and
            i32.eqz
            if  ;; label = @5
              i32.const 15192
              local.get 0
              local.get 6
              i32.or
              i32.store
              local.get 4
              br 1 (;@4;)
            end
            local.get 4
            i32.load offset=8
          end
          local.set 0
          local.get 4
          local.get 5
          i32.store offset=8
          local.get 0
          local.get 5
          i32.store offset=12
          local.get 5
          local.get 4
          i32.store offset=12
          local.get 5
          local.get 0
          i32.store offset=8
        end
        i32.const 15212
        local.get 2
        i32.store
        i32.const 15200
        local.get 3
        i32.store
      end
      local.get 1
      i32.const 8
      i32.add
      local.set 0
    end
    local.get 11
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;17;) (type 1) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 3
      i32.and
      if  ;; label = @2
        loop  ;; label = @3
          local.get 1
          i32.load8_u
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          i32.const 1
          i32.add
          local.tee 1
          i32.const 3
          i32.and
          br_if 0 (;@3;)
        end
      end
      loop  ;; label = @2
        local.get 1
        local.tee 2
        i32.const 4
        i32.add
        local.set 1
        local.get 2
        i32.load
        local.tee 3
        i32.const -1
        i32.xor
        local.get 3
        i32.const 16843009
        i32.sub
        i32.and
        i32.const -2139062144
        i32.and
        i32.eqz
        br_if 0 (;@2;)
      end
      local.get 3
      i32.const 255
      i32.and
      i32.eqz
      if  ;; label = @2
        local.get 2
        local.get 0
        i32.sub
        return
      end
      loop  ;; label = @2
        local.get 2
        i32.load8_u offset=1
        local.set 3
        local.get 2
        i32.const 1
        i32.add
        local.tee 1
        local.set 2
        local.get 3
        br_if 0 (;@2;)
      end
    end
    local.get 1
    local.get 0
    i32.sub)
  (func (;18;) (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 1
    i32.load8_u
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.load8_u
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      i32.ne
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        i32.load8_u offset=1
        local.set 2
        local.get 0
        i32.load8_u offset=1
        local.tee 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 2
        local.get 3
        i32.eq
        br_if 0 (;@2;)
      end
    end
    local.get 3
    local.get 2
    i32.sub)
  (func (;19;) (type 1) (param i32) (result i32)
    local.get 0
    i32.load align=1
    local.tee 0
    i32.const 24
    i32.shl
    local.get 0
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 0
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 0
    i32.const 24
    i32.shr_u
    i32.or
    i32.or)
  (func (;20;) (type 4) (param i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=76
      drop
      local.get 0
      i32.load offset=20
      local.get 0
      i32.load offset=28
      i32.ne
      if  ;; label = @2
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=36
        call_indirect (type 0)
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
      call_indirect (type 7)
      drop
    end)
  (func (;21;) (type 3) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    i32.const 3216
    local.get 0
    local.get 1
    i32.const 5
    i32.const 0
    call 25
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;22;) (type 5)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    block  ;; label = @1
      local.get 0
      i32.const 12
      i32.add
      local.get 0
      i32.const 8
      i32.add
      call 3
      br_if 0 (;@1;)
      i32.const 13756
      local.get 0
      i32.load offset=12
      i32.const 2
      i32.shl
      i32.const 4
      i32.add
      call 16
      local.tee 1
      i32.store
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=8
      call 16
      local.tee 1
      if  ;; label = @2
        i32.const 13756
        i32.load
        local.get 0
        i32.load offset=12
        i32.const 2
        i32.shl
        i32.add
        i32.const 0
        i32.store
        i32.const 13756
        i32.load
        local.get 1
        call 2
        i32.eqz
        br_if 1 (;@1;)
      end
      i32.const 13756
      i32.const 0
      i32.store
    end
    local.get 0
    i32.const 16
    i32.add
    global.set 0
    i32.const 14124
    i32.const 13792
    i32.store
    i32.const 14052
    i32.const 42
    i32.store)
  (func (;23;) (type 11) (param i64 i32) (result i64)
    (local i32 i32 i32 i32 i64)
    local.get 0
    i64.const 2
    i64.sub
    i64.const 136
    i64.le_u
    if  ;; label = @1
      local.get 0
      i32.wrap_i64
      local.tee 2
      i32.const 68
      i32.sub
      i32.const 2
      i32.shr_s
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 3
          i32.and
          i32.eqz
          if  ;; label = @4
            local.get 3
            i32.const 1
            i32.sub
            local.set 3
            i32.const 1
            local.set 4
            local.get 1
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          local.get 1
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 1
        local.get 4
        i32.store
      end
      local.get 2
      i32.const 31536000
      i32.mul
      local.get 3
      i32.const 86400
      i32.mul
      i32.add
      i32.const 2087447296
      i32.add
      i64.extend_i32_s
      return
    end
    global.get 0
    i32.const 16
    i32.sub
    local.set 2
    local.get 1
    i32.eqz
    if  ;; label = @1
      local.get 2
      i32.const 0
      i32.store offset=12
      local.get 2
      i32.const 12
      i32.add
      local.set 1
    end
    local.get 0
    i64.const 100
    i64.sub
    local.tee 0
    local.get 0
    i64.const 400
    i64.div_s
    local.tee 6
    i64.const 400
    i64.mul
    i64.sub
    i32.wrap_i64
    local.tee 2
    i32.const 31
    i32.shr_s
    local.get 6
    i32.wrap_i64
    i32.add
    local.set 5
    local.get 1
    block (result i32)  ;; label = @1
      local.get 2
      i32.const 400
      i32.add
      local.get 2
      local.get 2
      i32.const 0
      i32.lt_s
      select
      local.tee 2
      i32.eqz
      if  ;; label = @2
        i32.const 1
        br 1 (;@1;)
      end
      block  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 2
          i32.const 200
          i32.ge_u
          if  ;; label = @4
            local.get 2
            i32.const 300
            i32.ge_u
            if  ;; label = @5
              i32.const 3
              local.set 3
              local.get 2
              i32.const 300
              i32.sub
              br 2 (;@3;)
            end
            i32.const 2
            local.set 3
            local.get 2
            i32.const 200
            i32.sub
            br 1 (;@3;)
          end
          local.get 2
          i32.const 100
          i32.lt_u
          br_if 1 (;@2;)
          i32.const 1
          local.set 3
          local.get 2
          i32.const 100
          i32.sub
        end
        local.tee 2
        br_if 0 (;@2;)
        i32.const 0
        br 1 (;@1;)
      end
      local.get 2
      i32.const 2
      i32.shr_u
      local.set 4
      local.get 2
      i32.const 3
      i32.and
      i32.eqz
    end
    local.tee 2
    i32.store
    local.get 0
    i64.const 31536000
    i64.mul
    local.get 3
    i32.const 24
    i32.mul
    local.get 5
    i32.const 97
    i32.mul
    i32.add
    local.get 4
    i32.add
    local.get 2
    i32.sub
    i64.extend_i32_s
    i64.const 86400
    i64.mul
    i64.add
    i64.const 946771200
    i64.add)
  (func (;24;) (type 4) (param i32)
    (local i32 i32 i64 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    i32.const 0
    i64.const 1
    local.get 1
    i32.const 8
    i32.add
    call 4
    local.tee 2
    if (result i32)  ;; label = @1
      i32.const 13720
      local.get 2
      i32.store
      i32.const -1
    else
      i32.const 0
    end
    if (result i32)  ;; label = @1
      i32.const -1
    else
      local.get 1
      local.get 1
      i64.load offset=8
      local.tee 3
      i64.const 1000000000
      i64.div_u
      local.tee 4
      i64.store32
      local.get 1
      local.get 3
      local.get 4
      i64.const 1000000000
      i64.mul
      i64.sub
      i64.store32 offset=4
      local.get 0
      local.get 1
      i64.load
      i64.store align=4
      i32.const 0
    end
    drop
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;25;) (type 12) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 208
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    local.get 2
    i32.store offset=204
    local.get 5
    i32.const 160
    i32.add
    local.tee 2
    i32.const 0
    i32.const 40
    call 29
    drop
    local.get 5
    local.get 5
    i32.load offset=204
    i32.store offset=200
    block  ;; label = @1
      i32.const 0
      local.get 1
      local.get 5
      i32.const 200
      i32.add
      local.get 5
      i32.const 80
      i32.add
      local.get 2
      local.get 3
      local.get 4
      call 36
      i32.const 0
      i32.lt_s
      if  ;; label = @2
        i32.const -1
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      i32.load offset=76
      i32.const 0
      i32.ge_s
      local.set 6
      local.get 0
      i32.load
      local.set 7
      local.get 0
      i32.load offset=72
      i32.const 0
      i32.le_s
      if  ;; label = @2
        local.get 0
        local.get 7
        i32.const -33
        i32.and
        i32.store
      end
      block (result i32)  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=48
            i32.eqz
            if  ;; label = @5
              local.get 0
              i32.const 80
              i32.store offset=48
              local.get 0
              i32.const 0
              i32.store offset=28
              local.get 0
              i64.const 0
              i64.store offset=16
              local.get 0
              i32.load offset=44
              local.set 8
              local.get 0
              local.get 5
              i32.store offset=44
              br 1 (;@4;)
            end
            local.get 0
            i32.load offset=16
            br_if 1 (;@3;)
          end
          i32.const -1
          local.get 0
          call 28
          br_if 1 (;@2;)
          drop
        end
        local.get 0
        local.get 1
        local.get 5
        i32.const 200
        i32.add
        local.get 5
        i32.const 80
        i32.add
        local.get 5
        i32.const 160
        i32.add
        local.get 3
        local.get 4
        call 36
      end
      local.set 2
      local.get 8
      if  ;; label = @2
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=36
        call_indirect (type 0)
        drop
        local.get 0
        i32.const 0
        i32.store offset=48
        local.get 0
        local.get 8
        i32.store offset=44
        local.get 0
        i32.const 0
        i32.store offset=28
        local.get 0
        i32.load offset=20
        local.set 1
        local.get 0
        i64.const 0
        i64.store offset=16
        local.get 2
        i32.const -1
        local.get 1
        select
        local.set 2
      end
      local.get 0
      local.get 0
      i32.load
      local.tee 0
      local.get 7
      i32.const 32
      i32.and
      i32.or
      i32.store
      i32.const -1
      local.get 2
      local.get 0
      i32.const 32
      i32.and
      select
      local.set 1
      local.get 6
      i32.eqz
      br_if 0 (;@1;)
    end
    local.get 5
    i32.const 208
    i32.add
    global.set 0
    local.get 1)
  (func (;26;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 1
      local.get 2
      i32.load offset=16
      local.tee 3
      if (result i32)  ;; label = @2
        local.get 3
      else
        local.get 2
        call 28
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=16
      end
      local.get 2
      i32.load offset=20
      local.tee 5
      i32.sub
      i32.gt_u
      if  ;; label = @2
        local.get 2
        local.get 0
        local.get 1
        local.get 2
        i32.load offset=36
        call_indirect (type 0)
        return
      end
      block  ;; label = @2
        local.get 2
        i32.load offset=80
        i32.const 0
        i32.lt_s
        if  ;; label = @3
          i32.const 0
          local.set 3
          br 1 (;@2;)
        end
        local.get 1
        local.set 4
        loop  ;; label = @3
          local.get 4
          local.tee 3
          i32.eqz
          if  ;; label = @4
            i32.const 0
            local.set 3
            br 2 (;@2;)
          end
          local.get 0
          local.get 3
          i32.const 1
          i32.sub
          local.tee 4
          i32.add
          i32.load8_u
          i32.const 10
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 2
        local.get 0
        local.get 3
        local.get 2
        i32.load offset=36
        call_indirect (type 0)
        local.tee 4
        local.get 3
        i32.lt_u
        br_if 1 (;@1;)
        local.get 0
        local.get 3
        i32.add
        local.set 0
        local.get 1
        local.get 3
        i32.sub
        local.set 1
        local.get 2
        i32.load offset=20
        local.set 5
      end
      local.get 5
      local.get 0
      local.get 1
      call 12
      local.get 2
      local.get 2
      i32.load offset=20
      local.get 1
      i32.add
      i32.store offset=20
      local.get 1
      local.get 3
      i32.add
      local.set 4
    end
    local.get 4)
  (func (;27;) (type 5)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 10
    i32.store8 offset=15
    block  ;; label = @1
      block  ;; label = @2
        i32.const 3232
        i32.load
        local.tee 1
        if (result i32)  ;; label = @3
          local.get 1
        else
          i32.const 3216
          call 28
          br_if 2 (;@1;)
          i32.const 3232
          i32.load
        end
        i32.const 3236
        i32.load
        local.tee 1
        i32.eq
        br_if 0 (;@2;)
        i32.const 3296
        i32.load
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        i32.const 3236
        local.get 1
        i32.const 1
        i32.add
        i32.store
        local.get 1
        i32.const 10
        i32.store8
        br 1 (;@1;)
      end
      i32.const 3216
      local.get 0
      i32.const 15
      i32.add
      i32.const 1
      i32.const 3252
      i32.load
      call_indirect (type 0)
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.load8_u offset=15
      drop
    end
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;28;) (type 1) (param i32) (result i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load offset=72
    local.tee 1
    i32.const 1
    i32.sub
    local.get 1
    i32.or
    i32.store offset=72
    local.get 0
    i32.load
    local.tee 1
    i32.const 8
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
    local.get 0
    local.get 0
    i32.load offset=44
    local.tee 1
    i32.store offset=28
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 1
    local.get 0
    i32.load offset=48
    i32.add
    i32.store offset=16
    i32.const 0)
  (func (;29;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i64)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8
      local.get 0
      local.get 2
      i32.add
      local.tee 3
      i32.const 1
      i32.sub
      local.get 1
      i32.store8
      local.get 2
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=2
      local.get 0
      local.get 1
      i32.store8 offset=1
      local.get 3
      i32.const 3
      i32.sub
      local.get 1
      i32.store8
      local.get 3
      i32.const 2
      i32.sub
      local.get 1
      i32.store8
      local.get 2
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=3
      local.get 3
      i32.const 4
      i32.sub
      local.get 1
      i32.store8
      local.get 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.tee 3
      local.get 1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee 1
      i32.store
      local.get 3
      local.get 2
      local.get 4
      i32.sub
      i32.const -4
      i32.and
      local.tee 4
      i32.add
      local.tee 2
      i32.const 4
      i32.sub
      local.get 1
      i32.store
      local.get 4
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=8
      local.get 3
      local.get 1
      i32.store offset=4
      local.get 2
      i32.const 8
      i32.sub
      local.get 1
      i32.store
      local.get 2
      i32.const 12
      i32.sub
      local.get 1
      i32.store
      local.get 4
      i32.const 25
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=24
      local.get 3
      local.get 1
      i32.store offset=20
      local.get 3
      local.get 1
      i32.store offset=16
      local.get 3
      local.get 1
      i32.store offset=12
      local.get 2
      i32.const 16
      i32.sub
      local.get 1
      i32.store
      local.get 2
      i32.const 20
      i32.sub
      local.get 1
      i32.store
      local.get 2
      i32.const 24
      i32.sub
      local.get 1
      i32.store
      local.get 2
      i32.const 28
      i32.sub
      local.get 1
      i32.store
      local.get 4
      local.get 3
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee 4
      i32.sub
      local.tee 2
      i32.const 32
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      i64.extend_i32_u
      i64.const 4294967297
      i64.mul
      local.set 5
      local.get 3
      local.get 4
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        local.get 5
        i64.store offset=24
        local.get 1
        local.get 5
        i64.store offset=16
        local.get 1
        local.get 5
        i64.store offset=8
        local.get 1
        local.get 5
        i64.store
        local.get 1
        i32.const 32
        i32.add
        local.set 1
        local.get 2
        i32.const 32
        i32.sub
        local.tee 2
        i32.const 31
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;30;) (type 1) (param i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 1
        i32.load8_u
        local.tee 3
        i32.const 43
        i32.sub
        br_table 0 (;@2;) 1 (;@1;) 0 (;@2;) 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.const 1
      i32.add
      i32.store
    end
    local.get 0
    call 15
    i32.const 3600
    i32.mul
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 2
      i32.load8_u
      i32.const 58
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.const 1
      i32.add
      i32.store
      local.get 0
      call 15
      i32.const 60
      i32.mul
      local.get 1
      i32.add
      local.set 1
      local.get 0
      i32.load
      local.tee 2
      i32.load8_u
      i32.const 58
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.const 1
      i32.add
      i32.store
      local.get 0
      call 15
      local.get 1
      i32.add
      local.set 1
    end
    i32.const 0
    local.get 1
    i32.sub
    local.get 1
    local.get 3
    i32.const 45
    i32.eq
    select)
  (func (;31;) (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.const 14
    i32.eq
    if  ;; label = @1
      i32.const 1402
      i32.const 1223
      i32.const 2152
      i32.load
      select
      return
    end
    local.get 0
    i32.const 65535
    i32.and
    local.set 1
    local.get 0
    i32.const 16
    i32.shr_s
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.const 393215
      i32.gt_s
      br_if 0 (;@1;)
      local.get 1
      i32.const 65535
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.const 2
      i32.shl
      i32.const 2152
      i32.add
      i32.load
      local.tee 0
      i32.const 8
      i32.add
      i32.const 1357
      local.get 0
      select
      return
    end
    i32.const 2150
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.const 1
                  i32.sub
                  br_table 0 (;@7;) 1 (;@6;) 6 (;@1;) 2 (;@5;) 3 (;@4;) 6 (;@1;)
                end
                i32.const 2176
                local.set 0
                local.get 1
                i32.const 1
                i32.le_u
                br_if 3 (;@3;)
                br 5 (;@1;)
              end
              i32.const 2192
              local.set 0
              local.get 1
              i32.const 49
              i32.le_u
              br_if 2 (;@3;)
              br 4 (;@1;)
            end
            local.get 1
            i32.eqz
            br_if 2 (;@2;)
            br 3 (;@1;)
          end
          i32.const 2512
          local.set 0
          local.get 1
          i32.const 3
          i32.gt_u
          br_if 2 (;@1;)
        end
        block  ;; label = @3
          local.get 1
          i32.eqz
          if  ;; label = @4
            local.get 0
            local.set 2
            br 1 (;@3;)
          end
          loop  ;; label = @4
            local.get 0
            i32.load8_u
            local.set 4
            local.get 0
            i32.const 1
            i32.add
            local.tee 2
            local.set 0
            local.get 4
            br_if 0 (;@4;)
            local.get 2
            local.set 0
            local.get 1
            i32.const 1
            i32.sub
            local.tee 1
            br_if 0 (;@4;)
          end
        end
        local.get 3
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
      end
      local.get 2
      i32.load8_u
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 2
      i32.shl
      i32.const 2152
      i32.add
      i32.load
      drop
    end
    local.get 2)
  (func (;32;) (type 4) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.sub
      local.tee 3
      local.get 0
      i32.const 4
      i32.sub
      i32.load
      local.tee 1
      i32.const -8
      i32.and
      local.tee 0
      i32.add
      local.set 5
      block  ;; label = @2
        local.get 1
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        local.get 3
        i32.load
        local.tee 1
        i32.sub
        local.tee 3
        i32.const 15208
        i32.load
        i32.lt_u
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.add
        local.set 0
        i32.const 15212
        i32.load
        local.get 3
        i32.ne
        if  ;; label = @3
          local.get 1
          i32.const 255
          i32.le_u
          if  ;; label = @4
            local.get 3
            i32.load offset=8
            local.tee 2
            local.get 1
            i32.const 3
            i32.shr_u
            local.tee 4
            i32.const 3
            i32.shl
            i32.const 15232
            i32.add
            i32.eq
            drop
            local.get 2
            local.get 3
            i32.load offset=12
            local.tee 1
            i32.eq
            if  ;; label = @5
              i32.const 15192
              i32.const 15192
              i32.load
              i32.const -2
              local.get 4
              i32.rotl
              i32.and
              i32.store
              br 3 (;@2;)
            end
            local.get 2
            local.get 1
            i32.store offset=12
            local.get 1
            local.get 2
            i32.store offset=8
            br 2 (;@2;)
          end
          local.get 3
          i32.load offset=24
          local.set 6
          block  ;; label = @4
            local.get 3
            local.get 3
            i32.load offset=12
            local.tee 1
            i32.ne
            if  ;; label = @5
              local.get 3
              i32.load offset=8
              local.tee 2
              local.get 1
              i32.store offset=12
              local.get 1
              local.get 2
              i32.store offset=8
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 3
              i32.const 20
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 3
              i32.const 16
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              i32.const 0
              local.set 1
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 2
              local.set 7
              local.get 4
              local.tee 1
              i32.const 20
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 1
              i32.const 16
              i32.add
              local.set 2
              local.get 1
              i32.load offset=16
              local.tee 4
              br_if 0 (;@5;)
            end
            local.get 7
            i32.const 0
            i32.store
          end
          local.get 6
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 3
            i32.load offset=28
            local.tee 2
            i32.const 2
            i32.shl
            i32.const 15496
            i32.add
            local.tee 4
            i32.load
            local.get 3
            i32.eq
            if  ;; label = @5
              local.get 4
              local.get 1
              i32.store
              local.get 1
              br_if 1 (;@4;)
              i32.const 15196
              i32.const 15196
              i32.load
              i32.const -2
              local.get 2
              i32.rotl
              i32.and
              i32.store
              br 3 (;@2;)
            end
            local.get 6
            i32.const 16
            i32.const 20
            local.get 6
            i32.load offset=16
            local.get 3
            i32.eq
            select
            i32.add
            local.get 1
            i32.store
            local.get 1
            i32.eqz
            br_if 2 (;@2;)
          end
          local.get 1
          local.get 6
          i32.store offset=24
          local.get 3
          i32.load offset=16
          local.tee 2
          if  ;; label = @4
            local.get 1
            local.get 2
            i32.store offset=16
            local.get 2
            local.get 1
            i32.store offset=24
          end
          local.get 3
          i32.load offset=20
          local.tee 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          local.get 2
          i32.store offset=20
          local.get 2
          local.get 1
          i32.store offset=24
          br 1 (;@2;)
        end
        local.get 5
        i32.load offset=4
        local.tee 1
        i32.const 3
        i32.and
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        i32.const 15200
        local.get 0
        i32.store
        local.get 5
        local.get 1
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 3
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 3
        i32.add
        local.get 0
        i32.store
        return
      end
      local.get 3
      local.get 5
      i32.ge_u
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=4
      local.tee 1
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.const 2
        i32.and
        i32.eqz
        if  ;; label = @3
          i32.const 15216
          i32.load
          local.get 5
          i32.eq
          if  ;; label = @4
            i32.const 15216
            local.get 3
            i32.store
            i32.const 15204
            i32.const 15204
            i32.load
            local.get 0
            i32.add
            local.tee 0
            i32.store
            local.get 3
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 3
            i32.const 15212
            i32.load
            i32.ne
            br_if 3 (;@1;)
            i32.const 15200
            i32.const 0
            i32.store
            i32.const 15212
            i32.const 0
            i32.store
            return
          end
          i32.const 15212
          i32.load
          local.get 5
          i32.eq
          if  ;; label = @4
            i32.const 15212
            local.get 3
            i32.store
            i32.const 15200
            i32.const 15200
            i32.load
            local.get 0
            i32.add
            local.tee 0
            i32.store
            local.get 3
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            i32.add
            local.get 0
            i32.store
            return
          end
          local.get 1
          i32.const -8
          i32.and
          local.get 0
          i32.add
          local.set 0
          block  ;; label = @4
            local.get 1
            i32.const 255
            i32.le_u
            if  ;; label = @5
              local.get 5
              i32.load offset=8
              local.tee 2
              local.get 1
              i32.const 3
              i32.shr_u
              local.tee 4
              i32.const 3
              i32.shl
              i32.const 15232
              i32.add
              i32.eq
              drop
              local.get 2
              local.get 5
              i32.load offset=12
              local.tee 1
              i32.eq
              if  ;; label = @6
                i32.const 15192
                i32.const 15192
                i32.load
                i32.const -2
                local.get 4
                i32.rotl
                i32.and
                i32.store
                br 2 (;@4;)
              end
              local.get 2
              local.get 1
              i32.store offset=12
              local.get 1
              local.get 2
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 5
            i32.load offset=24
            local.set 6
            block  ;; label = @5
              local.get 5
              local.get 5
              i32.load offset=12
              local.tee 1
              i32.ne
              if  ;; label = @6
                local.get 5
                i32.load offset=8
                local.tee 2
                i32.const 15208
                i32.load
                i32.lt_u
                drop
                local.get 2
                local.get 1
                i32.store offset=12
                local.get 1
                local.get 2
                i32.store offset=8
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 5
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 5
                i32.const 16
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                i32.const 0
                local.set 1
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 2
                local.set 7
                local.get 4
                local.tee 1
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 1
                i32.const 16
                i32.add
                local.set 2
                local.get 1
                i32.load offset=16
                local.tee 4
                br_if 0 (;@6;)
              end
              local.get 7
              i32.const 0
              i32.store
            end
            local.get 6
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 5
              i32.load offset=28
              local.tee 2
              i32.const 2
              i32.shl
              i32.const 15496
              i32.add
              local.tee 4
              i32.load
              local.get 5
              i32.eq
              if  ;; label = @6
                local.get 4
                local.get 1
                i32.store
                local.get 1
                br_if 1 (;@5;)
                i32.const 15196
                i32.const 15196
                i32.load
                i32.const -2
                local.get 2
                i32.rotl
                i32.and
                i32.store
                br 2 (;@4;)
              end
              local.get 6
              i32.const 16
              i32.const 20
              local.get 6
              i32.load offset=16
              local.get 5
              i32.eq
              select
              i32.add
              local.get 1
              i32.store
              local.get 1
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 1
            local.get 6
            i32.store offset=24
            local.get 5
            i32.load offset=16
            local.tee 2
            if  ;; label = @5
              local.get 1
              local.get 2
              i32.store offset=16
              local.get 2
              local.get 1
              i32.store offset=24
            end
            local.get 5
            i32.load offset=20
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            local.get 2
            i32.store offset=20
            local.get 2
            local.get 1
            i32.store offset=24
          end
          local.get 3
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          local.get 3
          i32.add
          local.get 0
          i32.store
          local.get 3
          i32.const 15212
          i32.load
          i32.ne
          br_if 1 (;@2;)
          i32.const 15200
          local.get 0
          i32.store
          return
        end
        local.get 5
        local.get 1
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 3
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 3
        i32.add
        local.get 0
        i32.store
      end
      local.get 0
      i32.const 255
      i32.le_u
      if  ;; label = @2
        local.get 0
        i32.const 3
        i32.shr_u
        local.tee 1
        i32.const 3
        i32.shl
        i32.const 15232
        i32.add
        local.set 0
        block (result i32)  ;; label = @3
          i32.const 15192
          i32.load
          local.tee 2
          i32.const 1
          local.get 1
          i32.shl
          local.tee 1
          i32.and
          i32.eqz
          if  ;; label = @4
            i32.const 15192
            local.get 1
            local.get 2
            i32.or
            i32.store
            local.get 0
            br 1 (;@3;)
          end
          local.get 0
          i32.load offset=8
        end
        local.set 2
        local.get 0
        local.get 3
        i32.store offset=8
        local.get 2
        local.get 3
        i32.store offset=12
        local.get 3
        local.get 0
        i32.store offset=12
        local.get 3
        local.get 2
        i32.store offset=8
        return
      end
      i32.const 31
      local.set 2
      local.get 0
      i32.const 16777215
      i32.le_u
      if  ;; label = @2
        local.get 0
        i32.const 8
        i32.shr_u
        local.tee 1
        local.get 1
        i32.const 1048320
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 8
        i32.and
        local.tee 1
        i32.shl
        local.tee 2
        local.get 2
        i32.const 520192
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 4
        i32.and
        local.tee 2
        i32.shl
        local.tee 4
        local.get 4
        i32.const 245760
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 2
        i32.and
        local.tee 4
        i32.shl
        i32.const 15
        i32.shr_u
        local.get 1
        local.get 2
        i32.or
        local.get 4
        i32.or
        i32.sub
        local.tee 1
        i32.const 1
        i32.shl
        local.get 0
        local.get 1
        i32.const 21
        i32.add
        i32.shr_u
        i32.const 1
        i32.and
        i32.or
        i32.const 28
        i32.add
        local.set 2
      end
      local.get 3
      local.get 2
      i32.store offset=28
      local.get 3
      i64.const 0
      i64.store offset=16 align=4
      local.get 2
      i32.const 2
      i32.shl
      i32.const 15496
      i32.add
      local.set 1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 15196
            i32.load
            local.tee 4
            i32.const 1
            local.get 2
            i32.shl
            local.tee 7
            i32.and
            i32.eqz
            if  ;; label = @5
              i32.const 15196
              local.get 4
              local.get 7
              i32.or
              i32.store
              local.get 1
              local.get 3
              i32.store
              local.get 3
              local.get 1
              i32.store offset=24
              br 1 (;@4;)
            end
            local.get 0
            i32.const 0
            i32.const 25
            local.get 2
            i32.const 1
            i32.shr_u
            i32.sub
            local.get 2
            i32.const 31
            i32.eq
            select
            i32.shl
            local.set 2
            local.get 1
            i32.load
            local.set 1
            loop  ;; label = @5
              local.get 1
              local.tee 4
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 0
              i32.eq
              br_if 2 (;@3;)
              local.get 2
              i32.const 29
              i32.shr_u
              local.set 1
              local.get 2
              i32.const 1
              i32.shl
              local.set 2
              local.get 4
              local.get 1
              i32.const 4
              i32.and
              i32.add
              local.tee 7
              i32.const 16
              i32.add
              i32.load
              local.tee 1
              br_if 0 (;@5;)
            end
            local.get 7
            local.get 3
            i32.store offset=16
            local.get 3
            local.get 4
            i32.store offset=24
          end
          local.get 3
          local.get 3
          i32.store offset=12
          local.get 3
          local.get 3
          i32.store offset=8
          br 1 (;@2;)
        end
        local.get 4
        i32.load offset=8
        local.tee 0
        local.get 3
        i32.store offset=12
        local.get 4
        local.get 3
        i32.store offset=8
        local.get 3
        i32.const 0
        i32.store offset=24
        local.get 3
        local.get 4
        i32.store offset=12
        local.get 3
        local.get 0
        i32.store offset=8
      end
      i32.const 15224
      i32.const 15224
      i32.load
      i32.const 1
      i32.sub
      local.tee 0
      i32.const -1
      local.get 0
      select
      i32.store
    end)
  (func (;33;) (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    block (result i32)  ;; label = @1
      block  ;; label = @2
        local.get 0
        if (result i32)  ;; label = @3
          local.get 1
          i32.const 127
          i32.le_u
          br_if 1 (;@2;)
          block  ;; label = @4
            i32.const 14124
            i32.load
            i32.load
            i32.eqz
            if  ;; label = @5
              local.get 1
              i32.const -128
              i32.and
              i32.const 57216
              i32.eq
              br_if 3 (;@2;)
              br 1 (;@4;)
            end
            local.get 1
            i32.const 2047
            i32.le_u
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=1
              local.get 0
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 192
              i32.or
              i32.store8
              i32.const 2
              br 4 (;@1;)
            end
            local.get 1
            i32.const -8192
            i32.and
            i32.const 57344
            i32.ne
            local.get 1
            i32.const 55296
            i32.ge_u
            i32.and
            i32.eqz
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=2
              local.get 0
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 224
              i32.or
              i32.store8
              local.get 0
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=1
              i32.const 3
              br 4 (;@1;)
            end
            local.get 1
            i32.const 65536
            i32.sub
            i32.const 1048575
            i32.le_u
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=3
              local.get 0
              local.get 1
              i32.const 18
              i32.shr_u
              i32.const 240
              i32.or
              i32.store8
              local.get 0
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=2
              local.get 0
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=1
              i32.const 4
              br 4 (;@1;)
            end
          end
          i32.const 13720
          i32.const 25
          i32.store
          i32.const -1
        else
          i32.const 1
        end
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.store8
      i32.const 1
    end)
  (func (;34;) (type 14) (param i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 1
                              i32.const 9
                              i32.sub
                              br_table 0 (;@13;) 10 (;@3;) 11 (;@2;) 12 (;@1;) 10 (;@3;) 11 (;@2;) 2 (;@11;) 3 (;@10;) 4 (;@9;) 5 (;@8;) 12 (;@1;) 11 (;@2;) 12 (;@1;) 12 (;@1;) 10 (;@3;) 11 (;@2;) 7 (;@6;) 8 (;@5;) 9 (;@4;)
                            end
                            local.get 2
                            local.get 2
                            i32.load
                            local.tee 1
                            i32.const 4
                            i32.add
                            i32.store
                            local.get 0
                            local.get 1
                            i32.load
                            i32.store
                            return
                          end
                          unreachable
                        end
                        local.get 2
                        local.get 2
                        i32.load
                        local.tee 1
                        i32.const 4
                        i32.add
                        i32.store
                        local.get 0
                        local.get 1
                        i64.load16_s
                        i64.store
                        return
                      end
                      local.get 2
                      local.get 2
                      i32.load
                      local.tee 1
                      i32.const 4
                      i32.add
                      i32.store
                      local.get 0
                      local.get 1
                      i64.load16_u
                      i64.store
                      return
                    end
                    local.get 2
                    local.get 2
                    i32.load
                    local.tee 1
                    i32.const 4
                    i32.add
                    i32.store
                    local.get 0
                    local.get 1
                    i64.load8_s
                    i64.store
                    return
                  end
                  local.get 2
                  local.get 2
                  i32.load
                  local.tee 1
                  i32.const 4
                  i32.add
                  i32.store
                  local.get 0
                  local.get 1
                  i64.load8_u
                  i64.store
                  return
                end
                unreachable
              end
              local.get 2
              local.get 2
              i32.load
              i32.const 7
              i32.add
              i32.const -8
              i32.and
              local.tee 1
              i32.const 8
              i32.add
              i32.store
              local.get 0
              local.get 1
              f64.load
              f64.store
              return
            end
            local.get 0
            local.get 2
            local.get 3
            call_indirect (type 3)
          end
          return
        end
        local.get 2
        local.get 2
        i32.load
        local.tee 1
        i32.const 4
        i32.add
        i32.store
        local.get 0
        local.get 1
        i64.load32_s
        i64.store
        return
      end
      local.get 2
      local.get 2
      i32.load
      local.tee 1
      i32.const 4
      i32.add
      i32.store
      local.get 0
      local.get 1
      i64.load32_u
      i64.store
      return
    end
    local.get 2
    local.get 2
    i32.load
    i32.const 7
    i32.add
    i32.const -8
    i32.and
    local.tee 1
    i32.const 8
    i32.add
    i32.store
    local.get 0
    local.get 1
    i64.load
    i64.store)
  (func (;35;) (type 1) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.load
    i32.load8_s
    i32.const 48
    i32.sub
    i32.const 10
    i32.ge_u
    if  ;; label = @1
      i32.const 0
      return
    end
    loop  ;; label = @1
      local.get 0
      i32.load
      local.set 3
      i32.const -1
      local.set 1
      local.get 2
      i32.const 214748364
      i32.le_u
      if  ;; label = @2
        i32.const -1
        local.get 3
        i32.load8_s
        i32.const 48
        i32.sub
        local.tee 1
        local.get 2
        i32.const 10
        i32.mul
        local.tee 2
        i32.add
        local.get 1
        i32.const 2147483647
        local.get 2
        i32.sub
        i32.gt_s
        select
        local.set 1
      end
      local.get 0
      local.get 3
      i32.const 1
      i32.add
      i32.store
      local.get 1
      local.set 2
      local.get 3
      i32.load8_s offset=1
      i32.const 48
      i32.sub
      i32.const 10
      i32.lt_u
      br_if 0 (;@1;)
    end
    local.get 2)
  (func (;36;) (type 15) (param i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 7
    global.set 0
    local.get 7
    local.get 1
    i32.store offset=76
    local.get 7
    i32.const 55
    i32.add
    local.set 22
    local.get 7
    i32.const 56
    i32.add
    local.set 18
    i32.const 0
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              local.get 1
              i32.const 2147483647
              local.get 13
              i32.sub
              i32.gt_s
              br_if 1 (;@4;)
              local.get 1
              local.get 13
              i32.add
              local.set 13
              local.get 7
              i32.load offset=76
              local.tee 12
              local.set 1
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 12
                    i32.load8_u
                    local.tee 10
                    if  ;; label = @9
                      loop  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 10
                            i32.const 255
                            i32.and
                            local.tee 8
                            i32.eqz
                            if  ;; label = @13
                              local.get 1
                              local.set 10
                              br 1 (;@12;)
                            end
                            local.get 8
                            i32.const 37
                            i32.ne
                            br_if 1 (;@11;)
                            local.get 1
                            local.set 10
                            loop  ;; label = @13
                              local.get 1
                              i32.load8_u offset=1
                              i32.const 37
                              i32.ne
                              br_if 1 (;@12;)
                              local.get 7
                              local.get 1
                              i32.const 2
                              i32.add
                              local.tee 8
                              i32.store offset=76
                              local.get 10
                              i32.const 1
                              i32.add
                              local.set 10
                              local.get 1
                              i32.load8_u offset=2
                              local.set 11
                              local.get 8
                              local.set 1
                              local.get 11
                              i32.const 37
                              i32.eq
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 10
                          local.get 12
                          i32.sub
                          local.tee 1
                          i32.const 2147483647
                          local.get 13
                          i32.sub
                          local.tee 23
                          i32.gt_s
                          br_if 7 (;@4;)
                          local.get 0
                          if  ;; label = @12
                            local.get 0
                            local.get 12
                            local.get 1
                            call 8
                          end
                          local.get 1
                          br_if 6 (;@5;)
                          i32.const -1
                          local.set 16
                          i32.const 1
                          local.set 8
                          local.get 7
                          i32.load offset=76
                          local.set 1
                          block  ;; label = @12
                            local.get 1
                            i32.load8_s offset=1
                            i32.const 48
                            i32.sub
                            i32.const 10
                            i32.ge_u
                            br_if 0 (;@12;)
                            local.get 1
                            i32.load8_u offset=2
                            i32.const 36
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 1
                            i32.load8_s offset=1
                            i32.const 48
                            i32.sub
                            local.set 16
                            i32.const 1
                            local.set 20
                            i32.const 3
                            local.set 8
                          end
                          local.get 7
                          local.get 1
                          local.get 8
                          i32.add
                          local.tee 1
                          i32.store offset=76
                          i32.const 0
                          local.set 14
                          block  ;; label = @12
                            local.get 1
                            i32.load8_s
                            local.tee 19
                            i32.const 32
                            i32.sub
                            local.tee 11
                            i32.const 31
                            i32.gt_u
                            if  ;; label = @13
                              local.get 1
                              local.set 8
                              br 1 (;@12;)
                            end
                            local.get 1
                            local.set 8
                            i32.const 1
                            local.get 11
                            i32.shl
                            local.tee 9
                            i32.const 75913
                            i32.and
                            i32.eqz
                            br_if 0 (;@12;)
                            loop  ;; label = @13
                              local.get 7
                              local.get 1
                              i32.const 1
                              i32.add
                              local.tee 8
                              i32.store offset=76
                              local.get 9
                              local.get 14
                              i32.or
                              local.set 14
                              local.get 1
                              i32.load8_s offset=1
                              local.tee 19
                              i32.const 32
                              i32.sub
                              local.tee 11
                              i32.const 32
                              i32.ge_u
                              br_if 1 (;@12;)
                              local.get 8
                              local.set 1
                              i32.const 1
                              local.get 11
                              i32.shl
                              local.tee 9
                              i32.const 75913
                              i32.and
                              br_if 0 (;@13;)
                            end
                          end
                          block  ;; label = @12
                            local.get 19
                            i32.const 42
                            i32.eq
                            if  ;; label = @13
                              local.get 7
                              block (result i32)  ;; label = @14
                                block  ;; label = @15
                                  local.get 8
                                  i32.load8_s offset=1
                                  i32.const 48
                                  i32.sub
                                  i32.const 10
                                  i32.ge_u
                                  br_if 0 (;@15;)
                                  local.get 7
                                  i32.load offset=76
                                  local.tee 1
                                  i32.load8_u offset=2
                                  i32.const 36
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 1
                                  i32.load8_s offset=1
                                  i32.const 2
                                  i32.shl
                                  local.get 4
                                  i32.add
                                  i32.const 192
                                  i32.sub
                                  i32.const 10
                                  i32.store
                                  local.get 1
                                  i32.load8_s offset=1
                                  i32.const 3
                                  i32.shl
                                  local.get 3
                                  i32.add
                                  i32.const 384
                                  i32.sub
                                  i32.load
                                  local.set 15
                                  i32.const 1
                                  local.set 20
                                  local.get 1
                                  i32.const 3
                                  i32.add
                                  br 1 (;@14;)
                                end
                                local.get 20
                                br_if 6 (;@8;)
                                i32.const 0
                                local.set 20
                                i32.const 0
                                local.set 15
                                local.get 0
                                if  ;; label = @15
                                  local.get 2
                                  local.get 2
                                  i32.load
                                  local.tee 1
                                  i32.const 4
                                  i32.add
                                  i32.store
                                  local.get 1
                                  i32.load
                                  local.set 15
                                end
                                local.get 7
                                i32.load offset=76
                                i32.const 1
                                i32.add
                              end
                              local.tee 1
                              i32.store offset=76
                              local.get 15
                              i32.const 0
                              i32.ge_s
                              br_if 1 (;@12;)
                              i32.const 0
                              local.get 15
                              i32.sub
                              local.set 15
                              local.get 14
                              i32.const 8192
                              i32.or
                              local.set 14
                              br 1 (;@12;)
                            end
                            local.get 7
                            i32.const 76
                            i32.add
                            call 35
                            local.tee 15
                            i32.const 0
                            i32.lt_s
                            br_if 8 (;@4;)
                            local.get 7
                            i32.load offset=76
                            local.set 1
                          end
                          i32.const 0
                          local.set 8
                          i32.const -1
                          local.set 9
                          block (result i32)  ;; label = @12
                            i32.const 0
                            local.get 1
                            i32.load8_u
                            i32.const 46
                            i32.ne
                            br_if 0 (;@12;)
                            drop
                            local.get 1
                            i32.load8_u offset=1
                            i32.const 42
                            i32.eq
                            if  ;; label = @13
                              local.get 7
                              block (result i32)  ;; label = @14
                                block  ;; label = @15
                                  local.get 1
                                  i32.load8_s offset=2
                                  i32.const 48
                                  i32.sub
                                  i32.const 10
                                  i32.ge_u
                                  br_if 0 (;@15;)
                                  local.get 7
                                  i32.load offset=76
                                  local.tee 1
                                  i32.load8_u offset=3
                                  i32.const 36
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 1
                                  i32.load8_s offset=2
                                  i32.const 2
                                  i32.shl
                                  local.get 4
                                  i32.add
                                  i32.const 192
                                  i32.sub
                                  i32.const 10
                                  i32.store
                                  local.get 1
                                  i32.load8_s offset=2
                                  i32.const 3
                                  i32.shl
                                  local.get 3
                                  i32.add
                                  i32.const 384
                                  i32.sub
                                  i32.load
                                  local.set 9
                                  local.get 1
                                  i32.const 4
                                  i32.add
                                  br 1 (;@14;)
                                end
                                local.get 20
                                br_if 6 (;@8;)
                                local.get 0
                                if (result i32)  ;; label = @15
                                  local.get 2
                                  local.get 2
                                  i32.load
                                  local.tee 1
                                  i32.const 4
                                  i32.add
                                  i32.store
                                  local.get 1
                                  i32.load
                                else
                                  i32.const 0
                                end
                                local.set 9
                                local.get 7
                                i32.load offset=76
                                i32.const 2
                                i32.add
                              end
                              local.tee 1
                              i32.store offset=76
                              local.get 9
                              i32.const -1
                              i32.xor
                              i32.const 31
                              i32.shr_u
                              br 1 (;@12;)
                            end
                            local.get 7
                            local.get 1
                            i32.const 1
                            i32.add
                            i32.store offset=76
                            local.get 7
                            i32.const 76
                            i32.add
                            call 35
                            local.set 9
                            local.get 7
                            i32.load offset=76
                            local.set 1
                            i32.const 1
                          end
                          local.set 21
                          loop  ;; label = @12
                            local.get 8
                            local.set 17
                            i32.const 28
                            local.set 10
                            local.get 1
                            i32.load8_s
                            i32.const 123
                            i32.sub
                            i32.const -58
                            i32.lt_u
                            br_if 9 (;@3;)
                            local.get 7
                            local.get 1
                            i32.const 1
                            i32.add
                            local.tee 19
                            i32.store offset=76
                            local.get 1
                            i32.load8_s
                            local.set 8
                            local.get 19
                            local.set 1
                            local.get 8
                            local.get 17
                            i32.const 58
                            i32.mul
                            i32.add
                            i32.const 2623
                            i32.add
                            i32.load8_u
                            local.tee 8
                            i32.const 1
                            i32.sub
                            i32.const 8
                            i32.lt_u
                            br_if 0 (;@12;)
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 8
                              i32.const 27
                              i32.ne
                              if  ;; label = @14
                                local.get 8
                                i32.eqz
                                br_if 11 (;@3;)
                                local.get 16
                                i32.const 0
                                i32.ge_s
                                if  ;; label = @15
                                  local.get 4
                                  local.get 16
                                  i32.const 2
                                  i32.shl
                                  i32.add
                                  local.get 8
                                  i32.store
                                  local.get 7
                                  local.get 3
                                  local.get 16
                                  i32.const 3
                                  i32.shl
                                  i32.add
                                  i64.load
                                  i64.store offset=64
                                  br 2 (;@13;)
                                end
                                local.get 0
                                i32.eqz
                                br_if 8 (;@6;)
                                local.get 7
                                i32.const -64
                                i32.sub
                                local.get 8
                                local.get 2
                                local.get 6
                                call 34
                                local.get 7
                                i32.load offset=76
                                local.set 19
                                br 2 (;@12;)
                              end
                              local.get 16
                              i32.const 0
                              i32.ge_s
                              br_if 10 (;@3;)
                            end
                            i32.const 0
                            local.set 1
                            local.get 0
                            i32.eqz
                            br_if 7 (;@5;)
                          end
                          local.get 14
                          i32.const -65537
                          i32.and
                          local.tee 11
                          local.get 14
                          local.get 14
                          i32.const 8192
                          i32.and
                          select
                          local.set 8
                          i32.const 0
                          local.set 14
                          i32.const 1024
                          local.set 16
                          local.get 18
                          local.set 10
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block (result i32)  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block (result i32)  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          local.get 19
                                                          i32.const 1
                                                          i32.sub
                                                          i32.load8_s
                                                          local.tee 1
                                                          i32.const -33
                                                          i32.and
                                                          local.get 1
                                                          local.get 1
                                                          i32.const 15
                                                          i32.and
                                                          i32.const 3
                                                          i32.eq
                                                          select
                                                          local.get 1
                                                          local.get 17
                                                          select
                                                          local.tee 1
                                                          i32.const 88
                                                          i32.sub
                                                          br_table 4 (;@23;) 20 (;@7;) 20 (;@7;) 20 (;@7;) 20 (;@7;) 20 (;@7;) 20 (;@7;) 20 (;@7;) 20 (;@7;) 14 (;@13;) 20 (;@7;) 15 (;@12;) 6 (;@21;) 14 (;@13;) 14 (;@13;) 14 (;@13;) 20 (;@7;) 6 (;@21;) 20 (;@7;) 20 (;@7;) 20 (;@7;) 20 (;@7;) 2 (;@25;) 5 (;@22;) 3 (;@24;) 20 (;@7;) 20 (;@7;) 9 (;@18;) 20 (;@7;) 1 (;@26;) 20 (;@7;) 20 (;@7;) 4 (;@23;) 0 (;@27;)
                                                        end
                                                        block  ;; label = @27
                                                          local.get 1
                                                          i32.const 65
                                                          i32.sub
                                                          br_table 14 (;@13;) 20 (;@7;) 11 (;@16;) 20 (;@7;) 14 (;@13;) 14 (;@13;) 14 (;@13;) 0 (;@27;)
                                                        end
                                                        local.get 1
                                                        i32.const 83
                                                        i32.eq
                                                        br_if 9 (;@17;)
                                                        br 19 (;@7;)
                                                      end
                                                      local.get 7
                                                      i64.load offset=64
                                                      local.set 24
                                                      i32.const 1024
                                                      br 5 (;@20;)
                                                    end
                                                    i32.const 0
                                                    local.set 1
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  local.get 17
                                                                  i32.const 255
                                                                  i32.and
                                                                  br_table 0 (;@31;) 1 (;@30;) 2 (;@29;) 3 (;@28;) 4 (;@27;) 26 (;@5;) 5 (;@26;) 6 (;@25;) 26 (;@5;)
                                                                end
                                                                local.get 7
                                                                i32.load offset=64
                                                                local.get 13
                                                                i32.store
                                                                br 25 (;@5;)
                                                              end
                                                              local.get 7
                                                              i32.load offset=64
                                                              local.get 13
                                                              i32.store
                                                              br 24 (;@5;)
                                                            end
                                                            local.get 7
                                                            i32.load offset=64
                                                            local.get 13
                                                            i64.extend_i32_s
                                                            i64.store
                                                            br 23 (;@5;)
                                                          end
                                                          local.get 7
                                                          i32.load offset=64
                                                          local.get 13
                                                          i32.store16
                                                          br 22 (;@5;)
                                                        end
                                                        local.get 7
                                                        i32.load offset=64
                                                        local.get 13
                                                        i32.store8
                                                        br 21 (;@5;)
                                                      end
                                                      local.get 7
                                                      i32.load offset=64
                                                      local.get 13
                                                      i32.store
                                                      br 20 (;@5;)
                                                    end
                                                    local.get 7
                                                    i32.load offset=64
                                                    local.get 13
                                                    i64.extend_i32_s
                                                    i64.store
                                                    br 19 (;@5;)
                                                  end
                                                  local.get 9
                                                  i32.const 8
                                                  local.get 9
                                                  i32.const 8
                                                  i32.gt_u
                                                  select
                                                  local.set 9
                                                  local.get 8
                                                  i32.const 8
                                                  i32.or
                                                  local.set 8
                                                  i32.const 120
                                                  local.set 1
                                                end
                                                local.get 18
                                                local.set 11
                                                local.get 1
                                                i32.const 32
                                                i32.and
                                                local.set 17
                                                local.get 7
                                                i64.load offset=64
                                                local.tee 24
                                                i64.eqz
                                                i32.eqz
                                                if  ;; label = @23
                                                  loop  ;; label = @24
                                                    local.get 11
                                                    i32.const 1
                                                    i32.sub
                                                    local.tee 11
                                                    local.get 24
                                                    i32.wrap_i64
                                                    i32.const 15
                                                    i32.and
                                                    i32.const 3152
                                                    i32.add
                                                    i32.load8_u
                                                    local.get 17
                                                    i32.or
                                                    i32.store8
                                                    local.get 24
                                                    i64.const 15
                                                    i64.gt_u
                                                    local.set 12
                                                    local.get 24
                                                    i64.const 4
                                                    i64.shr_u
                                                    local.set 24
                                                    local.get 12
                                                    br_if 0 (;@24;)
                                                  end
                                                end
                                                local.get 11
                                                local.set 12
                                                local.get 7
                                                i64.load offset=64
                                                i64.eqz
                                                br_if 3 (;@19;)
                                                local.get 8
                                                i32.const 8
                                                i32.and
                                                i32.eqz
                                                br_if 3 (;@19;)
                                                local.get 1
                                                i32.const 4
                                                i32.shr_u
                                                i32.const 1024
                                                i32.add
                                                local.set 16
                                                i32.const 2
                                                local.set 14
                                                br 3 (;@19;)
                                              end
                                              local.get 18
                                              local.set 1
                                              local.get 7
                                              i64.load offset=64
                                              local.tee 24
                                              i64.eqz
                                              i32.eqz
                                              if  ;; label = @22
                                                loop  ;; label = @23
                                                  local.get 1
                                                  i32.const 1
                                                  i32.sub
                                                  local.tee 1
                                                  local.get 24
                                                  i32.wrap_i64
                                                  i32.const 7
                                                  i32.and
                                                  i32.const 48
                                                  i32.or
                                                  i32.store8
                                                  local.get 24
                                                  i64.const 7
                                                  i64.gt_u
                                                  local.set 11
                                                  local.get 24
                                                  i64.const 3
                                                  i64.shr_u
                                                  local.set 24
                                                  local.get 11
                                                  br_if 0 (;@23;)
                                                end
                                              end
                                              local.get 1
                                              local.set 12
                                              local.get 8
                                              i32.const 8
                                              i32.and
                                              i32.eqz
                                              br_if 2 (;@19;)
                                              local.get 9
                                              local.get 18
                                              local.get 12
                                              i32.sub
                                              local.tee 1
                                              i32.const 1
                                              i32.add
                                              local.get 1
                                              local.get 9
                                              i32.lt_s
                                              select
                                              local.set 9
                                              br 2 (;@19;)
                                            end
                                            local.get 7
                                            i64.load offset=64
                                            local.tee 24
                                            i64.const 0
                                            i64.lt_s
                                            if  ;; label = @21
                                              local.get 7
                                              i64.const 0
                                              local.get 24
                                              i64.sub
                                              local.tee 24
                                              i64.store offset=64
                                              i32.const 1
                                              local.set 14
                                              i32.const 1024
                                              br 1 (;@20;)
                                            end
                                            local.get 8
                                            i32.const 2048
                                            i32.and
                                            if  ;; label = @21
                                              i32.const 1
                                              local.set 14
                                              i32.const 1025
                                              br 1 (;@20;)
                                            end
                                            i32.const 1026
                                            i32.const 1024
                                            local.get 8
                                            i32.const 1
                                            i32.and
                                            local.tee 14
                                            select
                                          end
                                          local.set 16
                                          local.get 24
                                          local.get 18
                                          call 13
                                          local.set 12
                                        end
                                        local.get 21
                                        i32.const 0
                                        local.get 9
                                        i32.const 0
                                        i32.lt_s
                                        select
                                        br_if 14 (;@4;)
                                        local.get 8
                                        i32.const -65537
                                        i32.and
                                        local.get 8
                                        local.get 21
                                        select
                                        local.set 8
                                        block  ;; label = @19
                                          local.get 7
                                          i64.load offset=64
                                          local.tee 24
                                          i64.const 0
                                          i64.ne
                                          br_if 0 (;@19;)
                                          local.get 9
                                          br_if 0 (;@19;)
                                          local.get 18
                                          local.tee 12
                                          local.set 10
                                          i32.const 0
                                          local.set 9
                                          br 12 (;@7;)
                                        end
                                        local.get 9
                                        local.get 24
                                        i64.eqz
                                        local.get 18
                                        local.get 12
                                        i32.sub
                                        i32.add
                                        local.tee 1
                                        local.get 1
                                        local.get 9
                                        i32.lt_s
                                        select
                                        local.set 9
                                        br 11 (;@7;)
                                      end
                                      local.get 7
                                      i32.load offset=64
                                      local.tee 1
                                      i32.const 1439
                                      local.get 1
                                      select
                                      local.tee 12
                                      local.tee 10
                                      i32.const 0
                                      local.get 9
                                      i32.const 2147483647
                                      local.get 9
                                      i32.const 2147483647
                                      i32.lt_u
                                      select
                                      local.tee 8
                                      call 42
                                      local.tee 1
                                      local.get 10
                                      i32.sub
                                      local.get 8
                                      local.get 1
                                      select
                                      local.tee 1
                                      local.get 12
                                      i32.add
                                      local.set 10
                                      local.get 9
                                      i32.const 0
                                      i32.ge_s
                                      if  ;; label = @18
                                        local.get 11
                                        local.set 8
                                        local.get 1
                                        local.set 9
                                        br 11 (;@7;)
                                      end
                                      local.get 11
                                      local.set 8
                                      local.get 1
                                      local.set 9
                                      local.get 10
                                      i32.load8_u
                                      br_if 13 (;@4;)
                                      br 10 (;@7;)
                                    end
                                    local.get 9
                                    if  ;; label = @17
                                      local.get 7
                                      i32.load offset=64
                                      br 2 (;@15;)
                                    end
                                    i32.const 0
                                    local.set 1
                                    local.get 0
                                    i32.const 32
                                    local.get 15
                                    i32.const 0
                                    local.get 8
                                    call 9
                                    br 2 (;@14;)
                                  end
                                  local.get 7
                                  i32.const 0
                                  i32.store offset=12
                                  local.get 7
                                  local.get 7
                                  i64.load offset=64
                                  i64.store32 offset=8
                                  local.get 7
                                  local.get 7
                                  i32.const 8
                                  i32.add
                                  local.tee 1
                                  i32.store offset=64
                                  i32.const -1
                                  local.set 9
                                  local.get 1
                                end
                                local.set 10
                                i32.const 0
                                local.set 1
                                block  ;; label = @15
                                  loop  ;; label = @16
                                    local.get 10
                                    i32.load
                                    local.tee 11
                                    i32.eqz
                                    br_if 1 (;@15;)
                                    block  ;; label = @17
                                      local.get 7
                                      i32.const 4
                                      i32.add
                                      local.get 11
                                      call 33
                                      local.tee 12
                                      i32.const 0
                                      i32.lt_s
                                      local.tee 11
                                      br_if 0 (;@17;)
                                      local.get 12
                                      local.get 9
                                      local.get 1
                                      i32.sub
                                      i32.gt_u
                                      br_if 0 (;@17;)
                                      local.get 10
                                      i32.const 4
                                      i32.add
                                      local.set 10
                                      local.get 9
                                      local.get 1
                                      local.get 12
                                      i32.add
                                      local.tee 1
                                      i32.gt_u
                                      br_if 1 (;@16;)
                                      br 2 (;@15;)
                                    end
                                  end
                                  local.get 11
                                  br_if 13 (;@2;)
                                end
                                i32.const 61
                                local.set 10
                                local.get 1
                                i32.const 0
                                i32.lt_s
                                br_if 11 (;@3;)
                                local.get 0
                                i32.const 32
                                local.get 15
                                local.get 1
                                local.get 8
                                call 9
                                local.get 1
                                i32.eqz
                                if  ;; label = @15
                                  i32.const 0
                                  local.set 1
                                  br 1 (;@14;)
                                end
                                i32.const 0
                                local.set 9
                                local.get 7
                                i32.load offset=64
                                local.set 10
                                loop  ;; label = @15
                                  local.get 10
                                  i32.load
                                  local.tee 11
                                  i32.eqz
                                  br_if 1 (;@14;)
                                  local.get 7
                                  i32.const 4
                                  i32.add
                                  local.get 11
                                  call 33
                                  local.tee 11
                                  local.get 9
                                  i32.add
                                  local.tee 9
                                  local.get 1
                                  i32.gt_u
                                  br_if 1 (;@14;)
                                  local.get 0
                                  local.get 7
                                  i32.const 4
                                  i32.add
                                  local.get 11
                                  call 8
                                  local.get 10
                                  i32.const 4
                                  i32.add
                                  local.set 10
                                  local.get 1
                                  local.get 9
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 0
                              i32.const 32
                              local.get 15
                              local.get 1
                              local.get 8
                              i32.const 8192
                              i32.xor
                              call 9
                              local.get 15
                              local.get 1
                              local.get 1
                              local.get 15
                              i32.lt_s
                              select
                              local.set 1
                              br 8 (;@5;)
                            end
                            local.get 21
                            i32.const 0
                            local.get 9
                            i32.const 0
                            i32.lt_s
                            select
                            br_if 8 (;@4;)
                            i32.const 61
                            local.set 10
                            local.get 0
                            local.get 7
                            f64.load offset=64
                            local.get 15
                            local.get 9
                            local.get 8
                            local.get 1
                            local.get 5
                            call_indirect (type 8)
                            local.tee 1
                            i32.const 0
                            i32.ge_s
                            br_if 7 (;@5;)
                            br 9 (;@3;)
                          end
                          local.get 7
                          local.get 7
                          i64.load offset=64
                          i64.store8 offset=55
                          i32.const 1
                          local.set 9
                          local.get 22
                          local.set 12
                          local.get 11
                          local.set 8
                          br 4 (;@7;)
                        end
                        local.get 7
                        local.get 1
                        i32.const 1
                        i32.add
                        local.tee 8
                        i32.store offset=76
                        local.get 1
                        i32.load8_u offset=1
                        local.set 10
                        local.get 8
                        local.set 1
                        br 0 (;@10;)
                      end
                      unreachable
                    end
                    local.get 0
                    br_if 7 (;@1;)
                    local.get 20
                    i32.eqz
                    br_if 2 (;@6;)
                    i32.const 1
                    local.set 1
                    loop  ;; label = @9
                      local.get 4
                      local.get 1
                      i32.const 2
                      i32.shl
                      i32.add
                      i32.load
                      local.tee 0
                      if  ;; label = @10
                        local.get 3
                        local.get 1
                        i32.const 3
                        i32.shl
                        i32.add
                        local.get 0
                        local.get 2
                        local.get 6
                        call 34
                        i32.const 1
                        local.set 13
                        local.get 1
                        i32.const 1
                        i32.add
                        local.tee 1
                        i32.const 10
                        i32.ne
                        br_if 1 (;@9;)
                        br 9 (;@1;)
                      end
                    end
                    i32.const 1
                    local.set 13
                    local.get 1
                    i32.const 10
                    i32.ge_u
                    br_if 7 (;@1;)
                    loop  ;; label = @9
                      local.get 4
                      local.get 1
                      i32.const 2
                      i32.shl
                      i32.add
                      i32.load
                      br_if 1 (;@8;)
                      local.get 1
                      i32.const 1
                      i32.add
                      local.tee 1
                      i32.const 10
                      i32.ne
                      br_if 0 (;@9;)
                    end
                    br 7 (;@1;)
                  end
                  i32.const 28
                  local.set 10
                  br 4 (;@3;)
                end
                local.get 9
                local.get 10
                local.get 12
                i32.sub
                local.tee 17
                local.get 9
                local.get 17
                i32.gt_s
                select
                local.tee 11
                i32.const 2147483647
                local.get 14
                i32.sub
                i32.gt_s
                br_if 2 (;@4;)
                i32.const 61
                local.set 10
                local.get 15
                local.get 11
                local.get 14
                i32.add
                local.tee 9
                local.get 9
                local.get 15
                i32.lt_s
                select
                local.tee 1
                local.get 23
                i32.gt_s
                br_if 3 (;@3;)
                local.get 0
                i32.const 32
                local.get 1
                local.get 9
                local.get 8
                call 9
                local.get 0
                local.get 16
                local.get 14
                call 8
                local.get 0
                i32.const 48
                local.get 1
                local.get 9
                local.get 8
                i32.const 65536
                i32.xor
                call 9
                local.get 0
                i32.const 48
                local.get 11
                local.get 17
                i32.const 0
                call 9
                local.get 0
                local.get 12
                local.get 17
                call 8
                local.get 0
                i32.const 32
                local.get 1
                local.get 9
                local.get 8
                i32.const 8192
                i32.xor
                call 9
                br 1 (;@5;)
              end
            end
            i32.const 0
            local.set 13
            br 3 (;@1;)
          end
          i32.const 61
          local.set 10
        end
        i32.const 13720
        local.get 10
        i32.store
      end
      i32.const -1
      local.set 13
    end
    local.get 7
    i32.const 80
    i32.add
    global.set 0
    local.get 13)
  (func (;37;) (type 16) (param f64 i32) (result f64)
    (local i32 i64)
    local.get 0
    i64.reinterpret_f64
    local.tee 3
    i64.const 52
    i64.shr_u
    i32.wrap_i64
    i32.const 2047
    i32.and
    local.tee 2
    i32.const 2047
    i32.ne
    if (result f64)  ;; label = @1
      local.get 2
      i32.eqz
      if  ;; label = @2
        local.get 1
        local.get 0
        f64.const 0x0p+0 (;=0;)
        f64.eq
        if (result i32)  ;; label = @3
          i32.const 0
        else
          local.get 0
          f64.const 0x1p+64 (;=1.84467e+19;)
          f64.mul
          local.get 1
          call 37
          local.set 0
          local.get 1
          i32.load
          i32.const -64
          i32.add
        end
        i32.store
        local.get 0
        return
      end
      local.get 1
      local.get 2
      i32.const 1022
      i32.sub
      i32.store
      local.get 3
      i64.const -9218868437227405313
      i64.and
      i64.const 4602678819172646912
      i64.or
      f64.reinterpret_i64
    else
      local.get 0
    end)
  (func (;38;) (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.const 255
      i32.and
      local.tee 3
      if  ;; label = @2
        local.get 0
        i32.const 3
        i32.and
        if  ;; label = @3
          loop  ;; label = @4
            local.get 0
            i32.load8_u
            local.tee 2
            i32.eqz
            br_if 3 (;@1;)
            local.get 2
            local.get 1
            i32.const 255
            i32.and
            i32.eq
            br_if 3 (;@1;)
            local.get 0
            i32.const 1
            i32.add
            local.tee 0
            i32.const 3
            i32.and
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 0
          i32.load
          local.tee 2
          i32.const -1
          i32.xor
          local.get 2
          i32.const 16843009
          i32.sub
          i32.and
          i32.const -2139062144
          i32.and
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.const 16843009
          i32.mul
          local.tee 3
          i32.xor
          local.tee 4
          i32.const -1
          i32.xor
          local.get 4
          i32.const 16843009
          i32.sub
          i32.and
          i32.const -2139062144
          i32.and
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 0
            i32.load offset=4
            local.set 2
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            local.get 2
            i32.const 16843009
            i32.sub
            local.get 2
            i32.const -1
            i32.xor
            i32.and
            i32.const -2139062144
            i32.and
            br_if 1 (;@3;)
            local.get 2
            local.get 3
            i32.xor
            local.tee 4
            i32.const -1
            i32.xor
            local.get 4
            i32.const 16843009
            i32.sub
            i32.and
            i32.const -2139062144
            i32.and
            i32.eqz
            br_if 0 (;@4;)
          end
        end
        local.get 2
        i32.const 255
        i32.and
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        local.get 1
        i32.const 255
        i32.and
        i32.eq
        br_if 1 (;@1;)
        loop  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 1
            i32.add
            local.set 2
            local.get 0
            i32.load8_u offset=1
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            local.set 0
            local.get 3
            local.get 1
            i32.const 255
            i32.and
            i32.ne
            br_if 1 (;@3;)
          end
        end
        local.get 2
        return
      end
      local.get 0
      call 17
      local.get 0
      i32.add
      return
    end
    local.get 0)
  (func (;39;) (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 38
    local.tee 0
    i32.const 0
    local.get 0
    i32.load8_u
    local.get 1
    i32.const 255
    i32.and
    i32.eq
    select)
  (func (;40;) (type 3) (param i32 i32)
    local.get 1
    i32.const 2
    i32.const 3
    local.get 0
    i32.const 2
    i32.eq
    select
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              br_table 3 (;@2;) 0 (;@5;) 1 (;@4;) 4 (;@1;) 2 (;@3;) 4 (;@1;)
            end
            i32.const 0
            i32.const 3
            i32.const 13676
            i32.load
            i32.const 100
            i32.gt_s
            select
            local.set 0
            br 2 (;@2;)
          end
          i32.const 1
          local.set 0
          br 1 (;@2;)
        end
        i32.const 2
        local.set 0
      end
      local.get 1
      local.get 0
      i32.store
    end)
  (func (;41;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 4
        i32.ge_u
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.or
          i32.const 3
          i32.and
          br_if 1 (;@2;)
          loop  ;; label = @4
            local.get 0
            i32.load
            local.get 1
            i32.load
            i32.ne
            br_if 2 (;@2;)
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            local.get 2
            i32.const 4
            i32.sub
            local.tee 2
            i32.const 3
            i32.gt_u
            br_if 0 (;@4;)
          end
        end
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 0
        i32.load8_u
        local.tee 3
        local.get 1
        i32.load8_u
        local.tee 4
        i32.eq
        if  ;; label = @3
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 2
          i32.const 1
          i32.sub
          local.tee 2
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
      end
      local.get 3
      local.get 4
      i32.sub
      return
    end
    i32.const 0)
  (func (;42;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32)
    local.get 2
    i32.const 0
    i32.ne
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.const 255
          i32.and
          local.set 4
          loop  ;; label = @4
            local.get 0
            i32.load8_u
            local.get 4
            i32.eq
            br_if 2 (;@2;)
            local.get 2
            i32.const 1
            i32.sub
            local.tee 2
            i32.const 0
            i32.ne
            local.set 3
            local.get 0
            i32.const 1
            i32.add
            local.tee 0
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 2
            br_if 0 (;@4;)
          end
        end
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load8_u
          local.get 1
          i32.const 255
          i32.and
          i32.eq
          br_if 0 (;@3;)
          local.get 2
          i32.const 4
          i32.lt_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 255
          i32.and
          i32.const 16843009
          i32.mul
          local.set 3
          loop  ;; label = @4
            local.get 0
            i32.load
            local.get 3
            i32.xor
            local.tee 4
            i32.const -1
            i32.xor
            local.get 4
            i32.const 16843009
            i32.sub
            i32.and
            i32.const -2139062144
            i32.and
            br_if 2 (;@2;)
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            local.get 2
            i32.const 4
            i32.sub
            local.tee 2
            i32.const 3
            i32.gt_u
            br_if 0 (;@4;)
          end
        end
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 1
      i32.const 255
      i32.and
      local.set 1
      loop  ;; label = @2
        local.get 1
        local.get 0
        i32.load8_u
        i32.eq
        if  ;; label = @3
          local.get 0
          return
        end
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 2
        i32.const 1
        i32.sub
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    i32.const 0)
  (func (;43;) (type 3) (param i32 i32)
    (local i32 i32)
    local.get 1
    local.get 0
    i32.load
    local.tee 2
    i32.load8_u
    local.tee 3
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.store
    local.get 1
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 74
            i32.sub
            br_table 0 (;@4;) 1 (;@3;) 1 (;@3;) 2 (;@2;) 1 (;@3;)
          end
          local.get 0
          local.get 2
          i32.const 1
          i32.add
          i32.store
          i32.const 1
          br 2 (;@1;)
        end
        local.get 1
        i32.const 0
        i32.store
        i32.const 1
        br 1 (;@1;)
      end
      local.get 0
      local.get 2
      i32.const 1
      i32.add
      i32.store
      local.get 1
      local.get 0
      call 15
      i32.store offset=4
      local.get 0
      local.get 0
      i32.load
      i32.const 1
      i32.add
      i32.store
      local.get 1
      local.get 0
      call 15
      i32.store offset=8
      local.get 0
      local.get 0
      i32.load
      i32.const 1
      i32.add
      i32.store
      i32.const 3
    end
    i32.const 2
    i32.shl
    i32.add
    local.get 0
    call 15
    i32.store
    i32.const 7200
    local.set 3
    local.get 1
    local.get 0
    i32.load
    local.tee 2
    i32.load8_u
    i32.const 47
    i32.eq
    if (result i32)  ;; label = @1
      local.get 0
      local.get 2
      i32.const 1
      i32.add
      i32.store
      local.get 0
      call 30
    else
      i32.const 7200
    end
    i32.store offset=16)
  (func (;44;) (type 3) (param i32 i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 3
      i32.load8_u
      local.tee 4
      i32.const 60
      i32.ne
      if  ;; label = @2
        local.get 4
        i32.const 24
        i32.shl
        i32.const 24
        i32.shr_s
        i32.const 32
        i32.or
        i32.const 97
        i32.sub
        i32.const 26
        i32.ge_u
        br_if 1 (;@1;)
        loop  ;; label = @3
          local.get 2
          i32.const 5
          i32.le_u
          if  ;; label = @4
            local.get 0
            local.get 2
            i32.add
            local.get 4
            i32.store8
            local.get 1
            i32.load
            local.set 3
          end
          local.get 3
          local.get 2
          i32.const 1
          i32.add
          local.tee 2
          i32.add
          i32.load8_u
          local.tee 4
          i32.const 24
          i32.shl
          i32.const 24
          i32.shr_s
          i32.const 32
          i32.or
          i32.const 97
          i32.sub
          i32.const 26
          i32.lt_u
          br_if 0 (;@3;)
        end
        br 1 (;@1;)
      end
      local.get 1
      local.get 3
      i32.const 1
      i32.add
      local.tee 3
      i32.store
      loop  ;; label = @2
        local.get 2
        local.get 3
        i32.add
        i32.load8_u
        local.tee 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.const 62
        i32.ne
        if  ;; label = @3
          local.get 2
          i32.const 5
          i32.le_u
          if  ;; label = @4
            local.get 0
            local.get 2
            i32.add
            local.get 4
            i32.store8
            local.get 1
            i32.load
            local.set 3
          end
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          br 1 (;@2;)
        end
      end
      local.get 3
      i32.const 1
      i32.add
      local.set 3
    end
    local.get 1
    local.get 2
    local.get 3
    i32.add
    i32.store
    local.get 0
    local.get 2
    i32.const 6
    local.get 2
    i32.const 6
    i32.lt_u
    select
    i32.add
    i32.const 0
    i32.store8)
  (func (;45;) (type 17) (param i32 i32) (result i64)
    (local i32 i32 i32 i64 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 1
    i64.extend_i32_s
    local.get 3
    i32.const 12
    i32.add
    call 23
    local.set 5
    local.get 0
    i32.load offset=4
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load
          i32.const 74
          i32.sub
          br_table 0 (;@3;) 2 (;@1;) 2 (;@1;) 1 (;@2;) 2 (;@1;)
        end
        local.get 1
        local.get 3
        i32.load offset=12
        i32.eqz
        local.get 1
        i32.const 60
        i32.lt_s
        i32.or
        i32.sub
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      i32.load offset=12
      local.get 5
      local.get 1
      i32.const 1
      i32.sub
      local.tee 4
      i32.const 2
      i32.shl
      i32.const 2544
      i32.add
      i32.load
      local.tee 2
      i32.const 86400
      i32.add
      local.get 2
      local.get 3
      i32.load offset=12
      select
      local.get 2
      local.get 4
      i32.const 1
      i32.gt_s
      select
      i64.extend_i32_s
      i64.add
      local.tee 5
      i64.const 345600
      i64.add
      i64.const 604800
      i64.rem_s
      i32.wrap_i64
      i32.const -86400
      i32.div_s
      i32.add
      local.tee 2
      i32.const 7
      i32.add
      local.get 2
      local.get 2
      i32.const 0
      i32.lt_s
      select
      local.set 2
      local.get 2
      local.get 0
      i32.load offset=8
      local.tee 4
      i32.const 5
      i32.eq
      if (result i32)  ;; label = @2
        i32.const 5
        i32.const 4
        local.get 2
        i32.const 28
        i32.add
        local.get 3
        i32.load offset=12
        i32.const 28
        i32.add
        i32.const 2773
        local.get 1
        i32.const 1
        i32.sub
        i32.shr_u
        i32.const 1
        i32.and
        i32.const 30
        i32.or
        local.get 1
        i32.const 2
        i32.eq
        select
        i32.lt_s
        select
      else
        local.get 4
      end
      i32.const 7
      i32.mul
      i32.add
      i32.const 7
      i32.sub
      local.set 1
    end
    local.get 0
    i64.load32_s offset=16
    local.set 6
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    local.get 6
    local.get 5
    local.get 1
    i32.const 86400
    i32.mul
    i64.extend_i32_s
    i64.add
    i64.add)
  (func (;46;) (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 f64 f64 f64)
    global.get 0
    i32.const 448
    i32.sub
    local.tee 2
    global.set 0
    i32.const 3444
    i32.const 48
    call 16
    local.tee 0
    i32.store
    i32.const 3448
    i32.const 48
    call 16
    local.tee 1
    i32.store
    local.get 1
    i32.const 40
    i32.store offset=12
    local.get 1
    i64.const 8589934592
    i64.store offset=4 align=4
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.const 1260
    i64.load align=1
    i64.store offset=16 align=1
    local.get 1
    i32.const 1268
    i64.load align=1
    i64.store offset=24 align=1
    local.get 1
    i32.const 1276
    i64.load align=1
    i64.store offset=32 align=1
    local.get 1
    i32.const 1283
    i64.load align=1
    i64.store offset=39 align=1
    i32.const 5084
    i32.const 10
    i32.store
    local.get 2
    i32.const 1245
    i64.load align=1
    i64.store offset=416
    local.get 2
    i32.const 1252
    i64.load align=1
    i64.store offset=423 align=1
    local.get 2
    i32.const 1229
    i64.load align=1
    i64.store offset=400
    local.get 2
    i32.const 1237
    i64.load align=1
    i64.store offset=408
    i32.const 1446
    call 10
    call 14
    local.get 2
    i32.const 1206
    i32.store offset=352
    i32.const 1878
    local.get 2
    i32.const 352
    i32.add
    call 7
    i32.const 2045
    call 10
    i32.const 3191
    i32.const 1431
    i64.load align=1
    i64.store align=1
    i32.const 3184
    i32.const 1424
    i64.load align=1
    i64.store
    i32.const 3176
    i32.const 1416
    i64.load align=1
    i64.store
    i32.const 3168
    i32.const 1408
    i64.load align=1
    i64.store
    i32.const 5000
    local.set 1
    i32.const 10
    local.set 6
    loop  ;; label = @1
      i32.const 5084
      i32.const 10
      i32.store
      local.get 1
      i32.const 1
      i32.shl
      local.set 3
      i32.const 3424
      call 24
      i32.const 3376
      i32.const 3428
      i32.load
      f64.convert_i32_s
      f64.const 0x1.dcd65p+29 (;=1e+09;)
      f64.div
      i32.const 3424
      i32.load
      f64.convert_i32_s
      f64.add
      local.tee 21
      f64.store
      i32.const 3384
      local.get 21
      f64.store
      local.get 1
      i32.const 0
      i32.gt_s
      if  ;; label = @2
        i32.const 1
        local.set 0
        local.get 3
        i32.const 1
        local.get 3
        i32.const 1
        i32.gt_s
        select
        local.set 7
        loop  ;; label = @3
          i32.const 13456
          i32.const 1
          i32.store
          i32.const 13688
          i32.const 65
          i32.store8
          i32.const 13672
          i32.const 66
          i32.store8
          local.get 2
          i32.const 1338
          i64.load align=1
          i64.store offset=384
          local.get 2
          i32.const 1345
          i64.load align=1
          i64.store offset=391 align=1
          local.get 2
          i32.const 1
          i32.store offset=440
          local.get 2
          i32.const 1322
          i64.load align=1
          i64.store offset=368
          local.get 2
          i32.const 1330
          i64.load align=1
          i64.store offset=376
          local.get 2
          i32.const 400
          i32.add
          local.tee 4
          i32.load8_u offset=2
          local.tee 5
          local.get 2
          i32.const 368
          i32.add
          local.tee 8
          i32.load8_u offset=3
          i32.eq
          if  ;; label = @4
            i32.const 13688
            local.get 5
            i32.store8
            loop  ;; label = @5
              br 0 (;@5;)
            end
            unreachable
          end
          i32.const 13456
          local.get 4
          local.get 8
          call 18
          i32.const 0
          i32.gt_s
          if (result i32)  ;; label = @4
            i32.const 13676
            i32.const 10
            i32.store
            i32.const 1
          else
            i32.const 0
          end
          i32.eqz
          i32.store
          local.get 2
          i32.const 7
          i32.store offset=444
          local.get 2
          i32.const 7
          i32.store offset=444
          i32.const 13504
          local.get 2
          i32.load offset=444
          local.tee 4
          i32.store
          i32.const 13508
          local.get 4
          i32.store
          i32.const 13624
          i32.const 8
          i32.store
          i32.const 5088
          i32.const 8
          i32.store
          i32.const 5092
          i32.const 8
          i32.store
          i32.const 5084
          i32.const 5084
          i32.load
          i32.const 1
          i32.add
          i32.store
          i32.const 9088
          i32.const 13504
          i32.load
          i32.store
          i32.const 13676
          i32.const 5
          i32.store
          i32.const 3448
          i32.load
          local.tee 4
          i32.load
          local.tee 5
          local.get 4
          i64.load align=4
          i64.store align=4
          local.get 5
          local.get 4
          i64.load offset=40 align=4
          i64.store offset=40 align=4
          local.get 5
          local.get 4
          i64.load offset=32 align=4
          i64.store offset=32 align=4
          local.get 5
          local.get 4
          i64.load offset=24 align=4
          i64.store offset=24 align=4
          local.get 5
          local.get 4
          i64.load offset=16 align=4
          i64.store offset=16 align=4
          local.get 5
          i32.const 8
          i32.add
          local.tee 8
          local.get 4
          i64.load offset=8 align=4
          i64.store align=4
          local.get 4
          i32.const 5
          i32.store offset=12
          local.get 5
          i32.const 5
          i32.store offset=12
          local.get 5
          local.get 4
          i32.load
          i32.store
          i32.const 3448
          i32.load
          local.tee 10
          if (result i32)  ;; label = @4
            local.get 5
            local.get 10
            i32.load
            i32.store
            i32.const 3448
            i32.load
          else
            i32.const 0
          end
          i32.const 13676
          i32.load
          i32.const 12
          i32.add
          i32.store offset=12
          block  ;; label = @4
            local.get 5
            i32.load offset=4
            i32.eqz
            if  ;; label = @5
              local.get 5
              i32.const 6
              i32.store offset=12
              local.get 4
              i32.load offset=8
              local.get 8
              call 40
              local.get 5
              i32.const 3448
              i32.load
              i32.load
              i32.store
              local.get 5
              local.get 5
              i32.load offset=12
              i32.const 12
              i32.add
              i32.store offset=12
              br 1 (;@4;)
            end
            local.get 4
            local.get 4
            i32.load
            local.tee 5
            i64.load align=4
            i64.store align=4
            local.get 4
            local.get 5
            i64.load offset=8 align=4
            i64.store offset=8 align=4
            local.get 4
            local.get 5
            i64.load offset=16 align=4
            i64.store offset=16 align=4
            local.get 4
            local.get 5
            i64.load offset=24 align=4
            i64.store offset=24 align=4
            local.get 4
            local.get 5
            i64.load offset=32 align=4
            i64.store offset=32 align=4
            local.get 4
            local.get 5
            i64.load offset=40 align=4
            i64.store offset=40 align=4
          end
          i32.const 65
          local.set 5
          i32.const 3
          local.set 4
          i32.const 13672
          i32.load8_s
          i32.const 65
          i32.ge_s
          if  ;; label = @4
            loop  ;; label = @5
              local.get 2
              i32.load offset=440
              local.get 5
              i32.const 24
              i32.shl
              local.tee 5
              i32.const 24
              i32.shr_s
              local.tee 8
              i32.const 67
              i32.eq
              if (result i32)  ;; label = @6
                i32.const 13688
                local.get 8
                i32.store8
                i32.const 1
              else
                i32.const 0
              end
              i32.eq
              if  ;; label = @6
                i32.const 0
                local.get 2
                i32.const 440
                i32.add
                call 40
                i32.const 13676
                local.get 0
                i32.store
                local.get 2
                i32.const 1314
                i64.load align=1
                i64.store offset=391 align=1
                local.get 2
                i32.const 1307
                i64.load align=1
                i64.store offset=384
                local.get 2
                i32.const 1299
                i64.load align=1
                i64.store offset=376
                local.get 2
                i32.const 1291
                i64.load align=1
                i64.store offset=368
                local.get 0
                local.set 4
              end
              local.get 5
              i32.const 16777216
              i32.add
              i32.const 24
              i32.shr_s
              local.tee 5
              i32.const 13672
              i32.load8_s
              i32.le_s
              br_if 0 (;@5;)
            end
          end
          local.get 0
          local.get 7
          i32.ne
          local.set 5
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 5
          br_if 0 (;@3;)
        end
        local.get 4
        i32.const 3
        i32.mul
        local.tee 5
        local.get 2
        i32.load offset=444
        local.tee 7
        i32.div_s
        local.tee 0
        i32.const 13676
        i32.load
        i32.sub
        i32.const 9
        i32.add
        local.get 0
        i32.const 13688
        i32.load8_u
        i32.const 65
        i32.eq
        select
        local.set 4
        local.get 5
        local.get 7
        i32.sub
        i32.const 7
        i32.mul
        local.get 0
        i32.sub
        local.set 0
      end
      i32.const 3424
      call 24
      i32.const 3376
      i32.const 3428
      i32.load
      f64.convert_i32_s
      f64.const 0x1.dcd65p+29 (;=1e+09;)
      f64.div
      i32.const 3424
      i32.load
      f64.convert_i32_s
      f64.add
      local.tee 21
      f64.store
      i32.const 3432
      local.get 21
      i32.const 3384
      f64.load
      f64.sub
      local.tee 21
      f64.store
      block  ;; label = @2
        local.get 21
        f64.const 0x1.f4p+9 (;=1000;)
        f64.mul
        local.tee 21
        f64.abs
        f64.const 0x1p+31 (;=2.14748e+09;)
        f64.lt
        if  ;; label = @3
          i32.const 3440
          local.get 21
          i32.trunc_f64_s
          i32.store
          br 1 (;@2;)
        end
        i32.const 3440
        i32.const -2147483648
        i32.store
      end
      i32.const 13680
      i32.const 3432
      f64.load
      local.tee 21
      f64.store
      local.get 2
      local.get 3
      f64.convert_i32_s
      f64.store offset=336
      local.get 2
      local.get 21
      f64.store offset=344
      i32.const 2117
      local.get 2
      i32.const 336
      i32.add
      call 21
      block  ;; label = @2
        i32.const 13680
        f64.load
        local.tee 21
        f64.const 0x1p+1 (;=2;)
        f64.gt
        if  ;; label = @3
          local.get 3
          local.set 1
          br 1 (;@2;)
        end
        local.get 1
        i32.const 10
        i32.mul
        local.get 3
        local.get 21
        f64.const 0x1.999999999999ap-5 (;=0.05;)
        f64.lt
        select
        local.set 1
        local.get 6
        i32.const 1
        i32.gt_u
        local.set 3
        local.get 6
        i32.const 1
        i32.sub
        local.set 6
        local.get 3
        br_if 1 (;@1;)
      end
    end
    call 14
    i32.const 1359
    call 10
    call 14
    i32.const 1720
    i32.const 0
    call 7
    i32.const 1553
    i32.const 1504
    i32.const 13676
    i32.load
    i32.const 5
    i32.eq
    select
    i32.const 0
    call 7
    local.get 2
    i32.const 13676
    i32.load
    i32.store offset=320
    i32.const 1543
    local.get 2
    i32.const 320
    i32.add
    call 7
    i32.const 1640
    i32.const 0
    call 7
    i32.const 1553
    i32.const 1504
    i32.const 13456
    i32.load
    i32.const 1
    i32.eq
    select
    i32.const 0
    call 7
    local.get 2
    i32.const 13456
    i32.load
    i32.store offset=304
    i32.const 2109
    local.get 2
    i32.const 304
    i32.add
    call 7
    i32.const 1672
    i32.const 0
    call 7
    i32.const 1553
    i32.const 1504
    i32.const 13688
    i32.load8_u
    i32.const 65
    i32.eq
    select
    i32.const 0
    call 7
    local.get 2
    i32.const 13688
    i32.load8_s
    i32.store offset=288
    i32.const 1548
    local.get 2
    i32.const 288
    i32.add
    call 7
    i32.const 1656
    i32.const 0
    call 7
    i32.const 1553
    i32.const 1504
    i32.const 13672
    i32.load8_u
    i32.const 66
    i32.eq
    select
    i32.const 0
    call 7
    local.get 2
    i32.const 13672
    i32.load8_s
    i32.store offset=272
    i32.const 2113
    local.get 2
    i32.const 272
    i32.add
    call 7
    i32.const 1511
    i32.const 0
    call 7
    i32.const 1553
    i32.const 1504
    i32.const 13504
    i32.load
    i32.const 7
    i32.eq
    select
    i32.const 0
    call 7
    local.get 2
    i32.const 13504
    i32.load
    i32.store offset=256
    i32.const 1543
    local.get 2
    i32.const 256
    i32.add
    call 7
    i32.const 1527
    i32.const 0
    call 7
    i32.const 1553
    i32.const 1504
    i32.const 5084
    i32.load
    local.get 1
    i32.const 10
    i32.add
    i32.eq
    select
    i32.const 0
    call 7
    local.get 2
    i32.const 5084
    i32.load
    i32.store offset=240
    i32.const 2075
    local.get 2
    i32.const 240
    i32.add
    call 7
    i32.const 1775
    i32.const 0
    call 7
    local.get 2
    i32.const 3448
    i32.load
    i32.load
    i32.store offset=224
    i32.const 1898
    local.get 2
    i32.const 224
    i32.add
    call 7
    i32.const 1759
    i32.const 0
    call 7
    i32.const 1504
    i32.const 1553
    i32.const 3448
    i32.load
    i32.load offset=4
    select
    i32.const 0
    call 7
    local.get 2
    i32.const 3448
    i32.load
    i32.load offset=4
    i32.store offset=208
    i32.const 1543
    local.get 2
    i32.const 208
    i32.add
    call 7
    i32.const 1576
    i32.const 0
    call 7
    i32.const 1553
    i32.const 1504
    i32.const 3448
    i32.load
    i32.load offset=8
    i32.const 2
    i32.eq
    select
    i32.const 0
    call 7
    local.get 2
    i32.const 3448
    i32.load
    i32.load offset=8
    i32.store offset=192
    i32.const 2109
    local.get 2
    i32.const 192
    i32.add
    call 7
    i32.const 1560
    i32.const 0
    call 7
    i32.const 1553
    i32.const 1504
    i32.const 3448
    i32.load
    i32.load offset=12
    i32.const 17
    i32.eq
    select
    i32.const 0
    call 7
    local.get 2
    i32.const 3448
    i32.load
    i32.load offset=12
    i32.store offset=176
    i32.const 1500
    local.get 2
    i32.const 176
    i32.add
    call 7
    i32.const 1688
    i32.const 0
    call 7
    i32.const 1504
    i32.const 1553
    i32.const 3448
    i32.load
    i32.const 16
    i32.add
    i32.const 1260
    call 18
    select
    i32.const 0
    call 7
    i32.const 3448
    i32.load
    i32.const 16
    i32.add
    call 10
    i32.const 1736
    i32.const 0
    call 7
    local.get 2
    i32.const 3444
    i32.load
    i32.load
    i32.store offset=160
    i32.const 1137
    local.get 2
    i32.const 160
    i32.add
    call 7
    i32.const 1176
    call 10
    i32.const 1759
    i32.const 0
    call 7
    i32.const 1504
    i32.const 1553
    i32.const 3444
    i32.load
    i32.load offset=4
    select
    i32.const 0
    call 7
    local.get 2
    i32.const 3444
    i32.load
    i32.load offset=4
    i32.store offset=144
    i32.const 1543
    local.get 2
    i32.const 144
    i32.add
    call 7
    i32.const 1576
    i32.const 0
    call 7
    i32.const 1553
    i32.const 1504
    i32.const 3444
    i32.load
    i32.load offset=8
    i32.const 1
    i32.eq
    select
    i32.const 0
    call 7
    local.get 2
    i32.const 3444
    i32.load
    i32.load offset=8
    i32.store offset=128
    i32.const 2109
    local.get 2
    i32.const 128
    i32.add
    call 7
    i32.const 1560
    i32.const 0
    call 7
    i32.const 1553
    i32.const 1504
    i32.const 3444
    i32.load
    i32.load offset=12
    i32.const 18
    i32.eq
    select
    i32.const 0
    call 7
    local.get 2
    i32.const 3444
    i32.load
    i32.load offset=12
    i32.store offset=112
    i32.const 1500
    local.get 2
    i32.const 112
    i32.add
    call 7
    i32.const 1688
    i32.const 0
    call 7
    i32.const 1504
    i32.const 1553
    i32.const 3444
    i32.load
    i32.const 16
    i32.add
    i32.const 1260
    call 18
    select
    i32.const 0
    call 7
    i32.const 3444
    i32.load
    i32.const 16
    i32.add
    call 10
    i32.const 1624
    i32.const 0
    call 7
    i32.const 1553
    i32.const 1504
    local.get 4
    i32.const 5
    i32.eq
    select
    i32.const 0
    call 7
    local.get 2
    local.get 4
    i32.store offset=96
    i32.const 1543
    local.get 2
    i32.const 96
    i32.add
    call 7
    i32.const 1608
    i32.const 0
    call 7
    i32.const 1553
    i32.const 1504
    local.get 0
    i32.const 13
    i32.eq
    select
    i32.const 0
    call 7
    local.get 2
    local.get 0
    i32.store offset=80
    i32.const 2109
    local.get 2
    i32.const 80
    i32.add
    call 7
    i32.const 1592
    i32.const 0
    call 7
    i32.const 1553
    i32.const 1504
    local.get 2
    i32.load offset=444
    i32.const 7
    i32.eq
    select
    i32.const 0
    call 7
    local.get 2
    local.get 2
    i32.load offset=444
    i32.store offset=64
    i32.const 1543
    local.get 2
    i32.const -64
    i32.sub
    call 7
    i32.const 1704
    i32.const 0
    call 7
    i32.const 1553
    i32.const 1504
    local.get 2
    i32.load offset=440
    i32.const 1
    i32.eq
    select
    i32.const 0
    call 7
    local.get 2
    local.get 2
    i32.load offset=440
    i32.store offset=48
    i32.const 2145
    local.get 2
    i32.const 48
    i32.add
    call 7
    i32.const 1838
    i32.const 0
    call 7
    i32.const 1504
    i32.const 1553
    local.get 2
    i32.const 400
    i32.add
    local.tee 0
    i32.const 1229
    i32.const 31
    call 41
    select
    i32.const 0
    call 7
    local.get 0
    call 10
    i32.const 1798
    i32.const 0
    call 7
    i32.const 1504
    i32.const 1553
    local.get 2
    i32.const 368
    i32.add
    local.tee 0
    i32.const 1322
    i32.const 31
    call 41
    select
    i32.const 0
    call 7
    local.get 0
    call 10
    call 14
    block  ;; label = @1
      i32.const 13680
      f64.load
      local.tee 21
      f64.const 0x1p+1 (;=2;)
      f64.lt
      if  ;; label = @2
        i32.const 1053
        call 10
        i32.const 1106
        call 10
        call 14
        br 1 (;@1;)
      end
      i32.const 13704
      local.get 1
      f64.convert_i32_s
      local.tee 22
      local.get 21
      f64.div
      local.tee 23
      f64.store
      i32.const 13696
      local.get 21
      f64.const 0x1.e848p+19 (;=1e+06;)
      f64.mul
      local.get 22
      f64.div
      local.tee 21
      f64.store
      i32.const 13712
      local.get 23
      f64.const 0x1.b74p+10 (;=1757;)
      f64.div
      f64.store
      local.get 2
      local.get 21
      f64.const 0x1.f4p+9 (;=1000;)
      f64.mul
      f64.store offset=32
      i32.const 1925
      local.get 2
      i32.const 32
      i32.add
      call 21
      local.get 2
      i32.const 13704
      f64.load
      f64.store offset=16
      i32.const 2005
      local.get 2
      i32.const 16
      i32.add
      call 21
      local.get 2
      i32.const 13712
      f64.load
      f64.store
      i32.const 1965
      local.get 2
      call 21
      call 14
      i32.const 0
      local.set 3
      i32.const 0
      local.set 10
      global.get 0
      i32.const 16
      i32.sub
      local.tee 13
      global.set 0
      global.get 0
      i32.const 16
      i32.sub
      local.tee 0
      global.set 0
      local.get 0
      i32.const 8
      i32.add
      call 24
      local.get 0
      i32.load offset=8
      local.set 1
      local.get 0
      i32.const 16
      i32.add
      global.set 0
      local.get 13
      local.get 1
      i32.store offset=12
      i32.const 3392
      local.set 8
      local.get 13
      i64.load32_s offset=12
      local.set 18
      global.get 0
      i32.const 16
      i32.sub
      local.tee 15
      global.set 0
      global.get 0
      i32.const 304
      i32.sub
      local.tee 6
      global.set 0
      local.get 6
      i32.const 1216
      i32.const 61
      call 38
      local.tee 0
      i32.const 1216
      i32.eq
      if (result i32)  ;; label = @2
        i32.const 0
      else
        block  ;; label = @3
          local.get 0
          i32.const 1216
          i32.sub
          local.tee 1
          i32.const 1216
          i32.add
          i32.load8_u
          br_if 0 (;@3;)
          i32.const 13756
          i32.load
          local.tee 9
          i32.eqz
          br_if 0 (;@3;)
          local.get 9
          i32.load
          local.tee 7
          i32.eqz
          br_if 0 (;@3;)
          loop  ;; label = @4
            block  ;; label = @5
              block (result i32)  ;; label = @6
                i32.const 0
                local.set 4
                i32.const 1216
                local.set 11
                i32.const 0
                local.get 1
                local.tee 5
                i32.eqz
                br_if 0 (;@6;)
                drop
                block  ;; label = @7
                  i32.const 1216
                  i32.load8_u
                  local.tee 0
                  i32.eqz
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 7
                      i32.load8_u
                      local.tee 14
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 1
                      i32.sub
                      local.tee 5
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 14
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 7
                      i32.const 1
                      i32.add
                      local.set 7
                      local.get 11
                      i32.load8_u offset=1
                      local.set 0
                      local.get 11
                      i32.const 1
                      i32.add
                      local.set 11
                      local.get 0
                      br_if 1 (;@8;)
                      br 2 (;@7;)
                    end
                  end
                  local.get 0
                  local.set 4
                end
                local.get 4
                i32.const 255
                i32.and
                local.get 7
                i32.load8_u
                i32.sub
              end
              i32.eqz
              if  ;; label = @6
                local.get 9
                i32.load
                local.get 1
                i32.add
                local.tee 0
                i32.load8_u
                i32.const 61
                i32.eq
                br_if 1 (;@5;)
              end
              local.get 9
              i32.load offset=4
              local.set 7
              local.get 9
              i32.const 4
              i32.add
              local.set 9
              local.get 7
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
          end
          local.get 0
          i32.const 1
          i32.add
          local.set 12
        end
        local.get 12
      end
      local.tee 0
      i32.const 1191
      local.get 0
      select
      local.tee 0
      i32.store offset=12
      local.get 6
      local.get 0
      i32.const 2592
      local.get 0
      i32.load8_u
      select
      local.tee 0
      i32.store offset=12
      block  ;; label = @2
        i32.const 3208
        i32.load
        local.tee 1
        if  ;; label = @3
          local.get 0
          local.get 1
          call 18
          i32.eqz
          br_if 1 (;@2;)
        end
        loop  ;; label = @3
          local.get 3
          i32.const 2
          i32.shl
          local.tee 1
          i32.const 13888
          i32.add
          i32.const 0
          i32.store
          local.get 1
          i32.const 13856
          i32.add
          i32.const 0
          i32.store
          local.get 3
          i32.const 1
          i32.add
          local.tee 3
          i32.const 5
          i32.ne
          br_if 0 (;@3;)
        end
        i32.const 13836
        i32.load
        local.tee 7
        if  ;; label = @3
          i32.const 13916
          i32.load
          local.set 1
          global.get 0
          i32.const 16
          i32.sub
          local.tee 4
          global.set 0
          local.get 4
          i32.const 0
          i32.store offset=12
          block  ;; label = @4
            local.get 1
            i32.const 0
            block (result i32)  ;; label = @5
              local.get 4
              i32.const 12
              i32.add
              local.set 5
              i32.const 14032
              i32.load
              local.tee 3
              if  ;; label = @6
                loop  ;; label = @7
                  local.get 3
                  local.get 7
                  local.get 3
                  i32.load
                  i32.eq
                  br_if 2 (;@5;)
                  drop
                  local.get 5
                  if  ;; label = @8
                    local.get 5
                    local.get 3
                    i32.store
                  end
                  local.get 3
                  i32.load offset=36
                  local.tee 3
                  br_if 0 (;@7;)
                end
              end
              i32.const 0
            end
            local.tee 3
            select
            i32.eqz
            if  ;; label = @5
              i32.const -28
              local.set 1
              br 1 (;@4;)
            end
            local.get 1
            local.get 3
            i32.load offset=4
            i32.ne
            if  ;; label = @5
              i32.const -28
              local.set 1
              br 1 (;@4;)
            end
            local.get 4
            i32.load offset=12
            local.tee 1
            i32.const 36
            i32.add
            i32.const 14032
            local.get 1
            select
            local.get 3
            i32.load offset=36
            i32.store
            local.get 3
            i32.load offset=16
            i32.const 32
            i32.and
            i32.eqz
            if  ;; label = @5
              local.get 3
              i32.load offset=32
              drop
              local.get 3
              i32.load offset=12
              drop
              local.get 3
              i32.load offset=24
              drop
              i32.const -52
              local.tee 1
              br_if 1 (;@4;)
            end
            local.get 3
            i32.load offset=8
            if  ;; label = @5
              local.get 3
              i32.load
              call 32
            end
            i32.const 0
            local.set 1
            local.get 3
            i32.load8_u offset=16
            i32.const 32
            i32.and
            br_if 0 (;@4;)
            local.get 3
            call 32
          end
          local.get 4
          i32.const 16
          i32.add
          global.set 0
          local.get 1
          i32.const -4095
          i32.ge_u
          if (result i32)  ;; label = @4
            i32.const 13720
            i32.const 0
            local.get 1
            i32.sub
            i32.store
            i32.const 0
          else
            local.get 1
          end
          drop
        end
        local.get 0
        call 17
        local.tee 3
        i32.const 4098
        i32.ge_u
        if  ;; label = @3
          local.get 6
          i32.const 2592
          i32.store offset=12
          i32.const 3
          local.set 3
          i32.const 2592
          local.set 0
        end
        block  ;; label = @3
          i32.const 3212
          i32.load
          local.tee 1
          local.get 3
          i32.le_u
          if  ;; label = @4
            i32.const 3212
            local.get 1
            i32.const 1
            i32.shl
            local.tee 1
            local.get 3
            i32.const 1
            i32.add
            local.get 1
            local.get 3
            i32.gt_u
            select
            local.tee 1
            i32.const 4098
            local.get 1
            i32.const 4098
            i32.lt_u
            select
            local.tee 1
            i32.store
            i32.const 3208
            local.get 1
            call 16
            local.tee 1
            i32.store
            br 1 (;@3;)
          end
          i32.const 3208
          i32.load
          local.set 1
        end
        local.get 1
        if  ;; label = @3
          local.get 1
          local.get 0
          local.get 3
          i32.const 1
          i32.add
          call 12
        end
        local.get 6
        i32.const 40
        i32.add
        local.set 4
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load8_u
              i32.const 58
              i32.eq
              br_if 0 (;@5;)
              local.get 0
              i32.const 47
              call 39
              local.tee 1
              i32.eqz
              br_if 2 (;@3;)
              local.get 0
              i32.const 44
              local.get 1
              local.get 0
              i32.sub
              call 42
              br_if 2 (;@3;)
              local.get 0
              i32.load8_u
              local.tee 1
              i32.const 58
              i32.eq
              br_if 0 (;@5;)
              local.get 0
              local.set 3
              br 1 (;@4;)
            end
            local.get 6
            local.get 0
            i32.const 1
            i32.add
            local.tee 3
            i32.store offset=12
            local.get 0
            i32.load8_u offset=1
            local.set 1
          end
          block  ;; label = @4
            local.get 1
            i32.const 254
            i32.and
            i32.const 46
            i32.eq
            if  ;; label = @5
              i32.const 13762
              i32.load8_u
              if  ;; label = @6
                local.get 3
                i32.const 1191
                call 18
                br_if 2 (;@4;)
              end
              i32.const 13720
              i32.const 52
              i32.store
              br 1 (;@4;)
            end
            local.get 3
            call 17
            local.tee 0
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 3
            i32.const 46
            call 39
            br_if 0 (;@4;)
            local.get 4
            local.get 3
            local.get 0
            i32.const 1
            i32.add
            call 12
            local.get 0
            local.get 4
            i32.add
            i32.const 0
            i32.store8
            i32.const 2608
            local.set 3
            loop  ;; label = @5
              local.get 3
              i32.load8_u
              i32.eqz
              br_if 1 (;@4;)
              local.get 4
              local.get 3
              call 17
              local.tee 0
              i32.sub
              local.get 3
              local.get 0
              call 12
              local.get 0
              local.get 3
              i32.add
              i32.const 1
              i32.add
              local.set 3
              i32.const 13720
              i32.const 52
              i32.store
              br 0 (;@5;)
            end
            unreachable
          end
          i32.const 2592
          local.set 0
          local.get 6
          i32.const 2592
          i32.store offset=12
        end
        i32.const 13836
        i32.const 0
        i32.store
        local.get 0
        i32.eqz
        if  ;; label = @3
          local.get 6
          i32.const 2592
          i32.store offset=12
        end
        i32.const 13928
        local.get 6
        i32.const 12
        i32.add
        local.tee 0
        call 44
        i32.const 13824
        i32.const 13928
        i32.store
        i32.const 13816
        local.get 0
        call 30
        i32.store
        i32.const 13935
        local.get 0
        call 44
        i32.const 13828
        i32.const 13935
        i32.store
        i32.const 13908
        block (result i32)  ;; label = @3
          i32.const 13935
          i32.load8_u
          if  ;; label = @4
            i32.const 13820
            i32.const 1
            i32.store
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 6
                  i32.load offset=12
                  i32.load8_u
                  local.tee 0
                  i32.const 43
                  i32.sub
                  br_table 1 (;@6;) 0 (;@7;) 1 (;@6;) 0 (;@7;)
                end
                local.get 0
                i32.const 24
                i32.shl
                i32.const 24
                i32.shr_s
                i32.const 48
                i32.sub
                i32.const 9
                i32.gt_u
                br_if 1 (;@5;)
              end
              local.get 6
              i32.const 12
              i32.add
              call 30
              br 2 (;@3;)
            end
            i32.const 13816
            i32.load
            i32.const 3600
            i32.sub
            br 1 (;@3;)
          end
          i32.const 13820
          i32.const 0
          i32.store
          i32.const 13816
          i32.load
        end
        i32.store
        local.get 6
        i32.load offset=12
        local.tee 0
        i32.load8_u
        i32.const 44
        i32.ne
        br_if 0 (;@2;)
        local.get 6
        local.get 0
        i32.const 1
        i32.add
        i32.store offset=12
        local.get 6
        i32.const 12
        i32.add
        i32.const 13856
        call 43
        local.get 6
        i32.load offset=12
        local.tee 0
        i32.load8_u
        i32.const 44
        i32.ne
        br_if 0 (;@2;)
        local.get 6
        local.get 0
        i32.const 1
        i32.add
        i32.store offset=12
        local.get 6
        i32.const 12
        i32.add
        i32.const 13888
        call 43
      end
      local.get 6
      i32.const 304
      i32.add
      global.set 0
      block  ;; label = @2
        block  ;; label = @3
          i32.const 13836
          i32.load
          i32.eqz
          br_if 0 (;@3;)
          block (result i32)  ;; label = @4
            local.get 15
            i32.const 12
            i32.add
            local.set 4
            i32.const 0
            local.set 1
            i32.const -1
            local.set 0
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 13924
                  i32.load
                  local.tee 5
                  i32.const 13920
                  i32.load
                  local.tee 6
                  i32.sub
                  i32.const 2
                  i32.const 3
                  local.get 6
                  i32.const 13836
                  i32.load
                  i32.const 44
                  i32.add
                  i32.eq
                  local.tee 7
                  select
                  local.tee 12
                  i32.shr_s
                  local.tee 3
                  br_table 0 (;@7;) 2 (;@5;) 1 (;@6;)
                end
                i32.const 0
                local.set 0
                local.get 4
                i32.eqz
                br_if 1 (;@5;)
                local.get 4
                i32.const 0
                i32.store
                i32.const 0
                br 2 (;@4;)
              end
              i32.const 13840
              i32.load
              drop
              local.get 3
              local.set 0
              loop  ;; label = @6
                local.get 6
                local.get 0
                i32.const 1
                i32.shr_u
                local.tee 9
                local.get 1
                i32.add
                local.tee 14
                local.get 12
                i32.shl
                i32.add
                local.tee 16
                call 19
                local.set 11
                local.get 1
                local.get 14
                block (result i64)  ;; label = @7
                  local.get 7
                  i32.eqz
                  if  ;; label = @8
                    local.get 16
                    i32.const 4
                    i32.add
                    call 19
                    i64.extend_i32_u
                    local.get 11
                    i64.extend_i32_u
                    i64.const 32
                    i64.shl
                    i64.or
                    br 1 (;@7;)
                  end
                  local.get 11
                  i64.extend_i32_s
                end
                local.get 18
                i64.gt_s
                local.tee 11
                select
                local.set 1
                local.get 9
                local.get 0
                local.get 9
                i32.sub
                local.get 11
                select
                local.tee 0
                i32.const 1
                i32.gt_u
                br_if 0 (;@6;)
              end
              i32.const -1
              local.set 0
              local.get 1
              local.get 3
              i32.const 1
              i32.sub
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.eqz
                    if  ;; label = @9
                      local.get 6
                      call 19
                      local.set 0
                      block (result i64)  ;; label = @10
                        local.get 7
                        i32.eqz
                        if  ;; label = @11
                          local.get 6
                          i32.const 4
                          i32.add
                          call 19
                          i64.extend_i32_u
                          local.get 0
                          i64.extend_i32_u
                          i64.const 32
                          i64.shl
                          i64.or
                          br 1 (;@10;)
                        end
                        local.get 0
                        i64.extend_i32_s
                      end
                      local.get 18
                      i64.gt_s
                      if  ;; label = @10
                        i32.const 13844
                        i32.load
                        i32.const 13840
                        i32.load
                        local.tee 3
                        i32.sub
                        local.tee 0
                        i32.const 6
                        i32.div_s
                        local.set 5
                        i32.const 0
                        local.set 1
                        block  ;; label = @11
                          local.get 0
                          i32.const 5
                          i32.add
                          i32.const 11
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 5
                          i32.const 1
                          local.get 5
                          i32.const 1
                          i32.gt_u
                          select
                          local.set 0
                          local.get 3
                          i32.load8_u offset=4
                          local.set 6
                          loop  ;; label = @12
                            local.get 1
                            i32.const 6
                            i32.mul
                            local.get 3
                            i32.add
                            i32.load8_u offset=4
                            local.get 6
                            i32.ne
                            br_if 1 (;@11;)
                            local.get 1
                            i32.const 1
                            i32.add
                            local.tee 1
                            local.get 0
                            i32.ne
                            br_if 0 (;@12;)
                          end
                          local.get 0
                          local.set 1
                        end
                        i32.const 0
                        local.get 1
                        local.get 1
                        local.get 5
                        i32.eq
                        select
                        local.tee 0
                        i32.const 6
                        i32.mul
                        local.get 3
                        i32.add
                        i32.load8_u offset=4
                        if  ;; label = @11
                          local.get 4
                          local.get 0
                          i32.store
                          i32.const 0
                          br 7 (;@4;)
                        end
                        local.get 4
                        i32.const 0
                        i32.store
                        local.get 0
                        br 6 (;@4;)
                      end
                      i32.const 0
                      local.set 1
                      local.get 4
                      br_if 1 (;@8;)
                      br 3 (;@6;)
                    end
                    local.get 4
                    i32.eqz
                    br_if 2 (;@6;)
                    i32.const 13840
                    i32.load
                    local.tee 6
                    local.get 1
                    local.get 5
                    i32.add
                    local.tee 7
                    i32.const 1
                    i32.sub
                    i32.load8_u
                    local.tee 0
                    i32.const 6
                    i32.mul
                    i32.add
                    i32.load8_u offset=4
                    local.get 7
                    i32.load8_u
                    i32.const 6
                    i32.mul
                    local.get 6
                    i32.add
                    i32.load8_u offset=4
                    i32.ne
                    br_if 1 (;@7;)
                  end
                  local.get 3
                  local.get 1
                  i32.const 1
                  i32.add
                  local.tee 0
                  i32.le_u
                  if  ;; label = @8
                    local.get 1
                    local.get 5
                    i32.add
                    i32.load8_u
                    local.set 0
                    br 1 (;@7;)
                  end
                  i32.const 13840
                  i32.load
                  local.tee 6
                  local.get 0
                  local.get 5
                  i32.add
                  i32.load8_u
                  local.tee 3
                  i32.const 6
                  i32.mul
                  i32.add
                  i32.load8_u offset=4
                  local.get 6
                  local.get 1
                  local.get 5
                  i32.add
                  i32.load8_u
                  local.tee 0
                  i32.const 6
                  i32.mul
                  i32.add
                  i32.load8_u offset=4
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 3
                  local.set 0
                end
                local.get 4
                local.get 0
                i32.store
              end
              local.get 1
              local.get 5
              i32.add
              i32.load8_u
              local.set 0
            end
            local.get 0
          end
          local.tee 0
          i32.const -1
          i32.eq
          br_if 0 (;@3;)
          i32.const 14016
          i32.const 13840
          i32.load
          local.get 0
          i32.const 6
          i32.mul
          i32.add
          local.tee 0
          i32.load8_u offset=4
          i32.store
          i32.const 14020
          local.get 0
          call 19
          i32.store
          i32.const 14024
          i32.const 13844
          i32.load
          local.get 0
          i32.load8_u offset=5
          i32.add
          i32.store
          br 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            i32.const 13820
            i32.load
            i32.eqz
            if  ;; label = @5
              i32.const 13816
              i32.load
              local.set 0
              br 1 (;@4;)
            end
            local.get 18
            i64.const 31556952
            i64.div_s
            i64.const 70
            i64.add
            local.set 19
            loop  ;; label = @5
              local.get 19
              local.tee 17
              i64.const 1
              i64.sub
              local.set 19
              local.get 17
              i32.const 0
              call 23
              local.get 18
              i64.gt_s
              br_if 0 (;@5;)
            end
            loop  ;; label = @5
              local.get 17
              local.tee 19
              i64.const 1
              i64.add
              local.tee 17
              i32.const 0
              call 23
              local.get 18
              i64.lt_s
              br_if 0 (;@5;)
            end
            i32.const 13856
            local.get 19
            i32.wrap_i64
            local.tee 0
            call 45
            local.set 17
            i32.const 13888
            local.get 0
            call 45
            local.set 19
            local.get 17
            i32.const 13816
            i32.load
            local.tee 0
            i64.extend_i32_s
            i64.add
            local.tee 17
            local.get 19
            i32.const 13908
            i32.load
            local.tee 1
            i64.extend_i32_s
            i64.add
            local.tee 19
            i64.lt_s
            if  ;; label = @5
              local.get 17
              local.get 18
              i64.gt_s
              br_if 1 (;@4;)
              local.get 18
              local.get 19
              i64.ge_s
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 18
            local.get 19
            i64.lt_s
            br_if 1 (;@3;)
            local.get 17
            local.get 18
            i64.le_s
            br_if 1 (;@3;)
          end
          i32.const 14016
          i32.const 0
          i32.store
          i32.const 14020
          i32.const 0
          local.get 0
          i32.sub
          i32.store
          i32.const 14024
          i32.const 13824
          i32.load
          i32.store
          br 1 (;@2;)
        end
        i32.const 14016
        i32.const 1
        i32.store
        i32.const 14020
        i32.const 0
        local.get 1
        i32.sub
        i32.store
        i32.const 14024
        i32.const 13828
        i32.load
        i32.store
      end
      local.get 15
      i32.const 16
      i32.add
      global.set 0
      i32.const -1
      local.set 3
      block  ;; label = @2
        local.get 18
        i32.const 14020
        i64.load32_s
        i64.add
        local.tee 17
        i64.const 67908586878892801
        i64.sub
        i64.const -135817173789408001
        i64.lt_u
        br_if 0 (;@2;)
        local.get 17
        i64.const 951868800
        i64.sub
        local.tee 17
        local.get 17
        i64.const 86400
        i64.div_s
        local.tee 17
        i64.const 86400
        i64.mul
        i64.sub
        local.tee 19
        i64.const 31
        i64.shr_s
        local.get 17
        i64.add
        local.tee 17
        local.get 17
        i64.const 146097
        i64.div_s
        local.tee 18
        i64.const 146097
        i64.mul
        i64.sub
        local.tee 20
        i64.const 31
        i64.shr_s
        local.get 18
        i64.add
        i64.const 400
        i64.mul
        i32.const 24
        i32.const 3
        local.get 20
        i32.wrap_i64
        local.tee 0
        i32.const 146097
        i32.add
        local.get 0
        local.get 0
        i32.const 0
        i32.lt_s
        select
        local.tee 0
        i32.const 36524
        i32.div_u
        local.get 0
        i32.const 146096
        i32.sub
        i32.const 36524
        i32.lt_u
        select
        local.tee 4
        i32.const -36524
        i32.mul
        local.get 0
        i32.add
        local.tee 0
        i32.const 1461
        i32.div_s
        local.get 0
        i32.const 36525
        i32.sub
        i32.const 1461
        i32.lt_u
        select
        local.tee 5
        i32.const 2
        i32.shl
        local.get 4
        i32.const 100
        i32.mul
        i32.add
        i32.const 3
        local.get 5
        i32.const -1461
        i32.mul
        local.get 0
        i32.add
        local.tee 0
        i32.const 365
        i32.div_s
        local.get 0
        i32.const 1460
        i32.sub
        i32.const 365
        i32.lt_u
        select
        local.tee 6
        i32.add
        i64.extend_i32_s
        i64.add
        local.set 18
        i32.const 31
        local.set 7
        local.get 6
        i32.const -365
        i32.mul
        local.get 0
        i32.add
        local.tee 1
        local.set 0
        local.get 1
        i32.const 31
        i32.ge_s
        if  ;; label = @3
          local.get 1
          local.set 0
          loop  ;; label = @4
            local.get 10
            i32.const 2663
            i32.add
            local.set 9
            local.get 10
            i32.const 1
            i32.add
            local.set 10
            local.get 0
            local.get 7
            i32.sub
            local.tee 0
            local.get 9
            i32.load8_s
            local.tee 7
            i32.ge_s
            br_if 0 (;@4;)
          end
        end
        local.get 18
        local.get 10
        i32.const 9
        i32.gt_u
        local.tee 7
        i64.extend_i32_u
        i64.add
        local.tee 18
        i64.const 2147483548
        i64.sub
        i64.const -4294967296
        i64.lt_u
        br_if 0 (;@2;)
        i32.const 14012
        local.get 1
        local.get 6
        i32.eqz
        local.get 4
        i32.eqz
        local.get 5
        i32.const 0
        i32.ne
        i32.or
        i32.and
        local.tee 3
        i32.add
        i32.const 0
        i32.const -366
        i32.const -365
        local.get 3
        select
        local.get 1
        i32.const 306
        i32.lt_s
        select
        i32.add
        i32.const 59
        i32.add
        i32.store
        i32.const 14008
        local.get 17
        i64.const 3
        i64.add
        i64.const 7
        i64.rem_s
        i32.wrap_i64
        local.tee 1
        i32.const 7
        i32.add
        local.get 1
        local.get 1
        i32.const 0
        i32.lt_s
        select
        i32.store
        i32.const 13996
        local.get 0
        i32.const 1
        i32.add
        i32.store
        i32.const 13992
        local.get 19
        i32.wrap_i64
        local.tee 0
        i32.const 86400
        i32.add
        local.get 0
        local.get 0
        i32.const 0
        i32.lt_s
        select
        local.tee 0
        i32.const 3600
        i32.div_s
        i32.store
        i32.const 14004
        local.get 18
        i32.wrap_i64
        i32.const 100
        i32.add
        i32.store
        i32.const 14000
        local.get 10
        i32.const 12
        i32.sub
        local.get 10
        local.get 7
        select
        i32.const 2
        i32.add
        i32.store
        i32.const 13988
        local.get 0
        i32.const 60
        i32.div_s
        local.tee 1
        i32.const 60
        i32.rem_s
        i32.store
        i32.const 13984
        local.get 0
        local.get 1
        i32.const 60
        i32.mul
        i32.sub
        i32.store
        i32.const 0
        local.set 3
      end
      local.get 3
      i32.const 0
      i32.lt_s
      if (result i32)  ;; label = @2
        i32.const 13720
        i32.const 61
        i32.store
        i32.const 0
      else
        i32.const 13984
      end
      local.set 1
      global.get 0
      i32.const 32
      i32.sub
      local.tee 0
      global.set 0
      local.get 1
      i32.load offset=24
      i32.const 131072
      i32.add
      call 31
      local.set 3
      local.get 1
      i32.load offset=16
      i32.const 131086
      i32.add
      call 31
      local.set 4
      local.get 1
      i64.load offset=8 align=4
      local.set 17
      local.get 1
      i32.load offset=20
      local.set 5
      local.get 0
      local.get 1
      i64.load align=4
      i64.const 32
      i64.rotl
      i64.store offset=16
      local.get 0
      local.get 5
      i32.const 1900
      i32.add
      i32.store offset=24
      local.get 0
      local.get 4
      i32.store offset=4
      local.get 0
      local.get 3
      i32.store
      local.get 0
      local.get 17
      i64.const 32
      i64.rotl
      i64.store offset=8
      global.get 0
      i32.const 16
      i32.sub
      local.tee 3
      global.set 0
      local.get 3
      local.get 0
      i32.store offset=12
      global.get 0
      i32.const 160
      i32.sub
      local.tee 1
      global.set 0
      local.get 1
      i32.const 25
      i32.store offset=148
      local.get 1
      i32.const 13728
      i32.store offset=144
      local.get 1
      i32.const 0
      i32.const 144
      call 29
      local.tee 1
      i32.const -1
      i32.store offset=76
      local.get 1
      i32.const 7
      i32.store offset=36
      local.get 1
      i32.const -1
      i32.store offset=80
      local.get 1
      local.get 1
      i32.const 159
      i32.add
      i32.store offset=44
      local.get 1
      local.get 1
      i32.const 144
      i32.add
      i32.store offset=84
      i32.const 13728
      i32.const 0
      i32.store8
      local.get 1
      i32.const 2081
      local.get 0
      i32.const 5
      i32.const 6
      call 25
      local.set 4
      local.get 1
      i32.const 160
      i32.add
      global.set 0
      local.get 3
      i32.const 16
      i32.add
      global.set 0
      local.get 4
      i32.const 26
      i32.ge_s
      if  ;; label = @2
        unreachable
      end
      local.get 0
      i32.const 32
      i32.add
      global.set 0
      i32.const 13728
      local.tee 0
      i32.load
      local.tee 1
      i32.const -1
      i32.xor
      local.get 1
      i32.const 16843009
      i32.sub
      i32.and
      i32.const -2139062144
      i32.and
      i32.eqz
      if  ;; label = @2
        loop  ;; label = @3
          local.get 8
          local.get 1
          i32.store
          local.get 0
          i32.load offset=4
          local.set 1
          local.get 8
          i32.const 4
          i32.add
          local.set 8
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          local.get 1
          i32.const 16843009
          i32.sub
          local.get 1
          i32.const -1
          i32.xor
          i32.and
          i32.const -2139062144
          i32.and
          i32.eqz
          br_if 0 (;@3;)
        end
      end
      local.get 8
      local.get 1
      i32.store8
      local.get 1
      i32.const 255
      i32.and
      if  ;; label = @2
        loop  ;; label = @3
          local.get 8
          local.get 0
          i32.load8_u offset=1
          local.tee 1
          i32.store8 offset=1
          local.get 8
          i32.const 1
          i32.add
          local.set 8
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 1
          br_if 0 (;@3;)
        end
      end
      local.get 13
      i32.const 16
      i32.add
      global.set 0
    end
    local.get 2
    i32.const 448
    i32.add
    global.set 0
    i32.const 0)
  (func (;47;) (type 1) (param i32) (result i32)
    i32.const 0)
  (func (;48;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.load offset=84
    local.tee 3
    i32.load offset=4
    local.tee 5
    local.get 0
    i32.load offset=20
    local.get 0
    i32.load offset=28
    local.tee 6
    i32.sub
    local.tee 4
    local.get 4
    local.get 5
    i32.gt_u
    select
    local.tee 4
    if  ;; label = @1
      local.get 3
      i32.load
      local.get 6
      local.get 4
      call 12
      local.get 3
      local.get 3
      i32.load
      local.get 4
      i32.add
      i32.store
      local.get 3
      local.get 3
      i32.load offset=4
      local.get 4
      i32.sub
      local.tee 5
      i32.store offset=4
    end
    local.get 3
    i32.load
    local.set 4
    local.get 5
    local.get 2
    local.get 2
    local.get 5
    i32.gt_u
    select
    local.tee 5
    if  ;; label = @1
      local.get 4
      local.get 1
      local.get 5
      call 12
      local.get 3
      local.get 3
      i32.load
      local.get 5
      i32.add
      local.tee 4
      i32.store
      local.get 3
      local.get 3
      i32.load offset=4
      local.get 5
      i32.sub
      i32.store offset=4
    end
    local.get 4
    i32.const 0
    i32.store8
    local.get 0
    local.get 0
    i32.load offset=44
    local.tee 1
    i32.store offset=28
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 2)
  (func (;49;) (type 3) (param i32 i32)
    (local i64 i64 i64 i64 i64 i64 i32)
    local.get 1
    local.get 1
    i32.load
    i32.const 7
    i32.add
    i32.const -8
    i32.and
    local.tee 1
    i32.const 16
    i32.add
    i32.store
    local.get 0
    block (result f64)  ;; label = @1
      local.get 1
      i64.load
      local.set 4
      local.get 1
      i64.load offset=8
      local.set 5
      global.get 0
      i32.const 32
      i32.sub
      local.tee 0
      global.set 0
      block  ;; label = @2
        local.get 5
        i64.const 9223372036854775807
        i64.and
        local.tee 3
        i64.const 4323737117252386816
        i64.sub
        local.get 3
        i64.const 4899634919602388992
        i64.sub
        i64.lt_u
        if  ;; label = @3
          local.get 5
          i64.const 4
          i64.shl
          local.get 4
          i64.const 60
          i64.shr_u
          i64.or
          local.set 3
          local.get 4
          i64.const 1152921504606846975
          i64.and
          local.tee 4
          i64.const 576460752303423489
          i64.ge_u
          if  ;; label = @4
            local.get 3
            i64.const 4611686018427387905
            i64.add
            local.set 2
            br 2 (;@2;)
          end
          local.get 3
          i64.const -4611686018427387904
          i64.sub
          local.set 2
          local.get 4
          i64.const 576460752303423488
          i64.ne
          br_if 1 (;@2;)
          local.get 2
          local.get 3
          i64.const 1
          i64.and
          i64.add
          local.set 2
          br 1 (;@2;)
        end
        local.get 4
        i64.eqz
        local.get 3
        i64.const 9223090561878065152
        i64.lt_u
        local.get 3
        i64.const 9223090561878065152
        i64.eq
        select
        i32.eqz
        if  ;; label = @3
          local.get 5
          i64.const 4
          i64.shl
          local.get 4
          i64.const 60
          i64.shr_u
          i64.or
          i64.const 2251799813685247
          i64.and
          i64.const 9221120237041090560
          i64.or
          local.set 2
          br 1 (;@2;)
        end
        i64.const 9218868437227405312
        local.set 2
        local.get 3
        i64.const 4899634919602388991
        i64.gt_u
        br_if 0 (;@2;)
        i64.const 0
        local.set 2
        local.get 3
        i64.const 48
        i64.shr_u
        i32.wrap_i64
        local.tee 1
        i32.const 15249
        i32.lt_u
        br_if 0 (;@2;)
        local.get 4
        local.set 2
        local.get 5
        i64.const 281474976710655
        i64.and
        i64.const 281474976710656
        i64.or
        local.tee 3
        local.set 6
        block  ;; label = @3
          local.get 1
          i32.const 15233
          i32.sub
          local.tee 8
          i32.const 64
          i32.and
          if  ;; label = @4
            local.get 2
            local.get 8
            i32.const -64
            i32.add
            i64.extend_i32_u
            i64.shl
            local.set 6
            i64.const 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 8
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          local.get 8
          i64.extend_i32_u
          local.tee 7
          i64.shl
          local.get 2
          i32.const 64
          local.get 8
          i32.sub
          i64.extend_i32_u
          i64.shr_u
          i64.or
          local.set 6
          local.get 2
          local.get 7
          i64.shl
          local.set 2
        end
        local.get 0
        local.get 2
        i64.store offset=16
        local.get 0
        local.get 6
        i64.store offset=24
        block  ;; label = @3
          i32.const 15361
          local.get 1
          i32.sub
          local.tee 1
          i32.const 64
          i32.and
          if  ;; label = @4
            local.get 3
            local.get 1
            i32.const -64
            i32.add
            i64.extend_i32_u
            i64.shr_u
            local.set 4
            i64.const 0
            local.set 3
            br 1 (;@3;)
          end
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.const 64
          local.get 1
          i32.sub
          i64.extend_i32_u
          i64.shl
          local.get 4
          local.get 1
          i64.extend_i32_u
          local.tee 2
          i64.shr_u
          i64.or
          local.set 4
          local.get 3
          local.get 2
          i64.shr_u
          local.set 3
        end
        local.get 0
        local.get 4
        i64.store
        local.get 0
        local.get 3
        i64.store offset=8
        local.get 0
        i64.load offset=8
        i64.const 4
        i64.shl
        local.get 0
        i64.load
        local.tee 4
        i64.const 60
        i64.shr_u
        i64.or
        local.set 2
        local.get 0
        i64.load offset=16
        local.get 0
        i64.load offset=24
        i64.or
        i64.const 0
        i64.ne
        i64.extend_i32_u
        local.get 4
        i64.const 1152921504606846975
        i64.and
        i64.or
        local.tee 4
        i64.const 576460752303423489
        i64.ge_u
        if  ;; label = @3
          local.get 2
          i64.const 1
          i64.add
          local.set 2
          br 1 (;@2;)
        end
        local.get 4
        i64.const 576460752303423488
        i64.ne
        br_if 0 (;@2;)
        local.get 2
        i64.const 1
        i64.and
        local.get 2
        i64.add
        local.set 2
      end
      local.get 0
      i32.const 32
      i32.add
      global.set 0
      local.get 2
      local.get 5
      i64.const -9223372036854775808
      i64.and
      i64.or
      f64.reinterpret_i64
    end
    f64.store)
  (func (;50;) (type 8) (param i32 f64 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i64 i64)
    global.get 0
    i32.const 560
    i32.sub
    local.tee 11
    global.set 0
    local.get 11
    i32.const 0
    i32.store offset=44
    block  ;; label = @1
      local.get 1
      i64.reinterpret_f64
      local.tee 25
      i64.const 0
      i64.lt_s
      if  ;; label = @2
        i32.const 1
        local.set 16
        i32.const 1034
        local.set 19
        local.get 1
        f64.neg
        local.tee 1
        i64.reinterpret_f64
        local.set 25
        br 1 (;@1;)
      end
      local.get 4
      i32.const 2048
      i32.and
      if  ;; label = @2
        i32.const 1
        local.set 16
        i32.const 1037
        local.set 19
        br 1 (;@1;)
      end
      i32.const 1040
      i32.const 1035
      local.get 4
      i32.const 1
      i32.and
      local.tee 16
      select
      local.set 19
      local.get 16
      i32.eqz
      local.set 21
    end
    block  ;; label = @1
      local.get 25
      i64.const 9218868437227405312
      i64.and
      i64.const 9218868437227405312
      i64.eq
      if  ;; label = @2
        local.get 0
        i32.const 32
        local.get 2
        local.get 16
        i32.const 3
        i32.add
        local.tee 3
        local.get 4
        i32.const -65537
        i32.and
        call 9
        local.get 0
        local.get 19
        local.get 16
        call 8
        local.get 0
        i32.const 1163
        i32.const 1219
        local.get 5
        i32.const 32
        i32.and
        local.tee 5
        select
        i32.const 1167
        i32.const 1353
        local.get 5
        select
        local.get 1
        local.get 1
        f64.ne
        select
        i32.const 3
        call 8
        local.get 0
        i32.const 32
        local.get 2
        local.get 3
        local.get 4
        i32.const 8192
        i32.xor
        call 9
        local.get 3
        local.get 2
        local.get 2
        local.get 3
        i32.lt_s
        select
        local.set 9
        br 1 (;@1;)
      end
      local.get 11
      i32.const 16
      i32.add
      local.set 17
      block  ;; label = @2
        block (result i32)  ;; label = @3
          block  ;; label = @4
            local.get 1
            local.get 11
            i32.const 44
            i32.add
            call 37
            local.tee 1
            local.get 1
            f64.add
            local.tee 1
            f64.const 0x0p+0 (;=0;)
            f64.ne
            if  ;; label = @5
              local.get 11
              local.get 11
              i32.load offset=44
              local.tee 6
              i32.const 1
              i32.sub
              i32.store offset=44
              local.get 5
              i32.const 32
              i32.or
              local.tee 14
              i32.const 97
              i32.ne
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
            local.get 5
            i32.const 32
            i32.or
            local.tee 14
            i32.const 97
            i32.eq
            br_if 2 (;@2;)
            local.get 11
            i32.load offset=44
            local.set 10
            i32.const 6
            local.get 3
            local.get 3
            i32.const 0
            i32.lt_s
            select
            br 1 (;@3;)
          end
          local.get 11
          local.get 6
          i32.const 29
          i32.sub
          local.tee 10
          i32.store offset=44
          local.get 1
          f64.const 0x1p+28 (;=2.68435e+08;)
          f64.mul
          local.set 1
          i32.const 6
          local.get 3
          local.get 3
          i32.const 0
          i32.lt_s
          select
        end
        local.set 12
        local.get 11
        i32.const 48
        i32.add
        i32.const 0
        i32.const 288
        local.get 10
        i32.const 0
        i32.lt_s
        select
        i32.add
        local.tee 13
        local.set 7
        loop  ;; label = @3
          local.get 7
          block (result i32)  ;; label = @4
            local.get 1
            f64.const 0x1p+32 (;=4.29497e+09;)
            f64.lt
            local.get 1
            f64.const 0x0p+0 (;=0;)
            f64.ge
            i32.and
            if  ;; label = @5
              local.get 1
              i32.trunc_f64_u
              br 1 (;@4;)
            end
            i32.const 0
          end
          local.tee 3
          i32.store
          local.get 7
          i32.const 4
          i32.add
          local.set 7
          local.get 1
          local.get 3
          f64.convert_i32_u
          f64.sub
          f64.const 0x1.dcd65p+29 (;=1e+09;)
          f64.mul
          local.tee 1
          f64.const 0x0p+0 (;=0;)
          f64.ne
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          local.get 10
          i32.const 0
          i32.le_s
          if  ;; label = @4
            local.get 10
            local.set 3
            local.get 7
            local.set 6
            local.get 13
            local.set 8
            br 1 (;@3;)
          end
          local.get 13
          local.set 8
          local.get 10
          local.set 3
          loop  ;; label = @4
            local.get 3
            i32.const 29
            local.get 3
            i32.const 29
            i32.lt_s
            select
            local.set 3
            block  ;; label = @5
              local.get 7
              i32.const 4
              i32.sub
              local.tee 6
              local.get 8
              i32.lt_u
              br_if 0 (;@5;)
              local.get 3
              i64.extend_i32_u
              local.set 26
              i64.const 0
              local.set 25
              loop  ;; label = @6
                local.get 6
                local.get 25
                i64.const 4294967295
                i64.and
                local.get 6
                i64.load32_u
                local.get 26
                i64.shl
                i64.add
                local.tee 25
                local.get 25
                i64.const 1000000000
                i64.div_u
                local.tee 25
                i64.const 1000000000
                i64.mul
                i64.sub
                i64.store32
                local.get 6
                i32.const 4
                i32.sub
                local.tee 6
                local.get 8
                i32.ge_u
                br_if 0 (;@6;)
              end
              local.get 25
              i32.wrap_i64
              local.tee 6
              i32.eqz
              br_if 0 (;@5;)
              local.get 8
              i32.const 4
              i32.sub
              local.tee 8
              local.get 6
              i32.store
            end
            loop  ;; label = @5
              local.get 8
              local.get 7
              local.tee 6
              i32.lt_u
              if  ;; label = @6
                local.get 6
                i32.const 4
                i32.sub
                local.tee 7
                i32.load
                i32.eqz
                br_if 1 (;@5;)
              end
            end
            local.get 11
            local.get 11
            i32.load offset=44
            local.get 3
            i32.sub
            local.tee 3
            i32.store offset=44
            local.get 6
            local.set 7
            local.get 3
            i32.const 0
            i32.gt_s
            br_if 0 (;@4;)
          end
        end
        local.get 3
        i32.const 0
        i32.lt_s
        if  ;; label = @3
          local.get 12
          i32.const 25
          i32.add
          i32.const 9
          i32.div_u
          i32.const 1
          i32.add
          local.set 15
          local.get 14
          i32.const 102
          i32.eq
          local.set 18
          loop  ;; label = @4
            i32.const 0
            local.get 3
            i32.sub
            local.tee 3
            i32.const 9
            local.get 3
            i32.const 9
            i32.lt_s
            select
            local.set 9
            block  ;; label = @5
              local.get 6
              local.get 8
              i32.le_u
              if  ;; label = @6
                local.get 8
                i32.load
                local.set 7
                br 1 (;@5;)
              end
              i32.const 1000000000
              local.get 9
              i32.shr_u
              local.set 20
              i32.const -1
              local.get 9
              i32.shl
              i32.const -1
              i32.xor
              local.set 22
              i32.const 0
              local.set 3
              local.get 8
              local.set 7
              loop  ;; label = @6
                local.get 7
                local.get 3
                local.get 7
                i32.load
                local.tee 23
                local.get 9
                i32.shr_u
                i32.add
                i32.store
                local.get 22
                local.get 23
                i32.and
                local.get 20
                i32.mul
                local.set 3
                local.get 7
                i32.const 4
                i32.add
                local.tee 7
                local.get 6
                i32.lt_u
                br_if 0 (;@6;)
              end
              local.get 8
              i32.load
              local.set 7
              local.get 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              local.get 3
              i32.store
              local.get 6
              i32.const 4
              i32.add
              local.set 6
            end
            local.get 11
            local.get 11
            i32.load offset=44
            local.get 9
            i32.add
            local.tee 3
            i32.store offset=44
            local.get 13
            local.get 8
            local.get 7
            i32.eqz
            i32.const 2
            i32.shl
            i32.add
            local.tee 8
            local.get 18
            select
            local.tee 7
            local.get 15
            i32.const 2
            i32.shl
            i32.add
            local.get 6
            local.get 6
            local.get 7
            i32.sub
            i32.const 2
            i32.shr_s
            local.get 15
            i32.gt_s
            select
            local.set 6
            local.get 3
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
          end
        end
        i32.const 0
        local.set 3
        block  ;; label = @3
          local.get 6
          local.get 8
          i32.le_u
          br_if 0 (;@3;)
          local.get 13
          local.get 8
          i32.sub
          i32.const 2
          i32.shr_s
          i32.const 9
          i32.mul
          local.set 3
          i32.const 10
          local.set 7
          local.get 8
          i32.load
          local.tee 9
          i32.const 10
          i32.lt_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 9
            local.get 7
            i32.const 10
            i32.mul
            local.tee 7
            i32.ge_u
            br_if 0 (;@4;)
          end
        end
        local.get 12
        i32.const 0
        local.get 3
        local.get 14
        i32.const 102
        i32.eq
        select
        i32.sub
        local.get 14
        i32.const 103
        i32.eq
        local.get 12
        i32.const 0
        i32.ne
        i32.and
        i32.sub
        local.tee 7
        local.get 6
        local.get 13
        i32.sub
        i32.const 2
        i32.shr_s
        i32.const 9
        i32.mul
        i32.const 9
        i32.sub
        i32.lt_s
        if  ;; label = @3
          i32.const 4
          i32.const 292
          local.get 10
          i32.const 0
          i32.lt_s
          select
          local.get 11
          i32.add
          local.get 7
          i32.const 9216
          i32.add
          local.tee 9
          i32.const 9
          i32.div_s
          local.tee 15
          i32.const 2
          i32.shl
          i32.add
          i32.const 4048
          i32.sub
          local.set 10
          i32.const 10
          local.set 7
          local.get 9
          local.get 15
          i32.const 9
          i32.mul
          i32.sub
          local.tee 9
          i32.const 7
          i32.le_s
          if  ;; label = @4
            loop  ;; label = @5
              local.get 7
              i32.const 10
              i32.mul
              local.set 7
              local.get 9
              i32.const 1
              i32.add
              local.tee 9
              i32.const 8
              i32.ne
              br_if 0 (;@5;)
            end
          end
          block  ;; label = @4
            local.get 10
            i32.load
            local.tee 18
            local.get 18
            local.get 7
            i32.div_u
            local.tee 15
            local.get 7
            i32.mul
            i32.sub
            local.tee 9
            i32.eqz
            local.get 10
            i32.const 4
            i32.add
            local.tee 20
            local.get 6
            i32.eq
            i32.and
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 15
              i32.const 1
              i32.and
              i32.eqz
              if  ;; label = @6
                f64.const 0x1p+53 (;=9.0072e+15;)
                local.set 1
                local.get 7
                i32.const 1000000000
                i32.ne
                br_if 1 (;@5;)
                local.get 8
                local.get 10
                i32.ge_u
                br_if 1 (;@5;)
                local.get 10
                i32.const 4
                i32.sub
                i32.load8_u
                i32.const 1
                i32.and
                i32.eqz
                br_if 1 (;@5;)
              end
              f64.const 0x1.0000000000001p+53 (;=9.0072e+15;)
              local.set 1
            end
            f64.const 0x1p-1 (;=0.5;)
            f64.const 0x1p+0 (;=1;)
            f64.const 0x1.8p+0 (;=1.5;)
            local.get 6
            local.get 20
            i32.eq
            select
            f64.const 0x1.8p+0 (;=1.5;)
            local.get 9
            local.get 7
            i32.const 1
            i32.shr_u
            local.tee 20
            i32.eq
            select
            local.get 9
            local.get 20
            i32.lt_u
            select
            local.set 24
            block  ;; label = @5
              local.get 21
              br_if 0 (;@5;)
              local.get 19
              i32.load8_u
              i32.const 45
              i32.ne
              br_if 0 (;@5;)
              local.get 24
              f64.neg
              local.set 24
              local.get 1
              f64.neg
              local.set 1
            end
            local.get 10
            local.get 18
            local.get 9
            i32.sub
            local.tee 9
            i32.store
            local.get 1
            local.get 24
            f64.add
            local.get 1
            f64.eq
            br_if 0 (;@4;)
            local.get 10
            local.get 7
            local.get 9
            i32.add
            local.tee 3
            i32.store
            local.get 3
            i32.const 1000000000
            i32.ge_u
            if  ;; label = @5
              loop  ;; label = @6
                local.get 10
                i32.const 0
                i32.store
                local.get 8
                local.get 10
                i32.const 4
                i32.sub
                local.tee 10
                i32.gt_u
                if  ;; label = @7
                  local.get 8
                  i32.const 4
                  i32.sub
                  local.tee 8
                  i32.const 0
                  i32.store
                end
                local.get 10
                local.get 10
                i32.load
                i32.const 1
                i32.add
                local.tee 3
                i32.store
                local.get 3
                i32.const 999999999
                i32.gt_u
                br_if 0 (;@6;)
              end
            end
            local.get 13
            local.get 8
            i32.sub
            i32.const 2
            i32.shr_s
            i32.const 9
            i32.mul
            local.set 3
            i32.const 10
            local.set 7
            local.get 8
            i32.load
            local.tee 9
            i32.const 10
            i32.lt_u
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 3
              i32.const 1
              i32.add
              local.set 3
              local.get 9
              local.get 7
              i32.const 10
              i32.mul
              local.tee 7
              i32.ge_u
              br_if 0 (;@5;)
            end
          end
          local.get 10
          i32.const 4
          i32.add
          local.tee 7
          local.get 6
          local.get 6
          local.get 7
          i32.gt_u
          select
          local.set 6
        end
        loop  ;; label = @3
          local.get 6
          local.tee 7
          local.get 8
          i32.le_u
          local.tee 9
          i32.eqz
          if  ;; label = @4
            local.get 7
            i32.const 4
            i32.sub
            local.tee 6
            i32.load
            i32.eqz
            br_if 1 (;@3;)
          end
        end
        block  ;; label = @3
          local.get 14
          i32.const 103
          i32.ne
          if  ;; label = @4
            local.get 4
            i32.const 8
            i32.and
            local.set 10
            br 1 (;@3;)
          end
          local.get 3
          i32.const -1
          i32.xor
          i32.const -1
          local.get 12
          i32.const 1
          local.get 12
          select
          local.tee 6
          local.get 3
          i32.gt_s
          local.get 3
          i32.const -5
          i32.gt_s
          i32.and
          local.tee 10
          select
          local.get 6
          i32.add
          local.set 12
          i32.const -1
          i32.const -2
          local.get 10
          select
          local.get 5
          i32.add
          local.set 5
          local.get 4
          i32.const 8
          i32.and
          local.tee 10
          br_if 0 (;@3;)
          i32.const -9
          local.set 6
          block  ;; label = @4
            local.get 9
            br_if 0 (;@4;)
            local.get 7
            i32.const 4
            i32.sub
            i32.load
            local.tee 14
            i32.eqz
            br_if 0 (;@4;)
            i32.const 10
            local.set 9
            i32.const 0
            local.set 6
            local.get 14
            i32.const 10
            i32.rem_u
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 6
              local.tee 10
              i32.const 1
              i32.add
              local.set 6
              local.get 14
              local.get 9
              i32.const 10
              i32.mul
              local.tee 9
              i32.rem_u
              i32.eqz
              br_if 0 (;@5;)
            end
            local.get 10
            i32.const -1
            i32.xor
            local.set 6
          end
          local.get 7
          local.get 13
          i32.sub
          i32.const 2
          i32.shr_s
          i32.const 9
          i32.mul
          local.set 9
          local.get 5
          i32.const -33
          i32.and
          i32.const 70
          i32.eq
          if  ;; label = @4
            i32.const 0
            local.set 10
            local.get 12
            local.get 6
            local.get 9
            i32.add
            i32.const 9
            i32.sub
            local.tee 6
            i32.const 0
            local.get 6
            i32.const 0
            i32.gt_s
            select
            local.tee 6
            local.get 6
            local.get 12
            i32.gt_s
            select
            local.set 12
            br 1 (;@3;)
          end
          i32.const 0
          local.set 10
          local.get 12
          local.get 3
          local.get 9
          i32.add
          local.get 6
          i32.add
          i32.const 9
          i32.sub
          local.tee 6
          i32.const 0
          local.get 6
          i32.const 0
          i32.gt_s
          select
          local.tee 6
          local.get 6
          local.get 12
          i32.gt_s
          select
          local.set 12
        end
        i32.const -1
        local.set 9
        local.get 12
        i32.const 2147483645
        i32.const 2147483646
        local.get 10
        local.get 12
        i32.or
        local.tee 18
        select
        i32.gt_s
        br_if 1 (;@1;)
        local.get 12
        local.get 18
        i32.const 0
        i32.ne
        i32.add
        i32.const 1
        i32.add
        local.set 14
        block  ;; label = @3
          local.get 5
          i32.const -33
          i32.and
          local.tee 21
          i32.const 70
          i32.eq
          if  ;; label = @4
            local.get 3
            i32.const 2147483647
            local.get 14
            i32.sub
            i32.gt_s
            br_if 3 (;@1;)
            local.get 3
            i32.const 0
            local.get 3
            i32.const 0
            i32.gt_s
            select
            local.set 6
            br 1 (;@3;)
          end
          local.get 17
          local.get 3
          local.get 3
          i32.const 31
          i32.shr_s
          local.tee 6
          i32.xor
          local.get 6
          i32.sub
          i64.extend_i32_u
          local.get 17
          call 13
          local.tee 6
          i32.sub
          i32.const 1
          i32.le_s
          if  ;; label = @4
            loop  ;; label = @5
              local.get 6
              i32.const 1
              i32.sub
              local.tee 6
              i32.const 48
              i32.store8
              local.get 17
              local.get 6
              i32.sub
              i32.const 2
              i32.lt_s
              br_if 0 (;@5;)
            end
          end
          local.get 6
          i32.const 2
          i32.sub
          local.tee 15
          local.get 5
          i32.store8
          local.get 6
          i32.const 1
          i32.sub
          i32.const 45
          i32.const 43
          local.get 3
          i32.const 0
          i32.lt_s
          select
          i32.store8
          local.get 17
          local.get 15
          i32.sub
          local.tee 6
          i32.const 2147483647
          local.get 14
          i32.sub
          i32.gt_s
          br_if 2 (;@1;)
        end
        local.get 6
        local.get 14
        i32.add
        local.tee 3
        local.get 16
        i32.const 2147483647
        i32.xor
        i32.gt_s
        br_if 1 (;@1;)
        local.get 0
        i32.const 32
        local.get 2
        local.get 3
        local.get 16
        i32.add
        local.tee 5
        local.get 4
        call 9
        local.get 0
        local.get 19
        local.get 16
        call 8
        local.get 0
        i32.const 48
        local.get 2
        local.get 5
        local.get 4
        i32.const 65536
        i32.xor
        call 9
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 21
              i32.const 70
              i32.eq
              if  ;; label = @6
                local.get 11
                i32.const 16
                i32.add
                local.tee 6
                i32.const 8
                i32.or
                local.set 3
                local.get 6
                i32.const 9
                i32.or
                local.set 10
                local.get 13
                local.get 8
                local.get 8
                local.get 13
                i32.gt_u
                select
                local.tee 9
                local.set 8
                loop  ;; label = @7
                  local.get 8
                  i64.load32_u
                  local.get 10
                  call 13
                  local.set 6
                  block  ;; label = @8
                    local.get 8
                    local.get 9
                    i32.ne
                    if  ;; label = @9
                      local.get 6
                      local.get 11
                      i32.const 16
                      i32.add
                      i32.le_u
                      br_if 1 (;@8;)
                      loop  ;; label = @10
                        local.get 6
                        i32.const 1
                        i32.sub
                        local.tee 6
                        i32.const 48
                        i32.store8
                        local.get 6
                        local.get 11
                        i32.const 16
                        i32.add
                        i32.gt_u
                        br_if 0 (;@10;)
                      end
                      br 1 (;@8;)
                    end
                    local.get 6
                    local.get 10
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 11
                    i32.const 48
                    i32.store8 offset=24
                    local.get 3
                    local.set 6
                  end
                  local.get 0
                  local.get 6
                  local.get 10
                  local.get 6
                  i32.sub
                  call 8
                  local.get 8
                  i32.const 4
                  i32.add
                  local.tee 8
                  local.get 13
                  i32.le_u
                  br_if 0 (;@7;)
                end
                local.get 18
                if  ;; label = @7
                  local.get 0
                  i32.const 1437
                  i32.const 1
                  call 8
                end
                local.get 7
                local.get 8
                i32.le_u
                br_if 1 (;@5;)
                local.get 12
                i32.const 0
                i32.le_s
                br_if 1 (;@5;)
                loop  ;; label = @7
                  local.get 8
                  i64.load32_u
                  local.get 10
                  call 13
                  local.tee 6
                  local.get 11
                  i32.const 16
                  i32.add
                  i32.gt_u
                  if  ;; label = @8
                    loop  ;; label = @9
                      local.get 6
                      i32.const 1
                      i32.sub
                      local.tee 6
                      i32.const 48
                      i32.store8
                      local.get 6
                      local.get 11
                      i32.const 16
                      i32.add
                      i32.gt_u
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 0
                  local.get 6
                  local.get 12
                  i32.const 9
                  local.get 12
                  i32.const 9
                  i32.lt_s
                  select
                  call 8
                  local.get 12
                  i32.const 9
                  i32.sub
                  local.set 6
                  local.get 8
                  i32.const 4
                  i32.add
                  local.tee 8
                  local.get 7
                  i32.ge_u
                  br_if 3 (;@4;)
                  local.get 12
                  i32.const 9
                  i32.gt_s
                  local.set 3
                  local.get 6
                  local.set 12
                  local.get 3
                  br_if 0 (;@7;)
                end
                br 2 (;@4;)
              end
              block  ;; label = @6
                local.get 12
                i32.const 0
                i32.lt_s
                br_if 0 (;@6;)
                local.get 7
                local.get 8
                i32.const 4
                i32.add
                local.get 7
                local.get 8
                i32.gt_u
                select
                local.set 9
                local.get 11
                i32.const 16
                i32.add
                local.tee 6
                i32.const 8
                i32.or
                local.set 3
                local.get 6
                i32.const 9
                i32.or
                local.set 13
                local.get 8
                local.set 7
                loop  ;; label = @7
                  local.get 13
                  local.get 7
                  i64.load32_u
                  local.get 13
                  call 13
                  local.tee 6
                  i32.eq
                  if  ;; label = @8
                    local.get 11
                    i32.const 48
                    i32.store8 offset=24
                    local.get 3
                    local.set 6
                  end
                  block  ;; label = @8
                    local.get 7
                    local.get 8
                    i32.ne
                    if  ;; label = @9
                      local.get 6
                      local.get 11
                      i32.const 16
                      i32.add
                      i32.le_u
                      br_if 1 (;@8;)
                      loop  ;; label = @10
                        local.get 6
                        i32.const 1
                        i32.sub
                        local.tee 6
                        i32.const 48
                        i32.store8
                        local.get 6
                        local.get 11
                        i32.const 16
                        i32.add
                        i32.gt_u
                        br_if 0 (;@10;)
                      end
                      br 1 (;@8;)
                    end
                    local.get 0
                    local.get 6
                    i32.const 1
                    call 8
                    local.get 6
                    i32.const 1
                    i32.add
                    local.set 6
                    local.get 10
                    local.get 12
                    i32.or
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const 1437
                    i32.const 1
                    call 8
                  end
                  local.get 0
                  local.get 6
                  local.get 12
                  local.get 13
                  local.get 6
                  i32.sub
                  local.tee 6
                  local.get 6
                  local.get 12
                  i32.gt_s
                  select
                  call 8
                  local.get 12
                  local.get 6
                  i32.sub
                  local.set 12
                  local.get 7
                  i32.const 4
                  i32.add
                  local.tee 7
                  local.get 9
                  i32.ge_u
                  br_if 1 (;@6;)
                  local.get 12
                  i32.const 0
                  i32.ge_s
                  br_if 0 (;@7;)
                end
              end
              local.get 0
              i32.const 48
              local.get 12
              i32.const 18
              i32.add
              i32.const 18
              i32.const 0
              call 9
              local.get 0
              local.get 15
              local.get 17
              local.get 15
              i32.sub
              call 8
              br 2 (;@3;)
            end
            local.get 12
            local.set 6
          end
          local.get 0
          i32.const 48
          local.get 6
          i32.const 9
          i32.add
          i32.const 9
          i32.const 0
          call 9
        end
        local.get 0
        i32.const 32
        local.get 2
        local.get 5
        local.get 4
        i32.const 8192
        i32.xor
        call 9
        local.get 5
        local.get 2
        local.get 2
        local.get 5
        i32.lt_s
        select
        local.set 9
        br 1 (;@1;)
      end
      local.get 19
      local.get 5
      i32.const 26
      i32.shl
      i32.const 31
      i32.shr_s
      i32.const 9
      i32.and
      i32.add
      local.set 12
      block  ;; label = @2
        local.get 3
        i32.const 11
        i32.gt_u
        br_if 0 (;@2;)
        i32.const 12
        local.get 3
        i32.sub
        local.set 6
        f64.const 0x1p+4 (;=16;)
        local.set 24
        loop  ;; label = @3
          local.get 24
          f64.const 0x1p+4 (;=16;)
          f64.mul
          local.set 24
          local.get 6
          i32.const 1
          i32.sub
          local.tee 6
          br_if 0 (;@3;)
        end
        local.get 12
        i32.load8_u
        i32.const 45
        i32.eq
        if  ;; label = @3
          local.get 24
          local.get 1
          f64.neg
          local.get 24
          f64.sub
          f64.add
          f64.neg
          local.set 1
          br 1 (;@2;)
        end
        local.get 1
        local.get 24
        f64.add
        local.get 24
        f64.sub
        local.set 1
      end
      local.get 17
      local.get 11
      i32.load offset=44
      local.tee 6
      local.get 6
      i32.const 31
      i32.shr_s
      local.tee 6
      i32.xor
      local.get 6
      i32.sub
      i64.extend_i32_u
      local.get 17
      call 13
      local.tee 6
      i32.eq
      if  ;; label = @2
        local.get 11
        i32.const 48
        i32.store8 offset=15
        local.get 11
        i32.const 15
        i32.add
        local.set 6
      end
      local.get 16
      i32.const 2
      i32.or
      local.set 10
      local.get 5
      i32.const 32
      i32.and
      local.set 8
      local.get 11
      i32.load offset=44
      local.set 7
      local.get 6
      i32.const 2
      i32.sub
      local.tee 13
      local.get 5
      i32.const 15
      i32.add
      i32.store8
      local.get 6
      i32.const 1
      i32.sub
      i32.const 45
      i32.const 43
      local.get 7
      i32.const 0
      i32.lt_s
      select
      i32.store8
      local.get 4
      i32.const 8
      i32.and
      local.set 6
      local.get 11
      i32.const 16
      i32.add
      local.set 7
      loop  ;; label = @2
        local.get 7
        local.tee 5
        block (result i32)  ;; label = @3
          local.get 1
          f64.abs
          f64.const 0x1p+31 (;=2.14748e+09;)
          f64.lt
          if  ;; label = @4
            local.get 1
            i32.trunc_f64_s
            br 1 (;@3;)
          end
          i32.const -2147483648
        end
        local.tee 7
        i32.const 3152
        i32.add
        i32.load8_u
        local.get 8
        i32.or
        i32.store8
        local.get 1
        local.get 7
        f64.convert_i32_s
        f64.sub
        f64.const 0x1p+4 (;=16;)
        f64.mul
        local.set 1
        block  ;; label = @3
          local.get 5
          i32.const 1
          i32.add
          local.tee 7
          local.get 11
          i32.const 16
          i32.add
          i32.sub
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 6
            br_if 0 (;@4;)
            local.get 3
            i32.const 0
            i32.gt_s
            br_if 0 (;@4;)
            local.get 1
            f64.const 0x0p+0 (;=0;)
            f64.eq
            br_if 1 (;@3;)
          end
          local.get 5
          i32.const 46
          i32.store8 offset=1
          local.get 5
          i32.const 2
          i32.add
          local.set 7
        end
        local.get 1
        f64.const 0x0p+0 (;=0;)
        f64.ne
        br_if 0 (;@2;)
      end
      i32.const -1
      local.set 9
      i32.const 2147483645
      local.get 10
      local.get 17
      local.get 13
      i32.sub
      local.tee 5
      i32.add
      local.tee 6
      i32.sub
      local.get 3
      i32.lt_s
      br_if 0 (;@1;)
      local.get 0
      i32.const 32
      local.get 2
      local.get 6
      block (result i32)  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          local.get 11
          i32.const 16
          i32.add
          i32.sub
          local.tee 8
          i32.const 2
          i32.sub
          local.get 3
          i32.ge_s
          br_if 0 (;@3;)
          local.get 3
          i32.const 2
          i32.add
          br 1 (;@2;)
        end
        local.get 7
        local.get 11
        i32.const 16
        i32.add
        i32.sub
        local.tee 8
      end
      local.tee 7
      i32.add
      local.tee 3
      local.get 4
      call 9
      local.get 0
      local.get 12
      local.get 10
      call 8
      local.get 0
      i32.const 48
      local.get 2
      local.get 3
      local.get 4
      i32.const 65536
      i32.xor
      call 9
      local.get 0
      local.get 11
      i32.const 16
      i32.add
      local.get 8
      call 8
      local.get 0
      i32.const 48
      local.get 7
      local.get 8
      i32.sub
      i32.const 0
      i32.const 0
      call 9
      local.get 0
      local.get 13
      local.get 5
      call 8
      local.get 0
      i32.const 32
      local.get 2
      local.get 3
      local.get 4
      i32.const 8192
      i32.xor
      call 9
      local.get 3
      local.get 2
      local.get 2
      local.get 3
      i32.lt_s
      select
      local.set 9
    end
    local.get 11
    i32.const 560
    i32.add
    global.set 0
    local.get 9)
  (func (;51;) (type 5)
    (local i32 i32 i32 i32)
    call 22
    block (result i32)  ;; label = @1
      global.get 0
      i32.const 16
      i32.sub
      local.tee 0
      global.set 0
      block  ;; label = @2
        local.get 0
        i32.const 12
        i32.add
        local.get 0
        i32.const 8
        i32.add
        call 6
        i32.eqz
        if  ;; label = @3
          local.get 0
          local.get 0
          i32.load offset=12
          i32.const 2
          i32.shl
          local.tee 2
          i32.const 19
          i32.add
          i32.const -16
          i32.and
          i32.sub
          local.tee 1
          global.set 0
          local.get 1
          local.get 0
          i32.load offset=8
          i32.const 15
          i32.add
          i32.const -16
          i32.and
          i32.sub
          local.tee 3
          global.set 0
          local.get 1
          local.get 2
          i32.add
          i32.const 0
          i32.store
          local.get 1
          local.get 3
          call 5
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=12
          local.get 1
          call 46
          local.set 1
          local.get 0
          i32.const 16
          i32.add
          global.set 0
          local.get 1
          br 2 (;@1;)
        end
        i32.const 71
        call 0
        unreachable
      end
      i32.const 71
      call 0
      unreachable
    end
    local.set 1
    i32.const 14152
    i32.load
    local.tee 0
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        call 20
        local.get 0
        i32.load offset=56
        local.tee 0
        br_if 0 (;@2;)
      end
    end
    i32.const 14156
    i32.load
    call 20
    i32.const 3360
    i32.load
    call 20
    i32.const 14156
    i32.load
    call 20
    local.get 1
    call 0
    unreachable)
  (func (;52;) (type 7) (param i32 i64 i32) (result i64)
    i64.const 0)
  (func (;53;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    i32.load offset=28
    local.tee 4
    i32.store offset=16
    local.get 0
    i32.load offset=20
    local.set 5
    local.get 3
    local.get 2
    i32.store offset=28
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 5
    local.get 4
    i32.sub
    local.tee 1
    i32.store offset=20
    local.get 1
    local.get 2
    i32.add
    local.set 5
    i32.const 2
    local.set 7
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=60
            local.get 3
            i32.const 16
            i32.add
            local.tee 1
            i32.const 2
            local.get 3
            i32.const 12
            i32.add
            call 1
            local.tee 4
            if (result i32)  ;; label = @5
              i32.const 13720
              local.get 4
              i32.store
              i32.const -1
            else
              i32.const 0
            end
            if  ;; label = @5
              local.get 1
              local.set 4
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 5
              local.get 3
              i32.load offset=12
              local.tee 6
              i32.eq
              br_if 2 (;@3;)
              local.get 6
              i32.const 0
              i32.lt_s
              if  ;; label = @6
                local.get 1
                local.set 4
                br 4 (;@2;)
              end
              local.get 1
              local.get 6
              local.get 1
              i32.load offset=4
              local.tee 8
              i32.gt_u
              local.tee 9
              i32.const 3
              i32.shl
              i32.add
              local.tee 4
              local.get 6
              local.get 8
              i32.const 0
              local.get 9
              select
              i32.sub
              local.tee 8
              local.get 4
              i32.load
              i32.add
              i32.store
              local.get 1
              i32.const 12
              i32.const 4
              local.get 9
              select
              i32.add
              local.tee 1
              local.get 1
              i32.load
              local.get 8
              i32.sub
              i32.store
              local.get 5
              local.get 6
              i32.sub
              local.set 5
              local.get 0
              i32.load offset=60
              local.get 4
              local.tee 1
              local.get 7
              local.get 9
              i32.sub
              local.tee 7
              local.get 3
              i32.const 12
              i32.add
              call 1
              local.tee 6
              if (result i32)  ;; label = @6
                i32.const 13720
                local.get 6
                i32.store
                i32.const -1
              else
                i32.const 0
              end
              i32.eqz
              br_if 0 (;@5;)
            end
          end
          local.get 5
          i32.const -1
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 0
        i32.load offset=44
        local.tee 1
        i32.store offset=28
        local.get 0
        local.get 1
        i32.store offset=20
        local.get 0
        local.get 1
        local.get 0
        i32.load offset=48
        i32.add
        i32.store offset=16
        local.get 2
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store offset=28
      local.get 0
      i64.const 0
      i64.store offset=16
      local.get 0
      local.get 0
      i32.load
      i32.const 32
      i32.or
      i32.store
      i32.const 0
      local.get 7
      i32.const 2
      i32.eq
      br_if 0 (;@1;)
      drop
      local.get 2
      local.get 4
      i32.load offset=4
      i32.sub
    end
    local.set 0
    local.get 3
    i32.const 32
    i32.add
    global.set 0
    local.get 0)
  (table (;0;) 8 8 funcref)
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 5258576))
  (export "memory" (memory 0))
  (export "main" (func 46))
  (export "_start" (func 51))
  (export "__indirect_function_table" (table 0))
  (elem (;0;) (i32.const 1) func 22 47 53 52 50 49 48)
  (data (;0;) (i32.const 1024) "-+   0X0x\00-0X+0X 0X-0x+0x 0x\00Measured time too small to obtain meaningful results\00Please increase number of runs\00  Ptr_Comp:       *    %p\00nan\00inf\00TZif\00 same as above\00/etc/localtime\00Optimised\00TZ\00NAN\00ASCII\00DHRYSTONE PROGRAM, 1'ST STRING\00DHRYSTONE PROGRAM, SOME STRING\00DHRYSTONE PROGRAM, 3'RD STRING\00DHRYSTONE PROGRAM, 2'ND STRING\00INF\00C\00Final values (* implementation-dependent):\00UTF-8\00Register option  Not selected.\00(null)\00Dhrystone Benchmark, Version 2.1 (Language: C or C++)\00%d \00WRONG \00Arr_1_Glob[8]: \00Arr_2_Glob8/7: \00%d  \00%c  \00O.K.  \00  Int_Comp:    \00Enum_Comp:     \00Int_3_Loc:     \00Int_2_Loc:     \00Int_1_Loc:     \00Bool_Glob:     \00Ch_2_Glob:     \00Ch_1_Glob:     \00Str_Comp:      \00Enum_Loc:      \00Int_Glob:      \00Next_Ptr_Glob->       \00  Discr:       \00Ptr_Glob->            \00Str_2_Loc:                             \00Str_1_Loc:                             \00Optimisation    %s\0a\00  Ptr_Comp:       *    %p\0a\00Nanoseconds one Dhrystone run: %12.2lf\0a\00VAX  MIPS rating =             %12.2lf\0a\00Dhrystones per Second:         %12.0lf\0a\00Register option not selected\0a\00%10d\0a\00%.3s %.3s%3d %.2d:%.2d:%.2d %d\0a\00%c\0a\00%12.0f runs %6.2f seconds \0a\00%d  \0a")
  (data (;1;) (i32.const 2176) ".")
  (data (;2;) (i32.const 2192) "Sun\00Mon\00Tue\00Wed\00Thu\00Fri\00Sat\00Sunday\00Monday\00Tuesday\00Wednesday\00Thursday\00Friday\00Saturday\00Jan\00Feb\00Mar\00Apr\00May\00Jun\00Jul\00Aug\00Sep\00Oct\00Nov\00Dec\00January\00February\00March\00April\00May\00June\00July\00August\00September\00October\00November\00December\00AM\00PM\00%a %b %e %T %Y\00%m/%d/%y\00%H:%M:%S\00%I:%M:%S %p\00\00\00%m/%d/%y\000123456789\00%a %b %e %T %Y\00%H:%M:%S\00\00\00\00\00^[yY]\00^[nN]\00yes\00no")
  (data (;3;) (i32.const 2548) "\80\de(\00\80\c8M\00\00\a7v\00\004\9e\00\80\12\c7\00\80\9f\ee\00\00~\17\01\80\5c@\01\80\e9g\01\00\c8\90\01\00U\b8\01UTC")
  (data (;4;) (i32.const 2608) "/usr/share/zoneinfo/\00/share/zoneinfo/\00/etc/zoneinfo/\00\00\1f\1e\1f\1e\1f\1f\1e\1f\1e\1f\1f\1d")
  (data (;5;) (i32.const 2688) "\19\00\0a\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\11\0a\19\19\19\03\0a\07\00\01\00\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19")
  (data (;6;) (i32.const 2769) "\0e\00\00\00\00\00\00\00\00\19\00\0a\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e")
  (data (;7;) (i32.const 2827) "\0c")
  (data (;8;) (i32.const 2839) "\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c")
  (data (;9;) (i32.const 2885) "\10")
  (data (;10;) (i32.const 2897) "\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10")
  (data (;11;) (i32.const 2943) "\12")
  (data (;12;) (i32.const 2955) "\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a")
  (data (;13;) (i32.const 3010) "\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09")
  (data (;14;) (i32.const 3059) "\14")
  (data (;15;) (i32.const 3071) "\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14")
  (data (;16;) (i32.const 3117) "\16")
  (data (;17;) (i32.const 3129) "\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\000123456789ABCDEF")
  (data (;18;) (i32.const 3168) "Register option      Selected.")
  (data (;19;) (i32.const 3208) "\806\00\00 \00\00\00\05")
  (data (;20;) (i32.const 3228) "\02")
  (data (;21;) (i32.const 3252) "\03\00\00\00\04\00\00\00X7\00\00\00\04")
  (data (;22;) (i32.const 3276) "\01")
  (data (;23;) (i32.const 3292) "\ff\ff\ff\ff\0a")
  (data (;24;) (i32.const 3360) "\90\0c\00\00P=P"))
