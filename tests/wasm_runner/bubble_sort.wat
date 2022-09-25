(module
  (func $bubble_sort (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    ;; BB 0 --------------------
    block  ;; label = @1
    ;; BB 1 --------------------
      local.get 0
      i32.const 2
      i32.lt_s
      br_if 0 (;@1;)
      ;; BB 2 --------------------
      i32.const 0
      local.set 2
      local.get 0
      i32.const -1
      i32.add
      local.tee 3
      local.set 4
      loop  ;; label = @2
        ;; BB 3 --------------------
        i32.const 0
        local.set 5
        block  ;; label = @3
          ;; BB 4 --------------------
          local.get 2
          i32.const -1
          i32.xor
          local.get 0
          i32.add
          i32.const 1
          i32.lt_s
          br_if 0 (;@3;)
          ;; BB 5 --------------------
          loop  ;; label = @4
            ;; BB 6 --------------------
            block  ;; label = @5
            ;; BB 7 --------------------
              local.get 1
              local.get 5
              i32.const 2
              i32.shl
              i32.add
              local.tee 6
              i32.load
              local.tee 7
              local.get 1
              local.get 5
              i32.const 1
              i32.add
              local.tee 5
              i32.const 2
              i32.shl
              i32.add
              local.tee 8
              i32.load
              local.tee 9
              i32.le_s
              br_if 0 (;@5;)
              ;; BB 8 --------------------
              local.get 6
              local.get 9
              i32.store
              local.get 8
              local.get 7
              i32.store
            end
            ;; BB 9 --------------------
            local.get 5
            local.get 4
            i32.ne
            br_if 0 (;@4;)
            ;; BB 10 --------------------
          end
          ;; BB 11 --------------------
        end
        ;; BB 12 --------------------
        local.get 4
        i32.const -1
        i32.add
        local.set 4
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        local.get 3
        i32.ne
        br_if 0 (;@2;)
        ;; BB 13 --------------------
      end
    ;; BB 14 --------------------
    end
  ;; BB 15 --------------------
  (export "bubble_sort" (func $bubble_sort))
)
