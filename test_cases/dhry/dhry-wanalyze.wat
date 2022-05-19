(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32) (result i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func))
  (type (;5;) (func (param i32 i32 i32)))
  (type (;6;) (func (param i32 i32)))
  (type (;7;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32)))
  (type (;9;) (func (result f64)))
  (type (;10;) (func (param i32 i32 i32 i32)))
  (type (;11;) (func (param i32 i64 i32) (result i64)))
  (type (;12;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i64 i32) (result i32)))
  (type (;15;) (func (param i32 i64 i64 i32)))
  (type (;16;) (func (param f64 i32) (result f64)))
  (type (;17;) (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;18;) (func (param i64 i32 i32) (result i32)))
  (type (;19;) (func (param i32 i32 i32 i32 i32)))
  (type (;20;) (func (param f64) (result i64)))
  (type (;21;) (func (param i64 i64) (result f64)))
  (type (;22;) (func (param i32 i32 i64 i32) (result i64)))
  (import "env" "_tzset_js" (func (;0;) (type 5)))
  (import "env" "_localtime_js" (func (;1;) (type 6)))
  (import "env" "_emscripten_date_now" (func (;2;) (type 9)))
  (import "env" "_emscripten_get_now_is_monotonic" (func (;3;) (type 3)))
  (import "env" "emscripten_get_now" (func (;4;) (type 9)))
  (import "env" "emscripten_memcpy_big" (func (;5;) (type 5)))
  (import "wasi_snapshot_preview1" "fd_write" (func (;6;) (type 7)))
  (import "env" "emscripten_resize_heap" (func (;7;) (type 1)))
  (import "env" "setTempRet0" (func (;8;) (type 8)))
  (func (;9;) (type 4)
    call 38)
  (func (;10;) (type 4)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 0
    call 25
    i32.store offset=12
    i32.const 3200
    local.get 0
    i32.const 12
    i32.add
    call 30
    call 19
    call 57
    drop
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;11;) (type 4)
    (local f64)
    i32.const 0
    i32.const 3232
    call 26
    drop
    i32.const 0
    i32.const 3232
    i32.load offset=4
    f64.convert_i32_s
    f64.const 1000000000.
    f64.div
    i32.const 0
    i32.load offset=3232
    f64.convert_i32_s
    f64.add
    local.tee 0
    f64.store offset=3184
    i32.const 0
    local.get 0
    f64.store offset=3192)
  (func (;12;) (type 4)
    (local f64)
    i32.const 0
    i32.const 3232
    call 26
    drop
    i32.const 0
    i32.const 3232
    i32.load offset=4
    f64.convert_i32_s
    f64.const 1000000000.
    f64.div
    i32.const 0
    i32.load offset=3232
    f64.convert_i32_s
    f64.add
    local.tee 0
    f64.store offset=3184
    i32.const 0
    local.get 0
    i32.const 0
    f64.load offset=3192
    f64.sub
    local.tee 0
    f64.store offset=3240
    block  ;; label = @1
      local.get 0
      f64.const 1000.
      f64.mul
      local.tee 0
      f64.abs
      f64.const 2147483648.
      f64.lt
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.get 0
      i32.trunc_f64_s
      i32.store offset=3248
      return
    end
    i32.const 0
    i32.const -2147483648
    i32.store offset=3248)
  (func (;13;) (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 f64)
    global.get 0
    i32.const 448
    i32.sub
    local.tee 2
    global.set 0
    i32.const 0
    i32.const 48
    call 83
    local.tee 3
    i32.store offset=3252
    i32.const 0
    i32.const 48
    call 83
    local.tee 4
    i32.store offset=3256
    local.get 4
    i32.const 12
    i32.add
    i32.const 40
    i32.store
    local.get 4
    i64.const 8589934592
    i64.store offset=4 align=4
    local.get 4
    local.get 3
    i32.store
    local.get 4
    i32.const 16
    i32.add
    i32.const 0
    i64.load offset=1237 align=1
    i64.store align=1
    local.get 4
    i32.const 24
    i32.add
    i32.const 0
    i64.load offset=1245 align=1
    i64.store align=1
    local.get 4
    i32.const 32
    i32.add
    i32.const 0
    i64.load offset=1253 align=1
    i64.store align=1
    local.get 4
    i32.const 39
    i32.add
    i32.const 0
    i64.load offset=1260 align=1
    i64.store align=1
    i32.const 3264
    i32.const 1628
    i32.add
    local.tee 5
    i32.const 10
    i32.store
    local.get 2
    i32.const 400
    i32.add
    i32.const 16
    i32.add
    i32.const 0
    i64.load offset=1222 align=1
    i64.store
    local.get 2
    i32.const 400
    i32.add
    i32.const 23
    i32.add
    i32.const 0
    i64.load offset=1229 align=1
    i64.store align=1
    local.get 2
    i32.const 0
    i64.load offset=1206 align=1
    i64.store offset=400
    local.get 2
    i32.const 0
    i64.load offset=1214 align=1
    i64.store offset=408
    i32.const 1423
    call 50
    drop
    i32.const 10
    call 44
    drop
    local.get 2
    i32.const 1186
    i32.store offset=352
    i32.const 1855
    local.get 2
    i32.const 352
    i32.add
    call 32
    drop
    i32.const 2022
    call 50
    drop
    i32.const 2992
    i32.const 23
    i32.add
    i32.const 0
    i64.load offset=1408 align=1
    i64.store align=1
    i32.const 2992
    i32.const 16
    i32.add
    i32.const 0
    i64.load offset=1401 align=1
    i64.store
    i32.const 2992
    i32.const 8
    i32.add
    i32.const 0
    i64.load offset=1393 align=1
    i64.store
    i32.const 0
    i32.const 0
    i64.load offset=1385 align=1
    i64.store offset=2992
    i32.const 5000
    local.set 6
    i32.const 10
    local.set 7
    loop  ;; label = @1
      local.get 5
      i32.const 10
      i32.store
      local.get 6
      i32.const 1
      i32.shl
      local.set 8
      call 11
      block  ;; label = @2
        local.get 6
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 3
        local.get 8
        i32.const 1
        local.get 8
        i32.const 1
        i32.gt_s
        select
        local.set 9
        loop  ;; label = @3
          i32.const 0
          i32.const 1
          i32.store offset=13264
          i32.const 0
          i32.const 65
          i32.store8 offset=13496
          i32.const 0
          i32.const 66
          i32.store8 offset=13480
          local.get 2
          i32.const 368
          i32.add
          i32.const 16
          i32.add
          local.tee 10
          i32.const 0
          i64.load offset=1315 align=1
          i64.store
          local.get 2
          i32.const 368
          i32.add
          i32.const 23
          i32.add
          local.tee 11
          i32.const 0
          i64.load offset=1322 align=1
          i64.store align=1
          local.get 2
          i32.const 1
          i32.store offset=440
          local.get 2
          i32.const 0
          i64.load offset=1299 align=1
          i64.store offset=368
          local.get 2
          i32.const 0
          i64.load offset=1307 align=1
          i64.store offset=376
          i32.const 0
          local.get 2
          i32.const 400
          i32.add
          local.get 2
          i32.const 368
          i32.add
          call 18
          i32.eqz
          i32.store offset=13264
          local.get 2
          i32.const 7
          i32.store offset=444
          i32.const 2
          i32.const 3
          local.get 2
          i32.const 444
          i32.add
          call 15
          i32.const 13280
          i32.const 3264
          i32.const 3
          local.get 2
          i32.load offset=444
          call 16
          i32.const 0
          i32.load offset=3256
          local.tee 12
          i32.load
          local.tee 4
          local.get 12
          i64.load align=4
          i64.store align=4
          local.get 4
          i32.const 40
          i32.add
          local.get 12
          i32.const 40
          i32.add
          local.tee 13
          i64.load align=4
          i64.store align=4
          local.get 4
          i32.const 32
          i32.add
          local.get 12
          i32.const 32
          i32.add
          local.tee 14
          i64.load align=4
          i64.store align=4
          local.get 4
          i32.const 24
          i32.add
          local.get 12
          i32.const 24
          i32.add
          local.tee 15
          i64.load align=4
          i64.store align=4
          local.get 4
          i32.const 16
          i32.add
          local.get 12
          i32.const 16
          i32.add
          local.tee 16
          i64.load align=4
          i64.store align=4
          local.get 4
          i32.const 8
          i32.add
          local.tee 17
          local.get 12
          i32.const 8
          i32.add
          local.tee 18
          i64.load align=4
          i64.store align=4
          local.get 12
          i32.const 12
          i32.add
          i32.const 5
          i32.store
          local.get 4
          i32.const 12
          i32.add
          local.tee 19
          i32.const 5
          i32.store
          local.get 4
          local.get 12
          i32.load
          i32.store
          block  ;; label = @4
            i32.const 0
            i32.load offset=3256
            local.tee 20
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 20
            i32.load
            i32.store
          end
          i32.const 10
          i32.const 0
          i32.load offset=13484
          i32.const 0
          i32.load offset=3256
          i32.const 12
          i32.add
          call 15
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.load offset=4
              br_if 0 (;@5;)
              local.get 4
              i32.const 6
              i32.store offset=12
              local.get 12
              i32.load offset=8
              local.get 17
              call 14
              local.get 4
              i32.const 0
              i32.load offset=3256
              i32.load
              i32.store
              local.get 4
              i32.load offset=12
              i32.const 10
              local.get 19
              call 15
              br 1 (;@4;)
            end
            local.get 12
            local.get 12
            i32.load
            local.tee 4
            i64.load align=4
            i64.store align=4
            local.get 18
            local.get 4
            i32.const 8
            i32.add
            i64.load align=4
            i64.store align=4
            local.get 16
            local.get 4
            i32.const 16
            i32.add
            i64.load align=4
            i64.store align=4
            local.get 15
            local.get 4
            i32.const 24
            i32.add
            i64.load align=4
            i64.store align=4
            local.get 14
            local.get 4
            i32.const 32
            i32.add
            i64.load align=4
            i64.store align=4
            local.get 13
            local.get 4
            i32.const 40
            i32.add
            i64.load align=4
            i64.store align=4
          end
          i32.const 65
          local.set 4
          i32.const 3
          local.set 12
          block  ;; label = @4
            i32.const 0
            i32.load8_s offset=13480
            i32.const 65
            i32.lt_s
            br_if 0 (;@4;)
            loop  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.load offset=440
                local.get 4
                i32.const 24
                i32.shl
                local.tee 4
                i32.const 24
                i32.shr_s
                i32.const 67
                call 17
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                local.get 2
                i32.const 440
                i32.add
                call 14
                i32.const 0
                local.get 3
                i32.store offset=13484
                local.get 11
                i32.const 0
                i64.load offset=1291 align=1
                i64.store align=1
                local.get 10
                i32.const 0
                i64.load offset=1284 align=1
                i64.store
                local.get 2
                i32.const 0
                i64.load offset=1276 align=1
                i64.store offset=376
                local.get 2
                i32.const 0
                i64.load offset=1268 align=1
                i64.store offset=368
                local.get 3
                local.set 12
              end
              local.get 4
              i32.const 16777216
              i32.add
              i32.const 24
              i32.shr_s
              local.tee 4
              i32.const 0
              i32.load8_s offset=13480
              i32.le_s
              br_if 0 (;@5;)
            end
          end
          local.get 3
          local.get 9
          i32.ne
          local.set 4
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 4
          br_if 0 (;@3;)
        end
        local.get 12
        i32.const 3
        i32.mul
        local.tee 3
        local.get 2
        i32.load offset=444
        local.tee 12
        i32.div_s
        local.tee 4
        i32.const 0
        i32.load offset=13484
        i32.sub
        i32.const 9
        i32.add
        local.get 4
        i32.const 0
        i32.load8_u offset=13496
        i32.const 65
        i32.eq
        select
        local.set 10
        local.get 3
        local.get 12
        i32.sub
        i32.const 7
        i32.mul
        local.get 4
        i32.sub
        local.set 4
      end
      call 12
      i32.const 0
      i32.const 0
      f64.load offset=3240
      local.tee 21
      f64.store offset=13488
      local.get 2
      local.get 8
      f64.convert_i32_s
      f64.store offset=336
      local.get 2
      local.get 21
      f64.store offset=344
      i32.const 2094
      local.get 2
      i32.const 336
      i32.add
      call 33
      drop
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          f64.load offset=13488
          local.tee 21
          f64.const 2.
          f64.gt
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          local.set 6
          i32.const 0
          local.set 7
          br 1 (;@2;)
        end
        local.get 7
        i32.const -1
        i32.add
        local.set 7
        block  ;; label = @3
          local.get 21
          f64.const 0.05
          f64.lt
          br_if 0 (;@3;)
          local.get 8
          local.set 6
          br 1 (;@2;)
        end
        local.get 6
        i32.const 10
        i32.mul
        local.set 6
      end
      local.get 7
      i32.const 0
      i32.gt_s
      br_if 0 (;@1;)
    end
    i32.const 10
    call 44
    drop
    i32.const 1336
    call 50
    drop
    i32.const 10
    call 44
    drop
    i32.const 1697
    i32.const 0
    call 32
    drop
    i32.const 1530
    i32.const 1481
    i32.const 0
    i32.load offset=13484
    i32.const 5
    i32.eq
    select
    i32.const 0
    call 32
    drop
    local.get 2
    i32.const 0
    i32.load offset=13484
    i32.store offset=320
    i32.const 1520
    local.get 2
    i32.const 320
    i32.add
    call 32
    drop
    i32.const 1617
    i32.const 0
    call 32
    drop
    i32.const 1530
    i32.const 1481
    i32.const 0
    i32.load offset=13264
    i32.const 1
    i32.eq
    select
    i32.const 0
    call 32
    drop
    local.get 2
    i32.const 0
    i32.load offset=13264
    i32.store offset=304
    i32.const 2086
    local.get 2
    i32.const 304
    i32.add
    call 32
    drop
    i32.const 1649
    i32.const 0
    call 32
    drop
    i32.const 1530
    i32.const 1481
    i32.const 0
    i32.load8_u offset=13496
    i32.const 65
    i32.eq
    select
    i32.const 0
    call 32
    drop
    local.get 2
    i32.const 0
    i32.load8_s offset=13496
    i32.store offset=288
    i32.const 1525
    local.get 2
    i32.const 288
    i32.add
    call 32
    drop
    i32.const 1633
    i32.const 0
    call 32
    drop
    i32.const 1530
    i32.const 1481
    i32.const 0
    i32.load8_u offset=13480
    i32.const 66
    i32.eq
    select
    i32.const 0
    call 32
    drop
    local.get 2
    i32.const 0
    i32.load8_s offset=13480
    i32.store offset=272
    i32.const 2090
    local.get 2
    i32.const 272
    i32.add
    call 32
    drop
    i32.const 1488
    i32.const 0
    call 32
    drop
    i32.const 1530
    i32.const 1481
    i32.const 13280
    i32.load offset=32
    i32.const 7
    i32.eq
    select
    i32.const 0
    call 32
    drop
    local.get 2
    i32.const 13280
    i32.load offset=32
    i32.store offset=256
    i32.const 1520
    local.get 2
    i32.const 256
    i32.add
    call 32
    drop
    i32.const 1504
    i32.const 0
    call 32
    drop
    i32.const 1530
    i32.const 1481
    i32.const 3264
    i32.const 1628
    i32.add
    local.tee 3
    i32.load
    local.get 6
    i32.const 10
    i32.add
    i32.eq
    select
    i32.const 0
    call 32
    drop
    local.get 2
    local.get 3
    i32.load
    i32.store offset=240
    i32.const 2052
    local.get 2
    i32.const 240
    i32.add
    call 32
    drop
    i32.const 1752
    i32.const 0
    call 32
    drop
    local.get 2
    i32.const 0
    i32.load offset=3256
    i32.load
    i32.store offset=224
    i32.const 1875
    local.get 2
    i32.const 224
    i32.add
    call 32
    drop
    i32.const 1736
    i32.const 0
    call 32
    drop
    i32.const 1481
    i32.const 1530
    i32.const 0
    i32.load offset=3256
    i32.load offset=4
    select
    i32.const 0
    call 32
    drop
    local.get 2
    i32.const 0
    i32.load offset=3256
    i32.load offset=4
    i32.store offset=208
    i32.const 1520
    local.get 2
    i32.const 208
    i32.add
    call 32
    drop
    i32.const 1553
    i32.const 0
    call 32
    drop
    i32.const 1530
    i32.const 1481
    i32.const 0
    i32.load offset=3256
    i32.load offset=8
    i32.const 2
    i32.eq
    select
    i32.const 0
    call 32
    drop
    local.get 2
    i32.const 0
    i32.load offset=3256
    i32.load offset=8
    i32.store offset=192
    i32.const 2086
    local.get 2
    i32.const 192
    i32.add
    call 32
    drop
    i32.const 1537
    i32.const 0
    call 32
    drop
    i32.const 1530
    i32.const 1481
    i32.const 0
    i32.load offset=3256
    i32.const 12
    i32.add
    i32.load
    i32.const 17
    i32.eq
    select
    i32.const 0
    call 32
    drop
    local.get 2
    i32.const 0
    i32.load offset=3256
    i32.const 12
    i32.add
    i32.load
    i32.store offset=176
    i32.const 1477
    local.get 2
    i32.const 176
    i32.add
    call 32
    drop
    i32.const 1665
    i32.const 0
    call 32
    drop
    i32.const 1481
    i32.const 1530
    i32.const 0
    i32.load offset=3256
    i32.const 16
    i32.add
    i32.const 1237
    call 55
    select
    i32.const 0
    call 32
    drop
    i32.const 0
    i32.load offset=3256
    i32.const 16
    i32.add
    call 50
    drop
    i32.const 1713
    i32.const 0
    call 32
    drop
    local.get 2
    i32.const 0
    i32.load offset=3252
    i32.load
    i32.store offset=160
    i32.const 1137
    local.get 2
    i32.const 160
    i32.add
    call 32
    drop
    i32.const 1171
    call 50
    drop
    i32.const 1736
    i32.const 0
    call 32
    drop
    i32.const 1481
    i32.const 1530
    i32.const 0
    i32.load offset=3252
    i32.load offset=4
    select
    i32.const 0
    call 32
    drop
    local.get 2
    i32.const 0
    i32.load offset=3252
    i32.load offset=4
    i32.store offset=144
    i32.const 1520
    local.get 2
    i32.const 144
    i32.add
    call 32
    drop
    i32.const 1553
    i32.const 0
    call 32
    drop
    i32.const 1530
    i32.const 1481
    i32.const 0
    i32.load offset=3252
    i32.load offset=8
    i32.const 1
    i32.eq
    select
    i32.const 0
    call 32
    drop
    local.get 2
    i32.const 0
    i32.load offset=3252
    i32.load offset=8
    i32.store offset=128
    i32.const 2086
    local.get 2
    i32.const 128
    i32.add
    call 32
    drop
    i32.const 1537
    i32.const 0
    call 32
    drop
    i32.const 1530
    i32.const 1481
    i32.const 0
    i32.load offset=3252
    i32.const 12
    i32.add
    i32.load
    i32.const 18
    i32.eq
    select
    i32.const 0
    call 32
    drop
    local.get 2
    i32.const 0
    i32.load offset=3252
    i32.const 12
    i32.add
    i32.load
    i32.store offset=112
    i32.const 1477
    local.get 2
    i32.const 112
    i32.add
    call 32
    drop
    i32.const 1665
    i32.const 0
    call 32
    drop
    i32.const 1481
    i32.const 1530
    i32.const 0
    i32.load offset=3252
    i32.const 16
    i32.add
    i32.const 1237
    call 55
    select
    i32.const 0
    call 32
    drop
    i32.const 0
    i32.load offset=3252
    i32.const 16
    i32.add
    call 50
    drop
    i32.const 1601
    i32.const 0
    call 32
    drop
    i32.const 1530
    i32.const 1481
    local.get 10
    i32.const 5
    i32.eq
    select
    i32.const 0
    call 32
    drop
    local.get 2
    local.get 10
    i32.store offset=96
    i32.const 1520
    local.get 2
    i32.const 96
    i32.add
    call 32
    drop
    i32.const 1585
    i32.const 0
    call 32
    drop
    i32.const 1530
    i32.const 1481
    local.get 4
    i32.const 13
    i32.eq
    select
    i32.const 0
    call 32
    drop
    local.get 2
    local.get 4
    i32.store offset=80
    i32.const 2086
    local.get 2
    i32.const 80
    i32.add
    call 32
    drop
    i32.const 1569
    i32.const 0
    call 32
    drop
    i32.const 1530
    i32.const 1481
    local.get 2
    i32.load offset=444
    i32.const 7
    i32.eq
    select
    i32.const 0
    call 32
    drop
    local.get 2
    local.get 2
    i32.load offset=444
    i32.store offset=64
    i32.const 1520
    local.get 2
    i32.const 64
    i32.add
    call 32
    drop
    i32.const 1681
    i32.const 0
    call 32
    drop
    i32.const 1530
    i32.const 1481
    local.get 2
    i32.load offset=440
    i32.const 1
    i32.eq
    select
    i32.const 0
    call 32
    drop
    local.get 2
    local.get 2
    i32.load offset=440
    i32.store offset=48
    i32.const 2122
    local.get 2
    i32.const 48
    i32.add
    call 32
    drop
    i32.const 1815
    i32.const 0
    call 32
    drop
    i32.const 1481
    i32.const 1530
    local.get 2
    i32.const 400
    i32.add
    i32.const 1206
    i32.const 31
    call 31
    select
    i32.const 0
    call 32
    drop
    local.get 2
    i32.const 400
    i32.add
    call 50
    drop
    i32.const 1775
    i32.const 0
    call 32
    drop
    i32.const 1481
    i32.const 1530
    local.get 2
    i32.const 368
    i32.add
    i32.const 1299
    i32.const 31
    call 31
    select
    i32.const 0
    call 32
    drop
    local.get 2
    i32.const 368
    i32.add
    call 50
    drop
    i32.const 10
    call 44
    drop
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        f64.load offset=13488
        local.tee 21
        f64.const 2.
        f64.lt
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1053
        call 50
        drop
        i32.const 1106
        call 50
        drop
        i32.const 10
        call 44
        drop
        br 1 (;@1;)
      end
      i32.const 0
      local.get 6
      f64.convert_i32_s
      local.tee 22
      local.get 21
      f64.div
      local.tee 23
      f64.store offset=13512
      i32.const 0
      local.get 21
      f64.const 1000000.
      f64.mul
      local.get 22
      f64.div
      local.tee 21
      f64.store offset=13504
      i32.const 0
      local.get 23
      f64.const 1757.
      f64.div
      f64.store offset=13520
      local.get 2
      local.get 21
      f64.const 1000.
      f64.mul
      f64.store offset=32
      i32.const 1902
      local.get 2
      i32.const 32
      i32.add
      call 33
      drop
      local.get 2
      i32.const 0
      f64.load offset=13512
      f64.store offset=16
      i32.const 1982
      local.get 2
      i32.const 16
      i32.add
      call 33
      drop
      local.get 2
      i32.const 0
      f64.load offset=13520
      f64.store
      i32.const 1942
      local.get 2
      call 33
      drop
      i32.const 10
      call 44
      drop
      call 10
    end
    local.get 2
    i32.const 448
    i32.add
    global.set 0
    i32.const 0)
  (func (;14;) (type 6) (param i32 i32)
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
            i32.const 0
            i32.load offset=13484
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
  (func (;15;) (type 5) (param i32 i32 i32)
    local.get 2
    local.get 0
    local.get 1
    i32.add
    i32.const 2
    i32.add
    i32.store)
  (func (;16;) (type 10) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    local.get 2
    i32.const 5
    i32.add
    local.tee 4
    i32.const 2
    i32.shl
    i32.add
    local.tee 5
    local.get 3
    i32.store
    local.get 0
    local.get 2
    i32.const 6
    i32.add
    local.tee 6
    i32.const 2
    i32.shl
    i32.add
    local.get 3
    i32.store
    local.get 2
    i32.const 2
    i32.shl
    local.get 0
    i32.add
    i32.const 140
    i32.add
    local.get 4
    i32.store
    local.get 1
    local.get 4
    i32.const 200
    i32.mul
    i32.add
    local.set 7
    local.get 4
    local.set 0
    loop  ;; label = @1
      local.get 7
      local.get 0
      i32.const 2
      i32.shl
      i32.add
      local.get 4
      i32.store
      local.get 0
      local.get 6
      i32.ne
      local.set 3
      local.get 0
      i32.const 1
      i32.add
      local.set 0
      local.get 3
      br_if 0 (;@1;)
    end
    local.get 2
    i32.const 2
    i32.shl
    local.get 1
    local.get 4
    i32.const 200
    i32.mul
    i32.add
    i32.add
    i32.const 16
    i32.add
    local.tee 0
    local.get 0
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get 2
    i32.const 200
    i32.mul
    local.get 1
    i32.add
    local.get 4
    i32.const 2
    i32.shl
    i32.add
    i32.const 5000
    i32.add
    local.get 5
    i32.load
    i32.store
    i32.const 0
    i32.const 5
    i32.store offset=13484)
  (func (;17;) (type 0) (param i32 i32) (result i32)
    (local i32)
    i32.const 0
    local.set 2
    block  ;; label = @1
      local.get 0
      local.get 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 0
      local.get 0
      i32.store8 offset=13496
      i32.const 1
      local.set 2
    end
    local.get 2)
  (func (;18;) (type 0) (param i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=2
      local.tee 2
      local.get 1
      i32.load8_u offset=3
      i32.ne
      br_if 0 (;@1;)
      i32.const 0
      local.get 2
      i32.store8 offset=13496
      loop  ;; label = @2
        br 0 (;@2;)
      end
      unreachable
    end
    i32.const 0
    local.set 2
    block  ;; label = @1
      local.get 0
      local.get 1
      call 55
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 10
      i32.store offset=13484
      i32.const 1
      local.set 2
    end
    local.get 2)
  (func (;19;) (type 1) (param i32) (result i32)
    local.get 0
    i32.const 13536
    call 20)
  (func (;20;) (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load offset=24
    i32.const 131072
    i32.add
    i32.const 2128
    call 29
    local.set 3
    local.get 0
    i32.load offset=16
    i32.const 131086
    i32.add
    i32.const 2128
    call 29
    local.set 4
    local.get 0
    i64.load offset=8 align=4
    local.set 6
    local.get 0
    i32.load offset=20
    local.set 5
    local.get 2
    i32.const 16
    i32.add
    local.get 0
    i64.load align=4
    i64.const 32
    i64.rotl
    i64.store
    local.get 2
    i32.const 24
    i32.add
    local.get 5
    i32.const 1900
    i32.add
    i32.store
    local.get 2
    local.get 4
    i32.store offset=4
    local.get 2
    local.get 3
    i32.store
    local.get 2
    local.get 6
    i64.const 32
    i64.rotl
    i64.store offset=8
    block  ;; label = @1
      local.get 1
      i32.const 26
      i32.const 2058
      local.get 2
      call 51
      i32.const 26
      i32.lt_s
      br_if 0 (;@1;)
      call 21
      unreachable
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func (;21;) (type 4)
    unreachable)
  (func (;22;) (type 3) (result i32)
    i32.const 13564)
  (func (;23;) (type 4)
    i32.const 13568
    i32.const 13572
    i32.const 13576
    call 0)
  (func (;24;) (type 0) (param i32 i32) (result i32)
    call 23
    local.get 0
    local.get 1
    call 1
    local.get 1
    i32.const 13576
    i32.const 4
    i32.add
    i32.const 13576
    local.get 1
    i32.load offset=32
    select
    i32.load
    i32.store offset=40
    local.get 1)
  (func (;25;) (type 1) (param i32) (result i32)
    (local f64 i32)
    block  ;; label = @1
      block  ;; label = @2
        call 2
        f64.const 1000.
        f64.div
        local.tee 1
        f64.abs
        f64.const 2147483648.
        f64.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.trunc_f64_s
        local.set 2
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 2
    end
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.store
    end
    local.get 2)
  (func (;26;) (type 0) (param i32 i32) (result i32)
    (local i32 f64 f64 i64)
    block  ;; label = @1
      i32.const 0
      i32.load8_u offset=13584
      br_if 0 (;@1;)
      call 3
      local.set 2
      i32.const 0
      i32.const 1
      i32.store8 offset=13584
      i32.const 0
      local.get 2
      i32.store8 offset=13585
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            br_table 2 (;@2;) 0 (;@4;) 1 (;@3;) 1 (;@3;) 0 (;@4;) 1 (;@3;)
          end
          i32.const 0
          i32.load8_u offset=13585
          i32.eqz
          br_if 0 (;@3;)
          call 4
          local.set 3
          br 2 (;@1;)
        end
        call 22
        i32.const 28
        i32.store
        i32.const -1
        return
      end
      call 2
      local.set 3
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        f64.const 1000.
        f64.div
        local.tee 4
        f64.abs
        f64.const 9.22337203685e+18
        f64.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i64.trunc_f64_s
        local.set 5
        br 1 (;@1;)
      end
      i64.const -9223372036854775808
      local.set 5
    end
    local.get 1
    local.get 5
    i64.store32
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        local.get 5
        i64.const 1000
        i64.mul
        f64.convert_i64_s
        f64.sub
        f64.const 1000.
        f64.mul
        f64.const 1000.
        f64.mul
        local.tee 3
        f64.abs
        f64.const 2147483648.
        f64.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.trunc_f64_s
        local.set 0
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 0
    end
    local.get 1
    local.get 0
    i32.store offset=4
    i32.const 0)
  (func (;27;) (type 0) (param i32 i32) (result i32)
    local.get 0)
  (func (;28;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 27)
  (func (;29;) (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 14
      i32.ne
      br_if 0 (;@1;)
      i32.const 1379
      i32.const 1200
      local.get 1
      i32.load
      select
      return
    end
    local.get 0
    i32.const 65535
    i32.and
    local.set 2
    local.get 0
    i32.const 16
    i32.shr_s
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.const 393215
      i32.gt_s
      br_if 0 (;@1;)
      local.get 2
      i32.const 65535
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      local.get 3
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee 0
      i32.const 8
      i32.add
      i32.const 1334
      local.get 0
      select
      return
    end
    i32.const 2127
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.const -1
                  i32.add
                  br_table 0 (;@7;) 1 (;@6;) 6 (;@1;) 2 (;@5;) 3 (;@4;) 6 (;@1;)
                end
                i32.const 2152
                local.set 0
                local.get 2
                i32.const 1
                i32.le_u
                br_if 3 (;@3;)
                br 5 (;@1;)
              end
              i32.const 2160
              local.set 0
              local.get 2
              i32.const 49
              i32.le_u
              br_if 2 (;@3;)
              br 4 (;@1;)
            end
            i32.const 2127
            local.set 4
            local.get 2
            i32.eqz
            br_if 2 (;@2;)
            br 3 (;@1;)
          end
          i32.const 2480
          local.set 0
          local.get 2
          i32.const 3
          i32.gt_u
          br_if 2 (;@1;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            br_if 0 (;@4;)
            local.get 0
            local.set 4
            br 1 (;@3;)
          end
          loop  ;; label = @4
            local.get 0
            i32.load8_u
            local.set 5
            local.get 0
            i32.const 1
            i32.add
            local.tee 4
            local.set 0
            local.get 5
            br_if 0 (;@4;)
            local.get 4
            local.set 0
            local.get 2
            i32.const -1
            i32.add
            local.tee 2
            br_if 0 (;@4;)
          end
        end
        local.get 3
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
      end
      local.get 4
      i32.load8_u
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      local.get 1
      local.get 3
      i32.const 2
      i32.shl
      i32.add
      i32.load
      call 28
      local.set 4
    end
    local.get 4)
  (func (;30;) (type 1) (param i32) (result i32)
    local.get 0
    i32.const 13588
    call 24)
  (func (;31;) (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 4
          i32.lt_u
          br_if 0 (;@3;)
          local.get 1
          local.get 0
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
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.load8_u
          local.tee 3
          local.get 1
          i32.load8_u
          local.tee 4
          i32.ne
          br_if 1 (;@2;)
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          i32.eqz
          br_if 2 (;@1;)
          br 0 (;@3;)
        end
        unreachable
      end
      local.get 3
      local.get 4
      i32.sub
      return
    end
    i32.const 0)
  (func (;32;) (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    i32.const 3032
    local.get 0
    local.get 1
    call 76
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func (;33;) (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    i32.const 3032
    local.get 0
    local.get 1
    call 77
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func (;34;) (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8
      local.get 2
      local.get 0
      i32.add
      local.tee 3
      i32.const -1
      i32.add
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
      i32.const -3
      i32.add
      local.get 1
      i32.store8
      local.get 3
      i32.const -2
      i32.add
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
      i32.const -4
      i32.add
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
      i32.const -4
      i32.add
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
      i32.const -8
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -12
      i32.add
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
      i32.const -16
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -20
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -24
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -28
      i32.add
      local.get 1
      i32.store
      local.get 4
      local.get 3
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee 5
      i32.sub
      local.tee 2
      i32.const 32
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      i64.extend_i32_u
      i64.const 4294967297
      i64.mul
      local.set 6
      local.get 3
      local.get 5
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        local.get 6
        i64.store offset=24
        local.get 1
        local.get 6
        i64.store offset=16
        local.get 1
        local.get 6
        i64.store offset=8
        local.get 1
        local.get 6
        i64.store
        local.get 1
        i32.const 32
        i32.add
        local.set 1
        local.get 2
        i32.const -32
        i32.add
        local.tee 2
        i32.const 31
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;35;) (type 3) (result i32)
    i32.const 42)
  (func (;36;) (type 3) (result i32)
    call 35)
  (func (;37;) (type 3) (result i32)
    i32.const 13688)
  (func (;38;) (type 4)
    i32.const 0
    i32.const 13664
    i32.store offset=13776
    i32.const 0
    call 36
    i32.store offset=13704)
  (func (;39;) (type 0) (param i32 i32) (result i32)
    i32.const 0)
  (func (;40;) (type 1) (param i32) (result i32)
    i32.const 1)
  (func (;41;) (type 8) (param i32))
  (func (;42;) (type 1) (param i32) (result i32)
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
  (func (;43;) (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store8 offset=15
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=16
        local.tee 3
        br_if 0 (;@2;)
        i32.const -1
        local.set 3
        local.get 0
        call 42
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=16
        local.set 3
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=20
        local.tee 4
        local.get 3
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=80
        local.get 1
        i32.const 255
        i32.and
        local.tee 3
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        i32.const 1
        i32.add
        i32.store offset=20
        local.get 4
        local.get 1
        i32.store8
        br 1 (;@1;)
      end
      i32.const -1
      local.set 3
      local.get 0
      local.get 2
      i32.const 15
      i32.add
      i32.const 1
      local.get 0
      i32.load offset=36
      call_indirect (type 2)
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      i32.load8_u offset=15
      local.set 3
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 3)
  (func (;44;) (type 1) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=3108
        local.tee 1
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.const -1073741825
        i32.and
        call 37
        i32.load offset=16
        i32.ne
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i32.const 255
        i32.and
        local.tee 1
        i32.const 0
        i32.load offset=3112
        i32.eq
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=3052
        local.tee 2
        i32.const 0
        i32.load offset=3048
        i32.eq
        br_if 0 (;@2;)
        i32.const 0
        local.get 2
        i32.const 1
        i32.add
        i32.store offset=3052
        local.get 2
        local.get 0
        i32.store8
        local.get 1
        return
      end
      i32.const 3032
      local.get 1
      call 43
      return
    end
    local.get 0
    call 45)
  (func (;45;) (type 1) (param i32) (result i32)
    (local i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=3108
    local.tee 1
    i32.const 1073741823
    local.get 1
    select
    i32.store offset=3108
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      i32.const 3032
      call 40
      drop
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 255
        i32.and
        local.tee 1
        i32.const 0
        i32.load offset=3112
        i32.eq
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=3052
        local.tee 2
        i32.const 0
        i32.load offset=3048
        i32.eq
        br_if 0 (;@2;)
        i32.const 0
        local.get 2
        i32.const 1
        i32.add
        i32.store offset=3052
        local.get 2
        local.get 0
        i32.store8
        br 1 (;@1;)
      end
      i32.const 3032
      local.get 1
      call 43
      local.set 1
    end
    i32.const 0
    i32.load offset=3108
    local.set 0
    i32.const 0
    i32.const 0
    i32.store offset=3108
    block  ;; label = @1
      local.get 0
      i32.const 1073741824
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 3108
      i32.const 1
      call 39
      drop
    end
    local.get 1)
  (func (;46;) (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 2
      i32.const 512
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      call 5
      local.get 0
      return
    end
    local.get 0
    local.get 2
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 0
        i32.xor
        i32.const 3
        i32.and
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 3
            i32.and
            br_if 0 (;@4;)
            local.get 0
            local.set 2
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 2
            br_if 0 (;@4;)
            local.get 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 0
          local.set 2
          loop  ;; label = @4
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
            br_if 1 (;@3;)
            local.get 2
            local.get 3
            i32.lt_u
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 3
          i32.const -4
          i32.and
          local.tee 4
          i32.const 64
          i32.lt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 4
          i32.const -64
          i32.add
          local.tee 5
          i32.gt_u
          br_if 0 (;@3;)
          loop  ;; label = @4
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
            i32.const 64
            i32.add
            local.set 1
            local.get 2
            i32.const 64
            i32.add
            local.tee 2
            local.get 5
            i32.le_u
            br_if 0 (;@4;)
          end
        end
        local.get 2
        local.get 4
        i32.ge_u
        br_if 1 (;@1;)
        loop  ;; label = @3
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
          local.get 4
          i32.lt_u
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
        unreachable
      end
      block  ;; label = @2
        local.get 3
        i32.const 4
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 2
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 3
        i32.const -4
        i32.add
        local.tee 4
        local.get 0
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      local.set 2
      loop  ;; label = @2
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
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 2
      local.get 3
      i32.ge_u
      br_if 0 (;@1;)
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
    end
    local.get 0)
  (func (;47;) (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=16
        local.tee 3
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        local.get 2
        call 42
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=16
        local.set 3
      end
      block  ;; label = @2
        local.get 3
        local.get 2
        i32.load offset=20
        local.tee 5
        i32.sub
        local.get 1
        i32.ge_u
        br_if 0 (;@2;)
        local.get 2
        local.get 0
        local.get 1
        local.get 2
        i32.load offset=36
        call_indirect (type 2)
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=80
          i32.const 0
          i32.ge_s
          br_if 0 (;@3;)
          i32.const 0
          local.set 3
          br 1 (;@2;)
        end
        local.get 1
        local.set 4
        loop  ;; label = @3
          block  ;; label = @4
            local.get 4
            local.tee 3
            br_if 0 (;@4;)
            i32.const 0
            local.set 3
            br 2 (;@2;)
          end
          local.get 0
          local.get 3
          i32.const -1
          i32.add
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
        call_indirect (type 2)
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
      call 46
      drop
      local.get 2
      local.get 2
      i32.load offset=20
      local.get 1
      i32.add
      i32.store offset=20
      local.get 3
      local.get 1
      i32.add
      local.set 4
    end
    local.get 4)
  (func (;48;) (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
    local.get 2
    local.get 1
    i32.mul
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=76
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        local.get 3
        call 47
        local.set 0
        br 1 (;@1;)
      end
      local.get 3
      call 40
      local.set 5
      local.get 0
      local.get 4
      local.get 3
      call 47
      local.set 0
      local.get 5
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call 41
    end
    block  ;; label = @1
      local.get 0
      local.get 4
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      i32.const 0
      local.get 1
      select
      return
    end
    local.get 0
    local.get 1
    i32.div_u)
  (func (;49;) (type 0) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    call 58
    local.set 2
    i32.const -1
    i32.const 0
    local.get 2
    local.get 0
    i32.const 1
    local.get 2
    local.get 1
    call 48
    i32.ne
    select)
  (func (;50;) (type 1) (param i32) (result i32)
    (local i32 i32)
    i32.const 0
    local.set 1
    block  ;; label = @1
      i32.const 0
      i32.load offset=3108
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      i32.const 3032
      call 40
      local.set 1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 3032
        call 49
        i32.const 0
        i32.ge_s
        br_if 0 (;@2;)
        i32.const -1
        local.set 0
        br 1 (;@1;)
      end
      block  ;; label = @2
        i32.const 0
        i32.load offset=3112
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=3052
        local.tee 2
        i32.const 0
        i32.load offset=3048
        i32.eq
        br_if 0 (;@2;)
        i32.const 0
        local.set 0
        i32.const 0
        local.get 2
        i32.const 1
        i32.add
        i32.store offset=3052
        local.get 2
        i32.const 10
        i32.store8
        br 1 (;@1;)
      end
      i32.const 3032
      i32.const 10
      call 43
      i32.const 31
      i32.shr_s
      local.set 0
    end
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      i32.const 3032
      call 41
    end
    local.get 0)
  (func (;51;) (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 3
    i32.store offset=12
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call 78
    local.set 3
    local.get 4
    i32.const 16
    i32.add
    global.set 0
    local.get 3)
  (func (;52;) (type 2) (param i32 i32 i32) (result i32)
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
              call 6
              call 80
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
              local.get 1
              local.get 4
              i32.load offset=4
              local.tee 8
              i32.gt_u
              local.tee 9
              i32.const 3
              i32.shl
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
              call 6
              call 80
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
  (func (;53;) (type 1) (param i32) (result i32)
    i32.const 0)
  (func (;54;) (type 11) (param i32 i64 i32) (result i64)
    i64.const 0)
  (func (;55;) (type 0) (param i32 i32) (result i32)
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
      local.get 3
      local.get 2
      i32.const 255
      i32.and
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
        local.get 3
        local.get 2
        i32.const 255
        i32.and
        i32.eq
        br_if 0 (;@2;)
      end
    end
    local.get 3
    local.get 2
    i32.const 255
    i32.and
    i32.sub)
  (func (;56;) (type 0) (param i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 0
          i32.xor
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.load8_u
          local.set 2
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 1
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 0
            local.get 1
            i32.load8_u
            local.tee 2
            i32.store8
            local.get 2
            i32.eqz
            br_if 3 (;@1;)
            local.get 0
            i32.const 1
            i32.add
            local.set 0
            local.get 1
            i32.const 1
            i32.add
            local.tee 1
            i32.const 3
            i32.and
            br_if 0 (;@4;)
          end
        end
        local.get 1
        i32.load
        local.tee 2
        i32.const -1
        i32.xor
        local.get 2
        i32.const -16843009
        i32.add
        i32.and
        i32.const -2139062144
        i32.and
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 0
          local.get 2
          i32.store
          local.get 1
          i32.load offset=4
          local.set 2
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 2
          i32.const -1
          i32.xor
          local.get 2
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          i32.eqz
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 2
      i32.store8
      local.get 2
      i32.const 255
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 0
        local.get 1
        i32.load8_u offset=1
        local.tee 2
        i32.store8 offset=1
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;57;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 56
    drop
    local.get 0)
  (func (;58;) (type 1) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.set 1
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
        i32.const -16843009
        i32.add
        i32.and
        i32.const -2139062144
        i32.and
        i32.eqz
        br_if 0 (;@2;)
      end
      block  ;; label = @2
        local.get 3
        i32.const 255
        i32.and
        br_if 0 (;@2;)
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
  (func (;59;) (type 1) (param i32) (result i32)
    local.get 0
    i32.const -48
    i32.add
    i32.const 10
    i32.lt_u)
  (func (;60;) (type 2) (param i32 i32 i32) (result i32)
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
          local.set 4
          loop  ;; label = @4
            local.get 0
            i32.load
            local.get 4
            i32.xor
            local.tee 3
            i32.const -1
            i32.xor
            local.get 3
            i32.const -16843009
            i32.add
            i32.and
            i32.const -2139062144
            i32.and
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
  (func (;61;) (type 0) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.const 0
    local.get 1
    call 60
    local.tee 2
    local.get 0
    i32.sub
    local.get 1
    local.get 2
    select)
  (func (;62;) (type 16) (param f64 i32) (result f64)
    (local i64 i32)
    block  ;; label = @1
      local.get 0
      i64.reinterpret_f64
      local.tee 2
      i64.const 52
      i64.shr_u
      i32.wrap_i64
      i32.const 2047
      i32.and
      local.tee 3
      i32.const 2047
      i32.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            f64.const 0.
            f64.ne
            br_if 0 (;@4;)
            i32.const 0
            local.set 3
            br 1 (;@3;)
          end
          local.get 0
          f64.const 1.84467440737e+19
          f64.mul
          local.get 1
          call 62
          local.set 0
          local.get 1
          i32.load
          i32.const -64
          i32.add
          local.set 3
        end
        local.get 1
        local.get 3
        i32.store
        local.get 0
        return
      end
      local.get 1
      local.get 3
      i32.const -1022
      i32.add
      i32.store
      local.get 2
      i64.const -9218868437227405313
      i64.and
      i64.const 4602678819172646912
      i64.or
      f64.reinterpret_i64
      local.set 0
    end
    local.get 0)
  (func (;63;) (type 12) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 208
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    local.get 2
    i32.store offset=204
    i32.const 0
    local.set 6
    local.get 5
    i32.const 160
    i32.add
    i32.const 0
    i32.const 40
    call 34
    drop
    local.get 5
    local.get 5
    i32.load offset=204
    i32.store offset=200
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
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
        call 64
        i32.const 0
        i32.ge_s
        br_if 0 (;@2;)
        i32.const -1
        local.set 1
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=76
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 0
        call 40
        local.set 6
      end
      local.get 0
      i32.load
      local.set 7
      block  ;; label = @2
        local.get 0
        i32.load offset=72
        i32.const 0
        i32.gt_s
        br_if 0 (;@2;)
        local.get 0
        local.get 7
        i32.const -33
        i32.and
        i32.store
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=48
              br_if 0 (;@5;)
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
            i32.const 0
            local.set 8
            local.get 0
            i32.load offset=16
            br_if 1 (;@3;)
          end
          i32.const -1
          local.set 2
          local.get 0
          call 42
          br_if 1 (;@2;)
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
        call 64
        local.set 2
      end
      local.get 7
      i32.const 32
      i32.and
      local.set 1
      block  ;; label = @2
        local.get 8
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=36
        call_indirect (type 2)
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
        local.set 3
        local.get 0
        i64.const 0
        i64.store offset=16
        local.get 2
        i32.const -1
        local.get 3
        select
        local.set 2
      end
      local.get 0
      local.get 0
      i32.load
      local.tee 3
      local.get 1
      i32.or
      i32.store
      i32.const -1
      local.get 2
      local.get 3
      i32.const 32
      i32.and
      select
      local.set 1
      local.get 6
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call 41
    end
    local.get 5
    i32.const 208
    i32.add
    global.set 0
    local.get 1)
  (func (;64;) (type 17) (param i32 i32 i32 i32 i32 i32 i32) (result i32)
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
    local.set 8
    local.get 7
    i32.const 56
    i32.add
    local.set 9
    i32.const 0
    local.set 10
    i32.const 0
    local.set 11
    i32.const 0
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              local.get 1
              i32.const 2147483647
              local.get 11
              i32.sub
              i32.gt_s
              br_if 1 (;@4;)
              local.get 1
              local.get 11
              i32.add
              local.set 11
              local.get 7
              i32.load offset=76
              local.tee 12
              local.set 1
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 12
                        i32.load8_u
                        local.tee 13
                        i32.eqz
                        br_if 0 (;@10;)
                        loop  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 13
                                i32.const 255
                                i32.and
                                local.tee 13
                                br_if 0 (;@14;)
                                local.get 1
                                local.set 13
                                br 1 (;@13;)
                              end
                              local.get 13
                              i32.const 37
                              i32.ne
                              br_if 1 (;@12;)
                              local.get 1
                              local.set 13
                              loop  ;; label = @14
                                local.get 1
                                i32.load8_u offset=1
                                i32.const 37
                                i32.ne
                                br_if 1 (;@13;)
                                local.get 7
                                local.get 1
                                i32.const 2
                                i32.add
                                local.tee 14
                                i32.store offset=76
                                local.get 13
                                i32.const 1
                                i32.add
                                local.set 13
                                local.get 1
                                i32.load8_u offset=2
                                local.set 15
                                local.get 14
                                local.set 1
                                local.get 15
                                i32.const 37
                                i32.eq
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 13
                            local.get 12
                            i32.sub
                            local.tee 1
                            i32.const 2147483647
                            local.get 11
                            i32.sub
                            local.tee 13
                            i32.gt_s
                            br_if 8 (;@4;)
                            block  ;; label = @13
                              local.get 0
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 0
                              local.get 12
                              local.get 1
                              call 65
                            end
                            local.get 1
                            br_if 7 (;@5;)
                            i32.const -1
                            local.set 16
                            i32.const 1
                            local.set 14
                            local.get 7
                            i32.load offset=76
                            i32.load8_s offset=1
                            call 59
                            local.set 15
                            local.get 7
                            i32.load offset=76
                            local.set 1
                            block  ;; label = @13
                              local.get 15
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 1
                              i32.load8_u offset=2
                              i32.const 36
                              i32.ne
                              br_if 0 (;@13;)
                              local.get 1
                              i32.load8_s offset=1
                              i32.const -48
                              i32.add
                              local.set 16
                              i32.const 1
                              local.set 10
                              i32.const 3
                              local.set 14
                            end
                            local.get 7
                            local.get 1
                            local.get 14
                            i32.add
                            local.tee 1
                            i32.store offset=76
                            i32.const 0
                            local.set 17
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 1
                                i32.load8_s
                                local.tee 18
                                i32.const -32
                                i32.add
                                local.tee 15
                                i32.const 31
                                i32.le_u
                                br_if 0 (;@14;)
                                local.get 1
                                local.set 14
                                br 1 (;@13;)
                              end
                              i32.const 0
                              local.set 17
                              local.get 1
                              local.set 14
                              i32.const 1
                              local.get 15
                              i32.shl
                              local.tee 15
                              i32.const 75913
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              loop  ;; label = @14
                                local.get 7
                                local.get 1
                                i32.const 1
                                i32.add
                                local.tee 14
                                i32.store offset=76
                                local.get 15
                                local.get 17
                                i32.or
                                local.set 17
                                local.get 1
                                i32.load8_s offset=1
                                local.tee 18
                                i32.const -32
                                i32.add
                                local.tee 15
                                i32.const 32
                                i32.ge_u
                                br_if 1 (;@13;)
                                local.get 14
                                local.set 1
                                i32.const 1
                                local.get 15
                                i32.shl
                                local.tee 15
                                i32.const 75913
                                i32.and
                                br_if 0 (;@14;)
                              end
                            end
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 18
                                i32.const 42
                                i32.ne
                                br_if 0 (;@14;)
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 14
                                    i32.load8_s offset=1
                                    call 59
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 7
                                    i32.load offset=76
                                    local.tee 14
                                    i32.load8_u offset=2
                                    i32.const 36
                                    i32.ne
                                    br_if 0 (;@16;)
                                    local.get 14
                                    i32.load8_s offset=1
                                    i32.const 2
                                    i32.shl
                                    local.get 4
                                    i32.add
                                    i32.const -192
                                    i32.add
                                    i32.const 10
                                    i32.store
                                    local.get 14
                                    i32.const 3
                                    i32.add
                                    local.set 1
                                    local.get 14
                                    i32.load8_s offset=1
                                    i32.const 3
                                    i32.shl
                                    local.get 3
                                    i32.add
                                    i32.const -384
                                    i32.add
                                    i32.load
                                    local.set 19
                                    i32.const 1
                                    local.set 10
                                    br 1 (;@15;)
                                  end
                                  local.get 10
                                  br_if 6 (;@9;)
                                  i32.const 0
                                  local.set 10
                                  i32.const 0
                                  local.set 19
                                  block  ;; label = @16
                                    local.get 0
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 2
                                    local.get 2
                                    i32.load
                                    local.tee 1
                                    i32.const 4
                                    i32.add
                                    i32.store
                                    local.get 1
                                    i32.load
                                    local.set 19
                                  end
                                  local.get 7
                                  i32.load offset=76
                                  i32.const 1
                                  i32.add
                                  local.set 1
                                end
                                local.get 7
                                local.get 1
                                i32.store offset=76
                                local.get 19
                                i32.const -1
                                i32.gt_s
                                br_if 1 (;@13;)
                                i32.const 0
                                local.get 19
                                i32.sub
                                local.set 19
                                local.get 17
                                i32.const 8192
                                i32.or
                                local.set 17
                                br 1 (;@13;)
                              end
                              local.get 7
                              i32.const 76
                              i32.add
                              call 66
                              local.tee 19
                              i32.const 0
                              i32.lt_s
                              br_if 9 (;@4;)
                              local.get 7
                              i32.load offset=76
                              local.set 1
                            end
                            i32.const 0
                            local.set 14
                            i32.const -1
                            local.set 20
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 1
                                i32.load8_u
                                i32.const 46
                                i32.eq
                                br_if 0 (;@14;)
                                i32.const 0
                                local.set 21
                                br 1 (;@13;)
                              end
                              block  ;; label = @14
                                local.get 1
                                i32.load8_u offset=1
                                i32.const 42
                                i32.ne
                                br_if 0 (;@14;)
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 1
                                    i32.load8_s offset=2
                                    call 59
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 7
                                    i32.load offset=76
                                    local.tee 15
                                    i32.load8_u offset=3
                                    i32.const 36
                                    i32.ne
                                    br_if 0 (;@16;)
                                    local.get 15
                                    i32.load8_s offset=2
                                    i32.const 2
                                    i32.shl
                                    local.get 4
                                    i32.add
                                    i32.const -192
                                    i32.add
                                    i32.const 10
                                    i32.store
                                    local.get 15
                                    i32.const 4
                                    i32.add
                                    local.set 1
                                    local.get 15
                                    i32.load8_s offset=2
                                    i32.const 3
                                    i32.shl
                                    local.get 3
                                    i32.add
                                    i32.const -384
                                    i32.add
                                    i32.load
                                    local.set 20
                                    br 1 (;@15;)
                                  end
                                  local.get 10
                                  br_if 6 (;@9;)
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 0
                                      br_if 0 (;@17;)
                                      i32.const 0
                                      local.set 20
                                      br 1 (;@16;)
                                    end
                                    local.get 2
                                    local.get 2
                                    i32.load
                                    local.tee 1
                                    i32.const 4
                                    i32.add
                                    i32.store
                                    local.get 1
                                    i32.load
                                    local.set 20
                                  end
                                  local.get 7
                                  i32.load offset=76
                                  i32.const 2
                                  i32.add
                                  local.set 1
                                end
                                local.get 7
                                local.get 1
                                i32.store offset=76
                                local.get 20
                                i32.const -1
                                i32.xor
                                i32.const 31
                                i32.shr_u
                                local.set 21
                                br 1 (;@13;)
                              end
                              local.get 7
                              local.get 1
                              i32.const 1
                              i32.add
                              i32.store offset=76
                              i32.const 1
                              local.set 21
                              local.get 7
                              i32.const 76
                              i32.add
                              call 66
                              local.set 20
                              local.get 7
                              i32.load offset=76
                              local.set 1
                            end
                            loop  ;; label = @13
                              local.get 14
                              local.set 15
                              i32.const 28
                              local.set 22
                              local.get 1
                              i32.load8_s
                              i32.const -123
                              i32.add
                              i32.const -58
                              i32.lt_u
                              br_if 10 (;@3;)
                              local.get 7
                              local.get 1
                              i32.const 1
                              i32.add
                              local.tee 18
                              i32.store offset=76
                              local.get 1
                              i32.load8_s
                              local.set 14
                              local.get 18
                              local.set 1
                              local.get 14
                              local.get 15
                              i32.const 58
                              i32.mul
                              i32.add
                              i32.const 2447
                              i32.add
                              i32.load8_u
                              local.tee 14
                              i32.const -1
                              i32.add
                              i32.const 8
                              i32.lt_u
                              br_if 0 (;@13;)
                            end
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 14
                                  i32.const 27
                                  i32.eq
                                  br_if 0 (;@15;)
                                  local.get 14
                                  i32.eqz
                                  br_if 12 (;@3;)
                                  block  ;; label = @16
                                    local.get 16
                                    i32.const 0
                                    i32.lt_s
                                    br_if 0 (;@16;)
                                    local.get 4
                                    local.get 16
                                    i32.const 2
                                    i32.shl
                                    i32.add
                                    local.get 14
                                    i32.store
                                    local.get 7
                                    local.get 3
                                    local.get 16
                                    i32.const 3
                                    i32.shl
                                    i32.add
                                    i64.load
                                    i64.store offset=64
                                    br 2 (;@14;)
                                  end
                                  local.get 0
                                  i32.eqz
                                  br_if 9 (;@6;)
                                  local.get 7
                                  i32.const 64
                                  i32.add
                                  local.get 14
                                  local.get 2
                                  local.get 6
                                  call 67
                                  local.get 7
                                  i32.load offset=76
                                  local.set 18
                                  br 2 (;@13;)
                                end
                                local.get 16
                                i32.const -1
                                i32.gt_s
                                br_if 11 (;@3;)
                              end
                              i32.const 0
                              local.set 1
                              local.get 0
                              i32.eqz
                              br_if 8 (;@5;)
                            end
                            local.get 17
                            i32.const -65537
                            i32.and
                            local.tee 23
                            local.get 17
                            local.get 17
                            i32.const 8192
                            i32.and
                            select
                            local.set 14
                            i32.const 0
                            local.set 17
                            i32.const 1024
                            local.set 16
                            local.get 9
                            local.set 22
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            local.get 18
                                                            i32.const -1
                                                            i32.add
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
                                                            local.get 15
                                                            select
                                                            local.tee 1
                                                            i32.const -88
                                                            i32.add
                                                            br_table 4 (;@24;) 21 (;@7;) 21 (;@7;) 21 (;@7;) 21 (;@7;) 21 (;@7;) 21 (;@7;) 21 (;@7;) 21 (;@7;) 14 (;@14;) 21 (;@7;) 15 (;@13;) 6 (;@22;) 14 (;@14;) 14 (;@14;) 14 (;@14;) 21 (;@7;) 6 (;@22;) 21 (;@7;) 21 (;@7;) 21 (;@7;) 21 (;@7;) 2 (;@26;) 5 (;@23;) 3 (;@25;) 21 (;@7;) 21 (;@7;) 9 (;@19;) 21 (;@7;) 1 (;@27;) 21 (;@7;) 21 (;@7;) 4 (;@24;) 0 (;@28;)
                                                          end
                                                          local.get 9
                                                          local.set 22
                                                          block  ;; label = @28
                                                            local.get 1
                                                            i32.const -65
                                                            i32.add
                                                            br_table 14 (;@14;) 21 (;@7;) 11 (;@17;) 21 (;@7;) 14 (;@14;) 14 (;@14;) 14 (;@14;) 0 (;@28;)
                                                          end
                                                          local.get 1
                                                          i32.const 83
                                                          i32.eq
                                                          br_if 9 (;@18;)
                                                          br 19 (;@8;)
                                                        end
                                                        i32.const 0
                                                        local.set 17
                                                        i32.const 1024
                                                        local.set 16
                                                        local.get 7
                                                        i64.load offset=64
                                                        local.set 24
                                                        br 5 (;@21;)
                                                      end
                                                      i32.const 0
                                                      local.set 1
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    local.get 15
                                                                    i32.const 255
                                                                    i32.and
                                                                    br_table 0 (;@32;) 1 (;@31;) 2 (;@30;) 3 (;@29;) 4 (;@28;) 27 (;@5;) 5 (;@27;) 6 (;@26;) 27 (;@5;)
                                                                  end
                                                                  local.get 7
                                                                  i32.load offset=64
                                                                  local.get 11
                                                                  i32.store
                                                                  br 26 (;@5;)
                                                                end
                                                                local.get 7
                                                                i32.load offset=64
                                                                local.get 11
                                                                i32.store
                                                                br 25 (;@5;)
                                                              end
                                                              local.get 7
                                                              i32.load offset=64
                                                              local.get 11
                                                              i64.extend_i32_s
                                                              i64.store
                                                              br 24 (;@5;)
                                                            end
                                                            local.get 7
                                                            i32.load offset=64
                                                            local.get 11
                                                            i32.store16
                                                            br 23 (;@5;)
                                                          end
                                                          local.get 7
                                                          i32.load offset=64
                                                          local.get 11
                                                          i32.store8
                                                          br 22 (;@5;)
                                                        end
                                                        local.get 7
                                                        i32.load offset=64
                                                        local.get 11
                                                        i32.store
                                                        br 21 (;@5;)
                                                      end
                                                      local.get 7
                                                      i32.load offset=64
                                                      local.get 11
                                                      i64.extend_i32_s
                                                      i64.store
                                                      br 20 (;@5;)
                                                    end
                                                    local.get 20
                                                    i32.const 8
                                                    local.get 20
                                                    i32.const 8
                                                    i32.gt_u
                                                    select
                                                    local.set 20
                                                    local.get 14
                                                    i32.const 8
                                                    i32.or
                                                    local.set 14
                                                    i32.const 120
                                                    local.set 1
                                                  end
                                                  local.get 7
                                                  i64.load offset=64
                                                  local.get 9
                                                  local.get 1
                                                  i32.const 32
                                                  i32.and
                                                  call 68
                                                  local.set 12
                                                  i32.const 0
                                                  local.set 17
                                                  i32.const 1024
                                                  local.set 16
                                                  local.get 7
                                                  i64.load offset=64
                                                  i64.eqz
                                                  br_if 3 (;@20;)
                                                  local.get 14
                                                  i32.const 8
                                                  i32.and
                                                  i32.eqz
                                                  br_if 3 (;@20;)
                                                  local.get 1
                                                  i32.const 4
                                                  i32.shr_u
                                                  i32.const 1024
                                                  i32.add
                                                  local.set 16
                                                  i32.const 2
                                                  local.set 17
                                                  br 3 (;@20;)
                                                end
                                                i32.const 0
                                                local.set 17
                                                i32.const 1024
                                                local.set 16
                                                local.get 7
                                                i64.load offset=64
                                                local.get 9
                                                call 69
                                                local.set 12
                                                local.get 14
                                                i32.const 8
                                                i32.and
                                                i32.eqz
                                                br_if 2 (;@20;)
                                                local.get 20
                                                local.get 9
                                                local.get 12
                                                i32.sub
                                                local.tee 1
                                                i32.const 1
                                                i32.add
                                                local.get 20
                                                local.get 1
                                                i32.gt_s
                                                select
                                                local.set 20
                                                br 2 (;@20;)
                                              end
                                              block  ;; label = @22
                                                local.get 7
                                                i64.load offset=64
                                                local.tee 24
                                                i64.const -1
                                                i64.gt_s
                                                br_if 0 (;@22;)
                                                local.get 7
                                                i64.const 0
                                                local.get 24
                                                i64.sub
                                                local.tee 24
                                                i64.store offset=64
                                                i32.const 1
                                                local.set 17
                                                i32.const 1024
                                                local.set 16
                                                br 1 (;@21;)
                                              end
                                              block  ;; label = @22
                                                local.get 14
                                                i32.const 2048
                                                i32.and
                                                i32.eqz
                                                br_if 0 (;@22;)
                                                i32.const 1
                                                local.set 17
                                                i32.const 1025
                                                local.set 16
                                                br 1 (;@21;)
                                              end
                                              i32.const 1026
                                              i32.const 1024
                                              local.get 14
                                              i32.const 1
                                              i32.and
                                              local.tee 17
                                              select
                                              local.set 16
                                            end
                                            local.get 24
                                            local.get 9
                                            call 70
                                            local.set 12
                                          end
                                          block  ;; label = @20
                                            local.get 21
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            local.get 20
                                            i32.const 0
                                            i32.lt_s
                                            br_if 16 (;@4;)
                                          end
                                          local.get 14
                                          i32.const -65537
                                          i32.and
                                          local.get 14
                                          local.get 21
                                          select
                                          local.set 14
                                          block  ;; label = @20
                                            local.get 7
                                            i64.load offset=64
                                            local.tee 24
                                            i64.const 0
                                            i64.ne
                                            br_if 0 (;@20;)
                                            local.get 20
                                            br_if 0 (;@20;)
                                            local.get 9
                                            local.set 12
                                            local.get 9
                                            local.set 22
                                            i32.const 0
                                            local.set 20
                                            br 13 (;@7;)
                                          end
                                          local.get 20
                                          local.get 9
                                          local.get 12
                                          i32.sub
                                          local.get 24
                                          i64.eqz
                                          i32.add
                                          local.tee 1
                                          local.get 20
                                          local.get 1
                                          i32.gt_s
                                          select
                                          local.set 20
                                          br 11 (;@8;)
                                        end
                                        local.get 7
                                        i32.load offset=64
                                        local.tee 1
                                        i32.const 1416
                                        local.get 1
                                        select
                                        local.set 12
                                        local.get 12
                                        local.get 12
                                        local.get 20
                                        i32.const 2147483647
                                        local.get 20
                                        i32.const 2147483647
                                        i32.lt_u
                                        select
                                        call 61
                                        local.tee 1
                                        i32.add
                                        local.set 22
                                        block  ;; label = @19
                                          local.get 20
                                          i32.const -1
                                          i32.le_s
                                          br_if 0 (;@19;)
                                          local.get 23
                                          local.set 14
                                          local.get 1
                                          local.set 20
                                          br 12 (;@7;)
                                        end
                                        local.get 23
                                        local.set 14
                                        local.get 1
                                        local.set 20
                                        local.get 22
                                        i32.load8_u
                                        br_if 14 (;@4;)
                                        br 11 (;@7;)
                                      end
                                      block  ;; label = @18
                                        local.get 20
                                        i32.eqz
                                        br_if 0 (;@18;)
                                        local.get 7
                                        i32.load offset=64
                                        local.set 13
                                        br 2 (;@16;)
                                      end
                                      i32.const 0
                                      local.set 1
                                      local.get 0
                                      i32.const 32
                                      local.get 19
                                      i32.const 0
                                      local.get 14
                                      call 71
                                      br 2 (;@15;)
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
                                    i32.store offset=64
                                    local.get 7
                                    i32.const 8
                                    i32.add
                                    local.set 13
                                    i32.const -1
                                    local.set 20
                                  end
                                  i32.const 0
                                  local.set 1
                                  block  ;; label = @16
                                    loop  ;; label = @17
                                      local.get 13
                                      i32.load
                                      local.tee 15
                                      i32.eqz
                                      br_if 1 (;@16;)
                                      block  ;; label = @18
                                        local.get 7
                                        i32.const 4
                                        i32.add
                                        local.get 15
                                        call 82
                                        local.tee 15
                                        i32.const 0
                                        i32.lt_s
                                        local.tee 12
                                        br_if 0 (;@18;)
                                        local.get 15
                                        local.get 20
                                        local.get 1
                                        i32.sub
                                        i32.gt_u
                                        br_if 0 (;@18;)
                                        local.get 13
                                        i32.const 4
                                        i32.add
                                        local.set 13
                                        local.get 20
                                        local.get 15
                                        local.get 1
                                        i32.add
                                        local.tee 1
                                        i32.gt_u
                                        br_if 1 (;@17;)
                                        br 2 (;@16;)
                                      end
                                    end
                                    local.get 12
                                    br_if 14 (;@2;)
                                  end
                                  i32.const 61
                                  local.set 22
                                  local.get 1
                                  i32.const 0
                                  i32.lt_s
                                  br_if 12 (;@3;)
                                  local.get 0
                                  i32.const 32
                                  local.get 19
                                  local.get 1
                                  local.get 14
                                  call 71
                                  block  ;; label = @16
                                    local.get 1
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.set 1
                                    br 1 (;@15;)
                                  end
                                  i32.const 0
                                  local.set 15
                                  local.get 7
                                  i32.load offset=64
                                  local.set 13
                                  loop  ;; label = @16
                                    local.get 13
                                    i32.load
                                    local.tee 12
                                    i32.eqz
                                    br_if 1 (;@15;)
                                    local.get 7
                                    i32.const 4
                                    i32.add
                                    local.get 12
                                    call 82
                                    local.tee 12
                                    local.get 15
                                    i32.add
                                    local.tee 15
                                    local.get 1
                                    i32.gt_u
                                    br_if 1 (;@15;)
                                    local.get 0
                                    local.get 7
                                    i32.const 4
                                    i32.add
                                    local.get 12
                                    call 65
                                    local.get 13
                                    i32.const 4
                                    i32.add
                                    local.set 13
                                    local.get 15
                                    local.get 1
                                    i32.lt_u
                                    br_if 0 (;@16;)
                                  end
                                end
                                local.get 0
                                i32.const 32
                                local.get 19
                                local.get 1
                                local.get 14
                                i32.const 8192
                                i32.xor
                                call 71
                                local.get 19
                                local.get 1
                                local.get 19
                                local.get 1
                                i32.gt_s
                                select
                                local.set 1
                                br 9 (;@5;)
                              end
                              block  ;; label = @14
                                local.get 21
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 20
                                i32.const 0
                                i32.lt_s
                                br_if 10 (;@4;)
                              end
                              i32.const 61
                              local.set 22
                              local.get 0
                              local.get 7
                              f64.load offset=64
                              local.get 19
                              local.get 20
                              local.get 14
                              local.get 1
                              local.get 5
                              call_indirect (type 13)
                              local.tee 1
                              i32.const 0
                              i32.ge_s
                              br_if 8 (;@5;)
                              br 10 (;@3;)
                            end
                            local.get 7
                            local.get 7
                            i64.load offset=64
                            i64.store8 offset=55
                            i32.const 1
                            local.set 20
                            local.get 8
                            local.set 12
                            local.get 9
                            local.set 22
                            local.get 23
                            local.set 14
                            br 5 (;@7;)
                          end
                          local.get 7
                          local.get 1
                          i32.const 1
                          i32.add
                          local.tee 14
                          i32.store offset=76
                          local.get 1
                          i32.load8_u offset=1
                          local.set 13
                          local.get 14
                          local.set 1
                          br 0 (;@11;)
                        end
                        unreachable
                      end
                      local.get 0
                      br_if 8 (;@1;)
                      local.get 10
                      i32.eqz
                      br_if 3 (;@6;)
                      i32.const 1
                      local.set 1
                      block  ;; label = @10
                        loop  ;; label = @11
                          local.get 4
                          local.get 1
                          i32.const 2
                          i32.shl
                          i32.add
                          i32.load
                          local.tee 13
                          i32.eqz
                          br_if 1 (;@10;)
                          local.get 3
                          local.get 1
                          i32.const 3
                          i32.shl
                          i32.add
                          local.get 13
                          local.get 2
                          local.get 6
                          call 67
                          i32.const 1
                          local.set 11
                          local.get 1
                          i32.const 1
                          i32.add
                          local.tee 1
                          i32.const 10
                          i32.ne
                          br_if 0 (;@11;)
                          br 10 (;@1;)
                        end
                        unreachable
                      end
                      i32.const 1
                      local.set 11
                      local.get 1
                      i32.const 10
                      i32.ge_u
                      br_if 8 (;@1;)
                      loop  ;; label = @10
                        local.get 4
                        local.get 1
                        i32.const 2
                        i32.shl
                        i32.add
                        i32.load
                        br_if 1 (;@9;)
                        i32.const 1
                        local.set 11
                        local.get 1
                        i32.const 1
                        i32.add
                        local.tee 1
                        i32.const 10
                        i32.eq
                        br_if 9 (;@1;)
                        br 0 (;@10;)
                      end
                      unreachable
                    end
                    i32.const 28
                    local.set 22
                    br 5 (;@3;)
                  end
                  local.get 9
                  local.set 22
                end
                local.get 20
                local.get 22
                local.get 12
                i32.sub
                local.tee 18
                local.get 20
                local.get 18
                i32.gt_s
                select
                local.tee 20
                i32.const 2147483647
                local.get 17
                i32.sub
                i32.gt_s
                br_if 2 (;@4;)
                i32.const 61
                local.set 22
                local.get 19
                local.get 17
                local.get 20
                i32.add
                local.tee 15
                local.get 19
                local.get 15
                i32.gt_s
                select
                local.tee 1
                local.get 13
                i32.gt_s
                br_if 3 (;@3;)
                local.get 0
                i32.const 32
                local.get 1
                local.get 15
                local.get 14
                call 71
                local.get 0
                local.get 16
                local.get 17
                call 65
                local.get 0
                i32.const 48
                local.get 1
                local.get 15
                local.get 14
                i32.const 65536
                i32.xor
                call 71
                local.get 0
                i32.const 48
                local.get 20
                local.get 18
                i32.const 0
                call 71
                local.get 0
                local.get 12
                local.get 18
                call 65
                local.get 0
                i32.const 32
                local.get 1
                local.get 15
                local.get 14
                i32.const 8192
                i32.xor
                call 71
                br 1 (;@5;)
              end
            end
            i32.const 0
            local.set 11
            br 3 (;@1;)
          end
          i32.const 61
          local.set 22
        end
        call 22
        local.get 22
        i32.store
      end
      i32.const -1
      local.set 11
    end
    local.get 7
    i32.const 80
    i32.add
    global.set 0
    local.get 11)
  (func (;65;) (type 5) (param i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load8_u
      i32.const 32
      i32.and
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      local.get 0
      call 47
      drop
    end)
  (func (;66;) (type 1) (param i32) (result i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.load
      i32.load8_s
      call 59
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    loop  ;; label = @1
      local.get 0
      i32.load
      local.set 2
      i32.const -1
      local.set 3
      block  ;; label = @2
        local.get 1
        i32.const 214748364
        i32.gt_u
        br_if 0 (;@2;)
        i32.const -1
        local.get 2
        i32.load8_s
        i32.const -48
        i32.add
        local.tee 3
        local.get 1
        i32.const 10
        i32.mul
        local.tee 1
        i32.add
        local.get 3
        i32.const 2147483647
        local.get 1
        i32.sub
        i32.gt_s
        select
        local.set 3
      end
      local.get 0
      local.get 2
      i32.const 1
      i32.add
      i32.store
      local.get 3
      local.set 1
      local.get 2
      i32.load8_s offset=1
      call 59
      br_if 0 (;@1;)
    end
    local.get 3)
  (func (;67;) (type 10) (param i32 i32 i32 i32)
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
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 1
                                          i32.const -9
                                          i32.add
                                          br_table 0 (;@19;) 1 (;@18;) 2 (;@17;) 5 (;@14;) 3 (;@16;) 4 (;@15;) 6 (;@13;) 7 (;@12;) 8 (;@11;) 9 (;@10;) 10 (;@9;) 11 (;@8;) 12 (;@7;) 13 (;@6;) 14 (;@5;) 15 (;@4;) 16 (;@3;) 17 (;@2;) 18 (;@1;)
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
        f64.load
        f64.store
        return
      end
      local.get 0
      local.get 2
      local.get 3
      call_indirect (type 6)
    end)
  (func (;68;) (type 18) (param i64 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i64.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        local.get 0
        i32.wrap_i64
        i32.const 15
        i32.and
        i32.const 2976
        i32.add
        i32.load8_u
        local.get 2
        i32.or
        i32.store8
        local.get 0
        i64.const 15
        i64.gt_u
        local.set 3
        local.get 0
        i64.const 4
        i64.shr_u
        local.set 0
        local.get 3
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func (;69;) (type 14) (param i64 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i64.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        local.get 0
        i32.wrap_i64
        i32.const 7
        i32.and
        i32.const 48
        i32.or
        i32.store8
        local.get 0
        i64.const 7
        i64.gt_u
        local.set 2
        local.get 0
        i64.const 3
        i64.shr_u
        local.set 0
        local.get 2
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func (;70;) (type 14) (param i64 i32) (result i32)
    (local i64 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i64.const 4294967296
        i64.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 2
        br 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        local.get 0
        local.get 0
        i64.const 10
        i64.div_u
        local.tee 2
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
        local.set 3
        local.get 2
        local.set 0
        local.get 3
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 2
      i32.wrap_i64
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        local.get 3
        local.get 3
        i32.const 10
        i32.div_u
        local.tee 4
        i32.const 10
        i32.mul
        i32.sub
        i32.const 48
        i32.or
        i32.store8
        local.get 3
        i32.const 9
        i32.gt_u
        local.set 5
        local.get 4
        local.set 3
        local.get 5
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func (;71;) (type 19) (param i32 i32 i32 i32 i32)
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
      local.tee 3
      select
      call 34
      drop
      block  ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 0
          local.get 5
          i32.const 256
          call 65
          local.get 2
          i32.const -256
          i32.add
          local.tee 2
          i32.const 255
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 5
      local.get 2
      call 65
    end
    local.get 5
    i32.const 256
    i32.add
    global.set 0)
  (func (;72;) (type 2) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    i32.const 4
    i32.const 5
    call 63)
  (func (;73;) (type 13) (param i32 f64 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 f64)
    global.get 0
    i32.const 560
    i32.sub
    local.tee 6
    global.set 0
    i32.const 0
    local.set 7
    local.get 6
    i32.const 0
    i32.store offset=44
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        call 75
        local.tee 24
        i64.const -1
        i64.gt_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 8
        i32.const 1034
        local.set 9
        local.get 1
        f64.neg
        local.tee 1
        call 75
        local.set 24
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        i32.const 2048
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 8
        i32.const 1037
        local.set 9
        br 1 (;@1;)
      end
      i32.const 1040
      i32.const 1035
      local.get 4
      i32.const 1
      i32.and
      local.tee 8
      select
      local.set 9
      local.get 8
      i32.eqz
      local.set 7
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 24
        i64.const 9218868437227405312
        i64.and
        i64.const 9218868437227405312
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 32
        local.get 2
        local.get 8
        i32.const 3
        i32.add
        local.tee 10
        local.get 4
        i32.const -65537
        i32.and
        call 71
        local.get 0
        local.get 9
        local.get 8
        call 65
        local.get 0
        i32.const 1163
        i32.const 1196
        local.get 5
        i32.const 32
        i32.and
        local.tee 11
        select
        i32.const 1167
        i32.const 1330
        local.get 11
        select
        local.get 1
        local.get 1
        f64.ne
        select
        i32.const 3
        call 65
        local.get 0
        i32.const 32
        local.get 2
        local.get 10
        local.get 4
        i32.const 8192
        i32.xor
        call 71
        local.get 10
        local.get 2
        local.get 10
        local.get 2
        i32.gt_s
        select
        local.set 12
        br 1 (;@1;)
      end
      local.get 6
      i32.const 16
      i32.add
      local.set 13
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              local.get 6
              i32.const 44
              i32.add
              call 62
              local.tee 1
              local.get 1
              f64.add
              local.tee 1
              f64.const 0.
              f64.eq
              br_if 0 (;@5;)
              local.get 6
              local.get 6
              i32.load offset=44
              local.tee 10
              i32.const -1
              i32.add
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
            i32.const 6
            local.get 3
            local.get 3
            i32.const 0
            i32.lt_s
            select
            local.set 15
            local.get 6
            i32.load offset=44
            local.set 16
            br 1 (;@3;)
          end
          local.get 6
          local.get 10
          i32.const -29
          i32.add
          local.tee 16
          i32.store offset=44
          i32.const 6
          local.get 3
          local.get 3
          i32.const 0
          i32.lt_s
          select
          local.set 15
          local.get 1
          f64.const 268435456.
          f64.mul
          local.set 1
        end
        local.get 6
        i32.const 48
        i32.add
        i32.const 0
        i32.const 288
        local.get 16
        i32.const 0
        i32.lt_s
        select
        i32.add
        local.tee 17
        local.set 11
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              f64.const 4294967296.
              f64.lt
              local.get 1
              f64.const 0.
              f64.ge
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.trunc_f64_u
              local.set 10
              br 1 (;@4;)
            end
            i32.const 0
            local.set 10
          end
          local.get 11
          local.get 10
          i32.store
          local.get 11
          i32.const 4
          i32.add
          local.set 11
          local.get 1
          local.get 10
          f64.convert_i32_u
          f64.sub
          f64.const 1000000000.
          f64.mul
          local.tee 1
          f64.const 0.
          f64.ne
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 16
            i32.const 1
            i32.ge_s
            br_if 0 (;@4;)
            local.get 16
            local.set 3
            local.get 11
            local.set 10
            local.get 17
            local.set 18
            br 1 (;@3;)
          end
          local.get 17
          local.set 18
          local.get 16
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
              local.get 11
              i32.const -4
              i32.add
              local.tee 10
              local.get 18
              i32.lt_u
              br_if 0 (;@5;)
              local.get 3
              i64.extend_i32_u
              local.set 25
              i64.const 0
              local.set 24
              loop  ;; label = @6
                local.get 10
                local.get 10
                i64.load32_u
                local.get 25
                i64.shl
                local.get 24
                i64.const 4294967295
                i64.and
                i64.add
                local.tee 24
                local.get 24
                i64.const 1000000000
                i64.div_u
                local.tee 24
                i64.const 1000000000
                i64.mul
                i64.sub
                i64.store32
                local.get 10
                i32.const -4
                i32.add
                local.tee 10
                local.get 18
                i32.ge_u
                br_if 0 (;@6;)
              end
              local.get 24
              i32.wrap_i64
              local.tee 10
              i32.eqz
              br_if 0 (;@5;)
              local.get 18
              i32.const -4
              i32.add
              local.tee 18
              local.get 10
              i32.store
            end
            block  ;; label = @5
              loop  ;; label = @6
                local.get 11
                local.tee 10
                local.get 18
                i32.le_u
                br_if 1 (;@5;)
                local.get 10
                i32.const -4
                i32.add
                local.tee 11
                i32.load
                i32.eqz
                br_if 0 (;@6;)
              end
            end
            local.get 6
            local.get 6
            i32.load offset=44
            local.get 3
            i32.sub
            local.tee 3
            i32.store offset=44
            local.get 10
            local.set 11
            local.get 3
            i32.const 0
            i32.gt_s
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 3
          i32.const -1
          i32.gt_s
          br_if 0 (;@3;)
          local.get 15
          i32.const 25
          i32.add
          i32.const 9
          i32.div_u
          i32.const 1
          i32.add
          local.set 19
          local.get 14
          i32.const 102
          i32.eq
          local.set 20
          loop  ;; label = @4
            i32.const 0
            local.get 3
            i32.sub
            local.tee 11
            i32.const 9
            local.get 11
            i32.const 9
            i32.lt_s
            select
            local.set 21
            block  ;; label = @5
              block  ;; label = @6
                local.get 18
                local.get 10
                i32.lt_u
                br_if 0 (;@6;)
                local.get 18
                i32.load
                local.set 11
                br 1 (;@5;)
              end
              i32.const 1000000000
              local.get 21
              i32.shr_u
              local.set 22
              i32.const -1
              local.get 21
              i32.shl
              i32.const -1
              i32.xor
              local.set 23
              i32.const 0
              local.set 3
              local.get 18
              local.set 11
              loop  ;; label = @6
                local.get 11
                local.get 11
                i32.load
                local.tee 12
                local.get 21
                i32.shr_u
                local.get 3
                i32.add
                i32.store
                local.get 12
                local.get 23
                i32.and
                local.get 22
                i32.mul
                local.set 3
                local.get 11
                i32.const 4
                i32.add
                local.tee 11
                local.get 10
                i32.lt_u
                br_if 0 (;@6;)
              end
              local.get 18
              i32.load
              local.set 11
              local.get 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 10
              local.get 3
              i32.store
              local.get 10
              i32.const 4
              i32.add
              local.set 10
            end
            local.get 6
            local.get 6
            i32.load offset=44
            local.get 21
            i32.add
            local.tee 3
            i32.store offset=44
            local.get 17
            local.get 18
            local.get 11
            i32.eqz
            i32.const 2
            i32.shl
            i32.add
            local.tee 18
            local.get 20
            select
            local.tee 11
            local.get 19
            i32.const 2
            i32.shl
            i32.add
            local.get 10
            local.get 10
            local.get 11
            i32.sub
            i32.const 2
            i32.shr_s
            local.get 19
            i32.gt_s
            select
            local.set 10
            local.get 3
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
          end
        end
        i32.const 0
        local.set 3
        block  ;; label = @3
          local.get 18
          local.get 10
          i32.ge_u
          br_if 0 (;@3;)
          local.get 17
          local.get 18
          i32.sub
          i32.const 2
          i32.shr_s
          i32.const 9
          i32.mul
          local.set 3
          i32.const 10
          local.set 11
          local.get 18
          i32.load
          local.tee 12
          i32.const 10
          i32.lt_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 12
            local.get 11
            i32.const 10
            i32.mul
            local.tee 11
            i32.ge_u
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 15
          i32.const 0
          local.get 3
          local.get 14
          i32.const 102
          i32.eq
          select
          i32.sub
          local.get 15
          i32.const 0
          i32.ne
          local.get 14
          i32.const 103
          i32.eq
          i32.and
          i32.sub
          local.tee 11
          local.get 10
          local.get 17
          i32.sub
          i32.const 2
          i32.shr_s
          i32.const 9
          i32.mul
          i32.const -9
          i32.add
          i32.ge_s
          br_if 0 (;@3;)
          local.get 11
          i32.const 9216
          i32.add
          local.tee 12
          i32.const 9
          i32.div_s
          local.tee 22
          i32.const 2
          i32.shl
          local.get 6
          i32.const 48
          i32.add
          i32.const 4
          i32.const 292
          local.get 16
          i32.const 0
          i32.lt_s
          select
          i32.add
          i32.add
          i32.const -4096
          i32.add
          local.set 21
          i32.const 10
          local.set 11
          block  ;; label = @4
            local.get 12
            local.get 22
            i32.const 9
            i32.mul
            i32.sub
            local.tee 12
            i32.const 7
            i32.gt_s
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 11
              i32.const 10
              i32.mul
              local.set 11
              local.get 12
              i32.const 1
              i32.add
              local.tee 12
              i32.const 8
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 21
          i32.const 4
          i32.add
          local.set 23
          block  ;; label = @4
            block  ;; label = @5
              local.get 21
              i32.load
              local.tee 12
              local.get 12
              local.get 11
              i32.div_u
              local.tee 19
              local.get 11
              i32.mul
              i32.sub
              local.tee 22
              br_if 0 (;@5;)
              local.get 23
              local.get 10
              i32.eq
              br_if 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 19
                i32.const 1
                i32.and
                br_if 0 (;@6;)
                f64.const 9.00719925474e+15
                local.set 1
                local.get 11
                i32.const 1000000000
                i32.ne
                br_if 1 (;@5;)
                local.get 21
                local.get 18
                i32.le_u
                br_if 1 (;@5;)
                local.get 21
                i32.const -4
                i32.add
                i32.load8_u
                i32.const 1
                i32.and
                i32.eqz
                br_if 1 (;@5;)
              end
              f64.const 9.00719925474e+15
              local.set 1
            end
            f64.const 0.5
            f64.const 1.
            f64.const 1.5
            local.get 23
            local.get 10
            i32.eq
            select
            f64.const 1.5
            local.get 22
            local.get 11
            i32.const 1
            i32.shr_u
            local.tee 23
            i32.eq
            select
            local.get 22
            local.get 23
            i32.lt_u
            select
            local.set 26
            block  ;; label = @5
              local.get 7
              br_if 0 (;@5;)
              local.get 9
              i32.load8_u
              i32.const 45
              i32.ne
              br_if 0 (;@5;)
              local.get 26
              f64.neg
              local.set 26
              local.get 1
              f64.neg
              local.set 1
            end
            local.get 21
            local.get 12
            local.get 22
            i32.sub
            local.tee 12
            i32.store
            local.get 1
            local.get 26
            f64.add
            local.get 1
            f64.eq
            br_if 0 (;@4;)
            local.get 21
            local.get 12
            local.get 11
            i32.add
            local.tee 11
            i32.store
            block  ;; label = @5
              local.get 11
              i32.const 1000000000
              i32.lt_u
              br_if 0 (;@5;)
              loop  ;; label = @6
                local.get 21
                i32.const 0
                i32.store
                block  ;; label = @7
                  local.get 21
                  i32.const -4
                  i32.add
                  local.tee 21
                  local.get 18
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 18
                  i32.const -4
                  i32.add
                  local.tee 18
                  i32.const 0
                  i32.store
                end
                local.get 21
                local.get 21
                i32.load
                i32.const 1
                i32.add
                local.tee 11
                i32.store
                local.get 11
                i32.const 999999999
                i32.gt_u
                br_if 0 (;@6;)
              end
            end
            local.get 17
            local.get 18
            i32.sub
            i32.const 2
            i32.shr_s
            i32.const 9
            i32.mul
            local.set 3
            i32.const 10
            local.set 11
            local.get 18
            i32.load
            local.tee 12
            i32.const 10
            i32.lt_u
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 3
              i32.const 1
              i32.add
              local.set 3
              local.get 12
              local.get 11
              i32.const 10
              i32.mul
              local.tee 11
              i32.ge_u
              br_if 0 (;@5;)
            end
          end
          local.get 21
          i32.const 4
          i32.add
          local.tee 11
          local.get 10
          local.get 10
          local.get 11
          i32.gt_u
          select
          local.set 10
        end
        block  ;; label = @3
          loop  ;; label = @4
            local.get 10
            local.tee 11
            local.get 18
            i32.le_u
            local.tee 12
            br_if 1 (;@3;)
            local.get 11
            i32.const -4
            i32.add
            local.tee 10
            i32.load
            i32.eqz
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 14
            i32.const 103
            i32.eq
            br_if 0 (;@4;)
            local.get 4
            i32.const 8
            i32.and
            local.set 21
            br 1 (;@3;)
          end
          local.get 3
          i32.const -1
          i32.xor
          i32.const -1
          local.get 15
          i32.const 1
          local.get 15
          select
          local.tee 10
          local.get 3
          i32.gt_s
          local.get 3
          i32.const -5
          i32.gt_s
          i32.and
          local.tee 21
          select
          local.get 10
          i32.add
          local.set 15
          i32.const -1
          i32.const -2
          local.get 21
          select
          local.get 5
          i32.add
          local.set 5
          local.get 4
          i32.const 8
          i32.and
          local.tee 21
          br_if 0 (;@3;)
          i32.const -9
          local.set 10
          block  ;; label = @4
            local.get 12
            br_if 0 (;@4;)
            local.get 11
            i32.const -4
            i32.add
            i32.load
            local.tee 21
            i32.eqz
            br_if 0 (;@4;)
            i32.const 10
            local.set 12
            i32.const 0
            local.set 10
            local.get 21
            i32.const 10
            i32.rem_u
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 10
              local.tee 22
              i32.const 1
              i32.add
              local.set 10
              local.get 21
              local.get 12
              i32.const 10
              i32.mul
              local.tee 12
              i32.rem_u
              i32.eqz
              br_if 0 (;@5;)
            end
            local.get 22
            i32.const -1
            i32.xor
            local.set 10
          end
          local.get 11
          local.get 17
          i32.sub
          i32.const 2
          i32.shr_s
          i32.const 9
          i32.mul
          local.set 12
          block  ;; label = @4
            local.get 5
            i32.const -33
            i32.and
            i32.const 70
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.set 21
            local.get 15
            local.get 12
            local.get 10
            i32.add
            i32.const -9
            i32.add
            local.tee 10
            i32.const 0
            local.get 10
            i32.const 0
            i32.gt_s
            select
            local.tee 10
            local.get 15
            local.get 10
            i32.lt_s
            select
            local.set 15
            br 1 (;@3;)
          end
          i32.const 0
          local.set 21
          local.get 15
          local.get 3
          local.get 12
          i32.add
          local.get 10
          i32.add
          i32.const -9
          i32.add
          local.tee 10
          i32.const 0
          local.get 10
          i32.const 0
          i32.gt_s
          select
          local.tee 10
          local.get 15
          local.get 10
          i32.lt_s
          select
          local.set 15
        end
        i32.const -1
        local.set 12
        local.get 15
        i32.const 2147483645
        i32.const 2147483646
        local.get 15
        local.get 21
        i32.or
        local.tee 22
        select
        i32.gt_s
        br_if 1 (;@1;)
        local.get 15
        local.get 22
        i32.const 0
        i32.ne
        i32.add
        i32.const 1
        i32.add
        local.set 23
        block  ;; label = @3
          block  ;; label = @4
            local.get 5
            i32.const -33
            i32.and
            local.tee 20
            i32.const 70
            i32.ne
            br_if 0 (;@4;)
            local.get 3
            i32.const 2147483647
            local.get 23
            i32.sub
            i32.gt_s
            br_if 3 (;@1;)
            local.get 3
            i32.const 0
            local.get 3
            i32.const 0
            i32.gt_s
            select
            local.set 10
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 13
            local.get 3
            local.get 3
            i32.const 31
            i32.shr_s
            local.tee 10
            i32.xor
            local.get 10
            i32.sub
            i64.extend_i32_u
            local.get 13
            call 70
            local.tee 10
            i32.sub
            i32.const 1
            i32.gt_s
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 10
              i32.const -1
              i32.add
              local.tee 10
              i32.const 48
              i32.store8
              local.get 13
              local.get 10
              i32.sub
              i32.const 2
              i32.lt_s
              br_if 0 (;@5;)
            end
          end
          local.get 10
          i32.const -2
          i32.add
          local.tee 19
          local.get 5
          i32.store8
          i32.const -1
          local.set 12
          local.get 10
          i32.const -1
          i32.add
          i32.const 45
          i32.const 43
          local.get 3
          i32.const 0
          i32.lt_s
          select
          i32.store8
          local.get 13
          local.get 19
          i32.sub
          local.tee 10
          i32.const 2147483647
          local.get 23
          i32.sub
          i32.gt_s
          br_if 2 (;@1;)
        end
        i32.const -1
        local.set 12
        local.get 10
        local.get 23
        i32.add
        local.tee 10
        local.get 8
        i32.const 2147483647
        i32.xor
        i32.gt_s
        br_if 1 (;@1;)
        local.get 0
        i32.const 32
        local.get 2
        local.get 10
        local.get 8
        i32.add
        local.tee 23
        local.get 4
        call 71
        local.get 0
        local.get 9
        local.get 8
        call 65
        local.get 0
        i32.const 48
        local.get 2
        local.get 23
        local.get 4
        i32.const 65536
        i32.xor
        call 71
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 20
                i32.const 70
                i32.ne
                br_if 0 (;@6;)
                local.get 6
                i32.const 16
                i32.add
                i32.const 8
                i32.or
                local.set 21
                local.get 6
                i32.const 16
                i32.add
                i32.const 9
                i32.or
                local.set 3
                local.get 17
                local.get 18
                local.get 18
                local.get 17
                i32.gt_u
                select
                local.tee 12
                local.set 18
                loop  ;; label = @7
                  local.get 18
                  i64.load32_u
                  local.get 3
                  call 70
                  local.set 10
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 18
                      local.get 12
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 10
                      local.get 6
                      i32.const 16
                      i32.add
                      i32.le_u
                      br_if 1 (;@8;)
                      loop  ;; label = @10
                        local.get 10
                        i32.const -1
                        i32.add
                        local.tee 10
                        i32.const 48
                        i32.store8
                        local.get 10
                        local.get 6
                        i32.const 16
                        i32.add
                        i32.gt_u
                        br_if 0 (;@10;)
                        br 2 (;@8;)
                      end
                      unreachable
                    end
                    local.get 10
                    local.get 3
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 6
                    i32.const 48
                    i32.store8 offset=24
                    local.get 21
                    local.set 10
                  end
                  local.get 0
                  local.get 10
                  local.get 3
                  local.get 10
                  i32.sub
                  call 65
                  local.get 18
                  i32.const 4
                  i32.add
                  local.tee 18
                  local.get 17
                  i32.le_u
                  br_if 0 (;@7;)
                end
                block  ;; label = @7
                  local.get 22
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 1414
                  i32.const 1
                  call 65
                end
                local.get 18
                local.get 11
                i32.ge_u
                br_if 1 (;@5;)
                local.get 15
                i32.const 1
                i32.lt_s
                br_if 1 (;@5;)
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 18
                    i64.load32_u
                    local.get 3
                    call 70
                    local.tee 10
                    local.get 6
                    i32.const 16
                    i32.add
                    i32.le_u
                    br_if 0 (;@8;)
                    loop  ;; label = @9
                      local.get 10
                      i32.const -1
                      i32.add
                      local.tee 10
                      i32.const 48
                      i32.store8
                      local.get 10
                      local.get 6
                      i32.const 16
                      i32.add
                      i32.gt_u
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 0
                  local.get 10
                  local.get 15
                  i32.const 9
                  local.get 15
                  i32.const 9
                  i32.lt_s
                  select
                  call 65
                  local.get 15
                  i32.const -9
                  i32.add
                  local.set 10
                  local.get 18
                  i32.const 4
                  i32.add
                  local.tee 18
                  local.get 11
                  i32.ge_u
                  br_if 3 (;@4;)
                  local.get 15
                  i32.const 9
                  i32.gt_s
                  local.set 12
                  local.get 10
                  local.set 15
                  local.get 12
                  br_if 0 (;@7;)
                  br 3 (;@4;)
                end
                unreachable
              end
              block  ;; label = @6
                local.get 15
                i32.const 0
                i32.lt_s
                br_if 0 (;@6;)
                local.get 11
                local.get 18
                i32.const 4
                i32.add
                local.get 11
                local.get 18
                i32.gt_u
                select
                local.set 22
                local.get 6
                i32.const 16
                i32.add
                i32.const 8
                i32.or
                local.set 17
                local.get 6
                i32.const 16
                i32.add
                i32.const 9
                i32.or
                local.set 3
                local.get 18
                local.set 11
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 11
                    i64.load32_u
                    local.get 3
                    call 70
                    local.tee 10
                    local.get 3
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 6
                    i32.const 48
                    i32.store8 offset=24
                    local.get 17
                    local.set 10
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 11
                      local.get 18
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 10
                      local.get 6
                      i32.const 16
                      i32.add
                      i32.le_u
                      br_if 1 (;@8;)
                      loop  ;; label = @10
                        local.get 10
                        i32.const -1
                        i32.add
                        local.tee 10
                        i32.const 48
                        i32.store8
                        local.get 10
                        local.get 6
                        i32.const 16
                        i32.add
                        i32.gt_u
                        br_if 0 (;@10;)
                        br 2 (;@8;)
                      end
                      unreachable
                    end
                    local.get 0
                    local.get 10
                    i32.const 1
                    call 65
                    local.get 10
                    i32.const 1
                    i32.add
                    local.set 10
                    local.get 15
                    local.get 21
                    i32.or
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const 1414
                    i32.const 1
                    call 65
                  end
                  local.get 0
                  local.get 10
                  local.get 15
                  local.get 3
                  local.get 10
                  i32.sub
                  local.tee 12
                  local.get 15
                  local.get 12
                  i32.lt_s
                  select
                  call 65
                  local.get 15
                  local.get 12
                  i32.sub
                  local.set 15
                  local.get 11
                  i32.const 4
                  i32.add
                  local.tee 11
                  local.get 22
                  i32.ge_u
                  br_if 1 (;@6;)
                  local.get 15
                  i32.const -1
                  i32.gt_s
                  br_if 0 (;@7;)
                end
              end
              local.get 0
              i32.const 48
              local.get 15
              i32.const 18
              i32.add
              i32.const 18
              i32.const 0
              call 71
              local.get 0
              local.get 19
              local.get 13
              local.get 19
              i32.sub
              call 65
              br 2 (;@3;)
            end
            local.get 15
            local.set 10
          end
          local.get 0
          i32.const 48
          local.get 10
          i32.const 9
          i32.add
          i32.const 9
          i32.const 0
          call 71
        end
        local.get 0
        i32.const 32
        local.get 2
        local.get 23
        local.get 4
        i32.const 8192
        i32.xor
        call 71
        local.get 23
        local.get 2
        local.get 23
        local.get 2
        i32.gt_s
        select
        local.set 12
        br 1 (;@1;)
      end
      local.get 9
      local.get 5
      i32.const 26
      i32.shl
      i32.const 31
      i32.shr_s
      i32.const 9
      i32.and
      i32.add
      local.set 23
      block  ;; label = @2
        local.get 3
        i32.const 11
        i32.gt_u
        br_if 0 (;@2;)
        i32.const 12
        local.get 3
        i32.sub
        local.set 10
        f64.const 16.
        local.set 26
        loop  ;; label = @3
          local.get 26
          f64.const 16.
          f64.mul
          local.set 26
          local.get 10
          i32.const -1
          i32.add
          local.tee 10
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          local.get 23
          i32.load8_u
          i32.const 45
          i32.ne
          br_if 0 (;@3;)
          local.get 26
          local.get 1
          f64.neg
          local.get 26
          f64.sub
          f64.add
          f64.neg
          local.set 1
          br 1 (;@2;)
        end
        local.get 1
        local.get 26
        f64.add
        local.get 26
        f64.sub
        local.set 1
      end
      block  ;; label = @2
        local.get 6
        i32.load offset=44
        local.tee 10
        local.get 10
        i32.const 31
        i32.shr_s
        local.tee 10
        i32.xor
        local.get 10
        i32.sub
        i64.extend_i32_u
        local.get 13
        call 70
        local.tee 10
        local.get 13
        i32.ne
        br_if 0 (;@2;)
        local.get 6
        i32.const 48
        i32.store8 offset=15
        local.get 6
        i32.const 15
        i32.add
        local.set 10
      end
      local.get 8
      i32.const 2
      i32.or
      local.set 21
      local.get 5
      i32.const 32
      i32.and
      local.set 18
      local.get 6
      i32.load offset=44
      local.set 11
      local.get 10
      i32.const -2
      i32.add
      local.tee 22
      local.get 5
      i32.const 15
      i32.add
      i32.store8
      local.get 10
      i32.const -1
      i32.add
      i32.const 45
      i32.const 43
      local.get 11
      i32.const 0
      i32.lt_s
      select
      i32.store8
      local.get 4
      i32.const 8
      i32.and
      local.set 12
      local.get 6
      i32.const 16
      i32.add
      local.set 11
      loop  ;; label = @2
        local.get 11
        local.set 10
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            f64.abs
            f64.const 2147483648.
            f64.lt
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.trunc_f64_s
            local.set 11
            br 1 (;@3;)
          end
          i32.const -2147483648
          local.set 11
        end
        local.get 10
        local.get 11
        i32.const 2976
        i32.add
        i32.load8_u
        local.get 18
        i32.or
        i32.store8
        local.get 1
        local.get 11
        f64.convert_i32_s
        f64.sub
        f64.const 16.
        f64.mul
        local.set 1
        block  ;; label = @3
          local.get 10
          i32.const 1
          i32.add
          local.tee 11
          local.get 6
          i32.const 16
          i32.add
          i32.sub
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 12
            br_if 0 (;@4;)
            local.get 3
            i32.const 0
            i32.gt_s
            br_if 0 (;@4;)
            local.get 1
            f64.const 0.
            f64.eq
            br_if 1 (;@3;)
          end
          local.get 10
          i32.const 46
          i32.store8 offset=1
          local.get 10
          i32.const 2
          i32.add
          local.set 11
        end
        local.get 1
        f64.const 0.
        f64.ne
        br_if 0 (;@2;)
      end
      i32.const -1
      local.set 12
      i32.const 2147483645
      local.get 21
      local.get 13
      local.get 22
      i32.sub
      local.tee 19
      i32.add
      local.tee 10
      i32.sub
      local.get 3
      i32.lt_s
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 11
          local.get 6
          i32.const 16
          i32.add
          i32.sub
          local.tee 18
          i32.const -2
          i32.add
          local.get 3
          i32.ge_s
          br_if 0 (;@3;)
          local.get 3
          i32.const 2
          i32.add
          local.set 11
          br 1 (;@2;)
        end
        local.get 11
        local.get 6
        i32.const 16
        i32.add
        i32.sub
        local.tee 18
        local.set 11
      end
      local.get 0
      i32.const 32
      local.get 2
      local.get 10
      local.get 11
      i32.add
      local.tee 10
      local.get 4
      call 71
      local.get 0
      local.get 23
      local.get 21
      call 65
      local.get 0
      i32.const 48
      local.get 2
      local.get 10
      local.get 4
      i32.const 65536
      i32.xor
      call 71
      local.get 0
      local.get 6
      i32.const 16
      i32.add
      local.get 18
      call 65
      local.get 0
      i32.const 48
      local.get 11
      local.get 18
      i32.sub
      i32.const 0
      i32.const 0
      call 71
      local.get 0
      local.get 22
      local.get 19
      call 65
      local.get 0
      i32.const 32
      local.get 2
      local.get 10
      local.get 4
      i32.const 8192
      i32.xor
      call 71
      local.get 10
      local.get 2
      local.get 10
      local.get 2
      i32.gt_s
      select
      local.set 12
    end
    local.get 6
    i32.const 560
    i32.add
    global.set 0
    local.get 12)
  (func (;74;) (type 6) (param i32 i32)
    (local i32)
    local.get 1
    local.get 1
    i32.load
    i32.const 7
    i32.add
    i32.const -8
    i32.and
    local.tee 2
    i32.const 16
    i32.add
    i32.store
    local.get 0
    local.get 2
    i64.load
    local.get 2
    i32.const 8
    i32.add
    i64.load
    call 88
    f64.store)
  (func (;75;) (type 20) (param f64) (result i64)
    local.get 0
    i64.reinterpret_f64)
  (func (;76;) (type 2) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    i32.const 0
    i32.const 0
    call 63)
  (func (;77;) (type 2) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    i32.const 4
    i32.const 0
    call 63)
  (func (;78;) (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 160
    i32.sub
    local.tee 4
    global.set 0
    i32.const -1
    local.set 5
    local.get 4
    local.get 1
    i32.const -1
    i32.add
    i32.const 0
    local.get 1
    select
    i32.store offset=148
    local.get 4
    local.get 0
    local.get 4
    i32.const 158
    i32.add
    local.get 1
    select
    local.tee 0
    i32.store offset=144
    local.get 4
    i32.const 0
    i32.const 144
    call 34
    local.tee 4
    i32.const -1
    i32.store offset=76
    local.get 4
    i32.const 6
    i32.store offset=36
    local.get 4
    i32.const -1
    i32.store offset=80
    local.get 4
    local.get 4
    i32.const 159
    i32.add
    i32.store offset=44
    local.get 4
    local.get 4
    i32.const 144
    i32.add
    i32.store offset=84
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        call 22
        i32.const 61
        i32.store
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store8
      local.get 4
      local.get 2
      local.get 3
      call 72
      local.set 5
    end
    local.get 4
    i32.const 160
    i32.add
    global.set 0
    local.get 5)
  (func (;79;) (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=84
      local.tee 3
      i32.load offset=4
      local.tee 4
      local.get 0
      i32.load offset=20
      local.get 0
      i32.load offset=28
      local.tee 5
      i32.sub
      local.tee 6
      local.get 4
      local.get 6
      i32.lt_u
      select
      local.tee 6
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load
      local.get 5
      local.get 6
      call 46
      drop
      local.get 3
      local.get 3
      i32.load
      local.get 6
      i32.add
      i32.store
      local.get 3
      local.get 3
      i32.load offset=4
      local.get 6
      i32.sub
      local.tee 4
      i32.store offset=4
    end
    local.get 3
    i32.load
    local.set 6
    block  ;; label = @1
      local.get 4
      local.get 2
      local.get 4
      local.get 2
      i32.lt_u
      select
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 6
      local.get 1
      local.get 4
      call 46
      drop
      local.get 3
      local.get 3
      i32.load
      local.get 4
      i32.add
      local.tee 6
      i32.store
      local.get 3
      local.get 3
      i32.load offset=4
      local.get 4
      i32.sub
      i32.store offset=4
    end
    local.get 6
    i32.const 0
    i32.store8
    local.get 0
    local.get 0
    i32.load offset=44
    local.tee 3
    i32.store offset=28
    local.get 0
    local.get 3
    i32.store offset=20
    local.get 2)
  (func (;80;) (type 1) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    call 22
    local.get 0
    i32.store
    i32.const -1)
  (func (;81;) (type 2) (param i32 i32 i32) (result i32)
    (local i32)
    i32.const 1
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 127
        i32.le_u
        br_if 1 (;@1;)
        block  ;; label = @3
          block  ;; label = @4
            call 37
            i32.load offset=88
            i32.load
            br_if 0 (;@4;)
            local.get 1
            i32.const -128
            i32.and
            i32.const 57216
            i32.eq
            br_if 3 (;@1;)
            call 22
            i32.const 25
            i32.store
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 1
            i32.const 2047
            i32.gt_u
            br_if 0 (;@4;)
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
            return
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 55296
              i32.lt_u
              br_if 0 (;@5;)
              local.get 1
              i32.const -8192
              i32.and
              i32.const 57344
              i32.ne
              br_if 1 (;@4;)
            end
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
            return
          end
          block  ;; label = @4
            local.get 1
            i32.const -65536
            i32.add
            i32.const 1048575
            i32.gt_u
            br_if 0 (;@4;)
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
            return
          end
          call 22
          i32.const 25
          i32.store
        end
        i32.const -1
        local.set 3
      end
      local.get 3
      return
    end
    local.get 0
    local.get 1
    i32.store8
    i32.const 1)
  (func (;82;) (type 0) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 0
    local.get 1
    i32.const 0
    call 81)
  (func (;83;) (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
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
                          block  ;; label = @12
                            local.get 0
                            i32.const 244
                            i32.gt_u
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=14840
                              local.tee 2
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
                              local.tee 3
                              i32.const 3
                              i32.shr_u
                              local.tee 4
                              i32.shr_u
                              local.tee 0
                              i32.const 3
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 0
                                  i32.const -1
                                  i32.xor
                                  i32.const 1
                                  i32.and
                                  local.get 4
                                  i32.add
                                  local.tee 5
                                  i32.const 3
                                  i32.shl
                                  local.tee 4
                                  i32.const 14880
                                  i32.add
                                  local.tee 0
                                  local.get 4
                                  i32.const 14888
                                  i32.add
                                  i32.load
                                  local.tee 4
                                  i32.load offset=8
                                  local.tee 3
                                  i32.ne
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.get 2
                                  i32.const -2
                                  local.get 5
                                  i32.rotl
                                  i32.and
                                  i32.store offset=14840
                                  br 1 (;@14;)
                                end
                                local.get 3
                                local.get 0
                                i32.store offset=12
                                local.get 0
                                local.get 3
                                i32.store offset=8
                              end
                              local.get 4
                              i32.const 8
                              i32.add
                              local.set 0
                              local.get 4
                              local.get 5
                              i32.const 3
                              i32.shl
                              local.tee 5
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 4
                              local.get 5
                              i32.add
                              local.tee 4
                              local.get 4
                              i32.load offset=4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              br 12 (;@1;)
                            end
                            local.get 3
                            i32.const 0
                            i32.load offset=14848
                            local.tee 6
                            i32.le_u
                            br_if 1 (;@11;)
                            block  ;; label = @13
                              local.get 0
                              i32.eqz
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 0
                                  local.get 4
                                  i32.shl
                                  i32.const 2
                                  local.get 4
                                  i32.shl
                                  local.tee 0
                                  i32.const 0
                                  local.get 0
                                  i32.sub
                                  i32.or
                                  i32.and
                                  local.tee 0
                                  i32.const 0
                                  local.get 0
                                  i32.sub
                                  i32.and
                                  i32.const -1
                                  i32.add
                                  local.tee 0
                                  local.get 0
                                  i32.const 12
                                  i32.shr_u
                                  i32.const 16
                                  i32.and
                                  local.tee 0
                                  i32.shr_u
                                  local.tee 4
                                  i32.const 5
                                  i32.shr_u
                                  i32.const 8
                                  i32.and
                                  local.tee 5
                                  local.get 0
                                  i32.or
                                  local.get 4
                                  local.get 5
                                  i32.shr_u
                                  local.tee 0
                                  i32.const 2
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  local.tee 4
                                  i32.or
                                  local.get 0
                                  local.get 4
                                  i32.shr_u
                                  local.tee 0
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 2
                                  i32.and
                                  local.tee 4
                                  i32.or
                                  local.get 0
                                  local.get 4
                                  i32.shr_u
                                  local.tee 0
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 1
                                  i32.and
                                  local.tee 4
                                  i32.or
                                  local.get 0
                                  local.get 4
                                  i32.shr_u
                                  i32.add
                                  local.tee 4
                                  i32.const 3
                                  i32.shl
                                  local.tee 0
                                  i32.const 14880
                                  i32.add
                                  local.tee 5
                                  local.get 0
                                  i32.const 14888
                                  i32.add
                                  i32.load
                                  local.tee 0
                                  i32.load offset=8
                                  local.tee 7
                                  i32.ne
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.get 2
                                  i32.const -2
                                  local.get 4
                                  i32.rotl
                                  i32.and
                                  local.tee 2
                                  i32.store offset=14840
                                  br 1 (;@14;)
                                end
                                local.get 7
                                local.get 5
                                i32.store offset=12
                                local.get 5
                                local.get 7
                                i32.store offset=8
                              end
                              local.get 0
                              local.get 3
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 0
                              local.get 3
                              i32.add
                              local.tee 7
                              local.get 4
                              i32.const 3
                              i32.shl
                              local.tee 4
                              local.get 3
                              i32.sub
                              local.tee 5
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              local.get 0
                              local.get 4
                              i32.add
                              local.get 5
                              i32.store
                              block  ;; label = @14
                                local.get 6
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 6
                                i32.const 3
                                i32.shr_u
                                local.tee 8
                                i32.const 3
                                i32.shl
                                i32.const 14880
                                i32.add
                                local.set 3
                                i32.const 0
                                i32.load offset=14860
                                local.set 4
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 2
                                    i32.const 1
                                    local.get 8
                                    i32.shl
                                    local.tee 8
                                    i32.and
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.get 2
                                    local.get 8
                                    i32.or
                                    i32.store offset=14840
                                    local.get 3
                                    local.set 8
                                    br 1 (;@15;)
                                  end
                                  local.get 3
                                  i32.load offset=8
                                  local.set 8
                                end
                                local.get 3
                                local.get 4
                                i32.store offset=8
                                local.get 8
                                local.get 4
                                i32.store offset=12
                                local.get 4
                                local.get 3
                                i32.store offset=12
                                local.get 4
                                local.get 8
                                i32.store offset=8
                              end
                              local.get 0
                              i32.const 8
                              i32.add
                              local.set 0
                              i32.const 0
                              local.get 7
                              i32.store offset=14860
                              i32.const 0
                              local.get 5
                              i32.store offset=14848
                              br 12 (;@1;)
                            end
                            i32.const 0
                            i32.load offset=14844
                            local.tee 9
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 9
                            i32.const 0
                            local.get 9
                            i32.sub
                            i32.and
                            i32.const -1
                            i32.add
                            local.tee 0
                            local.get 0
                            i32.const 12
                            i32.shr_u
                            i32.const 16
                            i32.and
                            local.tee 0
                            i32.shr_u
                            local.tee 4
                            i32.const 5
                            i32.shr_u
                            i32.const 8
                            i32.and
                            local.tee 5
                            local.get 0
                            i32.or
                            local.get 4
                            local.get 5
                            i32.shr_u
                            local.tee 0
                            i32.const 2
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee 4
                            i32.or
                            local.get 0
                            local.get 4
                            i32.shr_u
                            local.tee 0
                            i32.const 1
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee 4
                            i32.or
                            local.get 0
                            local.get 4
                            i32.shr_u
                            local.tee 0
                            i32.const 1
                            i32.shr_u
                            i32.const 1
                            i32.and
                            local.tee 4
                            i32.or
                            local.get 0
                            local.get 4
                            i32.shr_u
                            i32.add
                            i32.const 2
                            i32.shl
                            i32.const 15144
                            i32.add
                            i32.load
                            local.tee 7
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.get 3
                            i32.sub
                            local.set 4
                            local.get 7
                            local.set 5
                            block  ;; label = @13
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 5
                                  i32.load offset=16
                                  local.tee 0
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.tee 0
                                  i32.eqz
                                  br_if 2 (;@13;)
                                end
                                local.get 0
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 3
                                i32.sub
                                local.tee 5
                                local.get 4
                                local.get 5
                                local.get 4
                                i32.lt_u
                                local.tee 5
                                select
                                local.set 4
                                local.get 0
                                local.get 7
                                local.get 5
                                select
                                local.set 7
                                local.get 0
                                local.set 5
                                br 0 (;@14;)
                              end
                              unreachable
                            end
                            local.get 7
                            i32.load offset=24
                            local.set 10
                            block  ;; label = @13
                              local.get 7
                              i32.load offset=12
                              local.tee 8
                              local.get 7
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 7
                              i32.load offset=8
                              local.tee 0
                              i32.const 0
                              i32.load offset=14856
                              i32.lt_u
                              drop
                              local.get 0
                              local.get 8
                              i32.store offset=12
                              local.get 8
                              local.get 0
                              i32.store offset=8
                              br 11 (;@2;)
                            end
                            block  ;; label = @13
                              local.get 7
                              i32.const 20
                              i32.add
                              local.tee 5
                              i32.load
                              local.tee 0
                              br_if 0 (;@13;)
                              local.get 7
                              i32.load offset=16
                              local.tee 0
                              i32.eqz
                              br_if 3 (;@10;)
                              local.get 7
                              i32.const 16
                              i32.add
                              local.set 5
                            end
                            loop  ;; label = @13
                              local.get 5
                              local.set 11
                              local.get 0
                              local.tee 8
                              i32.const 20
                              i32.add
                              local.tee 5
                              i32.load
                              local.tee 0
                              br_if 0 (;@13;)
                              local.get 8
                              i32.const 16
                              i32.add
                              local.set 5
                              local.get 8
                              i32.load offset=16
                              local.tee 0
                              br_if 0 (;@13;)
                            end
                            local.get 11
                            i32.const 0
                            i32.store
                            br 10 (;@2;)
                          end
                          i32.const -1
                          local.set 3
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
                          local.set 3
                          i32.const 0
                          i32.load offset=14844
                          local.tee 6
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 11
                          block  ;; label = @12
                            local.get 3
                            i32.const 256
                            i32.lt_u
                            br_if 0 (;@12;)
                            i32.const 31
                            local.set 11
                            local.get 3
                            i32.const 16777215
                            i32.gt_u
                            br_if 0 (;@12;)
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
                            local.tee 0
                            i32.shl
                            local.tee 4
                            local.get 4
                            i32.const 520192
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee 4
                            i32.shl
                            local.tee 5
                            local.get 5
                            i32.const 245760
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee 5
                            i32.shl
                            i32.const 15
                            i32.shr_u
                            local.get 0
                            local.get 4
                            i32.or
                            local.get 5
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
                            local.set 11
                          end
                          i32.const 0
                          local.get 3
                          i32.sub
                          local.set 4
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 11
                                  i32.const 2
                                  i32.shl
                                  i32.const 15144
                                  i32.add
                                  i32.load
                                  local.tee 5
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.set 0
                                  i32.const 0
                                  local.set 8
                                  br 1 (;@14;)
                                end
                                i32.const 0
                                local.set 0
                                local.get 3
                                i32.const 0
                                i32.const 25
                                local.get 11
                                i32.const 1
                                i32.shr_u
                                i32.sub
                                local.get 11
                                i32.const 31
                                i32.eq
                                select
                                i32.shl
                                local.set 7
                                i32.const 0
                                local.set 8
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 5
                                    i32.load offset=4
                                    i32.const -8
                                    i32.and
                                    local.get 3
                                    i32.sub
                                    local.tee 2
                                    local.get 4
                                    i32.ge_u
                                    br_if 0 (;@16;)
                                    local.get 2
                                    local.set 4
                                    local.get 5
                                    local.set 8
                                    local.get 2
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.set 4
                                    local.get 5
                                    local.set 8
                                    local.get 5
                                    local.set 0
                                    br 3 (;@13;)
                                  end
                                  local.get 0
                                  local.get 5
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.tee 2
                                  local.get 2
                                  local.get 5
                                  local.get 7
                                  i32.const 29
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  i32.add
                                  i32.const 16
                                  i32.add
                                  i32.load
                                  local.tee 5
                                  i32.eq
                                  select
                                  local.get 0
                                  local.get 2
                                  select
                                  local.set 0
                                  local.get 7
                                  i32.const 1
                                  i32.shl
                                  local.set 7
                                  local.get 5
                                  br_if 0 (;@15;)
                                end
                              end
                              block  ;; label = @14
                                local.get 0
                                local.get 8
                                i32.or
                                br_if 0 (;@14;)
                                i32.const 0
                                local.set 8
                                i32.const 2
                                local.get 11
                                i32.shl
                                local.tee 0
                                i32.const 0
                                local.get 0
                                i32.sub
                                i32.or
                                local.get 6
                                i32.and
                                local.tee 0
                                i32.eqz
                                br_if 3 (;@11;)
                                local.get 0
                                i32.const 0
                                local.get 0
                                i32.sub
                                i32.and
                                i32.const -1
                                i32.add
                                local.tee 0
                                local.get 0
                                i32.const 12
                                i32.shr_u
                                i32.const 16
                                i32.and
                                local.tee 0
                                i32.shr_u
                                local.tee 5
                                i32.const 5
                                i32.shr_u
                                i32.const 8
                                i32.and
                                local.tee 7
                                local.get 0
                                i32.or
                                local.get 5
                                local.get 7
                                i32.shr_u
                                local.tee 0
                                i32.const 2
                                i32.shr_u
                                i32.const 4
                                i32.and
                                local.tee 5
                                i32.or
                                local.get 0
                                local.get 5
                                i32.shr_u
                                local.tee 0
                                i32.const 1
                                i32.shr_u
                                i32.const 2
                                i32.and
                                local.tee 5
                                i32.or
                                local.get 0
                                local.get 5
                                i32.shr_u
                                local.tee 0
                                i32.const 1
                                i32.shr_u
                                i32.const 1
                                i32.and
                                local.tee 5
                                i32.or
                                local.get 0
                                local.get 5
                                i32.shr_u
                                i32.add
                                i32.const 2
                                i32.shl
                                i32.const 15144
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
                              local.get 3
                              i32.sub
                              local.tee 2
                              local.get 4
                              i32.lt_u
                              local.set 7
                              block  ;; label = @14
                                local.get 0
                                i32.load offset=16
                                local.tee 5
                                br_if 0 (;@14;)
                                local.get 0
                                i32.const 20
                                i32.add
                                i32.load
                                local.set 5
                              end
                              local.get 2
                              local.get 4
                              local.get 7
                              select
                              local.set 4
                              local.get 0
                              local.get 8
                              local.get 7
                              select
                              local.set 8
                              local.get 5
                              local.set 0
                              local.get 5
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 8
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 4
                          i32.const 0
                          i32.load offset=14848
                          local.get 3
                          i32.sub
                          i32.ge_u
                          br_if 0 (;@11;)
                          local.get 8
                          i32.load offset=24
                          local.set 11
                          block  ;; label = @12
                            local.get 8
                            i32.load offset=12
                            local.tee 7
                            local.get 8
                            i32.eq
                            br_if 0 (;@12;)
                            local.get 8
                            i32.load offset=8
                            local.tee 0
                            i32.const 0
                            i32.load offset=14856
                            i32.lt_u
                            drop
                            local.get 0
                            local.get 7
                            i32.store offset=12
                            local.get 7
                            local.get 0
                            i32.store offset=8
                            br 9 (;@3;)
                          end
                          block  ;; label = @12
                            local.get 8
                            i32.const 20
                            i32.add
                            local.tee 5
                            i32.load
                            local.tee 0
                            br_if 0 (;@12;)
                            local.get 8
                            i32.load offset=16
                            local.tee 0
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 8
                            i32.const 16
                            i32.add
                            local.set 5
                          end
                          loop  ;; label = @12
                            local.get 5
                            local.set 2
                            local.get 0
                            local.tee 7
                            i32.const 20
                            i32.add
                            local.tee 5
                            i32.load
                            local.tee 0
                            br_if 0 (;@12;)
                            local.get 7
                            i32.const 16
                            i32.add
                            local.set 5
                            local.get 7
                            i32.load offset=16
                            local.tee 0
                            br_if 0 (;@12;)
                          end
                          local.get 2
                          i32.const 0
                          i32.store
                          br 8 (;@3;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=14848
                          local.tee 0
                          local.get 3
                          i32.lt_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=14860
                          local.set 4
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 0
                              local.get 3
                              i32.sub
                              local.tee 5
                              i32.const 16
                              i32.lt_u
                              br_if 0 (;@13;)
                              i32.const 0
                              local.get 5
                              i32.store offset=14848
                              i32.const 0
                              local.get 4
                              local.get 3
                              i32.add
                              local.tee 7
                              i32.store offset=14860
                              local.get 7
                              local.get 5
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              local.get 4
                              local.get 0
                              i32.add
                              local.get 5
                              i32.store
                              local.get 4
                              local.get 3
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              br 1 (;@12;)
                            end
                            i32.const 0
                            i32.const 0
                            i32.store offset=14860
                            i32.const 0
                            i32.const 0
                            i32.store offset=14848
                            local.get 4
                            local.get 0
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get 4
                            local.get 0
                            i32.add
                            local.tee 0
                            local.get 0
                            i32.load offset=4
                            i32.const 1
                            i32.or
                            i32.store offset=4
                          end
                          local.get 4
                          i32.const 8
                          i32.add
                          local.set 0
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=14852
                          local.tee 7
                          local.get 3
                          i32.le_u
                          br_if 0 (;@11;)
                          i32.const 0
                          local.get 7
                          local.get 3
                          i32.sub
                          local.tee 4
                          i32.store offset=14852
                          i32.const 0
                          i32.const 0
                          i32.load offset=14864
                          local.tee 0
                          local.get 3
                          i32.add
                          local.tee 5
                          i32.store offset=14864
                          local.get 5
                          local.get 4
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 0
                          local.get 3
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 0
                          i32.const 8
                          i32.add
                          local.set 0
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=15312
                            i32.eqz
                            br_if 0 (;@12;)
                            i32.const 0
                            i32.load offset=15320
                            local.set 4
                            br 1 (;@11;)
                          end
                          i32.const 0
                          i64.const -1
                          i64.store offset=15324 align=4
                          i32.const 0
                          i64.const 17592186048512
                          i64.store offset=15316 align=4
                          i32.const 0
                          local.get 1
                          i32.const 12
                          i32.add
                          i32.const -16
                          i32.and
                          i32.const 1431655768
                          i32.xor
                          i32.store offset=15312
                          i32.const 0
                          i32.const 0
                          i32.store offset=15332
                          i32.const 0
                          i32.const 0
                          i32.store offset=15284
                          i32.const 4096
                          local.set 4
                        end
                        i32.const 0
                        local.set 0
                        local.get 4
                        local.get 3
                        i32.const 47
                        i32.add
                        local.tee 6
                        i32.add
                        local.tee 2
                        i32.const 0
                        local.get 4
                        i32.sub
                        local.tee 11
                        i32.and
                        local.tee 8
                        local.get 3
                        i32.le_u
                        br_if 9 (;@1;)
                        i32.const 0
                        local.set 0
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=15280
                          local.tee 4
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=15272
                          local.tee 5
                          local.get 8
                          i32.add
                          local.tee 9
                          local.get 5
                          i32.le_u
                          br_if 10 (;@1;)
                          local.get 9
                          local.get 4
                          i32.gt_u
                          br_if 10 (;@1;)
                        end
                        i32.const 0
                        i32.load8_u offset=15284
                        i32.const 4
                        i32.and
                        br_if 4 (;@6;)
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=14864
                              local.tee 4
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 15288
                              local.set 0
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 0
                                  i32.load
                                  local.tee 5
                                  local.get 4
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                  local.get 5
                                  local.get 0
                                  i32.load offset=4
                                  i32.add
                                  local.get 4
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
                            call 85
                            local.tee 7
                            i32.const -1
                            i32.eq
                            br_if 5 (;@7;)
                            local.get 8
                            local.set 2
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=15316
                              local.tee 0
                              i32.const -1
                              i32.add
                              local.tee 4
                              local.get 7
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 8
                              local.get 7
                              i32.sub
                              local.get 4
                              local.get 7
                              i32.add
                              i32.const 0
                              local.get 0
                              i32.sub
                              i32.and
                              i32.add
                              local.set 2
                            end
                            local.get 2
                            local.get 3
                            i32.le_u
                            br_if 5 (;@7;)
                            local.get 2
                            i32.const 2147483646
                            i32.gt_u
                            br_if 5 (;@7;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=15280
                              local.tee 0
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.load offset=15272
                              local.tee 4
                              local.get 2
                              i32.add
                              local.tee 5
                              local.get 4
                              i32.le_u
                              br_if 6 (;@7;)
                              local.get 5
                              local.get 0
                              i32.gt_u
                              br_if 6 (;@7;)
                            end
                            local.get 2
                            call 85
                            local.tee 0
                            local.get 7
                            i32.ne
                            br_if 1 (;@11;)
                            br 7 (;@5;)
                          end
                          local.get 2
                          local.get 7
                          i32.sub
                          local.get 11
                          i32.and
                          local.tee 2
                          i32.const 2147483646
                          i32.gt_u
                          br_if 4 (;@7;)
                          local.get 2
                          call 85
                          local.tee 7
                          local.get 0
                          i32.load
                          local.get 0
                          i32.load offset=4
                          i32.add
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 7
                          local.set 0
                        end
                        block  ;; label = @11
                          local.get 0
                          i32.const -1
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 3
                          i32.const 48
                          i32.add
                          local.get 2
                          i32.le_u
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            local.get 6
                            local.get 2
                            i32.sub
                            i32.const 0
                            i32.load offset=15320
                            local.tee 4
                            i32.add
                            i32.const 0
                            local.get 4
                            i32.sub
                            i32.and
                            local.tee 4
                            i32.const 2147483646
                            i32.le_u
                            br_if 0 (;@12;)
                            local.get 0
                            local.set 7
                            br 7 (;@5;)
                          end
                          block  ;; label = @12
                            local.get 4
                            call 85
                            i32.const -1
                            i32.eq
                            br_if 0 (;@12;)
                            local.get 4
                            local.get 2
                            i32.add
                            local.set 2
                            local.get 0
                            local.set 7
                            br 7 (;@5;)
                          end
                          i32.const 0
                          local.get 2
                          i32.sub
                          call 85
                          drop
                          br 4 (;@7;)
                        end
                        local.get 0
                        local.set 7
                        local.get 0
                        i32.const -1
                        i32.ne
                        br_if 5 (;@5;)
                        br 3 (;@7;)
                      end
                      i32.const 0
                      local.set 8
                      br 7 (;@2;)
                    end
                    i32.const 0
                    local.set 7
                    br 5 (;@3;)
                  end
                  local.get 7
                  i32.const -1
                  i32.ne
                  br_if 2 (;@5;)
                end
                i32.const 0
                i32.const 0
                i32.load offset=15284
                i32.const 4
                i32.or
                i32.store offset=15284
              end
              local.get 8
              i32.const 2147483646
              i32.gt_u
              br_if 1 (;@4;)
              local.get 8
              call 85
              local.set 7
              i32.const 0
              call 85
              local.set 0
              local.get 7
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              local.get 0
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              local.get 7
              local.get 0
              i32.ge_u
              br_if 1 (;@4;)
              local.get 0
              local.get 7
              i32.sub
              local.tee 2
              local.get 3
              i32.const 40
              i32.add
              i32.le_u
              br_if 1 (;@4;)
            end
            i32.const 0
            i32.const 0
            i32.load offset=15272
            local.get 2
            i32.add
            local.tee 0
            i32.store offset=15272
            block  ;; label = @5
              local.get 0
              i32.const 0
              i32.load offset=15276
              i32.le_u
              br_if 0 (;@5;)
              i32.const 0
              local.get 0
              i32.store offset=15276
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=14864
                    local.tee 4
                    i32.eqz
                    br_if 0 (;@8;)
                    i32.const 15288
                    local.set 0
                    loop  ;; label = @9
                      local.get 7
                      local.get 0
                      i32.load
                      local.tee 5
                      local.get 0
                      i32.load offset=4
                      local.tee 8
                      i32.add
                      i32.eq
                      br_if 2 (;@7;)
                      local.get 0
                      i32.load offset=8
                      local.tee 0
                      br_if 0 (;@9;)
                      br 3 (;@6;)
                    end
                    unreachable
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=14856
                      local.tee 0
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 7
                      local.get 0
                      i32.ge_u
                      br_if 1 (;@8;)
                    end
                    i32.const 0
                    local.get 7
                    i32.store offset=14856
                  end
                  i32.const 0
                  local.set 0
                  i32.const 0
                  local.get 2
                  i32.store offset=15292
                  i32.const 0
                  local.get 7
                  i32.store offset=15288
                  i32.const 0
                  i32.const -1
                  i32.store offset=14872
                  i32.const 0
                  i32.const 0
                  i32.load offset=15312
                  i32.store offset=14876
                  i32.const 0
                  i32.const 0
                  i32.store offset=15300
                  loop  ;; label = @8
                    local.get 0
                    i32.const 3
                    i32.shl
                    local.tee 4
                    i32.const 14888
                    i32.add
                    local.get 4
                    i32.const 14880
                    i32.add
                    local.tee 5
                    i32.store
                    local.get 4
                    i32.const 14892
                    i32.add
                    local.get 5
                    i32.store
                    local.get 0
                    i32.const 1
                    i32.add
                    local.tee 0
                    i32.const 32
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  i32.const 0
                  local.get 2
                  i32.const -40
                  i32.add
                  local.tee 0
                  i32.const -8
                  local.get 7
                  i32.sub
                  i32.const 7
                  i32.and
                  i32.const 0
                  local.get 7
                  i32.const 8
                  i32.add
                  i32.const 7
                  i32.and
                  select
                  local.tee 4
                  i32.sub
                  local.tee 5
                  i32.store offset=14852
                  i32.const 0
                  local.get 7
                  local.get 4
                  i32.add
                  local.tee 4
                  i32.store offset=14864
                  local.get 4
                  local.get 5
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 7
                  local.get 0
                  i32.add
                  i32.const 40
                  i32.store offset=4
                  i32.const 0
                  i32.const 0
                  i32.load offset=15328
                  i32.store offset=14868
                  br 2 (;@5;)
                end
                local.get 0
                i32.load8_u offset=12
                i32.const 8
                i32.and
                br_if 0 (;@6;)
                local.get 4
                local.get 5
                i32.lt_u
                br_if 0 (;@6;)
                local.get 4
                local.get 7
                i32.ge_u
                br_if 0 (;@6;)
                local.get 0
                local.get 8
                local.get 2
                i32.add
                i32.store offset=4
                i32.const 0
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
                local.tee 5
                i32.store offset=14864
                i32.const 0
                i32.const 0
                i32.load offset=14852
                local.get 2
                i32.add
                local.tee 7
                local.get 0
                i32.sub
                local.tee 0
                i32.store offset=14852
                local.get 5
                local.get 0
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 4
                local.get 7
                i32.add
                i32.const 40
                i32.store offset=4
                i32.const 0
                i32.const 0
                i32.load offset=15328
                i32.store offset=14868
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 7
                i32.const 0
                i32.load offset=14856
                local.tee 8
                i32.ge_u
                br_if 0 (;@6;)
                i32.const 0
                local.get 7
                i32.store offset=14856
                local.get 7
                local.set 8
              end
              local.get 7
              local.get 2
              i32.add
              local.set 5
              i32.const 15288
              local.set 0
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            loop  ;; label = @13
                              local.get 0
                              i32.load
                              local.get 5
                              i32.eq
                              br_if 1 (;@12;)
                              local.get 0
                              i32.load offset=8
                              local.tee 0
                              br_if 0 (;@13;)
                              br 2 (;@11;)
                            end
                            unreachable
                          end
                          local.get 0
                          i32.load8_u offset=12
                          i32.const 8
                          i32.and
                          i32.eqz
                          br_if 1 (;@10;)
                        end
                        i32.const 15288
                        local.set 0
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.load
                            local.tee 5
                            local.get 4
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 5
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
                      local.get 7
                      i32.store
                      local.get 0
                      local.get 0
                      i32.load offset=4
                      local.get 2
                      i32.add
                      i32.store offset=4
                      local.get 7
                      i32.const -8
                      local.get 7
                      i32.sub
                      i32.const 7
                      i32.and
                      i32.const 0
                      local.get 7
                      i32.const 8
                      i32.add
                      i32.const 7
                      i32.and
                      select
                      i32.add
                      local.tee 11
                      local.get 3
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 5
                      i32.const -8
                      local.get 5
                      i32.sub
                      i32.const 7
                      i32.and
                      i32.const 0
                      local.get 5
                      i32.const 8
                      i32.add
                      i32.const 7
                      i32.and
                      select
                      i32.add
                      local.tee 2
                      local.get 11
                      local.get 3
                      i32.add
                      local.tee 3
                      i32.sub
                      local.set 5
                      block  ;; label = @10
                        local.get 2
                        local.get 4
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 3
                        i32.store offset=14864
                        i32.const 0
                        i32.const 0
                        i32.load offset=14852
                        local.get 5
                        i32.add
                        local.tee 0
                        i32.store offset=14852
                        local.get 3
                        local.get 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        br 3 (;@7;)
                      end
                      block  ;; label = @10
                        local.get 2
                        i32.const 0
                        i32.load offset=14860
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 3
                        i32.store offset=14860
                        i32.const 0
                        i32.const 0
                        i32.load offset=14848
                        local.get 5
                        i32.add
                        local.tee 0
                        i32.store offset=14848
                        local.get 3
                        local.get 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 3
                        local.get 0
                        i32.add
                        local.get 0
                        i32.store
                        br 3 (;@7;)
                      end
                      block  ;; label = @10
                        local.get 2
                        i32.load offset=4
                        local.tee 0
                        i32.const 3
                        i32.and
                        i32.const 1
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 0
                        i32.const -8
                        i32.and
                        local.set 6
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.const 255
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 2
                            i32.load offset=8
                            local.tee 4
                            local.get 0
                            i32.const 3
                            i32.shr_u
                            local.tee 8
                            i32.const 3
                            i32.shl
                            i32.const 14880
                            i32.add
                            local.tee 7
                            i32.eq
                            drop
                            block  ;; label = @13
                              local.get 2
                              i32.load offset=12
                              local.tee 0
                              local.get 4
                              i32.ne
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.const 0
                              i32.load offset=14840
                              i32.const -2
                              local.get 8
                              i32.rotl
                              i32.and
                              i32.store offset=14840
                              br 2 (;@11;)
                            end
                            local.get 0
                            local.get 7
                            i32.eq
                            drop
                            local.get 4
                            local.get 0
                            i32.store offset=12
                            local.get 0
                            local.get 4
                            i32.store offset=8
                            br 1 (;@11;)
                          end
                          local.get 2
                          i32.load offset=24
                          local.set 9
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 2
                              i32.load offset=12
                              local.tee 7
                              local.get 2
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 2
                              i32.load offset=8
                              local.tee 0
                              local.get 8
                              i32.lt_u
                              drop
                              local.get 0
                              local.get 7
                              i32.store offset=12
                              local.get 7
                              local.get 0
                              i32.store offset=8
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              local.get 2
                              i32.const 20
                              i32.add
                              local.tee 0
                              i32.load
                              local.tee 4
                              br_if 0 (;@13;)
                              local.get 2
                              i32.const 16
                              i32.add
                              local.tee 0
                              i32.load
                              local.tee 4
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 7
                              br 1 (;@12;)
                            end
                            loop  ;; label = @13
                              local.get 0
                              local.set 8
                              local.get 4
                              local.tee 7
                              i32.const 20
                              i32.add
                              local.tee 0
                              i32.load
                              local.tee 4
                              br_if 0 (;@13;)
                              local.get 7
                              i32.const 16
                              i32.add
                              local.set 0
                              local.get 7
                              i32.load offset=16
                              local.tee 4
                              br_if 0 (;@13;)
                            end
                            local.get 8
                            i32.const 0
                            i32.store
                          end
                          local.get 9
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 2
                              local.get 2
                              i32.load offset=28
                              local.tee 4
                              i32.const 2
                              i32.shl
                              i32.const 15144
                              i32.add
                              local.tee 0
                              i32.load
                              i32.ne
                              br_if 0 (;@13;)
                              local.get 0
                              local.get 7
                              i32.store
                              local.get 7
                              br_if 1 (;@12;)
                              i32.const 0
                              i32.const 0
                              i32.load offset=14844
                              i32.const -2
                              local.get 4
                              i32.rotl
                              i32.and
                              i32.store offset=14844
                              br 2 (;@11;)
                            end
                            local.get 9
                            i32.const 16
                            i32.const 20
                            local.get 9
                            i32.load offset=16
                            local.get 2
                            i32.eq
                            select
                            i32.add
                            local.get 7
                            i32.store
                            local.get 7
                            i32.eqz
                            br_if 1 (;@11;)
                          end
                          local.get 7
                          local.get 9
                          i32.store offset=24
                          block  ;; label = @12
                            local.get 2
                            i32.load offset=16
                            local.tee 0
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 7
                            local.get 0
                            i32.store offset=16
                            local.get 0
                            local.get 7
                            i32.store offset=24
                          end
                          local.get 2
                          i32.load offset=20
                          local.tee 0
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 7
                          i32.const 20
                          i32.add
                          local.get 0
                          i32.store
                          local.get 0
                          local.get 7
                          i32.store offset=24
                        end
                        local.get 6
                        local.get 5
                        i32.add
                        local.set 5
                        local.get 2
                        local.get 6
                        i32.add
                        local.tee 2
                        i32.load offset=4
                        local.set 0
                      end
                      local.get 2
                      local.get 0
                      i32.const -2
                      i32.and
                      i32.store offset=4
                      local.get 3
                      local.get 5
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 3
                      local.get 5
                      i32.add
                      local.get 5
                      i32.store
                      block  ;; label = @10
                        local.get 5
                        i32.const 255
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 5
                        i32.const 3
                        i32.shr_u
                        local.tee 4
                        i32.const 3
                        i32.shl
                        i32.const 14880
                        i32.add
                        local.set 0
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=14840
                            local.tee 5
                            i32.const 1
                            local.get 4
                            i32.shl
                            local.tee 4
                            i32.and
                            br_if 0 (;@12;)
                            i32.const 0
                            local.get 5
                            local.get 4
                            i32.or
                            i32.store offset=14840
                            local.get 0
                            local.set 4
                            br 1 (;@11;)
                          end
                          local.get 0
                          i32.load offset=8
                          local.set 4
                        end
                        local.get 0
                        local.get 3
                        i32.store offset=8
                        local.get 4
                        local.get 3
                        i32.store offset=12
                        local.get 3
                        local.get 0
                        i32.store offset=12
                        local.get 3
                        local.get 4
                        i32.store offset=8
                        br 3 (;@7;)
                      end
                      i32.const 31
                      local.set 0
                      block  ;; label = @10
                        local.get 5
                        i32.const 16777215
                        i32.gt_u
                        br_if 0 (;@10;)
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
                        local.tee 0
                        i32.shl
                        local.tee 4
                        local.get 4
                        i32.const 520192
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 4
                        i32.and
                        local.tee 4
                        i32.shl
                        local.tee 7
                        local.get 7
                        i32.const 245760
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 2
                        i32.and
                        local.tee 7
                        i32.shl
                        i32.const 15
                        i32.shr_u
                        local.get 0
                        local.get 4
                        i32.or
                        local.get 7
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
                      local.get 3
                      local.get 0
                      i32.store offset=28
                      local.get 3
                      i64.const 0
                      i64.store offset=16 align=4
                      local.get 0
                      i32.const 2
                      i32.shl
                      i32.const 15144
                      i32.add
                      local.set 4
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=14844
                          local.tee 7
                          i32.const 1
                          local.get 0
                          i32.shl
                          local.tee 8
                          i32.and
                          br_if 0 (;@11;)
                          i32.const 0
                          local.get 7
                          local.get 8
                          i32.or
                          i32.store offset=14844
                          local.get 4
                          local.get 3
                          i32.store
                          local.get 3
                          local.get 4
                          i32.store offset=24
                          br 1 (;@10;)
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
                        local.get 4
                        i32.load
                        local.set 7
                        loop  ;; label = @11
                          local.get 7
                          local.tee 4
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          local.get 5
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 0
                          i32.const 29
                          i32.shr_u
                          local.set 7
                          local.get 0
                          i32.const 1
                          i32.shl
                          local.set 0
                          local.get 4
                          local.get 7
                          i32.const 4
                          i32.and
                          i32.add
                          i32.const 16
                          i32.add
                          local.tee 8
                          i32.load
                          local.tee 7
                          br_if 0 (;@11;)
                        end
                        local.get 8
                        local.get 3
                        i32.store
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
                      br 2 (;@7;)
                    end
                    i32.const 0
                    local.get 2
                    i32.const -40
                    i32.add
                    local.tee 0
                    i32.const -8
                    local.get 7
                    i32.sub
                    i32.const 7
                    i32.and
                    i32.const 0
                    local.get 7
                    i32.const 8
                    i32.add
                    i32.const 7
                    i32.and
                    select
                    local.tee 8
                    i32.sub
                    local.tee 11
                    i32.store offset=14852
                    i32.const 0
                    local.get 7
                    local.get 8
                    i32.add
                    local.tee 8
                    i32.store offset=14864
                    local.get 8
                    local.get 11
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 7
                    local.get 0
                    i32.add
                    i32.const 40
                    i32.store offset=4
                    i32.const 0
                    i32.const 0
                    i32.load offset=15328
                    i32.store offset=14868
                    local.get 4
                    local.get 5
                    i32.const 39
                    local.get 5
                    i32.sub
                    i32.const 7
                    i32.and
                    i32.const 0
                    local.get 5
                    i32.const -39
                    i32.add
                    i32.const 7
                    i32.and
                    select
                    i32.add
                    i32.const -47
                    i32.add
                    local.tee 0
                    local.get 0
                    local.get 4
                    i32.const 16
                    i32.add
                    i32.lt_u
                    select
                    local.tee 8
                    i32.const 27
                    i32.store offset=4
                    local.get 8
                    i32.const 16
                    i32.add
                    i32.const 0
                    i64.load offset=15296 align=4
                    i64.store align=4
                    local.get 8
                    i32.const 0
                    i64.load offset=15288 align=4
                    i64.store offset=8 align=4
                    i32.const 0
                    local.get 8
                    i32.const 8
                    i32.add
                    i32.store offset=15296
                    i32.const 0
                    local.get 2
                    i32.store offset=15292
                    i32.const 0
                    local.get 7
                    i32.store offset=15288
                    i32.const 0
                    i32.const 0
                    i32.store offset=15300
                    local.get 8
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
                      local.set 7
                      local.get 0
                      i32.const 4
                      i32.add
                      local.set 0
                      local.get 7
                      local.get 5
                      i32.lt_u
                      br_if 0 (;@9;)
                    end
                    local.get 8
                    local.get 4
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 8
                    local.get 8
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get 4
                    local.get 8
                    local.get 4
                    i32.sub
                    local.tee 2
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 8
                    local.get 2
                    i32.store
                    block  ;; label = @9
                      local.get 2
                      i32.const 255
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 2
                      i32.const 3
                      i32.shr_u
                      local.tee 5
                      i32.const 3
                      i32.shl
                      i32.const 14880
                      i32.add
                      local.set 0
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=14840
                          local.tee 7
                          i32.const 1
                          local.get 5
                          i32.shl
                          local.tee 5
                          i32.and
                          br_if 0 (;@11;)
                          i32.const 0
                          local.get 7
                          local.get 5
                          i32.or
                          i32.store offset=14840
                          local.get 0
                          local.set 5
                          br 1 (;@10;)
                        end
                        local.get 0
                        i32.load offset=8
                        local.set 5
                      end
                      local.get 0
                      local.get 4
                      i32.store offset=8
                      local.get 5
                      local.get 4
                      i32.store offset=12
                      local.get 4
                      local.get 0
                      i32.store offset=12
                      local.get 4
                      local.get 5
                      i32.store offset=8
                      br 4 (;@5;)
                    end
                    i32.const 31
                    local.set 0
                    block  ;; label = @9
                      local.get 2
                      i32.const 16777215
                      i32.gt_u
                      br_if 0 (;@9;)
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
                      local.tee 0
                      i32.shl
                      local.tee 5
                      local.get 5
                      i32.const 520192
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 4
                      i32.and
                      local.tee 5
                      i32.shl
                      local.tee 7
                      local.get 7
                      i32.const 245760
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 2
                      i32.and
                      local.tee 7
                      i32.shl
                      i32.const 15
                      i32.shr_u
                      local.get 0
                      local.get 5
                      i32.or
                      local.get 7
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
                    local.get 4
                    local.get 0
                    i32.store offset=28
                    local.get 4
                    i64.const 0
                    i64.store offset=16 align=4
                    local.get 0
                    i32.const 2
                    i32.shl
                    i32.const 15144
                    i32.add
                    local.set 5
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=14844
                        local.tee 7
                        i32.const 1
                        local.get 0
                        i32.shl
                        local.tee 8
                        i32.and
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 7
                        local.get 8
                        i32.or
                        i32.store offset=14844
                        local.get 5
                        local.get 4
                        i32.store
                        local.get 4
                        local.get 5
                        i32.store offset=24
                        br 1 (;@9;)
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
                      local.set 7
                      loop  ;; label = @10
                        local.get 7
                        local.tee 5
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 2
                        i32.eq
                        br_if 4 (;@6;)
                        local.get 0
                        i32.const 29
                        i32.shr_u
                        local.set 7
                        local.get 0
                        i32.const 1
                        i32.shl
                        local.set 0
                        local.get 5
                        local.get 7
                        i32.const 4
                        i32.and
                        i32.add
                        i32.const 16
                        i32.add
                        local.tee 8
                        i32.load
                        local.tee 7
                        br_if 0 (;@10;)
                      end
                      local.get 8
                      local.get 4
                      i32.store
                      local.get 4
                      local.get 5
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
                local.get 11
                i32.const 8
                i32.add
                local.set 0
                br 5 (;@1;)
              end
              local.get 5
              i32.load offset=8
              local.tee 0
              local.get 4
              i32.store offset=12
              local.get 5
              local.get 4
              i32.store offset=8
              local.get 4
              i32.const 0
              i32.store offset=24
              local.get 4
              local.get 5
              i32.store offset=12
              local.get 4
              local.get 0
              i32.store offset=8
            end
            i32.const 0
            i32.load offset=14852
            local.tee 0
            local.get 3
            i32.le_u
            br_if 0 (;@4;)
            i32.const 0
            local.get 0
            local.get 3
            i32.sub
            local.tee 4
            i32.store offset=14852
            i32.const 0
            i32.const 0
            i32.load offset=14864
            local.tee 0
            local.get 3
            i32.add
            local.tee 5
            i32.store offset=14864
            local.get 5
            local.get 4
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 0
            i32.const 8
            i32.add
            local.set 0
            br 3 (;@1;)
          end
          call 22
          i32.const 48
          i32.store
          i32.const 0
          local.set 0
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 11
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 8
              local.get 8
              i32.load offset=28
              local.tee 5
              i32.const 2
              i32.shl
              i32.const 15144
              i32.add
              local.tee 0
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 0
              local.get 7
              i32.store
              local.get 7
              br_if 1 (;@4;)
              i32.const 0
              local.get 6
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              local.tee 6
              i32.store offset=14844
              br 2 (;@3;)
            end
            local.get 11
            i32.const 16
            i32.const 20
            local.get 11
            i32.load offset=16
            local.get 8
            i32.eq
            select
            i32.add
            local.get 7
            i32.store
            local.get 7
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 7
          local.get 11
          i32.store offset=24
          block  ;; label = @4
            local.get 8
            i32.load offset=16
            local.tee 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 7
            local.get 0
            i32.store offset=16
            local.get 0
            local.get 7
            i32.store offset=24
          end
          local.get 8
          i32.const 20
          i32.add
          i32.load
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          i32.const 20
          i32.add
          local.get 0
          i32.store
          local.get 0
          local.get 7
          i32.store offset=24
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
            local.get 8
            local.get 4
            local.get 3
            i32.add
            local.tee 0
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 8
            local.get 0
            i32.add
            local.tee 0
            local.get 0
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@3;)
          end
          local.get 8
          local.get 3
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 8
          local.get 3
          i32.add
          local.tee 7
          local.get 4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 7
          local.get 4
          i32.add
          local.get 4
          i32.store
          block  ;; label = @4
            local.get 4
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 4
            i32.const 3
            i32.shr_u
            local.tee 4
            i32.const 3
            i32.shl
            i32.const 14880
            i32.add
            local.set 0
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=14840
                local.tee 5
                i32.const 1
                local.get 4
                i32.shl
                local.tee 4
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 5
                local.get 4
                i32.or
                i32.store offset=14840
                local.get 0
                local.set 4
                br 1 (;@5;)
              end
              local.get 0
              i32.load offset=8
              local.set 4
            end
            local.get 0
            local.get 7
            i32.store offset=8
            local.get 4
            local.get 7
            i32.store offset=12
            local.get 7
            local.get 0
            i32.store offset=12
            local.get 7
            local.get 4
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 31
          local.set 0
          block  ;; label = @4
            local.get 4
            i32.const 16777215
            i32.gt_u
            br_if 0 (;@4;)
            local.get 4
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
            local.tee 0
            i32.shl
            local.tee 5
            local.get 5
            i32.const 520192
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 4
            i32.and
            local.tee 5
            i32.shl
            local.tee 3
            local.get 3
            i32.const 245760
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 2
            i32.and
            local.tee 3
            i32.shl
            i32.const 15
            i32.shr_u
            local.get 0
            local.get 5
            i32.or
            local.get 3
            i32.or
            i32.sub
            local.tee 0
            i32.const 1
            i32.shl
            local.get 4
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
          local.get 7
          local.get 0
          i32.store offset=28
          local.get 7
          i64.const 0
          i64.store offset=16 align=4
          local.get 0
          i32.const 2
          i32.shl
          i32.const 15144
          i32.add
          local.set 5
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 6
                i32.const 1
                local.get 0
                i32.shl
                local.tee 3
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 6
                local.get 3
                i32.or
                i32.store offset=14844
                local.get 5
                local.get 7
                i32.store
                local.get 7
                local.get 5
                i32.store offset=24
                br 1 (;@5;)
              end
              local.get 4
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
              local.set 3
              loop  ;; label = @6
                local.get 3
                local.tee 5
                i32.load offset=4
                i32.const -8
                i32.and
                local.get 4
                i32.eq
                br_if 2 (;@4;)
                local.get 0
                i32.const 29
                i32.shr_u
                local.set 3
                local.get 0
                i32.const 1
                i32.shl
                local.set 0
                local.get 5
                local.get 3
                i32.const 4
                i32.and
                i32.add
                i32.const 16
                i32.add
                local.tee 2
                i32.load
                local.tee 3
                br_if 0 (;@6;)
              end
              local.get 2
              local.get 7
              i32.store
              local.get 7
              local.get 5
              i32.store offset=24
            end
            local.get 7
            local.get 7
            i32.store offset=12
            local.get 7
            local.get 7
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 5
          i32.load offset=8
          local.tee 0
          local.get 7
          i32.store offset=12
          local.get 5
          local.get 7
          i32.store offset=8
          local.get 7
          i32.const 0
          i32.store offset=24
          local.get 7
          local.get 5
          i32.store offset=12
          local.get 7
          local.get 0
          i32.store offset=8
        end
        local.get 8
        i32.const 8
        i32.add
        local.set 0
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 10
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 7
            local.get 7
            i32.load offset=28
            local.tee 5
            i32.const 2
            i32.shl
            i32.const 15144
            i32.add
            local.tee 0
            i32.load
            i32.ne
            br_if 0 (;@4;)
            local.get 0
            local.get 8
            i32.store
            local.get 8
            br_if 1 (;@3;)
            i32.const 0
            local.get 9
            i32.const -2
            local.get 5
            i32.rotl
            i32.and
            i32.store offset=14844
            br 2 (;@2;)
          end
          local.get 10
          i32.const 16
          i32.const 20
          local.get 10
          i32.load offset=16
          local.get 7
          i32.eq
          select
          i32.add
          local.get 8
          i32.store
          local.get 8
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 8
        local.get 10
        i32.store offset=24
        block  ;; label = @3
          local.get 7
          i32.load offset=16
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          local.get 0
          i32.store offset=16
          local.get 0
          local.get 8
          i32.store offset=24
        end
        local.get 7
        i32.const 20
        i32.add
        i32.load
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        i32.const 20
        i32.add
        local.get 0
        i32.store
        local.get 0
        local.get 8
        i32.store offset=24
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 7
          local.get 4
          local.get 3
          i32.add
          local.tee 0
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 7
          local.get 0
          i32.add
          local.tee 0
          local.get 0
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 7
        local.get 3
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 7
        local.get 3
        i32.add
        local.tee 5
        local.get 4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 5
        local.get 4
        i32.add
        local.get 4
        i32.store
        block  ;; label = @3
          local.get 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          i32.const 3
          i32.shr_u
          local.tee 8
          i32.const 3
          i32.shl
          i32.const 14880
          i32.add
          local.set 3
          i32.const 0
          i32.load offset=14860
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              i32.const 1
              local.get 8
              i32.shl
              local.tee 8
              local.get 2
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.get 8
              local.get 2
              i32.or
              i32.store offset=14840
              local.get 3
              local.set 8
              br 1 (;@4;)
            end
            local.get 3
            i32.load offset=8
            local.set 8
          end
          local.get 3
          local.get 0
          i32.store offset=8
          local.get 8
          local.get 0
          i32.store offset=12
          local.get 0
          local.get 3
          i32.store offset=12
          local.get 0
          local.get 8
          i32.store offset=8
        end
        i32.const 0
        local.get 5
        i32.store offset=14860
        i32.const 0
        local.get 4
        i32.store offset=14848
      end
      local.get 7
      i32.const 8
      i32.add
      local.set 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;84;) (type 3) (result i32)
    memory.size
    i32.const 16
    i32.shl)
  (func (;85;) (type 1) (param i32) (result i32)
    (local i32 i32)
    i32.const 0
    i32.load offset=3176
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
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.le_u
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        call 84
        i32.le_u
        br_if 0 (;@2;)
        local.get 0
        call 7
        i32.eqz
        br_if 1 (;@1;)
      end
      i32.const 0
      local.get 0
      i32.store offset=3176
      local.get 1
      return
    end
    call 22
    i32.const 48
    i32.store
    i32.const -1)
  (func (;86;) (type 15) (param i32 i64 i64 i32)
    (local i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 64
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        i32.const -64
        i32.add
        i64.extend_i32_u
        i64.shl
        local.set 2
        i64.const 0
        local.set 1
        br 1 (;@1;)
      end
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 64
      local.get 3
      i32.sub
      i64.extend_i32_u
      i64.shr_u
      local.get 2
      local.get 3
      i64.extend_i32_u
      local.tee 4
      i64.shl
      i64.or
      local.set 2
      local.get 1
      local.get 4
      i64.shl
      local.set 1
    end
    local.get 0
    local.get 1
    i64.store
    local.get 0
    local.get 2
    i64.store offset=8)
  (func (;87;) (type 15) (param i32 i64 i64 i32)
    (local i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 64
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        i32.const -64
        i32.add
        i64.extend_i32_u
        i64.shr_u
        local.set 1
        i64.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 64
      local.get 3
      i32.sub
      i64.extend_i32_u
      i64.shl
      local.get 1
      local.get 3
      i64.extend_i32_u
      local.tee 4
      i64.shr_u
      i64.or
      local.set 1
      local.get 2
      local.get 4
      i64.shr_u
      local.set 2
    end
    local.get 0
    local.get 1
    i64.store
    local.get 0
    local.get 2
    i64.store offset=8)
  (func (;88;) (type 21) (param i64 i64) (result f64)
    (local i32 i32 i64 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i64.const 9223372036854775807
        i64.and
        local.tee 4
        i64.const -4323737117252386816
        i64.add
        local.get 4
        i64.const -4899634919602388992
        i64.add
        i64.ge_u
        br_if 0 (;@2;)
        local.get 0
        i64.const 60
        i64.shr_u
        local.get 1
        i64.const 4
        i64.shl
        i64.or
        local.set 4
        block  ;; label = @3
          local.get 0
          i64.const 1152921504606846975
          i64.and
          local.tee 0
          i64.const 576460752303423489
          i64.lt_u
          br_if 0 (;@3;)
          local.get 4
          i64.const 4611686018427387905
          i64.add
          local.set 5
          br 2 (;@1;)
        end
        local.get 4
        i64.const 4611686018427387904
        i64.add
        local.set 5
        local.get 0
        i64.const 576460752303423488
        i64.ne
        br_if 1 (;@1;)
        local.get 5
        local.get 4
        i64.const 1
        i64.and
        i64.add
        local.set 5
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i64.eqz
        local.get 4
        i64.const 9223090561878065152
        i64.lt_u
        local.get 4
        i64.const 9223090561878065152
        i64.eq
        select
        br_if 0 (;@2;)
        local.get 0
        i64.const 60
        i64.shr_u
        local.get 1
        i64.const 4
        i64.shl
        i64.or
        i64.const 2251799813685247
        i64.and
        i64.const 9221120237041090560
        i64.or
        local.set 5
        br 1 (;@1;)
      end
      i64.const 9218868437227405312
      local.set 5
      local.get 4
      i64.const 4899634919602388991
      i64.gt_u
      br_if 0 (;@1;)
      i64.const 0
      local.set 5
      local.get 4
      i64.const 48
      i64.shr_u
      i32.wrap_i64
      local.tee 3
      i32.const 15249
      i32.lt_u
      br_if 0 (;@1;)
      local.get 2
      i32.const 16
      i32.add
      local.get 0
      local.get 1
      i64.const 281474976710655
      i64.and
      i64.const 281474976710656
      i64.or
      local.tee 4
      local.get 3
      i32.const -15233
      i32.add
      call 86
      local.get 2
      local.get 0
      local.get 4
      i32.const 15361
      local.get 3
      i32.sub
      call 87
      local.get 2
      i64.load
      local.tee 4
      i64.const 60
      i64.shr_u
      local.get 2
      i32.const 8
      i32.add
      i64.load
      i64.const 4
      i64.shl
      i64.or
      local.set 5
      block  ;; label = @2
        local.get 4
        i64.const 1152921504606846975
        i64.and
        local.get 2
        i64.load offset=16
        local.get 2
        i32.const 16
        i32.add
        i32.const 8
        i32.add
        i64.load
        i64.or
        i64.const 0
        i64.ne
        i64.extend_i32_u
        i64.or
        local.tee 4
        i64.const 576460752303423489
        i64.lt_u
        br_if 0 (;@2;)
        local.get 5
        i64.const 1
        i64.add
        local.set 5
        br 1 (;@1;)
      end
      local.get 4
      i64.const 576460752303423488
      i64.ne
      br_if 0 (;@1;)
      local.get 5
      i64.const 1
      i64.and
      local.get 5
      i64.add
      local.set 5
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 5
    local.get 1
    i64.const -9223372036854775808
    i64.and
    i64.or
    f64.reinterpret_i64)
  (func (;89;) (type 3) (result i32)
    global.get 0)
  (func (;90;) (type 8) (param i32)
    local.get 0
    global.set 0)
  (func (;91;) (type 1) (param i32) (result i32)
    (local i32 i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 1
    global.set 0
    local.get 1)
  (func (;92;) (type 22) (param i32 i32 i64 i32) (result i64)
    local.get 1
    local.get 2
    local.get 3
    local.get 0
    call_indirect (type 11))
  (func (;93;) (type 12) (param i32 i32 i32 i32 i32) (result i32)
    (local i64)
    local.get 0
    local.get 1
    local.get 2
    i64.extend_i32_u
    local.get 3
    i64.extend_i32_u
    i64.const 32
    i64.shl
    i64.or
    local.get 4
    call 92
    local.set 5
    local.get 5
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    call 8
    local.get 5
    i32.wrap_i64)
  (table (;0;) 7 7 funcref)
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 5258224))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 9))
  (export "main" (func 13))
  (export "malloc" (func 83))
  (export "__errno_location" (func 22))
  (export "__indirect_function_table" (table 0))
  (export "stackSave" (func 89))
  (export "stackRestore" (func 90))
  (export "stackAlloc" (func 91))
  (export "dynCall_jiji" (func 93))
  (elem (;0;) (i32.const 1) func 53 52 54 73 74 79)
  (data (;0;) (i32.const 1024) "-+   0X0x\00-0X+0X 0X-0x+0x 0x\00Measured time too small to obtain meaningful results\00Please increase number of runs\00  Ptr_Comp:       *    %p\00nan\00inf\00 same as above\00Optimised\00NAN\00ASCII\00DHRYSTONE PROGRAM, 1'ST STRING\00DHRYSTONE PROGRAM, SOME STRING\00DHRYSTONE PROGRAM, 3'RD STRING\00DHRYSTONE PROGRAM, 2'ND STRING\00INF\00C\00Final values (* implementation-dependent):\00UTF-8\00Register option  Not selected.\00(null)\00Dhrystone Benchmark, Version 2.1 (Language: C or C++)\00%d \00WRONG \00Arr_1_Glob[8]: \00Arr_2_Glob8/7: \00%d  \00%c  \00O.K.  \00  Int_Comp:    \00Enum_Comp:     \00Int_3_Loc:     \00Int_2_Loc:     \00Int_1_Loc:     \00Bool_Glob:     \00Ch_2_Glob:     \00Ch_1_Glob:     \00Str_Comp:      \00Enum_Loc:      \00Int_Glob:      \00Next_Ptr_Glob->       \00  Discr:       \00Ptr_Glob->            \00Str_2_Loc:                             \00Str_1_Loc:                             \00Optimisation    %s\0a\00  Ptr_Comp:       *    %p\0a\00Nanoseconds one Dhrystone run: %12.2lf\0a\00VAX  MIPS rating =             %12.2lf\0a\00Dhrystones per Second:         %12.0lf\0a\00Register option not selected\0a\00%10d\0a\00%.3s %.3s%3d %.2d:%.2d:%.2d %d\0a\00%c\0a\00%12.0f runs %6.2f seconds \0a\00%d  \0a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00.\00\00\00\00\00\00\00Sun\00Mon\00Tue\00Wed\00Thu\00Fri\00Sat\00Sunday\00Monday\00Tuesday\00Wednesday\00Thursday\00Friday\00Saturday\00Jan\00Feb\00Mar\00Apr\00May\00Jun\00Jul\00Aug\00Sep\00Oct\00Nov\00Dec\00January\00February\00March\00April\00May\00June\00July\00August\00September\00October\00November\00December\00AM\00PM\00%a %b %e %T %Y\00%m/%d/%y\00%H:%M:%S\00%I:%M:%S %p\00\00\00%m/%d/%y\000123456789\00%a %b %e %T %Y\00%H:%M:%S\00\00\00\00\00^[yY]\00^[nN]\00yes\00no\00\00\00\00\00\00\00\00\00\00\00\00\00\00\19\00\0a\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\11\0a\19\19\19\03\0a\07\00\01\00\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\19\00\0a\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\000123456789ABCDEF")
  (data (;1;) (i32.const 2992) "Register option      Selected.\00\00\00\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\03\00\00\00\f85\00\00\00\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0;P\00"))
