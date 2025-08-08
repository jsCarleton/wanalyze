(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (result f64)))
  (type (;4;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func))
  (type (;7;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32 i32) (result i32)))
  (type (;9;) (func (param i32) (result i64)))
  (type (;10;) (func (param i32)))
  (type (;11;) (func (result i32)))
  (type (;12;) (func (param i32 i64 i32) (result i64)))
  (type (;13;) (func (param i32 i32 i32 i64) (result i64)))
  (type (;14;) (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;15;) (func (param i32 i32 i32)))
  (type (;16;) (func (param i32 i32 i32 i32)))
  (type (;17;) (func (param i64 i32 i32) (result i32)))
  (type (;18;) (func (param i64 i32) (result i32)))
  (type (;19;) (func (param i32 i32 i32 i32 i32)))
  (type (;20;) (func (param i32 i64 i64 i64 i64)))
  (import "env" "emscripten_date_now" (func (;0;) (type 3)))
  (import "wasi_snapshot_preview1" "fd_write" (func (;1;) (type 4)))
  (import "env" "emscripten_resize_heap" (func (;2;) (type 5)))
  (func (;3;) (type 6)
    call 41)
  (func (;4;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 2
      i32.lt_s
      br_if 0 (;@1;)
      local.get 0
      i32.const -1
      i32.add
      local.tee 2
      local.set 3
      i32.const 0
      local.set 4
      loop  ;; label = @2
        local.get 3
        local.set 5
        i32.const 0
        local.set 6
        block  ;; label = @3
          local.get 4
          local.tee 7
          local.get 0
          i32.sub
          i32.const -2
          i32.gt_s
          br_if 0 (;@3;)
          loop  ;; label = @4
            block  ;; label = @5
              local.get 1
              local.get 6
              local.tee 3
              i32.const 2
              i32.shl
              i32.add
              local.tee 6
              i32.load
              local.tee 4
              local.get 1
              local.get 3
              i32.const 1
              i32.add
              local.tee 3
              i32.const 2
              i32.shl
              i32.add
              local.tee 8
              i32.load
              local.tee 9
              i32.le_s
              br_if 0 (;@5;)
              local.get 6
              local.get 9
              i32.store
              local.get 8
              local.get 4
              i32.store
            end
            local.get 3
            local.set 6
            local.get 3
            local.get 5
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 5
        i32.const -1
        i32.add
        local.set 3
        local.get 7
        i32.const 1
        i32.add
        local.tee 6
        local.set 4
        local.get 6
        local.get 2
        i32.ne
        br_if 0 (;@2;)
      end
    end)
  (func (;5;) (type 7) (param i32 i32 i32 i32 i32) (result i32)
    (local i32)
    local.get 2
    local.set 5
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
      local.set 5
    end
    local.get 5)
  (func (;6;) (type 8) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.load offset=4
    local.get 2
    i32.const 12
    i32.add
    i32.const 10
    call 17
    local.tee 3
    i32.store
    i32.const 1041
    local.get 2
    call 8
    drop
    i32.const 0
    call 7
    i32.wrap_i64
    call 9
    local.get 3
    i32.const 2
    i32.shl
    call 44
    local.set 4
    block  ;; label = @1
      local.get 3
      i32.const 0
      i32.le_s
      br_if 0 (;@1;)
      i32.const 0
      local.set 1
      loop  ;; label = @2
        call 10
        local.set 5
        local.get 4
        i32.const 1
        i32.const 2
        i32.const 3
        i32.const 4
        i32.const 5
        call 5
        i32.const 2
        i32.shl
        i32.add
        local.get 5
        i32.store
        local.get 1
        i32.const 1
        i32.add
        local.tee 5
        local.set 1
        local.get 5
        local.get 3
        i32.ne
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 3
      i32.const 2
      i32.lt_s
      br_if 0 (;@1;)
      local.get 3
      i32.const -1
      i32.add
      local.tee 6
      local.set 1
      i32.const 0
      local.set 7
      loop  ;; label = @2
        local.get 1
        local.set 8
        i32.const 0
        local.set 5
        block  ;; label = @3
          local.get 7
          local.tee 9
          local.get 3
          i32.sub
          i32.const -2
          i32.gt_s
          br_if 0 (;@3;)
          loop  ;; label = @4
            block  ;; label = @5
              local.get 4
              local.get 5
              local.tee 1
              i32.const 2
              i32.shl
              i32.add
              local.tee 5
              i32.load
              local.tee 7
              local.get 4
              local.get 1
              i32.const 1
              i32.add
              local.tee 1
              i32.const 2
              i32.shl
              i32.add
              local.tee 10
              i32.load
              local.tee 11
              i32.le_s
              br_if 0 (;@5;)
              local.get 5
              local.get 11
              i32.store
              local.get 10
              local.get 7
              i32.store
            end
            local.get 1
            local.set 5
            local.get 1
            local.get 8
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 8
        i32.const -1
        i32.add
        local.set 1
        local.get 9
        i32.const 1
        i32.add
        local.tee 5
        local.set 7
        local.get 5
        local.get 6
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    i32.const 0)
  (func (;7;) (type 9) (param i32) (result i64)
    (local i64)
    call 0
    f64.const 1000.
    f64.div
    trunc_sat i64.trunc_sat_f64_s
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i64.store
    end
    local.get 1)
  (func (;8;) (type 8) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    i32.const 1568
    local.get 0
    local.get 1
    call 36
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func (;9;) (type 10) (param i32)
    i32.const 0
    local.get 0
    i32.const -1
    i32.add
    i64.extend_i32_u
    i64.store offset=1728)
  (func (;10;) (type 11) (result i32)
    (local i64)
    i32.const 0
    i32.const 0
    i64.load offset=1728
    i64.const 6364136223846793005
    i64.mul
    i64.const 1
    i64.add
    local.tee 0
    i64.store offset=1728
    local.get 0
    i64.const 33
    i64.shr_u
    i32.wrap_i64)
  (func (;11;) (type 0) (param i32 i32 i32) (result i32)
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
    local.set 6
    local.get 3
    i32.const 16
    i32.add
    local.set 4
    i32.const 2
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=60
              local.get 3
              i32.const 16
              i32.add
              i32.const 2
              local.get 3
              i32.const 12
              i32.add
              call 1
              call 37
              i32.eqz
              br_if 0 (;@5;)
              local.get 4
              local.set 5
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 6
              local.get 3
              i32.load offset=12
              local.tee 1
              i32.eq
              br_if 2 (;@3;)
              block  ;; label = @6
                local.get 1
                i32.const -1
                i32.gt_s
                br_if 0 (;@6;)
                local.get 4
                local.set 5
                br 4 (;@2;)
              end
              local.get 4
              i32.const 8
              i32.const 0
              local.get 1
              local.get 4
              i32.load offset=4
              local.tee 8
              i32.gt_u
              local.tee 9
              select
              i32.add
              local.tee 5
              local.get 5
              i32.load
              local.get 1
              local.get 8
              i32.const 0
              local.get 9
              select
              i32.sub
              local.tee 8
              i32.add
              i32.store
              local.get 4
              i32.const 12
              i32.const 4
              local.get 9
              select
              i32.add
              local.tee 4
              local.get 4
              i32.load
              local.get 8
              i32.sub
              i32.store
              local.get 6
              local.get 1
              i32.sub
              local.set 6
              local.get 5
              local.set 4
              local.get 0
              i32.load offset=60
              local.get 5
              local.get 7
              local.get 9
              i32.sub
              local.tee 7
              local.get 3
              i32.const 12
              i32.add
              call 1
              call 37
              i32.eqz
              br_if 0 (;@5;)
            end
          end
          local.get 6
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
        local.set 1
        br 1 (;@1;)
      end
      i32.const 0
      local.set 1
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
      local.get 7
      i32.const 2
      i32.eq
      br_if 0 (;@1;)
      local.get 2
      local.get 5
      i32.load offset=4
      i32.sub
      local.set 1
    end
    local.get 3
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func (;12;) (type 5) (param i32) (result i32)
    i32.const 0)
  (func (;13;) (type 12) (param i32 i64 i32) (result i64)
    i64.const 0)
  (func (;14;) (type 11) (result i32)
    i32.const 2776)
  (func (;15;) (type 13) (param i32 i32 i32 i64) (result i64)
    (local i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 36
            i32.gt_s
            br_if 0 (;@4;)
            i32.const 0
            local.set 5
            local.get 0
            i32.load8_u
            local.tee 6
            br_if 1 (;@3;)
            local.get 0
            local.set 7
            br 2 (;@2;)
          end
          call 14
          i32.const 28
          i32.store
          i64.const 0
          local.set 3
          br 2 (;@1;)
        end
        local.get 0
        local.set 7
        block  ;; label = @3
          loop  ;; label = @4
            local.get 6
            i32.extend8_s
            call 16
            i32.eqz
            br_if 1 (;@3;)
            local.get 7
            i32.load8_u offset=1
            local.set 6
            local.get 7
            i32.const 1
            i32.add
            local.tee 8
            local.set 7
            local.get 6
            br_if 0 (;@4;)
          end
          local.get 8
          local.set 7
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 6
          i32.const 255
          i32.and
          local.tee 6
          i32.const -43
          i32.add
          br_table 0 (;@3;) 1 (;@2;) 0 (;@3;) 1 (;@2;)
        end
        i32.const -1
        i32.const 0
        local.get 6
        i32.const 45
        i32.eq
        select
        local.set 5
        local.get 7
        i32.const 1
        i32.add
        local.set 7
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 16
          i32.or
          i32.const 16
          i32.ne
          br_if 0 (;@3;)
          local.get 7
          i32.load8_u
          i32.const 48
          i32.ne
          br_if 0 (;@3;)
          i32.const 1
          local.set 9
          block  ;; label = @4
            local.get 7
            i32.load8_u offset=1
            i32.const 223
            i32.and
            i32.const 88
            i32.ne
            br_if 0 (;@4;)
            local.get 7
            i32.const 2
            i32.add
            local.set 7
            i32.const 16
            local.set 10
            br 2 (;@2;)
          end
          local.get 7
          i32.const 1
          i32.add
          local.set 7
          local.get 2
          i32.const 8
          local.get 2
          select
          local.set 10
          br 1 (;@2;)
        end
        local.get 2
        i32.const 10
        local.get 2
        select
        local.set 10
        i32.const 0
        local.set 9
      end
      local.get 10
      i64.extend_i32_u
      local.set 11
      i32.const 0
      local.set 2
      i64.const 0
      local.set 12
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 7
            i32.load8_u
            local.tee 8
            i32.const -48
            i32.add
            local.tee 6
            i32.const 255
            i32.and
            i32.const 10
            i32.lt_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 8
              i32.const -97
              i32.add
              i32.const 255
              i32.and
              i32.const 25
              i32.gt_u
              br_if 0 (;@5;)
              local.get 8
              i32.const -87
              i32.add
              local.set 6
              br 1 (;@4;)
            end
            local.get 8
            i32.const -65
            i32.add
            i32.const 255
            i32.and
            i32.const 25
            i32.gt_u
            br_if 2 (;@2;)
            local.get 8
            i32.const -55
            i32.add
            local.set 6
          end
          local.get 10
          local.get 6
          i32.const 255
          i32.and
          i32.le_s
          br_if 1 (;@2;)
          local.get 4
          local.get 11
          i64.const 0
          local.get 12
          i64.const 0
          call 48
          i32.const 1
          local.set 8
          block  ;; label = @4
            local.get 4
            i64.load offset=8
            i64.const 0
            i64.ne
            br_if 0 (;@4;)
            local.get 12
            local.get 11
            i64.mul
            local.tee 13
            local.get 6
            i64.extend_i32_u
            i64.const 255
            i64.and
            local.tee 14
            i64.const -1
            i64.xor
            i64.gt_u
            br_if 0 (;@4;)
            local.get 13
            local.get 14
            i64.add
            local.set 12
            i32.const 1
            local.set 9
            local.get 2
            local.set 8
          end
          local.get 7
          i32.const 1
          i32.add
          local.set 7
          local.get 8
          local.set 2
          br 0 (;@3;)
        end
      end
      block  ;; label = @2
        local.get 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 7
        local.get 0
        local.get 9
        select
        i32.store
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            call 14
            i32.const 68
            i32.store
            local.get 5
            i32.const 0
            local.get 3
            i64.const 1
            i64.and
            local.tee 11
            i64.eqz
            select
            local.set 5
            local.get 3
            local.set 12
            br 1 (;@3;)
          end
          local.get 12
          local.get 3
          i64.lt_u
          br_if 1 (;@2;)
          local.get 3
          i64.const 1
          i64.and
          local.set 11
        end
        block  ;; label = @3
          local.get 11
          i32.wrap_i64
          br_if 0 (;@3;)
          local.get 5
          br_if 0 (;@3;)
          call 14
          i32.const 68
          i32.store
          local.get 3
          i64.const -1
          i64.add
          local.set 3
          br 2 (;@1;)
        end
        local.get 12
        local.get 3
        i64.le_u
        br_if 0 (;@2;)
        call 14
        i32.const 68
        i32.store
        br 1 (;@1;)
      end
      local.get 12
      local.get 5
      i64.extend_i32_s
      local.tee 11
      i64.xor
      local.get 11
      i64.sub
      local.set 3
    end
    local.get 4
    i32.const 16
    i32.add
    global.set 0
    local.get 3)
  (func (;16;) (type 5) (param i32) (result i32)
    local.get 0
    i32.const 32
    i32.eq
    local.get 0
    i32.const -9
    i32.add
    i32.const 5
    i32.lt_u
    i32.or)
  (func (;17;) (type 0) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    i64.const 2147483648
    call 15
    i32.wrap_i64)
  (func (;18;) (type 5) (param i32) (result i32)
    i32.const 1)
  (func (;19;) (type 10) (param i32))
  (func (;20;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load offset=72
    local.tee 1
    i32.const -1
    i32.add
    local.get 1
    i32.or
    i32.store offset=72
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.const 8
      i32.and
      i32.eqz
      br_if 0 (;@1;)
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
  (func (;21;) (type 0) (param i32 i32 i32) (result i32)
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
            i32.const -1
            i32.add
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
          local.set 4
          loop  ;; label = @4
            i32.const 16843008
            local.get 0
            i32.load
            local.get 4
            i32.xor
            local.tee 3
            i32.sub
            local.get 3
            i32.or
            i32.const -2139062144
            i32.and
            i32.const -2139062144
            i32.ne
            br_if 2 (;@2;)
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            local.get 2
            i32.const -4
            i32.add
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
      local.set 3
      loop  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load8_u
          local.get 3
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          return
        end
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    i32.const 0)
  (func (;22;) (type 8) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.const 0
    local.get 1
    call 21
    local.tee 2
    local.get 0
    i32.sub
    local.get 1
    local.get 2
    select)
  (func (;23;) (type 0) (param i32 i32 i32) (result i32)
    local.get 2
    if  ;; label = @1
      local.get 0
      local.get 1
      local.get 2