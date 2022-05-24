(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32 i32 i32)))
  (type (;4;) (func))
  (type (;5;) (func (param i32 i32) (result i32)))
  (type (;6;) (func (result i32)))
  (type (;7;) (func (param i32)))
  (type (;8;) (func (param i32 i64 i32) (result i64)))
  (type (;9;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;10;) (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type (;11;) (func (result f64)))
  (type (;12;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (param f64 i32) (result f64)))
  (type (;14;) (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;15;) (func (param i32 i32 i32 i32)))
  (type (;16;) (func (param i64 i32) (result i32)))
  (type (;17;) (func (param i32 i32 i32 i32 i32)))
  (import "env" "_tzset_js" (func (;0;) (type 3)))
  (import "env" "_localtime_js" (func (;1;) (type 2)))
  (import "env" "_emscripten_date_now" (func (;2;) (type 11)))
  (import "env" "_emscripten_get_now_is_monotonic" (func (;3;) (type 6)))
  (import "env" "emscripten_memcpy_big" (func (;4;) (type 3)))
  (import "wasi_snapshot_preview1" "fd_write" (func (;5;) (type 12)))
  (import "env" "emscripten_resize_heap" (func (;6;) (type 0)))
  (import "env" "setTempRet0" (func (;7;) (type 7)))
  (func (;8;) (type 4)
    i32.const 13776
    i32.const 13664
    i32.store
    i32.const 13704
    i32.const 42
    i32.store)
  (func (;9;) (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 f64 i64)
    global.get 0
    i32.const 448
    i32.sub
    local.tee 2
    global.set 0
    i32.const 3252
    i32.const 48
    call 43
    local.tee 1
    i32.store
    i32.const 3256
    i32.const 48
    call 43
    local.tee 3
    i32.store
    local.get 3
    i32.const 40
    i32.store offset=12
    local.get 3
    i64.const 8589934592
    i64.store offset=4 align=4
    local.get 3
    local.get 1
    i32.store
    local.get 3
    i32.const 1237
    i64.load align=1
    i64.store offset=16 align=1
    local.get 3
    i32.const 1245
    i64.load align=1
    i64.store offset=24 align=1
    local.get 3
    i32.const 1253
    i64.load align=1
    i64.store offset=32 align=1
    local.get 3
    i32.const 1260
    i64.load align=1
    i64.store offset=39 align=1
    i32.const 4892
    i32.const 10
    i32.store
    local.get 2
    i32.const 1222
    i64.load align=1
    i64.store offset=416
    local.get 2
    i32.const 1229
    i64.load align=1
    i64.store offset=423 align=1
    local.get 2
    i32.const 1206
    i64.load align=1
    i64.store offset=400
    local.get 2
    i32.const 1214
    i64.load align=1
    i64.store offset=408
    i32.const 1423
    call 24
    call 21
    local.get 2
    i32.const 1186
    i32.store offset=352
    i32.const 1855
    local.get 2
    i32.const 352
    i32.add
    call 16
    i32.const 2022
    call 24
    i32.const 3015
    i32.const 1408
    i64.load align=1
    i64.store align=1
    i32.const 3008
    i32.const 1401
    i64.load align=1
    i64.store
    i32.const 3000
    i32.const 1393
    i64.load align=1
    i64.store
    i32.const 2992
    i32.const 1385
    i64.load align=1
    i64.store
    i32.const 5000
    local.set 4
    i32.const 10
    local.set 8
    loop  ;; label = @1
      i32.const 4892
      i32.const 10
      i32.store
      local.get 4
      i32.const 1
      i32.shl
      local.set 5
      call 13
      i32.const 3184
      i32.const 3236
      i32.load
      f64.convert_i32_s
      f64.const 1000000000.
      f64.div
      i32.const 3232
      i32.load
      f64.convert_i32_s
      f64.add
      local.tee 19
      f64.store
      i32.const 3192
      local.get 19
      f64.store
      local.get 4
      i32.const 0
      i32.gt_s
      if  ;; label = @2
        i32.const 1
        local.set 1
        local.get 5
        i32.const 1
        local.get 5
        i32.const 1
        i32.gt_s
        select
        local.set 10
        loop  ;; label = @3
          i32.const 0
          local.set 6
          i32.const 13264
          i32.const 1
          i32.store
          i32.const 13496
          i32.const 65
          i32.store8
          i32.const 13480
          i32.const 66
          i32.store8
          local.get 2
          i32.const 384
          i32.add
          local.tee 7
          i32.const 1315
          i64.load align=1
          i64.store
          local.get 2
          i32.const 391
          i32.add
          local.tee 11
          i32.const 1322
          i64.load align=1
          i64.store align=1
          local.get 2
          i32.const 1
          i32.store offset=440
          local.get 2
          i32.const 1299
          i64.load align=1
          i64.store offset=368
          local.get 2
          i32.const 1307
          i64.load align=1
          i64.store offset=376
          local.get 2
          i32.const 400
          i32.add
          local.tee 3
          i32.load8_u offset=2
          local.tee 0
          local.get 2
          i32.const 368
          i32.add
          local.tee 9
          i32.load8_u offset=3
          i32.eq
          if  ;; label = @4
            i32.const 13496
            local.get 0
            i32.store8
            loop  ;; label = @5
              br 0 (;@5;)
            end
            unreachable
          end
          i32.const 13264
          local.get 3
          local.get 9
          call 28
          i32.const 0
          i32.gt_s
          if (result i32)  ;; label = @4
            i32.const 13484
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
          i32.const 2
          i32.const 3
          local.get 2
          i32.const 444
          i32.add
          call 11
          i32.const 13312
          local.get 2
          i32.load offset=444
          local.tee 0
          i32.store
          i32.const 13316
          local.get 0
          i32.store
          i32.const 13432
          i32.const 8
          i32.store
          i32.const 4896
          i32.const 8
          i32.store
          i32.const 4900
          i32.const 8
          i32.store
          i32.const 4892
          i32.const 4892
          i32.load
          i32.const 1
          i32.add
          i32.store
          i32.const 8896
          i32.const 13312
          i32.load
          i32.store
          i32.const 13484
          i32.const 5
          i32.store
          i32.const 3256
          i32.load
          local.tee 0
          i32.load
          local.tee 3
          local.get 0
          i64.load align=4
          i64.store align=4
          local.get 3
          local.get 0
          i32.const 40
          i32.add
          local.tee 9
          i64.load align=4
          i64.store offset=40 align=4
          local.get 3
          local.get 0
          i32.const 32
          i32.add
          local.tee 12
          i64.load align=4
          i64.store offset=32 align=4
          local.get 3
          local.get 0
          i32.const 24
          i32.add
          local.tee 13
          i64.load align=4
          i64.store offset=24 align=4
          local.get 3
          local.get 0
          i32.const 16
          i32.add
          local.tee 14
          i64.load align=4
          i64.store offset=16 align=4
          local.get 3
          i32.const 8
          i32.add
          local.tee 15
          local.get 0
          i32.const 8
          i32.add
          local.tee 16
          i64.load align=4
          i64.store align=4
          local.get 0
          i32.const 5
          i32.store offset=12
          local.get 3
          i32.const 12
          i32.add
          local.tee 17
          i32.const 5
          i32.store
          local.get 3
          local.get 0
          i32.load
          i32.store
          i32.const 3256
          i32.load
          local.tee 18
          if  ;; label = @4
            local.get 3
            local.get 18
            i32.load
            i32.store
            i32.const 3256
            i32.load
            local.set 6
          end
          i32.const 10
          i32.const 13484
          i32.load
          local.get 6
          i32.const 12
          i32.add
          call 11
          block  ;; label = @4
            local.get 3
            i32.load offset=4
            i32.eqz
            if  ;; label = @5
              local.get 3
              i32.const 6
              i32.store offset=12
              local.get 0
              i32.load offset=8
              local.get 15
              call 10
              local.get 3
              i32.const 3256
              i32.load
              i32.load
              i32.store
              local.get 3
              i32.load offset=12
              i32.const 10
              local.get 17
              call 11
              br 1 (;@4;)
            end
            local.get 0
            local.get 0
            i32.load
            local.tee 3
            i64.load align=4
            i64.store align=4
            local.get 16
            local.get 3
            i64.load offset=8 align=4
            i64.store align=4
            local.get 14
            local.get 3
            i64.load offset=16 align=4
            i64.store align=4
            local.get 13
            local.get 3
            i64.load offset=24 align=4
            i64.store align=4
            local.get 12
            local.get 3
            i64.load offset=32 align=4
            i64.store align=4
            local.get 9
            local.get 3
            i64.load offset=40 align=4
            i64.store align=4
          end
          i32.const 65
          local.set 3
          i32.const 3
          local.set 0
          i32.const 13480
          i32.load8_s
          i32.const 65
          i32.ge_s
          if  ;; label = @4
            loop  ;; label = @5
              local.get 2
              i32.load offset=440
              local.get 3
              i32.const 24
              i32.shl
              local.tee 3
              i32.const 24
              i32.shr_s
              local.tee 6
              i32.const 67
              i32.eq
              if (result i32)  ;; label = @6
                i32.const 13496
                local.get 6
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
                call 10
                i32.const 13484
                local.get 1
                i32.store
                local.get 11
                i32.const 1291
                i64.load align=1
                i64.store align=1
                local.get 7
                i32.const 1284
                i64.load align=1
                i64.store
                local.get 2
                i32.const 1276
                i64.load align=1
                i64.store offset=376
                local.get 2
                i32.const 1268
                i64.load align=1
                i64.store offset=368
                local.get 1
                local.set 0
              end
              local.get 3
              i32.const 16777216
              i32.add
              i32.const 24
              i32.shr_s
              local.tee 3
              i32.const 13480
              i32.load8_s
              i32.le_s
              br_if 0 (;@5;)
            end
          end
          local.get 1
          local.get 10
          i32.ne
          local.set 3
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 3
          br_if 0 (;@3;)
        end
        local.get 0
        i32.const 3
        i32.mul
        local.tee 1
        local.get 2
        i32.load offset=444
        local.tee 0
        i32.div_s
        local.tee 3
        i32.const 13484
        i32.load
        i32.sub
        i32.const 9
        i32.add
        local.get 3
        i32.const 13496
        i32.load8_u
        i32.const 65
        i32.eq
        select
        local.set 7
        local.get 1
        local.get 0
        i32.sub
        i32.const 7
        i32.mul
        local.get 3
        i32.sub
        local.set 1
      end
      call 13
      i32.const 3184
      i32.const 3236
      i32.load
      f64.convert_i32_s
      f64.const 1000000000.
      f64.div
      i32.const 3232
      i32.load
      f64.convert_i32_s
      f64.add
      local.tee 19
      f64.store
      i32.const 3240
      local.get 19
      i32.const 3192
      f64.load
      f64.sub
      local.tee 19
      f64.store
      block  ;; label = @2
        local.get 19
        f64.const 1000.
        f64.mul
        local.tee 19
        f64.abs
        f64.const 2147483648.
        f64.lt
        if  ;; label = @3
          i32.const 3248
          local.get 19
          i32.trunc_f64_s
          i32.store
          br 1 (;@2;)
        end
        i32.const 3248
        i32.const -2147483648
        i32.store
      end
      i32.const 13488
      i32.const 3240
      f64.load
      local.tee 19
      f64.store
      local.get 2
      local.get 5
      f64.convert_i32_s
      f64.store offset=336
      local.get 2
      local.get 19
      f64.store offset=344
      i32.const 2094
      local.get 2
      i32.const 336
      i32.add
      call 17
      block  ;; label = @2
        i32.const 13488
        f64.load
        local.tee 19
        f64.const 2.
        f64.gt
        if  ;; label = @3
          local.get 5
          local.set 4
          br 1 (;@2;)
        end
        local.get 4
        i32.const 10
        i32.mul
        local.get 5
        local.get 19
        f64.const 0.05
        f64.lt
        select
        local.set 4
        local.get 8
        i32.const 1
        i32.gt_u
        local.set 3
        local.get 8
        i32.const 1
        i32.sub
        local.set 8
        local.get 3
        br_if 1 (;@1;)
      end
    end
    call 21
    i32.const 1336
    call 24
    call 21
    i32.const 1697
    i32.const 0
    call 16
    i32.const 1530
    i32.const 1481
    i32.const 13484
    i32.load
    i32.const 5
    i32.eq
    select
    i32.const 0
    call 16
    local.get 2
    i32.const 13484
    i32.load
    i32.store offset=320
    i32.const 1520
    local.get 2
    i32.const 320
    i32.add
    call 16
    i32.const 1617
    i32.const 0
    call 16
    i32.const 1530
    i32.const 1481
    i32.const 13264
    i32.load
    i32.const 1
    i32.eq
    select
    i32.const 0
    call 16
    local.get 2
    i32.const 13264
    i32.load
    i32.store offset=304
    i32.const 2086
    local.get 2
    i32.const 304
    i32.add
    call 16
    i32.const 1649
    i32.const 0
    call 16
    i32.const 1530
    i32.const 1481
    i32.const 13496
    i32.load8_u
    i32.const 65
    i32.eq
    select
    i32.const 0
    call 16
    local.get 2
    i32.const 13496
    i32.load8_s
    i32.store offset=288
    i32.const 1525
    local.get 2
    i32.const 288
    i32.add
    call 16
    i32.const 1633
    i32.const 0
    call 16
    i32.const 1530
    i32.const 1481
    i32.const 13480
    i32.load8_u
    i32.const 66
    i32.eq
    select
    i32.const 0
    call 16
    local.get 2
    i32.const 13480
    i32.load8_s
    i32.store offset=272
    i32.const 2090
    local.get 2
    i32.const 272
    i32.add
    call 16
    i32.const 1488
    i32.const 0
    call 16
    i32.const 1530
    i32.const 1481
    i32.const 13312
    i32.load
    i32.const 7
    i32.eq
    select
    i32.const 0
    call 16
    local.get 2
    i32.const 13312
    i32.load
    i32.store offset=256
    i32.const 1520
    local.get 2
    i32.const 256
    i32.add
    call 16
    i32.const 1504
    i32.const 0
    call 16
    i32.const 1530
    i32.const 1481
    i32.const 4892
    i32.load
    local.get 4
    i32.const 10
    i32.add
    i32.eq
    select
    i32.const 0
    call 16
    local.get 2
    i32.const 4892
    i32.load
    i32.store offset=240
    i32.const 2052
    local.get 2
    i32.const 240
    i32.add
    call 16
    i32.const 1752
    i32.const 0
    call 16
    local.get 2
    i32.const 3256
    i32.load
    i32.load
    i32.store offset=224
    i32.const 1875
    local.get 2
    i32.const 224
    i32.add
    call 16
    i32.const 1736
    i32.const 0
    call 16
    i32.const 1481
    i32.const 1530
    i32.const 3256
    i32.load
    i32.load offset=4
    select
    i32.const 0
    call 16
    local.get 2
    i32.const 3256
    i32.load
    i32.load offset=4
    i32.store offset=208
    i32.const 1520
    local.get 2
    i32.const 208
    i32.add
    call 16
    i32.const 1553
    i32.const 0
    call 16
    i32.const 1530
    i32.const 1481
    i32.const 3256
    i32.load
    i32.load offset=8
    i32.const 2
    i32.eq
    select
    i32.const 0
    call 16
    local.get 2
    i32.const 3256
    i32.load
    i32.load offset=8
    i32.store offset=192
    i32.const 2086
    local.get 2
    i32.const 192
    i32.add
    call 16
    i32.const 1537
    i32.const 0
    call 16
    i32.const 1530
    i32.const 1481
    i32.const 3256
    i32.load
    i32.load offset=12
    i32.const 17
    i32.eq
    select
    i32.const 0
    call 16
    local.get 2
    i32.const 3256
    i32.load
    i32.load offset=12
    i32.store offset=176
    i32.const 1477
    local.get 2
    i32.const 176
    i32.add
    call 16
    i32.const 1665
    i32.const 0
    call 16
    i32.const 1481
    i32.const 1530
    i32.const 3256
    i32.load
    i32.const 16
    i32.add
    i32.const 1237
    call 28
    select
    i32.const 0
    call 16
    i32.const 3256
    i32.load
    i32.const 16
    i32.add
    call 24
    i32.const 1713
    i32.const 0
    call 16
    local.get 2
    i32.const 3252
    i32.load
    i32.load
    i32.store offset=160
    i32.const 1137
    local.get 2
    i32.const 160
    i32.add
    call 16
    i32.const 1171
    call 24
    i32.const 1736
    i32.const 0
    call 16
    i32.const 1481
    i32.const 1530
    i32.const 3252
    i32.load
    i32.load offset=4
    select
    i32.const 0
    call 16
    local.get 2
    i32.const 3252
    i32.load
    i32.load offset=4
    i32.store offset=144
    i32.const 1520
    local.get 2
    i32.const 144
    i32.add
    call 16
    i32.const 1553
    i32.const 0
    call 16
    i32.const 1530
    i32.const 1481
    i32.const 3252
    i32.load
    i32.load offset=8
    i32.const 1
    i32.eq
    select
    i32.const 0
    call 16
    local.get 2
    i32.const 3252
    i32.load
    i32.load offset=8
    i32.store offset=128
    i32.const 2086
    local.get 2
    i32.const 128
    i32.add
    call 16
    i32.const 1537
    i32.const 0
    call 16
    i32.const 1530
    i32.const 1481
    i32.const 3252
    i32.load
    i32.load offset=12
    i32.const 18
    i32.eq
    select
    i32.const 0
    call 16
    local.get 2
    i32.const 3252
    i32.load
    i32.load offset=12
    i32.store offset=112
    i32.const 1477
    local.get 2
    i32.const 112
    i32.add
    call 16
    i32.const 1665
    i32.const 0
    call 16
    i32.const 1481
    i32.const 1530
    i32.const 3252
    i32.load
    i32.const 16
    i32.add
    i32.const 1237
    call 28
    select
    i32.const 0
    call 16
    i32.const 3252
    i32.load
    i32.const 16
    i32.add
    call 24
    i32.const 1601
    i32.const 0
    call 16
    i32.const 1530
    i32.const 1481
    local.get 7
    i32.const 5
    i32.eq
    select
    i32.const 0
    call 16
    local.get 2
    local.get 7
    i32.store offset=96
    i32.const 1520
    local.get 2
    i32.const 96
    i32.add
    call 16
    i32.const 1585
    i32.const 0
    call 16
    i32.const 1530
    i32.const 1481
    local.get 1
    i32.const 13
    i32.eq
    select
    i32.const 0
    call 16
    local.get 2
    local.get 1
    i32.store offset=80
    i32.const 2086
    local.get 2
    i32.const 80
    i32.add
    call 16
    i32.const 1569
    i32.const 0
    call 16
    i32.const 1530
    i32.const 1481
    local.get 2
    i32.load offset=444
    i32.const 7
    i32.eq
    select
    i32.const 0
    call 16
    local.get 2
    local.get 2
    i32.load offset=444
    i32.store offset=64
    i32.const 1520
    local.get 2
    i32.const -64
    i32.sub
    call 16
    i32.const 1681
    i32.const 0
    call 16
    i32.const 1530
    i32.const 1481
    local.get 2
    i32.load offset=440
    i32.const 1
    i32.eq
    select
    i32.const 0
    call 16
    local.get 2
    local.get 2
    i32.load offset=440
    i32.store offset=48
    i32.const 2122
    local.get 2
    i32.const 48
    i32.add
    call 16
    i32.const 1815
    i32.const 0
    call 16
    i32.const 1481
    i32.const 1530
    local.get 2
    i32.const 400
    i32.add
    i32.const 1206
    call 15
    select
    i32.const 0
    call 16
    local.get 2
    i32.const 400
    i32.add
    call 24
    i32.const 1775
    i32.const 0
    call 16
    i32.const 1481
    i32.const 1530
    local.get 2
    i32.const 368
    i32.add
    i32.const 1299
    call 15
    select
    i32.const 0
    call 16
    local.get 2
    i32.const 368
    i32.add
    call 24
    call 21
    block  ;; label = @1
      i32.const 13488
      f64.load
      local.tee 19
      f64.const 2.
      f64.lt
      if  ;; label = @2
        i32.const 1053
        call 24
        i32.const 1106
        call 24
        call 21
        br 1 (;@1;)
      end
      i32.const 13512
      local.get 4
      f64.convert_i32_s
      local.tee 20
      local.get 19
      f64.div
      local.tee 21
      f64.store
      i32.const 13504
      local.get 19
      f64.const 1000000.
      f64.mul
      local.get 20
      f64.div
      local.tee 19
      f64.store
      i32.const 13520
      local.get 21
      f64.const 1757.
      f64.div
      f64.store
      local.get 2
      local.get 19
      f64.const 1000.
      f64.mul
      f64.store offset=32
      i32.const 1902
      local.get 2
      i32.const 32
      i32.add
      call 17
      local.get 2
      i32.const 13512
      f64.load
      f64.store offset=16
      i32.const 1982
      local.get 2
      i32.const 16
      i32.add
      call 17
      local.get 2
      i32.const 13520
      f64.load
      f64.store
      i32.const 1942
      local.get 2
      call 17
      call 21
      global.get 0
      i32.const 16
      i32.sub
      local.tee 6
      global.set 0
      local.get 6
      block (result i32)  ;; label = @2
        call 2
        f64.const 1000.
        f64.div
        local.tee 19
        f64.abs
        f64.const 2147483648.
        f64.lt
        if  ;; label = @3
          local.get 19
          i32.trunc_f64_s
          br 1 (;@2;)
        end
        i32.const -2147483648
      end
      i32.store offset=12
      i32.const 3200
      local.set 5
      i32.const 13568
      i32.const 13572
      i32.const 13576
      call 0
      local.get 6
      i32.const 12
      i32.add
      i32.const 13588
      call 1
      i32.const 13628
      i32.const 13580
      i32.const 13576
      i32.const 13620
      i32.load
      select
      i32.load
      i32.store
      global.get 0
      i32.const 32
      i32.sub
      local.tee 0
      global.set 0
      i32.const 13612
      i32.load
      i32.const 131072
      i32.add
      call 14
      local.set 3
      i32.const 13604
      i32.load
      i32.const 131086
      i32.add
      call 14
      local.set 1
      i32.const 13596
      i64.load align=4
      local.set 22
      i32.const 13608
      i32.load
      local.set 4
      local.get 0
      i32.const 13588
      i64.load align=4
      i64.const 32
      i64.rotl
      i64.store offset=16
      local.get 0
      local.get 4
      i32.const 1900
      i32.add
      i32.store offset=24
      local.get 0
      local.get 1
      i32.store offset=4
      local.get 0
      local.get 3
      i32.store
      local.get 0
      local.get 22
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
      i32.const 13536
      i32.store offset=144
      local.get 1
      i32.const 0
      i32.const 144
      call 18
      local.tee 1
      i32.const -1
      i32.store offset=76
      local.get 1
      i32.const 6
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
      i32.const 13536
      i32.const 0
      i32.store8
      local.get 1
      i32.const 2058
      local.get 0
      i32.const 4
      i32.const 5
      call 31
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
      block  ;; label = @2
        i32.const 13536
        local.tee 4
        i32.const 3200
        i32.xor
        i32.const 3
        i32.and
        if  ;; label = @3
          i32.const 13536
          i32.load8_u
          local.set 0
          br 1 (;@2;)
        end
        i32.const 13536
        i32.load
        local.tee 0
        i32.const -1
        i32.xor
        local.get 0
        i32.const 16843009
        i32.sub
        i32.and
        i32.const -2139062144
        i32.and
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 5
          local.get 0
          i32.store
          local.get 4
          i32.load offset=4
          local.set 0
          local.get 5
          i32.const 4
          i32.add
          local.set 5
          local.get 4
          i32.const 4
          i32.add
          local.set 4
          local.get 0
          i32.const 16843009
          i32.sub
          local.get 0
          i32.const -1
          i32.xor
          i32.and
          i32.const -2139062144
          i32.and
          i32.eqz
          br_if 0 (;@3;)
        end
      end
      local.get 5
      local.get 0
      i32.store8
      local.get 0
      i32.const 255
      i32.and
      if  ;; label = @2
        loop  ;; label = @3
          local.get 5
          local.get 4
          i32.load8_u offset=1
          local.tee 0
          i32.store8 offset=1
          local.get 5
          i32.const 1
          i32.add
          local.set 5
          local.get 4
          i32.const 1
          i32.add
          local.set 4
          local.get 0
          br_if 0 (;@3;)
        end
      end
      local.get 6
      i32.const 16
      i32.add
      global.set 0
    end
    local.get 2
    i32.const 448
    i32.add
    global.set 0
    i32.const 0)
  (func (;10;) (type 2) (param i32 i32)
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
            i32.const 13484
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
  (func (;11;) (type 3) (param i32 i32 i32)
    local.get 2
    local.get 0
    local.get 1
    i32.add
    i32.const 2
    i32.add
    i32.store)
  (func (;12;) (type 6) (result i32)
    i32.const 13564)
  (func (;13;) (type 4)
    (local f64 f64 i32 i64)
    i32.const 13584
    i32.load8_u
    i32.eqz
    if  ;; label = @1
      call 3
      local.set 2
      i32.const 13584
      i32.const 1
      i32.store8
      i32.const 13585
      local.get 2
      i32.store8
    end
    i32.const 3232
    block (result i64)  ;; label = @1
      call 2
      local.tee 0
      f64.const 1000.
      f64.div
      local.tee 1
      f64.abs
      f64.const 9.22337203685e+18
      f64.lt
      if  ;; label = @2
        local.get 1
        i64.trunc_f64_s
        br 1 (;@1;)
      end
      i64.const -9223372036854775808
    end
    local.tee 3
    i64.store32
    i32.const 3236
    block (result i32)  ;; label = @1
      local.get 0
      local.get 3
      i64.const 1000
      i64.mul
      f64.convert_i64_s
      f64.sub
      f64.const 1000.
      f64.mul
      f64.const 1000.
      f64.mul
      local.tee 0
      f64.abs
      f64.const 2147483648.
      f64.lt
      if  ;; label = @2
        local.get 0
        i32.trunc_f64_s
        br 1 (;@1;)
      end
      i32.const -2147483648
    end
    i32.store)
  (func (;14;) (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.const 14
    i32.eq
    if  ;; label = @1
      i32.const 1379
      i32.const 1200
      i32.const 2128
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
      i32.const 2128
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
                i32.const 2152
                local.set 0
                local.get 1
                i32.const 1
                i32.le_u
                br_if 3 (;@3;)
                br 5 (;@1;)
              end
              i32.const 2160
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
          i32.const 2480
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
      i32.const 2128
      i32.add
      i32.load
      drop
    end
    local.get 2)
  (func (;15;) (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32)
    i32.const 31
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 1
        i32.or
        i32.const 3
        i32.and
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 0
          i32.load
          local.get 1
          i32.load
          i32.ne
          br_if 1 (;@2;)
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
          br_if 0 (;@3;)
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
  (func (;16;) (type 2) (param i32 i32)
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
    i32.const 0
    i32.const 0
    call 31
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;17;) (type 2) (param i32 i32)
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
    i32.const 4
    i32.const 0
    call 31
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;18;) (type 1) (param i32 i32 i32) (result i32)
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
  (func (;19;) (type 0) (param i32) (result i32)
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
  (func (;20;) (type 4)
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
        i32.const 3048
        i32.load
        local.tee 1
        if (result i32)  ;; label = @3
          local.get 1
        else
          i32.const 3032
          call 19
          br_if 2 (;@1;)
          i32.const 3048
          i32.load
        end
        i32.const 3052
        i32.load
        local.tee 1
        i32.eq
        br_if 0 (;@2;)
        i32.const 3112
        i32.load
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        i32.const 3052
        local.get 1
        i32.const 1
        i32.add
        i32.store
        local.get 1
        i32.const 10
        i32.store8
        br 1 (;@1;)
      end
      i32.const 3032
      local.get 0
      i32.const 15
      i32.add
      i32.const 1
      i32.const 3068
      i32.load
      call_indirect (type 1)
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
  (func (;21;) (type 4)
    (local i32)
    block  ;; label = @1
      i32.const 3108
      i32.load
      local.tee 0
      i32.const 0
      i32.ge_s
      if  ;; label = @2
        local.get 0
        i32.eqz
        br_if 1 (;@1;)
        i32.const 13704
        i32.load
        local.get 0
        i32.const -1073741825
        i32.and
        i32.ne
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        i32.const 3112
        i32.load
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        i32.const 3052
        i32.load
        local.tee 0
        i32.const 3048
        i32.load
        i32.eq
        br_if 0 (;@2;)
        i32.const 3052
        local.get 0
        i32.const 1
        i32.add
        i32.store
        local.get 0
        i32.const 10
        i32.store8
        return
      end
      call 20
      return
    end
    i32.const 3108
    i32.const 3108
    i32.load
    local.tee 0
    i32.const 1073741823
    local.get 0
    select
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        i32.const 3112
        i32.load
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        i32.const 3052
        i32.load
        local.tee 0
        i32.const 3048
        i32.load
        i32.eq
        br_if 0 (;@2;)
        i32.const 3052
        local.get 0
        i32.const 1
        i32.add
        i32.store
        local.get 0
        i32.const 10
        i32.store8
        br 1 (;@1;)
      end
      call 20
    end
    i32.const 3108
    i32.load
    drop
    i32.const 3108
    i32.const 0
    i32.store)
  (func (;22;) (type 3) (param i32 i32 i32)
    (local i32 i32)
    local.get 2
    i32.const 512
    i32.ge_u
    if  ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      call 4
      return
    end
    local.get 0
    local.get 2
    i32.add
    local.set 3
    block  ;; label = @1
      local.get 0
      local.get 1
      i32.xor
      i32.const 3
      i32.and
      i32.eqz
      if  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 3
          i32.and
          i32.eqz
          if  ;; label = @4
            local.get 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 2
          i32.eqz
          if  ;; label = @4
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
          local.tee 0
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
            i32.const -64
            i32.sub
            local.set 1
            local.get 2
            i32.const -64
            i32.sub
            local.tee 2
            local.get 0
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
        end
        br 1 (;@1;)
      end
      local.get 3
      i32.const 4
      i32.lt_u
      if  ;; label = @2
        local.get 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      local.get 3
      i32.const 4
      i32.sub
      local.tee 4
      i32.gt_u
      if  ;; label = @2
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
  (func (;23;) (type 1) (param i32 i32 i32) (result i32)
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
        call 19
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
        call_indirect (type 1)
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
        call_indirect (type 1)
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
      call 22
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
  (func (;24;) (type 7) (param i32)
    (local i32 i32 i32 i32)
    i32.const 3108
    i32.load
    drop
    block  ;; label = @1
      i32.const -1
      i32.const 0
      block (result i32)  ;; label = @2
        local.get 0
        local.set 3
        block (result i32)  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.tee 1
            i32.const 3
            i32.and
            if  ;; label = @5
              loop  ;; label = @6
                local.get 1
                i32.load8_u
                i32.eqz
                br_if 2 (;@4;)
                local.get 1
                i32.const 1
                i32.add
                local.tee 1
                i32.const 3
                i32.and
                br_if 0 (;@6;)
              end
            end
            loop  ;; label = @5
              local.get 1
              local.tee 2
              i32.const 4
              i32.add
              local.set 1
              local.get 2
              i32.load
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
              br_if 0 (;@5;)
            end
            local.get 2
            local.get 0
            i32.sub
            local.get 4
            i32.const 255
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            drop
            loop  ;; label = @5
              local.get 2
              i32.load8_u offset=1
              local.set 4
              local.get 2
              i32.const 1
              i32.add
              local.tee 1
              local.set 2
              local.get 4
              br_if 0 (;@5;)
            end
          end
          local.get 1
          local.get 0
          i32.sub
        end
        local.tee 0
        local.get 0
        block (result i32)  ;; label = @3
          i32.const 3108
          i32.load
          i32.const 0
          i32.lt_s
          if  ;; label = @4
            local.get 3
            local.get 0
            i32.const 3032
            call 23
            br 1 (;@3;)
          end
          local.get 3
          local.get 0
          i32.const 3032
          call 23
        end
        local.tee 3
        i32.eq
        br_if 0 (;@2;)
        drop
        local.get 3
      end
      local.get 0
      i32.ne
      select
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      block  ;; label = @2
        i32.const 3112
        i32.load
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        i32.const 3052
        i32.load
        local.tee 0
        i32.const 3048
        i32.load
        i32.eq
        br_if 0 (;@2;)
        i32.const 3052
        local.get 0
        i32.const 1
        i32.add
        i32.store
        local.get 0
        i32.const 10
        i32.store8
        br 1 (;@1;)
      end
      call 20
    end)
  (func (;25;) (type 1) (param i32 i32 i32) (result i32)
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
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=60
            local.get 3
            i32.const 16
            i32.add
            i32.const 2
            local.get 3
            i32.const 12
            i32.add
            call 5
            call 41
            if  ;; label = @5
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
              local.get 1
              i32.const 0
              i32.lt_s
              if  ;; label = @6
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
              local.get 1
              local.get 8
              i32.const 0
              local.get 9
              select
              i32.sub
              local.tee 8
              local.get 5
              i32.load
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
              local.get 0
              i32.load offset=60
              local.get 5
              local.tee 4
              local.get 7
              local.get 9
              i32.sub
              local.tee 7
              local.get 3
              i32.const 12
              i32.add
              call 5
              call 41
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
      local.get 5
      i32.load offset=4
      i32.sub
    end
    local.set 1
    local.get 3
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func (;26;) (type 0) (param i32) (result i32)
    i32.const 0)
  (func (;27;) (type 8) (param i32 i64 i32) (result i64)
    i64.const 0)
  (func (;28;) (type 5) (param i32 i32) (result i32)
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
  (func (;29;) (type 0) (param i32) (result i32)
    local.get 0
    i32.const 48
    i32.sub
    i32.const 10
    i32.lt_u)
  (func (;30;) (type 13) (param f64 i32) (result f64)
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
        f64.const 0.
        f64.eq
        if (result i32)  ;; label = @3
          i32.const 0
        else
          local.get 0
          f64.const 1.84467440737e+19
          f64.mul
          local.get 1
          call 30
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
  (func (;31;) (type 9) (param i32 i32 i32 i32 i32) (result i32)
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
    i32.const 0
    i32.const 40
    call 18
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
      local.get 5
      i32.const 160
      i32.add
      local.get 3
      local.get 4
      call 32
      i32.const 0
      i32.lt_s
      if  ;; label = @2
        i32.const -1
        local.set 1
        br 1 (;@1;)
      end
      i32.const 1
      local.get 6
      local.get 0
      i32.load offset=76
      i32.const 0
      i32.ge_s
      select
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
          call 19
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
        call 32
      end
      local.set 2
      local.get 7
      i32.const 32
      i32.and
      local.set 1
      local.get 8
      if  ;; label = @2
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=36
        call_indirect (type 1)
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
    end
    local.get 5
    i32.const 208
    i32.add
    global.set 0
    local.get 1)
  (func (;32;) (type 14) (param i32 i32 i32 i32 i32 i32 i32) (result i32)
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
    local.set 23
    local.get 7
    i32.const 56
    i32.add
    local.set 20
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
              local.tee 11
              local.set 1
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 11
                    i32.load8_u
                    local.tee 12
                    if  ;; label = @9
                      loop  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 12
                            i32.const 255
                            i32.and
                            local.tee 12
                            i32.eqz
                            if  ;; label = @13
                              local.get 1
                              local.set 12
                              br 1 (;@12;)
                            end
                            local.get 12
                            i32.const 37
                            i32.ne
                            br_if 1 (;@11;)
                            local.get 1
                            local.set 12
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
                              local.get 12
                              i32.const 1
                              i32.add
                              local.set 12
                              local.get 1
                              i32.load8_u offset=2
                              local.set 9
                              local.get 8
                              local.set 1
                              local.get 9
                              i32.const 37
                              i32.eq
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 12
                          local.get 11
                          i32.sub
                          local.tee 1
                          i32.const 2147483647
                          local.get 13
                          i32.sub
                          local.tee 12
                          i32.gt_s
                          br_if 7 (;@4;)
                          local.get 0
                          if  ;; label = @12
                            local.get 0
                            local.get 11
                            local.get 1
                            call 33
                          end
                          local.get 1
                          br_if 6 (;@5;)
                          i32.const -1
                          local.set 18
                          i32.const 1
                          local.set 8
                          local.get 7
                          i32.load offset=76
                          i32.load8_s offset=1
                          call 29
                          local.set 9
                          local.get 7
                          i32.load offset=76
                          local.set 1
                          block  ;; label = @12
                            local.get 9
                            i32.eqz
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
                            local.set 18
                            i32.const 1
                            local.set 21
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
                            local.tee 17
                            i32.const 32
                            i32.sub
                            local.tee 9
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
                            local.get 9
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
                              local.tee 17
                              i32.const 32
                              i32.sub
                              local.tee 9
                              i32.const 32
                              i32.ge_u
                              br_if 1 (;@12;)
                              local.get 8
                              local.set 1
                              i32.const 1
                              local.get 9
                              i32.shl
                              local.tee 9
                              i32.const 75913
                              i32.and
                              br_if 0 (;@13;)
                            end
                          end
                          block  ;; label = @12
                            local.get 17
                            i32.const 42
                            i32.eq
                            if  ;; label = @13
                              local.get 7
                              block (result i32)  ;; label = @14
                                block  ;; label = @15
                                  local.get 8
                                  i32.load8_s offset=1
                                  call 29
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 7
                                  i32.load offset=76
                                  local.tee 8
                                  i32.load8_u offset=2
                                  i32.const 36
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 8
                                  i32.load8_s offset=1
                                  i32.const 2
                                  i32.shl
                                  local.get 4
                                  i32.add
                                  i32.const 192
                                  i32.sub
                                  i32.const 10
                                  i32.store
                                  local.get 8
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
                                  local.set 21
                                  local.get 8
                                  i32.const 3
                                  i32.add
                                  br 1 (;@14;)
                                end
                                local.get 21
                                br_if 6 (;@8;)
                                i32.const 0
                                local.set 21
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
                            call 34
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
                          local.set 10
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
                                  call 29
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 7
                                  i32.load offset=76
                                  local.tee 9
                                  i32.load8_u offset=3
                                  i32.const 36
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 9
                                  i32.load8_s offset=2
                                  i32.const 2
                                  i32.shl
                                  local.get 4
                                  i32.add
                                  i32.const 192
                                  i32.sub
                                  i32.const 10
                                  i32.store
                                  local.get 9
                                  i32.load8_s offset=2
                                  i32.const 3
                                  i32.shl
                                  local.get 3
                                  i32.add
                                  i32.const 384
                                  i32.sub
                                  i32.load
                                  local.set 10
                                  local.get 9
                                  i32.const 4
                                  i32.add
                                  br 1 (;@14;)
                                end
                                local.get 21
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
                                local.set 10
                                local.get 7
                                i32.load offset=76
                                i32.const 2
                                i32.add
                              end
                              local.tee 1
                              i32.store offset=76
                              local.get 10
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
                            call 34
                            local.set 10
                            local.get 7
                            i32.load offset=76
                            local.set 1
                            i32.const 1
                          end
                          local.set 22
                          loop  ;; label = @12
                            local.get 8
                            local.set 9
                            i32.const 28
                            local.set 16
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
                            local.tee 17
                            i32.store offset=76
                            local.get 1
                            i32.load8_s
                            local.set 8
                            local.get 17
                            local.set 1
                            local.get 8
                            local.get 9
                            i32.const 58
                            i32.mul
                            i32.add
                            i32.const 2447
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
                                local.get 18
                                i32.const 0
                                i32.ge_s
                                if  ;; label = @15
                                  local.get 4
                                  local.get 18
                                  i32.const 2
                                  i32.shl
                                  i32.add
                                  local.get 8
                                  i32.store
                                  local.get 7
                                  local.get 3
                                  local.get 18
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
                                call 35
                                local.get 7
                                i32.load offset=76
                                local.set 17
                                br 2 (;@12;)
                              end
                              local.get 18
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
                          local.tee 19
                          local.get 14
                          local.get 14
                          i32.const 8192
                          i32.and
                          select
                          local.set 8
                          i32.const 0
                          local.set 14
                          i32.const 1024
                          local.set 18
                          local.get 20
                          local.set 16
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
                                                          local.get 17
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
                                                          local.get 9
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
                                                                  local.get 9
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
                                                  local.get 10
                                                  i32.const 8
                                                  local.get 10
                                                  i32.const 8
                                                  i32.gt_u
                                                  select
                                                  local.set 10
                                                  local.get 8
                                                  i32.const 8
                                                  i32.or
                                                  local.set 8
                                                  i32.const 120
                                                  local.set 1
                                                end
                                                local.get 20
                                                local.set 19
                                                local.get 1
                                                i32.const 32
                                                i32.and
                                                local.set 9
                                                local.get 7
                                                i64.load offset=64
                                                local.tee 24
                                                i64.eqz
                                                i32.eqz
                                                if  ;; label = @23
                                                  loop  ;; label = @24
                                                    local.get 19
                                                    i32.const 1
                                                    i32.sub
                                                    local.tee 19
                                                    local.get 24
                                                    i32.wrap_i64
                                                    i32.const 15
                                                    i32.and
                                                    i32.const 2976
                                                    i32.add
                                                    i32.load8_u
                                                    local.get 9
                                                    i32.or
                                                    i32.store8
                                                    local.get 24
                                                    i64.const 15
                                                    i64.gt_u
                                                    local.set 11
                                                    local.get 24
                                                    i64.const 4
                                                    i64.shr_u
                                                    local.set 24
                                                    local.get 11
                                                    br_if 0 (;@24;)
                                                  end
                                                end
                                                local.get 19
                                                local.set 11
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
                                                local.set 18
                                                i32.const 2
                                                local.set 14
                                                br 3 (;@19;)
                                              end
                                              local.get 20
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
                                                  local.set 19
                                                  local.get 24
                                                  i64.const 3
                                                  i64.shr_u
                                                  local.set 24
                                                  local.get 19
                                                  br_if 0 (;@23;)
                                                end
                                              end
                                              local.get 1
                                              local.set 11
                                              local.get 8
                                              i32.const 8
                                              i32.and
                                              i32.eqz
                                              br_if 2 (;@19;)
                                              local.get 10
                                              local.get 20
                                              local.get 11
                                              i32.sub
                                              local.tee 1
                                              i32.const 1
                                              i32.add
                                              local.get 1
                                              local.get 10
                                              i32.lt_s
                                              select
                                              local.set 10
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
                                          local.set 18
                                          local.get 24
                                          local.get 20
                                          call 36
                                          local.set 11
                                        end
                                        local.get 22
                                        i32.const 0
                                        local.get 10
                                        i32.const 0
                                        i32.lt_s
                                        select
                                        br_if 14 (;@4;)
                                        local.get 8
                                        i32.const -65537
                                        i32.and
                                        local.get 8
                                        local.get 22
                                        select
                                        local.set 8
                                        block  ;; label = @19
                                          local.get 7
                                          i64.load offset=64
                                          local.tee 24
                                          i64.const 0
                                          i64.ne
                                          br_if 0 (;@19;)
                                          local.get 10
                                          br_if 0 (;@19;)
                                          local.get 20
                                          local.tee 11
                                          local.set 16
                                          i32.const 0
                                          local.set 10
                                          br 12 (;@7;)
                                        end
                                        local.get 10
                                        local.get 24
                                        i64.eqz
                                        local.get 20
                                        local.get 11
                                        i32.sub
                                        i32.add
                                        local.tee 1
                                        local.get 1
                                        local.get 10
                                        i32.lt_s
                                        select
                                        local.set 10
                                        br 11 (;@7;)
                                      end
                                      block (result i32)  ;; label = @18
                                        local.get 10
                                        i32.const 2147483647
                                        local.get 10
                                        i32.const 2147483647
                                        i32.lt_u
                                        select
                                        local.tee 16
                                        local.tee 8
                                        i32.const 0
                                        i32.ne
                                        local.set 9
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              local.get 7
                                              i32.load offset=64
                                              local.tee 1
                                              i32.const 1416
                                              local.get 1
                                              select
                                              local.tee 11
                                              local.tee 1
                                              i32.const 3
                                              i32.and
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              local.get 8
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              loop  ;; label = @22
                                                local.get 1
                                                i32.load8_u
                                                i32.eqz
                                                br_if 2 (;@20;)
                                                local.get 8
                                                i32.const 1
                                                i32.sub
                                                local.tee 8
                                                i32.const 0
                                                i32.ne
                                                local.set 9
                                                local.get 1
                                                i32.const 1
                                                i32.add
                                                local.tee 1
                                                i32.const 3
                                                i32.and
                                                i32.eqz
                                                br_if 1 (;@21;)
                                                local.get 8
                                                br_if 0 (;@22;)
                                              end
                                            end
                                            local.get 9
                                            i32.eqz
                                            br_if 1 (;@19;)
                                          end
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              local.get 1
                                              i32.load8_u
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              local.get 8
                                              i32.const 4
                                              i32.lt_u
                                              br_if 0 (;@21;)
                                              loop  ;; label = @22
                                                local.get 1
                                                i32.load
                                                local.tee 9
                                                i32.const -1
                                                i32.xor
                                                local.get 9
                                                i32.const 16843009
                                                i32.sub
                                                i32.and
                                                i32.const -2139062144
                                                i32.and
                                                br_if 2 (;@20;)
                                                local.get 1
                                                i32.const 4
                                                i32.add
                                                local.set 1
                                                local.get 8
                                                i32.const 4
                                                i32.sub
                                                local.tee 8
                                                i32.const 3
                                                i32.gt_u
                                                br_if 0 (;@22;)
                                              end
                                            end
                                            local.get 8
                                            i32.eqz
                                            br_if 1 (;@19;)
                                          end
                                          loop  ;; label = @20
                                            local.get 1
                                            local.get 1
                                            i32.load8_u
                                            i32.eqz
                                            br_if 2 (;@18;)
                                            drop
                                            local.get 1
                                            i32.const 1
                                            i32.add
                                            local.set 1
                                            local.get 8
                                            i32.const 1
                                            i32.sub
                                            local.tee 8
                                            br_if 0 (;@20;)
                                          end
                                        end
                                        i32.const 0
                                      end
                                      local.tee 1
                                      local.get 11
                                      i32.sub
                                      local.get 16
                                      local.get 1
                                      select
                                      local.tee 1
                                      local.get 11
                                      i32.add
                                      local.set 16
                                      local.get 10
                                      i32.const 0
                                      i32.ge_s
                                      if  ;; label = @18
                                        local.get 19
                                        local.set 8
                                        local.get 1
                                        local.set 10
                                        br 11 (;@7;)
                                      end
                                      local.get 19
                                      local.set 8
                                      local.get 1
                                      local.set 10
                                      local.get 16
                                      i32.load8_u
                                      br_if 13 (;@4;)
                                      br 10 (;@7;)
                                    end
                                    local.get 10
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
                                    call 37
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
                                  i32.store offset=64
                                  i32.const -1
                                  local.set 10
                                  local.get 7
                                  i32.const 8
                                  i32.add
                                end
                                local.set 12
                                i32.const 0
                                local.set 1
                                block  ;; label = @15
                                  loop  ;; label = @16
                                    local.get 12
                                    i32.load
                                    local.tee 9
                                    i32.eqz
                                    br_if 1 (;@15;)
                                    block  ;; label = @17
                                      local.get 7
                                      i32.const 4
                                      i32.add
                                      local.get 9
                                      call 42
                                      local.tee 9
                                      i32.const 0
                                      i32.lt_s
                                      local.tee 11
                                      br_if 0 (;@17;)
                                      local.get 9
                                      local.get 10
                                      local.get 1
                                      i32.sub
                                      i32.gt_u
                                      br_if 0 (;@17;)
                                      local.get 12
                                      i32.const 4
                                      i32.add
                                      local.set 12
                                      local.get 10
                                      local.get 1
                                      local.get 9
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
                                local.set 16
                                local.get 1
                                i32.const 0
                                i32.lt_s
                                br_if 11 (;@3;)
                                local.get 0
                                i32.const 32
                                local.get 15
                                local.get 1
                                local.get 8
                                call 37
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
                                local.set 12
                                loop  ;; label = @15
                                  local.get 12
                                  i32.load
                                  local.tee 11
                                  i32.eqz
                                  br_if 1 (;@14;)
                                  local.get 7
                                  i32.const 4
                                  i32.add
                                  local.get 11
                                  call 42
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
                                  call 33
                                  local.get 12
                                  i32.const 4
                                  i32.add
                                  local.set 12
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
                              call 37
                              local.get 15
                              local.get 1
                              local.get 1
                              local.get 15
                              i32.lt_s
                              select
                              local.set 1
                              br 8 (;@5;)
                            end
                            local.get 22
                            i32.const 0
                            local.get 10
                            i32.const 0
                            i32.lt_s
                            select
                            br_if 8 (;@4;)
                            i32.const 61
                            local.set 16
                            local.get 0
                            local.get 7
                            f64.load offset=64
                            local.get 15
                            local.get 10
                            local.get 8
                            local.get 1
                            local.get 5
                            call_indirect (type 10)
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
                          local.set 10
                          local.get 23
                          local.set 11
                          local.get 19
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
                        local.set 12
                        local.get 8
                        local.set 1
                        br 0 (;@10;)
                      end
                      unreachable
                    end
                    local.get 0
                    br_if 7 (;@1;)
                    local.get 21
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
                      local.tee 12
                      if  ;; label = @10
                        local.get 3
                        local.get 1
                        i32.const 3
                        i32.shl
                        i32.add
                        local.get 12
                        local.get 2
                        local.get 6
                        call 35
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
                  local.set 16
                  br 4 (;@3;)
                end
                local.get 10
                local.get 16
                local.get 11
                i32.sub
                local.tee 17
                local.get 10
                local.get 17
                i32.gt_s
                select
                local.tee 10
                i32.const 2147483647
                local.get 14
                i32.sub
                i32.gt_s
                br_if 2 (;@4;)
                i32.const 61
                local.set 16
                local.get 15
                local.get 10
                local.get 14
                i32.add
                local.tee 9
                local.get 9
                local.get 15
                i32.lt_s
                select
                local.tee 1
                local.get 12
                i32.gt_s
                br_if 3 (;@3;)
                local.get 0
                i32.const 32
                local.get 1
                local.get 9
                local.get 8
                call 37
                local.get 0
                local.get 18
                local.get 14
                call 33
                local.get 0
                i32.const 48
                local.get 1
                local.get 9
                local.get 8
                i32.const 65536
                i32.xor
                call 37
                local.get 0
                i32.const 48
                local.get 10
                local.get 17
                i32.const 0
                call 37
                local.get 0
                local.get 11
                local.get 17
                call 33
                local.get 0
                i32.const 32
                local.get 1
                local.get 9
                local.get 8
                i32.const 8192
                i32.xor
                call 37
                br 1 (;@5;)
              end
            end
            i32.const 0
            local.set 13
            br 3 (;@1;)
          end
          i32.const 61
          local.set 16
        end
        i32.const 13564
        local.get 16
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
  (func (;33;) (type 3) (param i32 i32 i32)
    local.get 0
    i32.load8_u
    i32.const 32
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 1
      local.get 2
      local.get 0
      call 23
      drop
    end)
  (func (;34;) (type 0) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.load
    i32.load8_s
    call 29
    i32.eqz
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
      call 29
      br_if 0 (;@1;)
    end
    local.get 1)
  (func (;35;) (type 15) (param i32 i32 i32 i32)
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
                                          i32.const 9
                                          i32.sub
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
      call_indirect (type 2)
    end)
  (func (;36;) (type 16) (param i64 i32) (result i32)
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
  (func (;37;) (type 17) (param i32 i32 i32 i32 i32)
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
      call 18
      drop
      local.get 3
      i32.eqz
      if  ;; label = @2
        loop  ;; label = @3
          local.get 0
          local.get 5
          i32.const 256
          call 33
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
      call 33
    end
    local.get 5
    i32.const 256
    i32.add
    global.set 0)
  (func (;38;) (type 10) (param i32 f64 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i64 i64)
    global.get 0
    i32.const 560
    i32.sub
    local.tee 10
    global.set 0
    local.get 10
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
        local.set 17
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
        local.set 17
        i32.const 1037
        local.set 19
        br 1 (;@1;)
      end
      i32.const 1040
      i32.const 1035
      local.get 4
      i32.const 1
      i32.and
      local.tee 17
      select
      local.set 19
      local.get 17
      i32.eqz
      local.set 23
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
        local.get 17
        i32.const 3
        i32.add
        local.tee 6
        local.get 4
        i32.const -65537
        i32.and
        call 37
        local.get 0
        local.get 19
        local.get 17
        call 33
        local.get 0
        i32.const 1163
        i32.const 1196
        local.get 5
        i32.const 32
        i32.and
        local.tee 7
        select
        i32.const 1167
        i32.const 1330
        local.get 7
        select
        local.get 1
        local.get 1
        f64.ne
        select
        i32.const 3
        call 33
        local.get 0
        i32.const 32
        local.get 2
        local.get 6
        local.get 4
        i32.const 8192
        i32.xor
        call 37
        local.get 6
        local.get 2
        local.get 2
        local.get 6
        i32.lt_s
        select
        local.set 9
        br 1 (;@1;)
      end
      local.get 10
      i32.const 16
      i32.add
      local.set 18
      block  ;; label = @2
        block (result i32)  ;; label = @3
          block  ;; label = @4
            local.get 1
            local.get 10
            i32.const 44
            i32.add
            call 30
            local.tee 1
            local.get 1
            f64.add
            local.tee 1
            f64.const 0.
            f64.ne
            if  ;; label = @5
              local.get 10
              local.get 10
              i32.load offset=44
              local.tee 6
              i32.const 1
              i32.sub
              i32.store offset=44
              local.get 5
              i32.const 32
              i32.or
              local.tee 21
              i32.const 97
              i32.ne
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
            local.get 5
            i32.const 32
            i32.or
            local.tee 21
            i32.const 97
            i32.eq
            br_if 2 (;@2;)
            local.get 10
            i32.load offset=44
            local.set 20
            i32.const 6
            local.get 3
            local.get 3
            i32.const 0
            i32.lt_s
            select
            br 1 (;@3;)
          end
          local.get 10
          local.get 6
          i32.const 29
          i32.sub
          local.tee 20
          i32.store offset=44
          local.get 1
          f64.const 268435456.
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
        local.get 10
        i32.const 48
        i32.add
        i32.const 0
        i32.const 288
        local.get 20
        i32.const 0
        i32.lt_s
        select
        i32.add
        local.tee 15
        local.set 7
        loop  ;; label = @3
          local.get 7
          block (result i32)  ;; label = @4
            local.get 1
            f64.const 4294967296.
            f64.lt
            local.get 1
            f64.const 0.
            f64.ge
            i32.and
            if  ;; label = @5
              local.get 1
              i32.trunc_f64_u
              br 1 (;@4;)
            end
            i32.const 0
          end
          local.tee 6
          i32.store
          local.get 7
          i32.const 4
          i32.add
          local.set 7
          local.get 1
          local.get 6
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
          local.get 20
          i32.const 0
          i32.le_s
          if  ;; label = @4
            local.get 20
            local.set 3
            local.get 7
            local.set 6
            local.get 15
            local.set 8
            br 1 (;@3;)
          end
          local.get 15
          local.set 8
          local.get 20
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
            local.get 10
            local.get 10
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
          local.set 16
          local.get 21
          i32.const 102
          i32.eq
          local.set 22
          loop  ;; label = @4
            i32.const 0
            local.get 3
            i32.sub
            local.tee 7
            i32.const 9
            local.get 7
            i32.const 9
            i32.lt_s
            select
            local.set 11
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
              local.get 11
              i32.shr_u
              local.set 13
              i32.const -1
              local.get 11
              i32.shl
              i32.const -1
              i32.xor
              local.set 14
              i32.const 0
              local.set 3
              local.get 8
              local.set 7
              loop  ;; label = @6
                local.get 7
                local.get 7
                i32.load
                local.tee 9
                local.get 11
                i32.shr_u
                local.get 3
                i32.add
                i32.store
                local.get 9
                local.get 14
                i32.and
                local.get 13
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
            local.get 10
            local.get 10
            i32.load offset=44
            local.get 11
            i32.add
            local.tee 3
            i32.store offset=44
            local.get 15
            local.get 8
            local.get 7
            i32.eqz
            i32.const 2
            i32.shl
            i32.add
            local.tee 8
            local.get 22
            select
            local.tee 7
            local.get 16
            i32.const 2
            i32.shl
            i32.add
            local.get 6
            local.get 6
            local.get 7
            i32.sub
            i32.const 2
            i32.shr_s
            local.get 16
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
          local.get 15
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
        local.get 21
        i32.const 102
        i32.eq
        select
        i32.sub
        local.get 21
        i32.const 103
        i32.eq
        local.get 12
        i32.const 0
        i32.ne
        i32.and
        i32.sub
        local.tee 7
        local.get 6
        local.get 15
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
          local.get 20
          i32.const 0
          i32.lt_s
          select
          local.get 10
          i32.add
          local.get 7
          i32.const 9216
          i32.add
          local.tee 9
          i32.const 9
          i32.div_s
          local.tee 13
          i32.const 2
          i32.shl
          i32.add
          i32.const 4048
          i32.sub
          local.set 11
          i32.const 10
          local.set 7
          local.get 9
          local.get 13
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
            local.get 11
            i32.load
            local.tee 9
            local.get 9
            local.get 7
            i32.div_u
            local.tee 16
            local.get 7
            i32.mul
            i32.sub
            local.tee 13
            i32.eqz
            local.get 11
            i32.const 4
            i32.add
            local.tee 14
            local.get 6
            i32.eq
            i32.and
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 16
              i32.const 1
              i32.and
              i32.eqz
              if  ;; label = @6
                f64.const 9.00719925474e+15
                local.set 1
                local.get 7
                i32.const 1000000000
                i32.ne
                br_if 1 (;@5;)
                local.get 8
                local.get 11
                i32.ge_u
                br_if 1 (;@5;)
                local.get 11
                i32.const 4
                i32.sub
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
            local.get 6
            local.get 14
            i32.eq
            select
            f64.const 1.5
            local.get 13
            local.get 7
            i32.const 1
            i32.shr_u
            local.tee 14
            i32.eq
            select
            local.get 13
            local.get 14
            i32.lt_u
            select
            local.set 24
            block  ;; label = @5
              local.get 23
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
            local.get 11
            local.get 9
            local.get 13
            i32.sub
            local.tee 9
            i32.store
            local.get 1
            local.get 24
            f64.add
            local.get 1
            f64.eq
            br_if 0 (;@4;)
            local.get 11
            local.get 7
            local.get 9
            i32.add
            local.tee 7
            i32.store
            local.get 7
            i32.const 1000000000
            i32.ge_u
            if  ;; label = @5
              loop  ;; label = @6
                local.get 11
                i32.const 0
                i32.store
                local.get 8
                local.get 11
                i32.const 4
                i32.sub
                local.tee 11
                i32.gt_u
                if  ;; label = @7
                  local.get 8
                  i32.const 4
                  i32.sub
                  local.tee 8
                  i32.const 0
                  i32.store
                end
                local.get 11
                local.get 11
                i32.load
                i32.const 1
                i32.add
                local.tee 7
                i32.store
                local.get 7
                i32.const 999999999
                i32.gt_u
                br_if 0 (;@6;)
              end
            end
            local.get 15
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
          local.get 11
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
          local.get 21
          i32.const 103
          i32.ne
          if  ;; label = @4
            local.get 4
            i32.const 8
            i32.and
            local.set 11
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
          local.tee 11
          select
          local.get 6
          i32.add
          local.set 12
          i32.const -1
          i32.const -2
          local.get 11
          select
          local.get 5
          i32.add
          local.set 5
          local.get 4
          i32.const 8
          i32.and
          local.tee 11
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
            local.tee 11
            i32.eqz
            br_if 0 (;@4;)
            i32.const 10
            local.set 9
            i32.const 0
            local.set 6
            local.get 11
            i32.const 10
            i32.rem_u
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 6
              local.tee 13
              i32.const 1
              i32.add
              local.set 6
              local.get 11
              local.get 9
              i32.const 10
              i32.mul
              local.tee 9
              i32.rem_u
              i32.eqz
              br_if 0 (;@5;)
            end
            local.get 13
            i32.const -1
            i32.xor
            local.set 6
          end
          local.get 7
          local.get 15
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
            local.set 11
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
          local.set 11
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
        local.get 11
        local.get 12
        i32.or
        local.tee 13
        select
        i32.gt_s
        br_if 1 (;@1;)
        local.get 12
        local.get 13
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
          local.tee 22
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
          local.get 18
          local.get 3
          local.get 3
          i32.const 31
          i32.shr_s
          local.tee 6
          i32.xor
          local.get 6
          i32.sub
          i64.extend_i32_u
          local.get 18
          call 36
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
              local.get 18
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
          local.tee 16
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
          local.get 18
          local.get 16
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
        local.tee 6
        local.get 17
        i32.const 2147483647
        i32.xor
        i32.gt_s
        br_if 1 (;@1;)
        local.get 0
        i32.const 32
        local.get 2
        local.get 6
        local.get 17
        i32.add
        local.tee 14
        local.get 4
        call 37
        local.get 0
        local.get 19
        local.get 17
        call 33
        local.get 0
        i32.const 48
        local.get 2
        local.get 14
        local.get 4
        i32.const 65536
        i32.xor
        call 37
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 22
              i32.const 70
              i32.eq
              if  ;; label = @6
                local.get 10
                i32.const 16
                i32.add
                i32.const 8
                i32.or
                local.set 11
                local.get 10
                i32.const 16
                i32.add
                i32.const 9
                i32.or
                local.set 3
                local.get 15
                local.get 8
                local.get 8
                local.get 15
                i32.gt_u
                select
                local.tee 9
                local.set 8
                loop  ;; label = @7
                  local.get 8
                  i64.load32_u
                  local.get 3
                  call 36
                  local.set 6
                  block  ;; label = @8
                    local.get 8
                    local.get 9
                    i32.ne
                    if  ;; label = @9
                      local.get 6
                      local.get 10
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
                        local.get 10
                        i32.const 16
                        i32.add
                        i32.gt_u
                        br_if 0 (;@10;)
                      end
                      br 1 (;@8;)
                    end
                    local.get 3
                    local.get 6
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 10
                    i32.const 48
                    i32.store8 offset=24
                    local.get 11
                    local.set 6
                  end
                  local.get 0
                  local.get 6
                  local.get 3
                  local.get 6
                  i32.sub
                  call 33
                  local.get 8
                  i32.const 4
                  i32.add
                  local.tee 8
                  local.get 15
                  i32.le_u
                  br_if 0 (;@7;)
                end
                local.get 13
                if  ;; label = @7
                  local.get 0
                  i32.const 1414
                  i32.const 1
                  call 33
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
                  local.get 3
                  call 36
                  local.tee 6
                  local.get 10
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
                      local.get 10
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
                  call 33
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
                  local.set 9
                  local.get 6
                  local.set 12
                  local.get 9
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
                local.set 13
                local.get 10
                i32.const 16
                i32.add
                i32.const 8
                i32.or
                local.set 15
                local.get 10
                i32.const 16
                i32.add
                i32.const 9
                i32.or
                local.set 3
                local.get 8
                local.set 7
                loop  ;; label = @7
                  local.get 3
                  local.get 7
                  i64.load32_u
                  local.get 3
                  call 36
                  local.tee 6
                  i32.eq
                  if  ;; label = @8
                    local.get 10
                    i32.const 48
                    i32.store8 offset=24
                    local.get 15
                    local.set 6
                  end
                  block  ;; label = @8
                    local.get 7
                    local.get 8
                    i32.ne
                    if  ;; label = @9
                      local.get 6
                      local.get 10
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
                        local.get 10
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
                    call 33
                    local.get 6
                    i32.const 1
                    i32.add
                    local.set 6
                    local.get 11
                    local.get 12
                    i32.or
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const 1414
                    i32.const 1
                    call 33
                  end
                  local.get 0
                  local.get 6
                  local.get 12
                  local.get 3
                  local.get 6
                  i32.sub
                  local.tee 9
                  local.get 9
                  local.get 12
                  i32.gt_s
                  select
                  call 33
                  local.get 12
                  local.get 9
                  i32.sub
                  local.set 12
                  local.get 7
                  i32.const 4
                  i32.add
                  local.tee 7
                  local.get 13
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
              call 37
              local.get 0
              local.get 16
              local.get 18
              local.get 16
              i32.sub
              call 33
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
          call 37
        end
        local.get 0
        i32.const 32
        local.get 2
        local.get 14
        local.get 4
        i32.const 8192
        i32.xor
        call 37
        local.get 14
        local.get 2
        local.get 2
        local.get 14
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
      local.set 14
      block  ;; label = @2
        local.get 3
        i32.const 11
        i32.gt_u
        br_if 0 (;@2;)
        i32.const 12
        local.get 3
        i32.sub
        local.set 6
        f64.const 16.
        local.set 24
        loop  ;; label = @3
          local.get 24
          f64.const 16.
          f64.mul
          local.set 24
          local.get 6
          i32.const 1
          i32.sub
          local.tee 6
          br_if 0 (;@3;)
        end
        local.get 14
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
      local.get 18
      local.get 10
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
      local.get 18
      call 36
      local.tee 6
      i32.eq
      if  ;; label = @2
        local.get 10
        i32.const 48
        i32.store8 offset=15
        local.get 10
        i32.const 15
        i32.add
        local.set 6
      end
      local.get 17
      i32.const 2
      i32.or
      local.set 11
      local.get 5
      i32.const 32
      i32.and
      local.set 8
      local.get 10
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
      local.set 9
      local.get 10
      i32.const 16
      i32.add
      local.set 7
      loop  ;; label = @2
        local.get 7
        local.tee 6
        block (result i32)  ;; label = @3
          local.get 1
          f64.abs
          f64.const 2147483648.
          f64.lt
          if  ;; label = @4
            local.get 1
            i32.trunc_f64_s
            br 1 (;@3;)
          end
          i32.const -2147483648
        end
        local.tee 7
        i32.const 2976
        i32.add
        i32.load8_u
        local.get 8
        i32.or
        i32.store8
        local.get 1
        local.get 7
        f64.convert_i32_s
        f64.sub
        f64.const 16.
        f64.mul
        local.set 1
        block  ;; label = @3
          local.get 6
          i32.const 1
          i32.add
          local.tee 7
          local.get 10
          i32.const 16
          i32.add
          i32.sub
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 9
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
          local.get 6
          i32.const 46
          i32.store8 offset=1
          local.get 6
          i32.const 2
          i32.add
          local.set 7
        end
        local.get 1
        f64.const 0.
        f64.ne
        br_if 0 (;@2;)
      end
      i32.const -1
      local.set 9
      i32.const 2147483645
      local.get 11
      local.get 18
      local.get 13
      i32.sub
      local.tee 16
      i32.add
      local.tee 6
      i32.sub
      local.get 3
      i32.lt_s
      br_if 0 (;@1;)
      local.get 0
      i32.const 32
      local.get 2
      block (result i32)  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          local.get 10
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
        local.get 10
        i32.const 16
        i32.add
        i32.sub
        local.tee 8
      end
      local.tee 7
      local.get 6
      i32.add
      local.tee 6
      local.get 4
      call 37
      local.get 0
      local.get 14
      local.get 11
      call 33
      local.get 0
      i32.const 48
      local.get 2
      local.get 6
      local.get 4
      i32.const 65536
      i32.xor
      call 37
      local.get 0
      local.get 10
      i32.const 16
      i32.add
      local.get 8
      call 33
      local.get 0
      i32.const 48
      local.get 7
      local.get 8
      i32.sub
      i32.const 0
      i32.const 0
      call 37
      local.get 0
      local.get 13
      local.get 16
      call 33
      local.get 0
      i32.const 32
      local.get 2
      local.get 6
      local.get 4
      i32.const 8192
      i32.xor
      call 37
      local.get 6
      local.get 2
      local.get 2
      local.get 6
      i32.lt_s
      select
      local.set 9
    end
    local.get 10
    i32.const 560
    i32.add
    global.set 0
    local.get 9)
  (func (;39;) (type 2) (param i32 i32)
    (local i64 i64 i64 i64 i64 i64 i32 i32)
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
        local.get 0
        i32.const 16
        i32.add
        local.set 9
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
        local.get 9
        local.get 2
        i64.store
        local.get 9
        local.get 6
        i64.store offset=8
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
        local.tee 3
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
        local.get 3
        i64.const 1152921504606846975
        i64.and
        i64.or
        local.tee 3
        i64.const 576460752303423489
        i64.ge_u
        if  ;; label = @3
          local.get 2
          i64.const 1
          i64.add
          local.set 2
          br 1 (;@2;)
        end
        local.get 3
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
  (func (;40;) (type 1) (param i32 i32 i32) (result i32)
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
      call 22
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
      call 22
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
    local.tee 3
    i32.store offset=28
    local.get 0
    local.get 3
    i32.store offset=20
    local.get 2)
  (func (;41;) (type 0) (param i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    i32.const 13564
    local.get 0
    i32.store
    i32.const -1)
  (func (;42;) (type 5) (param i32 i32) (result i32)
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
            i32.const 13776
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
              i32.const 13564
              i32.const 25
              i32.store
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
            i32.const 13564
            i32.const 25
            i32.store
          end
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
  (func (;43;) (type 0) (param i32) (result i32)
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
                            i32.const 14840
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
                            local.tee 4
                            i32.const 3
                            i32.shr_u
                            local.tee 1
                            i32.shr_u
                            local.tee 0
                            i32.const 3
                            i32.and
                            if  ;; label = @13
                              block  ;; label = @14
                                local.get 0
                                i32.const -1
                                i32.xor
                                i32.const 1
                                i32.and
                                local.get 1
                                i32.add
                                local.tee 3
                                i32.const 3
                                i32.shl
                                local.tee 1
                                i32.const 14880
                                i32.add
                                local.tee 0
                                local.get 1
                                i32.const 14888
                                i32.add
                                i32.load
                                local.tee 1
                                i32.load offset=8
                                local.tee 4
                                i32.eq
                                if  ;; label = @15
                                  i32.const 14840
                                  local.get 6
                                  i32.const -2
                                  local.get 3
                                  i32.rotl
                                  i32.and
                                  i32.store
                                  br 1 (;@14;)
                                end
                                local.get 4
                                local.get 0
                                i32.store offset=12
                                local.get 0
                                local.get 4
                                i32.store offset=8
                              end
                              local.get 1
                              i32.const 8
                              i32.add
                              local.set 0
                              local.get 1
                              local.get 3
                              i32.const 3
                              i32.shl
                              local.tee 3
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
                            local.get 4
                            i32.const 14848
                            i32.load
                            local.tee 8
                            i32.le_u
                            br_if 1 (;@11;)
                            local.get 0
                            if  ;; label = @13
                              block  ;; label = @14
                                local.get 0
                                local.get 1
                                i32.shl
                                i32.const 2
                                local.get 1
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
                                i32.const 1
                                i32.sub
                                local.tee 0
                                local.get 0
                                i32.const 12
                                i32.shr_u
                                i32.const 16
                                i32.and
                                local.tee 0
                                i32.shr_u
                                local.tee 1
                                i32.const 5
                                i32.shr_u
                                i32.const 8
                                i32.and
                                local.tee 3
                                local.get 0
                                i32.or
                                local.get 1
                                local.get 3
                                i32.shr_u
                                local.tee 0
                                i32.const 2
                                i32.shr_u
                                i32.const 4
                                i32.and
                                local.tee 1
                                i32.or
                                local.get 0
                                local.get 1
                                i32.shr_u
                                local.tee 0
                                i32.const 1
                                i32.shr_u
                                i32.const 2
                                i32.and
                                local.tee 1
                                i32.or
                                local.get 0
                                local.get 1
                                i32.shr_u
                                local.tee 0
                                i32.const 1
                                i32.shr_u
                                i32.const 1
                                i32.and
                                local.tee 1
                                i32.or
                                local.get 0
                                local.get 1
                                i32.shr_u
                                i32.add
                                local.tee 1
                                i32.const 3
                                i32.shl
                                local.tee 0
                                i32.const 14880
                                i32.add
                                local.tee 3
                                local.get 0
                                i32.const 14888
                                i32.add
                                i32.load
                                local.tee 0
                                i32.load offset=8
                                local.tee 2
                                i32.eq
                                if  ;; label = @15
                                  i32.const 14840
                                  local.get 6
                                  i32.const -2
                                  local.get 1
                                  i32.rotl
                                  i32.and
                                  local.tee 6
                                  i32.store
                                  br 1 (;@14;)
                                end
                                local.get 2
                                local.get 3
                                i32.store offset=12
                                local.get 3
                                local.get 2
                                i32.store offset=8
                              end
                              local.get 0
                              local.get 4
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 0
                              local.get 4
                              i32.add
                              local.tee 2
                              local.get 1
                              i32.const 3
                              i32.shl
                              local.tee 1
                              local.get 4
                              i32.sub
                              local.tee 3
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              local.get 0
                              local.get 1
                              i32.add
                              local.get 3
                              i32.store
                              local.get 8
                              if  ;; label = @14
                                local.get 8
                                i32.const 3
                                i32.shr_u
                                local.tee 5
                                i32.const 3
                                i32.shl
                                i32.const 14880
                                i32.add
                                local.set 4
                                i32.const 14860
                                i32.load
                                local.set 1
                                block (result i32)  ;; label = @15
                                  local.get 6
                                  i32.const 1
                                  local.get 5
                                  i32.shl
                                  local.tee 5
                                  i32.and
                                  i32.eqz
                                  if  ;; label = @16
                                    i32.const 14840
                                    local.get 5
                                    local.get 6
                                    i32.or
                                    i32.store
                                    local.get 4
                                    br 1 (;@15;)
                                  end
                                  local.get 4
                                  i32.load offset=8
                                end
                                local.set 5
                                local.get 4
                                local.get 1
                                i32.store offset=8
                                local.get 5
                                local.get 1
                                i32.store offset=12
                                local.get 1
                                local.get 4
                                i32.store offset=12
                                local.get 1
                                local.get 5
                                i32.store offset=8
                              end
                              local.get 0
                              i32.const 8
                              i32.add
                              local.set 0
                              i32.const 14860
                              local.get 2
                              i32.store
                              i32.const 14848
                              local.get 3
                              i32.store
                              br 12 (;@1;)
                            end
                            i32.const 14844
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
                            local.tee 0
                            i32.shr_u
                            local.tee 1
                            i32.const 5
                            i32.shr_u
                            i32.const 8
                            i32.and
                            local.tee 3
                            local.get 0
                            i32.or
                            local.get 1
                            local.get 3
                            i32.shr_u
                            local.tee 0
                            i32.const 2
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee 1
                            i32.or
                            local.get 0
                            local.get 1
                            i32.shr_u
                            local.tee 0
                            i32.const 1
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee 1
                            i32.or
                            local.get 0
                            local.get 1
                            i32.shr_u
                            local.tee 0
                            i32.const 1
                            i32.shr_u
                            i32.const 1
                            i32.and
                            local.tee 1
                            i32.or
                            local.get 0
                            local.get 1
                            i32.shr_u
                            i32.add
                            i32.const 2
                            i32.shl
                            i32.const 15144
                            i32.add
                            i32.load
                            local.tee 2
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.get 4
                            i32.sub
                            local.set 1
                            local.get 2
                            local.set 3
                            loop  ;; label = @13
                              block  ;; label = @14
                                local.get 3
                                i32.load offset=16
                                local.tee 0
                                i32.eqz
                                if  ;; label = @15
                                  local.get 3
                                  i32.load offset=20
                                  local.tee 0
                                  i32.eqz
                                  br_if 1 (;@14;)
                                end
                                local.get 0
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 4
                                i32.sub
                                local.tee 3
                                local.get 1
                                local.get 1
                                local.get 3
                                i32.gt_u
                                local.tee 3
                                select
                                local.set 1
                                local.get 0
                                local.get 2
                                local.get 3
                                select
                                local.set 2
                                local.get 0
                                local.set 3
                                br 1 (;@13;)
                              end
                            end
                            local.get 2
                            i32.load offset=24
                            local.set 10
                            local.get 2
                            local.get 2
                            i32.load offset=12
                            local.tee 5
                            i32.ne
                            if  ;; label = @13
                              local.get 2
                              i32.load offset=8
                              local.tee 0
                              i32.const 14856
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
                            local.get 2
                            i32.const 20
                            i32.add
                            local.tee 3
                            i32.load
                            local.tee 0
                            i32.eqz
                            if  ;; label = @13
                              local.get 2
                              i32.load offset=16
                              local.tee 0
                              i32.eqz
                              br_if 3 (;@10;)
                              local.get 2
                              i32.const 16
                              i32.add
                              local.set 3
                            end
                            loop  ;; label = @13
                              local.get 3
                              local.set 7
                              local.get 0
                              local.tee 5
                              i32.const 20
                              i32.add
                              local.tee 3
                              i32.load
                              local.tee 0
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 16
                              i32.add
                              local.set 3
                              local.get 5
                              i32.load offset=16
                              local.tee 0
                              br_if 0 (;@13;)
                            end
                            local.get 7
                            i32.const 0
                            i32.store
                            br 10 (;@2;)
                          end
                          i32.const -1
                          local.set 4
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
                          local.set 4
                          i32.const 14844
                          i32.load
                          local.tee 8
                          i32.eqz
                          br_if 0 (;@11;)
                          block (result i32)  ;; label = @12
                            i32.const 0
                            local.get 4
                            i32.const 256
                            i32.lt_u
                            br_if 0 (;@12;)
                            drop
                            i32.const 31
                            local.get 4
                            i32.const 16777215
                            i32.gt_u
                            br_if 0 (;@12;)
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
                            local.tee 0
                            i32.shl
                            local.tee 1
                            local.get 1
                            i32.const 520192
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee 1
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
                            local.get 1
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
                          end
                          local.set 7
                          i32.const 0
                          local.get 4
                          i32.sub
                          local.set 1
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 7
                                i32.const 2
                                i32.shl
                                i32.const 15144
                                i32.add
                                i32.load
                                local.tee 3
                                i32.eqz
                                if  ;; label = @15
                                  i32.const 0
                                  local.set 0
                                  br 1 (;@14;)
                                end
                                i32.const 0
                                local.set 0
                                local.get 4
                                i32.const 0
                                i32.const 25
                                local.get 7
                                i32.const 1
                                i32.shr_u
                                i32.sub
                                local.get 7
                                i32.const 31
                                i32.eq
                                select
                                i32.shl
                                local.set 2
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 3
                                    i32.load offset=4
                                    i32.const -8
                                    i32.and
                                    local.get 4
                                    i32.sub
                                    local.tee 6
                                    local.get 1
                                    i32.ge_u
                                    br_if 0 (;@16;)
                                    local.get 3
                                    local.set 5
                                    local.get 6
                                    local.tee 1
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.set 1
                                    local.get 3
                                    local.set 0
                                    br 3 (;@13;)
                                  end
                                  local.get 0
                                  local.get 3
                                  i32.load offset=20
                                  local.tee 6
                                  local.get 6
                                  local.get 3
                                  local.get 2
                                  i32.const 29
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  i32.add
                                  i32.load offset=16
                                  local.tee 3
                                  i32.eq
                                  select
                                  local.get 0
                                  local.get 6
                                  select
                                  local.set 0
                                  local.get 2
                                  i32.const 1
                                  i32.shl
                                  local.set 2
                                  local.get 3
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
                                local.get 7
                                i32.shl
                                local.tee 0
                                i32.const 0
                                local.get 0
                                i32.sub
                                i32.or
                                local.get 8
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
                                local.tee 0
                                i32.shr_u
                                local.tee 3
                                i32.const 5
                                i32.shr_u
                                i32.const 8
                                i32.and
                                local.tee 2
                                local.get 0
                                i32.or
                                local.get 3
                                local.get 2
                                i32.shr_u
                                local.tee 0
                                i32.const 2
                                i32.shr_u
                                i32.const 4
                                i32.and
                                local.tee 3
                                i32.or
                                local.get 0
                                local.get 3
                                i32.shr_u
                                local.tee 0
                                i32.const 1
                                i32.shr_u
                                i32.const 2
                                i32.and
                                local.tee 3
                                i32.or
                                local.get 0
                                local.get 3
                                i32.shr_u
                                local.tee 0
                                i32.const 1
                                i32.shr_u
                                i32.const 1
                                i32.and
                                local.tee 3
                                i32.or
                                local.get 0
                                local.get 3
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
                              local.get 4
                              i32.sub
                              local.tee 6
                              local.get 1
                              i32.lt_u
                              local.set 2
                              local.get 6
                              local.get 1
                              local.get 2
                              select
                              local.set 1
                              local.get 0
                              local.get 5
                              local.get 2
                              select
                              local.set 5
                              local.get 0
                              i32.load offset=16
                              local.tee 3
                              if (result i32)  ;; label = @14
                                local.get 3
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
                          local.get 1
                          i32.const 14848
                          i32.load
                          local.get 4
                          i32.sub
                          i32.ge_u
                          br_if 0 (;@11;)
                          local.get 5
                          i32.load offset=24
                          local.set 7
                          local.get 5
                          local.get 5
                          i32.load offset=12
                          local.tee 2
                          i32.ne
                          if  ;; label = @12
                            local.get 5
                            i32.load offset=8
                            local.tee 0
                            i32.const 14856
                            i32.load
                            i32.lt_u
                            drop
                            local.get 0
                            local.get 2
                            i32.store offset=12
                            local.get 2
                            local.get 0
                            i32.store offset=8
                            br 9 (;@3;)
                          end
                          local.get 5
                          i32.const 20
                          i32.add
                          local.tee 3
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
                            local.set 3
                          end
                          loop  ;; label = @12
                            local.get 3
                            local.set 6
                            local.get 0
                            local.tee 2
                            i32.const 20
                            i32.add
                            local.tee 3
                            i32.load
                            local.tee 0
                            br_if 0 (;@12;)
                            local.get 2
                            i32.const 16
                            i32.add
                            local.set 3
                            local.get 2
                            i32.load offset=16
                            local.tee 0
                            br_if 0 (;@12;)
                          end
                          local.get 6
                          i32.const 0
                          i32.store
                          br 8 (;@3;)
                        end
                        local.get 4
                        i32.const 14848
                        i32.load
                        local.tee 0
                        i32.le_u
                        if  ;; label = @11
                          i32.const 14860
                          i32.load
                          local.set 1
                          block  ;; label = @12
                            local.get 0
                            local.get 4
                            i32.sub
                            local.tee 3
                            i32.const 16
                            i32.ge_u
                            if  ;; label = @13
                              i32.const 14848
                              local.get 3
                              i32.store
                              i32.const 14860
                              local.get 1
                              local.get 4
                              i32.add
                              local.tee 2
                              i32.store
                              local.get 2
                              local.get 3
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              local.get 0
                              local.get 1
                              i32.add
                              local.get 3
                              i32.store
                              local.get 1
                              local.get 4
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              br 1 (;@12;)
                            end
                            i32.const 14860
                            i32.const 0
                            i32.store
                            i32.const 14848
                            i32.const 0
                            i32.store
                            local.get 1
                            local.get 0
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
                          end
                          local.get 1
                          i32.const 8
                          i32.add
                          local.set 0
                          br 10 (;@1;)
                        end
                        local.get 4
                        i32.const 14852
                        i32.load
                        local.tee 2
                        i32.lt_u
                        if  ;; label = @11
                          i32.const 14852
                          local.get 2
                          local.get 4
                          i32.sub
                          local.tee 1
                          i32.store
                          i32.const 14864
                          i32.const 14864
                          i32.load
                          local.tee 0
                          local.get 4
                          i32.add
                          local.tee 3
                          i32.store
                          local.get 3
                          local.get 1
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 0
                          local.get 4
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 0
                          i32.const 8
                          i32.add
                          local.set 0
                          br 10 (;@1;)
                        end
                        i32.const 0
                        local.set 0
                        local.get 4
                        i32.const 47
                        i32.add
                        local.tee 8
                        block (result i32)  ;; label = @11
                          i32.const 15312
                          i32.load
                          if  ;; label = @12
                            i32.const 15320
                            i32.load
                            br 1 (;@11;)
                          end
                          i32.const 15324
                          i64.const -1
                          i64.store align=4
                          i32.const 15316
                          i64.const 17592186048512
                          i64.store align=4
                          i32.const 15312
                          local.get 11
                          i32.const 12
                          i32.add
                          i32.const -16
                          i32.and
                          i32.const 1431655768
                          i32.xor
                          i32.store
                          i32.const 15332
                          i32.const 0
                          i32.store
                          i32.const 15284
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
                        local.tee 7
                        i32.and
                        local.tee 5
                        local.get 4
                        i32.le_u
                        br_if 9 (;@1;)
                        i32.const 15280
                        i32.load
                        local.tee 1
                        if  ;; label = @11
                          i32.const 15272
                          i32.load
                          local.tee 3
                          local.get 5
                          i32.add
                          local.tee 9
                          local.get 3
                          i32.le_u
                          br_if 10 (;@1;)
                          local.get 1
                          local.get 9
                          i32.lt_u
                          br_if 10 (;@1;)
                        end
                        i32.const 15284
                        i32.load8_u
                        i32.const 4
                        i32.and
                        br_if 4 (;@6;)
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 14864
                            i32.load
                            local.tee 1
                            if  ;; label = @13
                              i32.const 15288
                              local.set 0
                              loop  ;; label = @14
                                local.get 1
                                local.get 0
                                i32.load
                                local.tee 3
                                i32.ge_u
                                if  ;; label = @15
                                  local.get 3
                                  local.get 0
                                  i32.load offset=4
                                  i32.add
                                  local.get 1
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
                            call 44
                            local.tee 2
                            i32.const -1
                            i32.eq
                            br_if 5 (;@7;)
                            local.get 5
                            local.set 6
                            i32.const 15316
                            i32.load
                            local.tee 0
                            i32.const 1
                            i32.sub
                            local.tee 1
                            local.get 2
                            i32.and
                            if  ;; label = @13
                              local.get 5
                              local.get 2
                              i32.sub
                              local.get 1
                              local.get 2
                              i32.add
                              i32.const 0
                              local.get 0
                              i32.sub
                              i32.and
                              i32.add
                              local.set 6
                            end
                            local.get 4
                            local.get 6
                            i32.ge_u
                            br_if 5 (;@7;)
                            local.get 6
                            i32.const 2147483646
                            i32.gt_u
                            br_if 5 (;@7;)
                            i32.const 15280
                            i32.load
                            local.tee 0
                            if  ;; label = @13
                              i32.const 15272
                              i32.load
                              local.tee 1
                              local.get 6
                              i32.add
                              local.tee 3
                              local.get 1
                              i32.le_u
                              br_if 6 (;@7;)
                              local.get 0
                              local.get 3
                              i32.lt_u
                              br_if 6 (;@7;)
                            end
                            local.get 6
                            call 44
                            local.tee 0
                            local.get 2
                            i32.ne
                            br_if 1 (;@11;)
                            br 7 (;@5;)
                          end
                          local.get 6
                          local.get 2
                          i32.sub
                          local.get 7
                          i32.and
                          local.tee 6
                          i32.const 2147483646
                          i32.gt_u
                          br_if 4 (;@7;)
                          local.get 6
                          call 44
                          local.tee 2
                          local.get 0
                          i32.load
                          local.get 0
                          i32.load offset=4
                          i32.add
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 2
                          local.set 0
                        end
                        block  ;; label = @11
                          local.get 0
                          i32.const -1
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 4
                          i32.const 48
                          i32.add
                          local.get 6
                          i32.le_u
                          br_if 0 (;@11;)
                          i32.const 15320
                          i32.load
                          local.tee 1
                          local.get 8
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
                            local.set 2
                            br 7 (;@5;)
                          end
                          local.get 1
                          call 44
                          i32.const -1
                          i32.ne
                          if  ;; label = @12
                            local.get 1
                            local.get 6
                            i32.add
                            local.set 6
                            local.get 0
                            local.set 2
                            br 7 (;@5;)
                          end
                          i32.const 0
                          local.get 6
                          i32.sub
                          call 44
                          drop
                          br 4 (;@7;)
                        end
                        local.get 0
                        local.set 2
                        local.get 0
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
                    local.set 2
                    br 5 (;@3;)
                  end
                  local.get 2
                  i32.const -1
                  i32.ne
                  br_if 2 (;@5;)
                end
                i32.const 15284
                i32.const 15284
                i32.load
                i32.const 4
                i32.or
                i32.store
              end
              local.get 5
              i32.const 2147483646
              i32.gt_u
              br_if 1 (;@4;)
              local.get 5
              call 44
              local.set 2
              i32.const 0
              call 44
              local.set 0
              local.get 2
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              local.get 0
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              local.get 0
              local.get 2
              i32.le_u
              br_if 1 (;@4;)
              local.get 0
              local.get 2
              i32.sub
              local.tee 6
              local.get 4
              i32.const 40
              i32.add
              i32.le_u
              br_if 1 (;@4;)
            end
            i32.const 15272
            i32.const 15272
            i32.load
            local.get 6
            i32.add
            local.tee 0
            i32.store
            i32.const 15276
            i32.load
            local.get 0
            i32.lt_u
            if  ;; label = @5
              i32.const 15276
              local.get 0
              i32.store
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 14864
                  i32.load
                  local.tee 1
                  if  ;; label = @8
                    i32.const 15288
                    local.set 0
                    loop  ;; label = @9
                      local.get 2
                      local.get 0
                      i32.load
                      local.tee 3
                      local.get 0
                      i32.load offset=4
                      local.tee 5
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
                  i32.const 14856
                  i32.load
                  local.tee 0
                  i32.const 0
                  local.get 0
                  local.get 2
                  i32.le_u
                  select
                  i32.eqz
                  if  ;; label = @8
                    i32.const 14856
                    local.get 2
                    i32.store
                  end
                  i32.const 0
                  local.set 0
                  i32.const 15292
                  local.get 6
                  i32.store
                  i32.const 15288
                  local.get 2
                  i32.store
                  i32.const 14872
                  i32.const -1
                  i32.store
                  i32.const 14876
                  i32.const 15312
                  i32.load
                  i32.store
                  i32.const 15300
                  i32.const 0
                  i32.store
                  loop  ;; label = @8
                    local.get 0
                    i32.const 3
                    i32.shl
                    local.tee 1
                    i32.const 14888
                    i32.add
                    local.get 1
                    i32.const 14880
                    i32.add
                    local.tee 3
                    i32.store
                    local.get 1
                    i32.const 14892
                    i32.add
                    local.get 3
                    i32.store
                    local.get 0
                    i32.const 1
                    i32.add
                    local.tee 0
                    i32.const 32
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  i32.const 14852
                  local.get 6
                  i32.const 40
                  i32.sub
                  local.tee 0
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
                  local.tee 1
                  i32.sub
                  local.tee 3
                  i32.store
                  i32.const 14864
                  local.get 1
                  local.get 2
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 3
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  local.get 2
                  i32.add
                  i32.const 40
                  i32.store offset=4
                  i32.const 14868
                  i32.const 15328
                  i32.load
                  i32.store
                  br 2 (;@5;)
                end
                local.get 0
                i32.load8_u offset=12
                i32.const 8
                i32.and
                br_if 0 (;@6;)
                local.get 1
                local.get 3
                i32.lt_u
                br_if 0 (;@6;)
                local.get 1
                local.get 2
                i32.ge_u
                br_if 0 (;@6;)
                local.get 0
                local.get 5
                local.get 6
                i32.add
                i32.store offset=4
                i32.const 14864
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
                local.tee 0
                i32.add
                local.tee 3
                i32.store
                i32.const 14852
                i32.const 14852
                i32.load
                local.get 6
                i32.add
                local.tee 2
                local.get 0
                i32.sub
                local.tee 0
                i32.store
                local.get 3
                local.get 0
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 1
                local.get 2
                i32.add
                i32.const 40
                i32.store offset=4
                i32.const 14868
                i32.const 15328
                i32.load
                i32.store
                br 1 (;@5;)
              end
              i32.const 14856
              i32.load
              local.get 2
              i32.gt_u
              if  ;; label = @6
                i32.const 14856
                local.get 2
                i32.store
              end
              local.get 2
              local.get 6
              i32.add
              local.set 3
              i32.const 15288
              local.set 0
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          loop  ;; label = @12
                            local.get 3
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
                        i32.const 15288
                        local.set 0
                        loop  ;; label = @11
                          local.get 1
                          local.get 0
                          i32.load
                          local.tee 3
                          i32.ge_u
                          if  ;; label = @12
                            local.get 3
                            local.get 0
                            i32.load offset=4
                            i32.add
                            local.tee 3
                            local.get 1
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
                      local.get 2
                      i32.store
                      local.get 0
                      local.get 0
                      i32.load offset=4
                      local.get 6
                      i32.add
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
                      local.tee 7
                      local.get 4
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 3
                      i32.const -8
                      local.get 3
                      i32.sub
                      i32.const 7
                      i32.and
                      i32.const 0
                      local.get 3
                      i32.const 8
                      i32.add
                      i32.const 7
                      i32.and
                      select
                      i32.add
                      local.tee 6
                      local.get 4
                      local.get 7
                      i32.add
                      local.tee 4
                      i32.sub
                      local.set 3
                      local.get 1
                      local.get 6
                      i32.eq
                      if  ;; label = @10
                        i32.const 14864
                        local.get 4
                        i32.store
                        i32.const 14852
                        i32.const 14852
                        i32.load
                        local.get 3
                        i32.add
                        local.tee 0
                        i32.store
                        local.get 4
                        local.get 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        br 3 (;@7;)
                      end
                      i32.const 14860
                      i32.load
                      local.get 6
                      i32.eq
                      if  ;; label = @10
                        i32.const 14860
                        local.get 4
                        i32.store
                        i32.const 14848
                        i32.const 14848
                        i32.load
                        local.get 3
                        i32.add
                        local.tee 0
                        i32.store
                        local.get 4
                        local.get 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 0
                        local.get 4
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
                        local.set 8
                        block  ;; label = @11
                          local.get 0
                          i32.const 255
                          i32.le_u
                          if  ;; label = @12
                            local.get 6
                            i32.load offset=8
                            local.tee 1
                            local.get 0
                            i32.const 3
                            i32.shr_u
                            local.tee 5
                            i32.const 3
                            i32.shl
                            i32.const 14880
                            i32.add
                            i32.eq
                            drop
                            local.get 1
                            local.get 6
                            i32.load offset=12
                            local.tee 0
                            i32.eq
                            if  ;; label = @13
                              i32.const 14840
                              i32.const 14840
                              i32.load
                              i32.const -2
                              local.get 5
                              i32.rotl
                              i32.and
                              i32.store
                              br 2 (;@11;)
                            end
                            local.get 1
                            local.get 0
                            i32.store offset=12
                            local.get 0
                            local.get 1
                            i32.store offset=8
                            br 1 (;@11;)
                          end
                          local.get 6
                          i32.load offset=24
                          local.set 9
                          block  ;; label = @12
                            local.get 6
                            local.get 6
                            i32.load offset=12
                            local.tee 2
                            i32.ne
                            if  ;; label = @13
                              local.get 6
                              i32.load offset=8
                              local.tee 0
                              local.get 2
                              i32.store offset=12
                              local.get 2
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
                              local.tee 1
                              br_if 0 (;@13;)
                              local.get 6
                              i32.const 16
                              i32.add
                              local.tee 0
                              i32.load
                              local.tee 1
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 2
                              br 1 (;@12;)
                            end
                            loop  ;; label = @13
                              local.get 0
                              local.set 5
                              local.get 1
                              local.tee 2
                              i32.const 20
                              i32.add
                              local.tee 0
                              i32.load
                              local.tee 1
                              br_if 0 (;@13;)
                              local.get 2
                              i32.const 16
                              i32.add
                              local.set 0
                              local.get 2
                              i32.load offset=16
                              local.tee 1
                              br_if 0 (;@13;)
                            end
                            local.get 5
                            i32.const 0
                            i32.store
                          end
                          local.get 9
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            local.get 6
                            i32.load offset=28
                            local.tee 1
                            i32.const 2
                            i32.shl
                            i32.const 15144
                            i32.add
                            local.tee 0
                            i32.load
                            local.get 6
                            i32.eq
                            if  ;; label = @13
                              local.get 0
                              local.get 2
                              i32.store
                              local.get 2
                              br_if 1 (;@12;)
                              i32.const 14844
                              i32.const 14844
                              i32.load
                              i32.const -2
                              local.get 1
                              i32.rotl
                              i32.and
                              i32.store
                              br 2 (;@11;)
                            end
                            local.get 9
                            i32.const 16
                            i32.const 20
                            local.get 9
                            i32.load offset=16
                            local.get 6
                            i32.eq
                            select
                            i32.add
                            local.get 2
                            i32.store
                            local.get 2
                            i32.eqz
                            br_if 1 (;@11;)
                          end
                          local.get 2
                          local.get 9
                          i32.store offset=24
                          local.get 6
                          i32.load offset=16
                          local.tee 0
                          if  ;; label = @12
                            local.get 2
                            local.get 0
                            i32.store offset=16
                            local.get 0
                            local.get 2
                            i32.store offset=24
                          end
                          local.get 6
                          i32.load offset=20
                          local.tee 0
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 2
                          local.get 0
                          i32.store offset=20
                          local.get 0
                          local.get 2
                          i32.store offset=24
                        end
                        local.get 3
                        local.get 8
                        i32.add
                        local.set 3
                        local.get 6
                        local.get 8
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
                      local.get 4
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
                      if  ;; label = @10
                        local.get 3
                        i32.const 3
                        i32.shr_u
                        local.tee 1
                        i32.const 3
                        i32.shl
                        i32.const 14880
                        i32.add
                        local.set 0
                        block (result i32)  ;; label = @11
                          i32.const 14840
                          i32.load
                          local.tee 3
                          i32.const 1
                          local.get 1
                          i32.shl
                          local.tee 1
                          i32.and
                          i32.eqz
                          if  ;; label = @12
                            i32.const 14840
                            local.get 1
                            local.get 3
                            i32.or
                            i32.store
                            local.get 0
                            br 1 (;@11;)
                          end
                          local.get 0
                          i32.load offset=8
                        end
                        local.set 1
                        local.get 0
                        local.get 4
                        i32.store offset=8
                        local.get 1
                        local.get 4
                        i32.store offset=12
                        local.get 4
                        local.get 0
                        i32.store offset=12
                        local.get 4
                        local.get 1
                        i32.store offset=8
                        br 3 (;@7;)
                      end
                      i32.const 31
                      local.set 0
                      local.get 3
                      i32.const 16777215
                      i32.le_u
                      if  ;; label = @10
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
                        local.tee 0
                        i32.shl
                        local.tee 1
                        local.get 1
                        i32.const 520192
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 4
                        i32.and
                        local.tee 1
                        i32.shl
                        local.tee 2
                        local.get 2
                        i32.const 245760
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 2
                        i32.and
                        local.tee 2
                        i32.shl
                        i32.const 15
                        i32.shr_u
                        local.get 0
                        local.get 1
                        i32.or
                        local.get 2
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
                      i32.const 15144
                      i32.add
                      local.set 1
                      block  ;; label = @10
                        i32.const 14844
                        i32.load
                        local.tee 2
                        i32.const 1
                        local.get 0
                        i32.shl
                        local.tee 5
                        i32.and
                        i32.eqz
                        if  ;; label = @11
                          i32.const 14844
                          local.get 2
                          local.get 5
                          i32.or
                          i32.store
                          local.get 1
                          local.get 4
                          i32.store
                          local.get 4
                          local.get 1
                          i32.store offset=24
                          br 1 (;@10;)
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
                        local.set 2
                        loop  ;; label = @11
                          local.get 2
                          local.tee 1
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          local.get 3
                          i32.eq
                          br_if 3 (;@8;)
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
                          i32.const 16
                          i32.add
                          local.tee 5
                          i32.load
                          local.tee 2
                          br_if 0 (;@11;)
                        end
                        local.get 5
                        local.get 4
                        i32.store
                        local.get 4
                        local.get 1
                        i32.store offset=24
                      end
                      local.get 4
                      local.get 4
                      i32.store offset=12
                      local.get 4
                      local.get 4
                      i32.store offset=8
                      br 2 (;@7;)
                    end
                    i32.const 14852
                    local.get 6
                    i32.const 40
                    i32.sub
                    local.tee 0
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
                    local.tee 5
                    i32.sub
                    local.tee 7
                    i32.store
                    i32.const 14864
                    local.get 2
                    local.get 5
                    i32.add
                    local.tee 5
                    i32.store
                    local.get 5
                    local.get 7
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 0
                    local.get 2
                    i32.add
                    i32.const 40
                    i32.store offset=4
                    i32.const 14868
                    i32.const 15328
                    i32.load
                    i32.store
                    local.get 1
                    local.get 3
                    i32.const 39
                    local.get 3
                    i32.sub
                    i32.const 7
                    i32.and
                    i32.const 0
                    local.get 3
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
                    local.get 1
                    i32.const 16
                    i32.add
                    i32.lt_u
                    select
                    local.tee 5
                    i32.const 27
                    i32.store offset=4
                    local.get 5
                    i32.const 15296
                    i64.load align=4
                    i64.store offset=16 align=4
                    local.get 5
                    i32.const 15288
                    i64.load align=4
                    i64.store offset=8 align=4
                    i32.const 15296
                    local.get 5
                    i32.const 8
                    i32.add
                    i32.store
                    i32.const 15292
                    local.get 6
                    i32.store
                    i32.const 15288
                    local.get 2
                    i32.store
                    i32.const 15300
                    i32.const 0
                    i32.store
                    local.get 5
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
                      local.set 2
                      local.get 0
                      i32.const 4
                      i32.add
                      local.set 0
                      local.get 2
                      local.get 3
                      i32.lt_u
                      br_if 0 (;@9;)
                    end
                    local.get 1
                    local.get 5
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 5
                    local.get 5
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get 1
                    local.get 5
                    local.get 1
                    i32.sub
                    local.tee 6
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 5
                    local.get 6
                    i32.store
                    local.get 6
                    i32.const 255
                    i32.le_u
                    if  ;; label = @9
                      local.get 6
                      i32.const 3
                      i32.shr_u
                      local.tee 3
                      i32.const 3
                      i32.shl
                      i32.const 14880
                      i32.add
                      local.set 0
                      block (result i32)  ;; label = @10
                        i32.const 14840
                        i32.load
                        local.tee 2
                        i32.const 1
                        local.get 3
                        i32.shl
                        local.tee 3
                        i32.and
                        i32.eqz
                        if  ;; label = @11
                          i32.const 14840
                          local.get 2
                          local.get 3
                          i32.or
                          i32.store
                          local.get 0
                          br 1 (;@10;)
                        end
                        local.get 0
                        i32.load offset=8
                      end
                      local.set 3
                      local.get 0
                      local.get 1
                      i32.store offset=8
                      local.get 3
                      local.get 1
                      i32.store offset=12
                      local.get 1
                      local.get 0
                      i32.store offset=12
                      local.get 1
                      local.get 3
                      i32.store offset=8
                      br 4 (;@5;)
                    end
                    i32.const 31
                    local.set 0
                    local.get 6
                    i32.const 16777215
                    i32.le_u
                    if  ;; label = @9
                      local.get 6
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
                      local.tee 3
                      local.get 3
                      i32.const 520192
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 4
                      i32.and
                      local.tee 3
                      i32.shl
                      local.tee 2
                      local.get 2
                      i32.const 245760
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 2
                      i32.and
                      local.tee 2
                      i32.shl
                      i32.const 15
                      i32.shr_u
                      local.get 0
                      local.get 3
                      i32.or
                      local.get 2
                      i32.or
                      i32.sub
                      local.tee 0
                      i32.const 1
                      i32.shl
                      local.get 6
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
                    local.get 1
                    local.get 0
                    i32.store offset=28
                    local.get 1
                    i64.const 0
                    i64.store offset=16 align=4
                    local.get 0
                    i32.const 2
                    i32.shl
                    i32.const 15144
                    i32.add
                    local.set 3
                    block  ;; label = @9
                      i32.const 14844
                      i32.load
                      local.tee 2
                      i32.const 1
                      local.get 0
                      i32.shl
                      local.tee 5
                      i32.and
                      i32.eqz
                      if  ;; label = @10
                        i32.const 14844
                        local.get 2
                        local.get 5
                        i32.or
                        i32.store
                        local.get 3
                        local.get 1
                        i32.store
                        local.get 1
                        local.get 3
                        i32.store offset=24
                        br 1 (;@9;)
                      end
                      local.get 6
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
                      local.set 2
                      loop  ;; label = @10
                        local.get 2
                        local.tee 3
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 6
                        i32.eq
                        br_if 4 (;@6;)
                        local.get 0
                        i32.const 29
                        i32.shr_u
                        local.set 2
                        local.get 0
                        i32.const 1
                        i32.shl
                        local.set 0
                        local.get 3
                        local.get 2
                        i32.const 4
                        i32.and
                        i32.add
                        i32.const 16
                        i32.add
                        local.tee 5
                        i32.load
                        local.tee 2
                        br_if 0 (;@10;)
                      end
                      local.get 5
                      local.get 1
                      i32.store
                      local.get 1
                      local.get 3
                      i32.store offset=24
                    end
                    local.get 1
                    local.get 1
                    i32.store offset=12
                    local.get 1
                    local.get 1
                    i32.store offset=8
                    br 3 (;@5;)
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
                local.get 7
                i32.const 8
                i32.add
                local.set 0
                br 5 (;@1;)
              end
              local.get 3
              i32.load offset=8
              local.tee 0
              local.get 1
              i32.store offset=12
              local.get 3
              local.get 1
              i32.store offset=8
              local.get 1
              i32.const 0
              i32.store offset=24
              local.get 1
              local.get 3
              i32.store offset=12
              local.get 1
              local.get 0
              i32.store offset=8
            end
            i32.const 14852
            i32.load
            local.tee 0
            local.get 4
            i32.le_u
            br_if 0 (;@4;)
            i32.const 14852
            local.get 0
            local.get 4
            i32.sub
            local.tee 1
            i32.store
            i32.const 14864
            i32.const 14864
            i32.load
            local.tee 0
            local.get 4
            i32.add
            local.tee 3
            i32.store
            local.get 3
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 4
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 0
            i32.const 8
            i32.add
            local.set 0
            br 3 (;@1;)
          end
          i32.const 13564
          i32.const 48
          i32.store
          i32.const 0
          local.set 0
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 5
            i32.load offset=28
            local.tee 3
            i32.const 2
            i32.shl
            i32.const 15144
            i32.add
            local.tee 0
            i32.load
            local.get 5
            i32.eq
            if  ;; label = @5
              local.get 0
              local.get 2
              i32.store
              local.get 2
              br_if 1 (;@4;)
              i32.const 14844
              local.get 8
              i32.const -2
              local.get 3
              i32.rotl
              i32.and
              local.tee 8
              i32.store
              br 2 (;@3;)
            end
            local.get 7
            i32.const 16
            i32.const 20
            local.get 7
            i32.load offset=16
            local.get 5
            i32.eq
            select
            i32.add
            local.get 2
            i32.store
            local.get 2
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 2
          local.get 7
          i32.store offset=24
          local.get 5
          i32.load offset=16
          local.tee 0
          if  ;; label = @4
            local.get 2
            local.get 0
            i32.store offset=16
            local.get 0
            local.get 2
            i32.store offset=24
          end
          local.get 5
          i32.load offset=20
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 0
          i32.store offset=20
          local.get 0
          local.get 2
          i32.store offset=24
        end
        block  ;; label = @3
          local.get 1
          i32.const 15
          i32.le_u
          if  ;; label = @4
            local.get 5
            local.get 1
            local.get 4
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
          local.get 4
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 4
          local.get 5
          i32.add
          local.tee 2
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 1
          local.get 2
          i32.add
          local.get 1
          i32.store
          local.get 1
          i32.const 255
          i32.le_u
          if  ;; label = @4
            local.get 1
            i32.const 3
            i32.shr_u
            local.tee 1
            i32.const 3
            i32.shl
            i32.const 14880
            i32.add
            local.set 0
            block (result i32)  ;; label = @5
              i32.const 14840
              i32.load
              local.tee 3
              i32.const 1
              local.get 1
              i32.shl
              local.tee 1
              i32.and
              i32.eqz
              if  ;; label = @6
                i32.const 14840
                local.get 1
                local.get 3
                i32.or
                i32.store
                local.get 0
                br 1 (;@5;)
              end
              local.get 0
              i32.load offset=8
            end
            local.set 1
            local.get 0
            local.get 2
            i32.store offset=8
            local.get 1
            local.get 2
            i32.store offset=12
            local.get 2
            local.get 0
            i32.store offset=12
            local.get 2
            local.get 1
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 31
          local.set 0
          local.get 1
          i32.const 16777215
          i32.le_u
          if  ;; label = @4
            local.get 1
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
            local.tee 3
            local.get 3
            i32.const 520192
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 4
            i32.and
            local.tee 3
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
            local.get 0
            local.get 3
            i32.or
            local.get 4
            i32.or
            i32.sub
            local.tee 0
            i32.const 1
            i32.shl
            local.get 1
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
          local.get 2
          local.get 0
          i32.store offset=28
          local.get 2
          i64.const 0
          i64.store offset=16 align=4
          local.get 0
          i32.const 2
          i32.shl
          i32.const 15144
          i32.add
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              local.get 8
              i32.const 1
              local.get 0
              i32.shl
              local.tee 4
              i32.and
              i32.eqz
              if  ;; label = @6
                i32.const 14844
                local.get 4
                local.get 8
                i32.or
                i32.store
                local.get 3
                local.get 2
                i32.store
                local.get 2
                local.get 3
                i32.store offset=24
                br 1 (;@5;)
              end
              local.get 1
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
              local.set 4
              loop  ;; label = @6
                local.get 4
                local.tee 3
                i32.load offset=4
                i32.const -8
                i32.and
                local.get 1
                i32.eq
                br_if 2 (;@4;)
                local.get 0
                i32.const 29
                i32.shr_u
                local.set 4
                local.get 0
                i32.const 1
                i32.shl
                local.set 0
                local.get 3
                local.get 4
                i32.const 4
                i32.and
                i32.add
                i32.const 16
                i32.add
                local.tee 6
                i32.load
                local.tee 4
                br_if 0 (;@6;)
              end
              local.get 6
              local.get 2
              i32.store
              local.get 2
              local.get 3
              i32.store offset=24
            end
            local.get 2
            local.get 2
            i32.store offset=12
            local.get 2
            local.get 2
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 3
          i32.load offset=8
          local.tee 0
          local.get 2
          i32.store offset=12
          local.get 3
          local.get 2
          i32.store offset=8
          local.get 2
          i32.const 0
          i32.store offset=24
          local.get 2
          local.get 3
          i32.store offset=12
          local.get 2
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
        local.get 10
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 2
          i32.load offset=28
          local.tee 3
          i32.const 2
          i32.shl
          i32.const 15144
          i32.add
          local.tee 0
          i32.load
          local.get 2
          i32.eq
          if  ;; label = @4
            local.get 0
            local.get 5
            i32.store
            local.get 5
            br_if 1 (;@3;)
            i32.const 14844
            local.get 9
            i32.const -2
            local.get 3
            i32.rotl
            i32.and
            i32.store
            br 2 (;@2;)
          end
          local.get 10
          i32.const 16
          i32.const 20
          local.get 10
          i32.load offset=16
          local.get 2
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
        local.get 10
        i32.store offset=24
        local.get 2
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
        local.get 2
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
        local.get 1
        i32.const 15
        i32.le_u
        if  ;; label = @3
          local.get 2
          local.get 1
          local.get 4
          i32.add
          local.tee 0
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 0
          local.get 2
          i32.add
          local.tee 0
          local.get 0
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 2
        local.get 4
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 2
        local.get 4
        i32.add
        local.tee 3
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 1
        local.get 3
        i32.add
        local.get 1
        i32.store
        local.get 8
        if  ;; label = @3
          local.get 8
          i32.const 3
          i32.shr_u
          local.tee 5
          i32.const 3
          i32.shl
          i32.const 14880
          i32.add
          local.set 4
          i32.const 14860
          i32.load
          local.set 0
          block (result i32)  ;; label = @4
            i32.const 1
            local.get 5
            i32.shl
            local.tee 5
            local.get 6
            i32.and
            i32.eqz
            if  ;; label = @5
              i32.const 14840
              local.get 5
              local.get 6
              i32.or
              i32.store
              local.get 4
              br 1 (;@4;)
            end
            local.get 4
            i32.load offset=8
          end
          local.set 5
          local.get 4
          local.get 0
          i32.store offset=8
          local.get 5
          local.get 0
          i32.store offset=12
          local.get 0
          local.get 4
          i32.store offset=12
          local.get 0
          local.get 5
          i32.store offset=8
        end
        i32.const 14860
        local.get 3
        i32.store
        i32.const 14848
        local.get 1
        i32.store
      end
      local.get 2
      i32.const 8
      i32.add
      local.set 0
    end
    local.get 11
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;44;) (type 0) (param i32) (result i32)
    (local i32 i32)
    i32.const 3176
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
      local.get 0
      memory.size
      i32.const 16
      i32.shl
      i32.gt_u
      if  ;; label = @2
        local.get 0
        call 6
        i32.eqz
        br_if 1 (;@1;)
      end
      i32.const 3176
      local.get 0
      i32.store
      local.get 1
      return
    end
    i32.const 13564
    i32.const 48
    i32.store
    i32.const -1)
  (func (;45;) (type 6) (result i32)
    global.get 0)
  (func (;46;) (type 7) (param i32)
    local.get 0
    global.set 0)
  (func (;47;) (type 0) (param i32) (result i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 0
    global.set 0
    local.get 0)
  (func (;48;) (type 9) (param i32 i32 i32 i32 i32) (result i32)
    (local i64)
    local.get 1
    local.get 2
    i64.extend_i32_u
    local.get 3
    i64.extend_i32_u
    i64.const 32
    i64.shl
    i64.or
    local.get 4
    local.get 0
    call_indirect (type 8)
    local.tee 5
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    call 7
    local.get 5
    i32.wrap_i64)
  (table (;0;) 7 7 funcref)
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 5258224))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 8))
  (export "main" (func 9))
  (export "malloc" (func 43))
  (export "__errno_location" (func 12))
  (export "__indirect_function_table" (table 0))
  (export "stackSave" (func 45))
  (export "stackRestore" (func 46))
  (export "stackAlloc" (func 47))
  (export "dynCall_jiji" (func 48))
  (elem (;0;) (i32.const 1) func 26 25 27 38 39 40)
  (data (;0;) (i32.const 1024) "-+   0X0x\00-0X+0X 0X-0x+0x 0x\00Measured time too small to obtain meaningful results\00Please increase number of runs\00  Ptr_Comp:       *    %p\00nan\00inf\00 same as above\00Optimised\00NAN\00ASCII\00DHRYSTONE PROGRAM, 1'ST STRING\00DHRYSTONE PROGRAM, SOME STRING\00DHRYSTONE PROGRAM, 3'RD STRING\00DHRYSTONE PROGRAM, 2'ND STRING\00INF\00C\00Final values (* implementation-dependent):\00UTF-8\00Register option  Not selected.\00(null)\00Dhrystone Benchmark, Version 2.1 (Language: C or C++)\00%d \00WRONG \00Arr_1_Glob[8]: \00Arr_2_Glob8/7: \00%d  \00%c  \00O.K.  \00  Int_Comp:    \00Enum_Comp:     \00Int_3_Loc:     \00Int_2_Loc:     \00Int_1_Loc:     \00Bool_Glob:     \00Ch_2_Glob:     \00Ch_1_Glob:     \00Str_Comp:      \00Enum_Loc:      \00Int_Glob:      \00Next_Ptr_Glob->       \00  Discr:       \00Ptr_Glob->            \00Str_2_Loc:                             \00Str_1_Loc:                             \00Optimisation    %s\0a\00  Ptr_Comp:       *    %p\0a\00Nanoseconds one Dhrystone run: %12.2lf\0a\00VAX  MIPS rating =             %12.2lf\0a\00Dhrystones per Second:         %12.0lf\0a\00Register option not selected\0a\00%10d\0a\00%.3s %.3s%3d %.2d:%.2d:%.2d %d\0a\00%c\0a\00%12.0f runs %6.2f seconds \0a\00%d  \0a")
  (data (;1;) (i32.const 2152) ".\00\00\00\00\00\00\00Sun\00Mon\00Tue\00Wed\00Thu\00Fri\00Sat\00Sunday\00Monday\00Tuesday\00Wednesday\00Thursday\00Friday\00Saturday\00Jan\00Feb\00Mar\00Apr\00May\00Jun\00Jul\00Aug\00Sep\00Oct\00Nov\00Dec\00January\00February\00March\00April\00May\00June\00July\00August\00September\00October\00November\00December\00AM\00PM\00%a %b %e %T %Y\00%m/%d/%y\00%H:%M:%S\00%I:%M:%S %p\00\00\00%m/%d/%y\000123456789\00%a %b %e %T %Y\00%H:%M:%S\00\00\00\00\00^[yY]\00^[nN]\00yes\00no")
  (data (;2;) (i32.const 2512) "\19\00\0a\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\11\0a\19\19\19\03\0a\07\00\01\00\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19")
  (data (;3;) (i32.const 2593) "\0e\00\00\00\00\00\00\00\00\19\00\0a\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e")
  (data (;4;) (i32.const 2651) "\0c")
  (data (;5;) (i32.const 2663) "\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c")
  (data (;6;) (i32.const 2709) "\10")
  (data (;7;) (i32.const 2721) "\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10")
  (data (;8;) (i32.const 2767) "\12")
  (data (;9;) (i32.const 2779) "\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a")
  (data (;10;) (i32.const 2834) "\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09")
  (data (;11;) (i32.const 2883) "\14")
  (data (;12;) (i32.const 2895) "\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14")
  (data (;13;) (i32.const 2941) "\16")
  (data (;14;) (i32.const 2953) "\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\000123456789ABCDEF")
  (data (;15;) (i32.const 2992) "Register option      Selected.")
  (data (;16;) (i32.const 3032) "\05")
  (data (;17;) (i32.const 3044) "\01")
  (data (;18;) (i32.const 3068) "\02\00\00\00\03\00\00\00\f85\00\00\00\04")
  (data (;19;) (i32.const 3092) "\01")
  (data (;20;) (i32.const 3108) "\ff\ff\ff\ff\0a")
  (data (;21;) (i32.const 3176) "\f0;P"))
