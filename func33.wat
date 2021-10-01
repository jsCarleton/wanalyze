(type (;3;) (func (param i32)))
(func (;20;) (type 5) (param i32 i32) (result i32))
(func (;17;) (type 7) (param i32 i32 i32))

(func (;33;) (type 3) (param i32) (local i32 i32 i32 i32 i32 i32 i32 i32)
+1  ;; param
+1  local.get 0
-1  i32.eqz
-1  if  ;; label = @1
 0    return
 0  end
+1  i32.const 18944
+1  i32.const 0
-1  call 20
-1  local.set 4
+1  local.get 0
+1  i32.const -8
-1  i32.add
 0  local.tee 2
+1  local.get 0
+1  i32.const -4
-1  i32.add
+1  i32.const 0
-1  call 20
 0  local.tee 3
+1  i32.const -8
-1  i32.and
 0  local.tee 0
-1  i32.add
-1  local.set 5
 0  block (result i32)  ;; label = @1
+1    local.get 3
+1    i32.const 1
-1    i32.and
-1    if (result i32)  ;; label = @2
+1      local.get 2
-1    i32.or
+1      local.get 2
+1      i32.const 0
-1      call 20
-1      local.set 1
+1      local.get 3
+1      i32.const 3
-1      i32.and
-1      i32.eqz
-1      if  ;; label = @3
 0        return
 0      end
+1      local.get 2
+1      local.get 1
-1      i32.sub
 0      local.tee 2
+1      local.get 4
-1      i32.lt_u
-1      if  ;; label = @3
 0        return
 0      end
+1      local.get 1
+1      local.get 0
-1      i32.add
-1      local.set 0
+1      i32.const 18948
+1      i32.const 0
-1      call 20
+1      local.get 2
-1      i32.eq
-1      if  ;; label = @3
+1        local.get 2
+1        local.get 5
+1        i32.const 4
-1        i32.add
 0        local.tee 1
+1        i32.const 0
-1        call 20
 0        local.tee 3
+1        i32.const 3
-1        i32.and
+1        i32.const 3
-1        i32.ne
-1        br_if 2 (;@1;)
-1        drop
+1        i32.const 18936
+1        i32.const 0
+1        local.get 0
-3        call 17
+1        local.get 1
+1        i32.const 0
+1        local.get 3
+1        i32.const -2
-1        i32.and
-3        call 17
+1        local.get 2
+1        i32.const 4
+1        local.get 0
+1        i32.const 1
-1        i32.or
-3        call 17
+1        local.get 2
+1        local.get 0
-1        i32.add
+1        i32.const 0
+1        local.get 0
-3        call 17
 0        return
 0      end
+1      local.get 1
+1      i32.const 3
-1      i32.shr_u
-1      local.set 4
+1      local.get 1
+1      i32.const 256
-1      i32.lt_u
-1      if  ;; label = @3
+1        local.get 2
+1        i32.const 12
-1        call 20
 0        local.tee 1
+1        local.get 2
+1        i32.const 8
-1        call 20
 0        local.tee 3
-1        i32.eq
-1        if  ;; label = @4
+1          i32.const 18928
+1          i32.const 0
+1          i32.const 18928
+1          i32.const 0
-1          call 20
+1          i32.const 1
+1          local.get 4
-1          i32.shl
+1          i32.const -1
-1          i32.xor
-1          i32.and
-3          call 17
-1        i32.or
+1          local.get 3
+1          i32.const 12
+1          local.get 1
-3          call 17
+1          local.get 1
+1          i32.const 8
+1          local.get 3
-3          call 17
 0        end
+1        local.get 2
 0        br 2 (;@1;)
 0      end
+1      local.get 2
+1      i32.const 24
-1      call 20
-1      local.set 7
 0      block  ;; label = @3
+1        local.get 2
+1        i32.const 12
-1        call 20
 0        local.tee 1
+1        local.get 2
-1        i32.eq
-1        if  ;; label = @4
+1          local.get 2
+1          i32.const 16
-1          i32.add
 0          local.tee 3
+1          i32.const 4
-1          i32.add
 0          local.tee 4
+1          i32.const 0
-1          call 20
 0          local.tee 1
-1          if  ;; label = @5
+1            local.get 4
-1            local.set 3
-1          i32.or
+1            local.get 3
+1            i32.const 0
-1            call 20
 0            local.tee 1
-1            i32.eqz
-1            if  ;; label = @6
+1              i32.const 0
-1              local.set 1
 0              br 3 (;@3;)
 0            end
 0          end
 0          loop  ;; label = @5
 0            block  ;; label = @6
+1              local.get 1
+1              i32.const 20
-1              i32.add
 0              local.tee 4
+1              i32.const 0
-1              call 20
 0              local.tee 6
-1              i32.eqz
-1              if  ;; label = @7
+1                local.get 1
+1                i32.const 16
-1                i32.add
 0                local.tee 4
+1                i32.const 0
-1                call 20
 0                local.tee 6
-1                i32.eqz
-1                br_if 1 (;@6;)
 0              end
+1              local.get 4
-1              local.set 3
+1              local.get 6
-1              local.set 1
 0              br 1 (;@5;)
 0            end
 0          end
+1          local.get 3
+1          i32.const 0
+1          i32.const 0
-3          call 17
-1        i32.or
+1          local.get 2
+1          i32.const 8
-1          call 20
 0          local.tee 3
+1          i32.const 12
+1          local.get 1
-3          call 17
+1          local.get 1
+1          i32.const 8
+1          local.get 3
-3          call 17
 0        end
 0      end
+1      local.get 7
-1      if (result i32)  ;; label = @3
+1        local.get 2
+1        i32.const 28
-1        call 20
 0        local.tee 3
+1        i32.const 2
-1        i32.shl
+1        i32.const 19232
-1        i32.add
 0        local.tee 4
+1        i32.const 0
-1        call 20
+1        local.get 2
-1        i32.eq
-1        if  ;; label = @4
+1          local.get 4
+1          i32.const 0
+1          local.get 1
-3          call 17
+1          local.get 1
-1          i32.eqz
-1          if  ;; label = @5
+1            i32.const 18932
+1            i32.const 0
+1            i32.const 18932
+1            i32.const 0
-1            call 20
+1            i32.const 1
+1            local.get 3
-1            i32.shl
+1            i32.const -1
-1            i32.xor
-1            i32.and
-3            call 17
+1            local.get 2
 0            br 4 (;@1;)
 0          end
-1        i32.or
+1          local.get 7
+1          i32.const 20
-1          i32.add
-1          local.set 3
+1          local.get 7
+1          i32.const 16
-1          i32.add
 0          local.tee 4
+1          i32.const 0
-1          call 20
+1          local.get 2
-1          i32.eq
-1          if (result i32)  ;; label = @5
+1            local.get 4
-1          i32.or
+1            local.get 3
 0          end
+1          i32.const 0
+1          local.get 1
-3          call 17
+1          local.get 2
+1          local.get 1
-1          i32.eqz
-1          br_if 3 (;@1;)
-1          drop
 0        end
+1        local.get 1
+1        i32.const 24
+1        local.get 7
-3        call 17
+1        local.get 2
+1        i32.const 16
-1        i32.add
 0        local.tee 4
+1        i32.const 0
-1        call 20
 0        local.tee 3
-1        if  ;; label = @4
+1          local.get 1
+1          i32.const 16
+1          local.get 3
-3          call 17
+1          local.get 3
+1          i32.const 24
+1          local.get 1
-3          call 17
 0        end
+1        local.get 4
+1        i32.const 4
-1        call 20
 0        local.tee 3
-1        if  ;; label = @4
+1          local.get 1
+1          i32.const 20
+1          local.get 3
-3          call 17
+1          local.get 3
+1          i32.const 24
+1          local.get 1
-3          call 17
 0        end
+1        local.get 2
-1      i32.or
+1        local.get 2
 0      end
 0    end
 0  end
 0  local.tee 7
+1  local.get 5
-1  i32.ge_u
-1  if  ;; label = @1
 0    return
 0  end
+1  local.get 5
+1  i32.const 4
-1  i32.add
 0  local.tee 3
+1  i32.const 0
-1  call 20
 0  local.tee 1
+1  i32.const 1
-1  i32.and
-1  i32.eqz
-1  if  ;; label = @1
 0    return
 0  end
+1  local.get 1
+1  i32.const 2
-1  i32.and
-1  if  ;; label = @1
+1    local.get 3
+1    i32.const 0
+1    local.get 1
+1    i32.const -2
-1    i32.and
-3    call 17
+1    local.get 2
+1    i32.const 4
+1    local.get 0
+1    i32.const 1
-1    i32.or
-3    call 17
+1    local.get 7
+1    local.get 0
-1    i32.add
+1    i32.const 0
+1    local.get 0
-3    call 17
+1    local.get 0
-1    local.set 3
-1  i32.or
+1    i32.const 18952
+1    i32.const 0
-1    call 20
+1    local.get 5
-1    i32.eq
-1    if  ;; label = @2
+1      i32.const 18940
+1      i32.const 0
+1      i32.const 18940
+1      i32.const 0
-1      call 20
+1      local.get 0
-1      i32.add
 0      local.tee 0
-3      call 17
+1      i32.const 18952
+1      i32.const 0
+1      local.get 2
-3      call 17
+1      local.get 2
+1      i32.const 4
+1      local.get 0
+1      i32.const 1
-1      i32.or
-3      call 17
+1      local.get 2
+1      i32.const 18948
+1      i32.const 0
-1      call 20
-1      i32.ne
-1      if  ;; label = @3
 0        return
 0      end
+1      i32.const 18948
+1      i32.const 0
+1      i32.const 0
-3      call 17
+1      i32.const 18936
+1      i32.const 0
+1      i32.const 0
-3      call 17
 0      return
 0    end
+1    i32.const 18948
+1    i32.const 0
-1    call 20
+1    local.get 5
-1    i32.eq
-1    if  ;; label = @2
+1      i32.const 18936
+1      i32.const 0
+1      i32.const 18936
+1      i32.const 0
-1      call 20
+1      local.get 0
-1      i32.add
 0      local.tee 0
-3      call 17
+1      i32.const 18948
+1      i32.const 0
+1      local.get 7
-3      call 17
+1      local.get 2
+1      i32.const 4
+1      local.get 0
+1      i32.const 1
-1      i32.or
-3      call 17
+1      local.get 7
+1      local.get 0
-1      i32.add
+1      i32.const 0
+1      local.get 0
-3      call 17
 0      return
 0    end
+1    local.get 1
+1    i32.const -8
-1    i32.and
+1    local.get 0
-1    i32.add
-1    local.set 3
+1    local.get 1
+1    i32.const 3
-1    i32.shr_u
-1    local.set 4
 0    block  ;; label = @2
+1      local.get 1
+1      i32.const 256
-1      i32.lt_u
-1      if  ;; label = @3
+1        local.get 5
+1        i32.const 12
-1        call 20
 0        local.tee 0
+1        local.get 5
+1        i32.const 8
-1        call 20
 0        local.tee 1
-1        i32.eq
-1        if  ;; label = @4
+1          i32.const 18928
+1          i32.const 0
+1          i32.const 18928
+1          i32.const 0
-1          call 20
+1          i32.const 1
+1          local.get 4
-1          i32.shl
+1          i32.const -1
-1          i32.xor
-1          i32.and
-3          call 17
-1        i32.or
+1          local.get 1
+1          i32.const 12
+1          local.get 0
-3          call 17
+1          local.get 0
+1          i32.const 8
+1          local.get 1
-3          call 17
 0        end
-1      i32.or
+1        local.get 5
+1        i32.const 24
-1        call 20
-1        local.set 8
 0        block  ;; label = @4
+1          local.get 5
+1          i32.const 12
-1          call 20
 0          local.tee 0
+1          local.get 5
-1          i32.eq
-1          if  ;; label = @5
+1            local.get 5
+1            i32.const 16
-1            i32.add
 0            local.tee 1
+1            i32.const 4
-1            i32.add
 0            local.tee 4
+1            i32.const 0
-1            call 20
 0            local.tee 0
-1            if  ;; label = @6
+1              local.get 4
-1              local.set 1
-1            i32.or
+1              local.get 1
+1              i32.const 0
-1              call 20
 0              local.tee 0
-1              i32.eqz
-1              if  ;; label = @7
+1                i32.const 0
-1                local.set 0
 0                br 3 (;@4;)
 0              end
 0            end
 0            loop  ;; label = @6
 0              block  ;; label = @7
+1                local.get 0
+1                i32.const 20
-1                i32.add
 0                local.tee 4
+1                i32.const 0
-1                call 20
 0                local.tee 6
-1                i32.eqz
-1                if  ;; label = @8
+1                  local.get 0
+1                  i32.const 16
-1                  i32.add
 0                  local.tee 4
+1                  i32.const 0
-1                  call 20
 0                  local.tee 6
-1                  i32.eqz
-1                  br_if 1 (;@7;)
 0                end
+1                local.get 4
-1                local.set 1
+1                local.get 6
-1                local.set 0
 0                br 1 (;@6;)
 0              end
 0            end
+1            local.get 1
+1            i32.const 0
+1            i32.const 0
-3            call 17
-1          i32.or
+1            local.get 5
+1            i32.const 8
-1            call 20
 0            local.tee 1
+1            i32.const 12
+1            local.get 0
-3            call 17
+1            local.get 0
+1            i32.const 8
+1            local.get 1
-3            call 17
 0          end
 0        end
+1        local.get 8
-1        if  ;; label = @4
+1          local.get 5
+1          i32.const 28
-1          call 20
 0          local.tee 1
+1          i32.const 2
-1          i32.shl
+1          i32.const 19232
-1          i32.add
 0          local.tee 4
+1          i32.const 0
-1          call 20
+1          local.get 5
-1          i32.eq
-1          if  ;; label = @5
+1            local.get 4
+1            i32.const 0
+1            local.get 0
-3            call 17
+1            local.get 0
-1            i32.eqz
-1            if  ;; label = @6
+1              i32.const 18932
+1              i32.const 0
+1              i32.const 18932
+1              i32.const 0
-1              call 20
+1              i32.const 1
+1              local.get 1
-1              i32.shl
+1              i32.const -1
-1              i32.xor
-1              i32.and
-3              call 17
 0              br 4 (;@2;)
 0            end
-1          i32.or
+1            local.get 8
+1            i32.const 20
-1            i32.add
-1            local.set 1
+1            local.get 8
+1            i32.const 16
-1            i32.add
 0            local.tee 4
+1            i32.const 0
-1            call 20
+1            local.get 5
-1            i32.eq
-1            if (result i32)  ;; label = @6
+1              local.get 4
-1            i32.or
+1              local.get 1
 0            end
+1            i32.const 0
+1            local.get 0
-3            call 17
+1            local.get 0
-1            i32.eqz
-1            br_if 3 (;@2;)
 0          end
+1          local.get 0
+1          i32.const 24
+1          local.get 8
-3          call 17
+1          local.get 5
+1          i32.const 16
-1          i32.add
 0          local.tee 4
+1          i32.const 0
-1          call 20
 0          local.tee 1
-1          if  ;; label = @5
+1            local.get 0
+1            i32.const 16
+1            local.get 1
-3            call 17
+1            local.get 1
+1            i32.const 24
+1            local.get 0
-3            call 17
 0          end
+1          local.get 4
+1          i32.const 4
-1          call 20
 0          local.tee 1
-1          if  ;; label = @5
+1            local.get 0
+1            i32.const 20
+1            local.get 1
-3            call 17
+1            local.get 1
+1            i32.const 24
+1            local.get 0
-3            call 17
 0          end
 0        end
 0      end
 0    end
+1    local.get 2
+1    i32.const 4
+1    local.get 3
+1    i32.const 1
-1    i32.or
-3    call 17
+1    local.get 7
+1    local.get 3
-1    i32.add
+1    i32.const 0
+1    local.get 3
-3    call 17
+1    local.get 2
+1    i32.const 18948
+1    i32.const 0
-1    call 20
-1    i32.eq
-1    if  ;; label = @2
+1      i32.const 18936
+1      i32.const 0
+1      local.get 3
-3      call 17
 0      return
 0    end
 0  end
+1  local.get 3
+1  i32.const 3
-1  i32.shr_u
-1  local.set 1
+1  local.get 3
+1  i32.const 256
-1  i32.lt_u
-1  if  ;; label = @1
+1    local.get 1
+1    i32.const 3
-1    i32.shl
+1    i32.const 18968
-1    i32.add
-1    local.set 0
+1    i32.const 18928
+1    i32.const 0
-1    call 20
 0    local.tee 3
+1    i32.const 1
+1    local.get 1
-1    i32.shl
 0    local.tee 1
-1    i32.and
-1    if (result i32)  ;; label = @2
+1      local.get 0
+1      i32.const 8
-1      i32.add
 0      local.tee 3
+1      i32.const 0
-1      call 20
-1    i32.or
+1      i32.const 18928
+1      i32.const 0
+1      local.get 3
+1      local.get 1
-1      i32.or
-3      call 17
+1      local.get 0
+1      i32.const 8
-1      i32.add
-1      local.set 3
+1      local.get 0
 0    end
-1    local.set 1
+1    local.get 3
+1    i32.const 0
+1    local.get 2
-3    call 17
+1    local.get 1
+1    i32.const 12
+1    local.get 2
-3    call 17
+1    local.get 2
+1    i32.const 8
+1    local.get 1
-3    call 17
+1    local.get 2
+1    i32.const 12
+1    local.get 0
-3    call 17
 0    return
 0  end
+1  local.get 3
+1  i32.const 8
-1  i32.shr_u
 0  local.tee 0
-1  if (result i32)  ;; label = @1
+1    local.get 3
+1    i32.const 16777215
-1    i32.gt_u
-1    if (result i32)  ;; label = @2
+1      i32.const 31
-1    i32.or
+1      local.get 3
+1      i32.const 14
+1      local.get 0
+1      local.get 0
+1      i32.const 1048320
-1      i32.add
+1      i32.const 16
-1      i32.shr_u
+1      i32.const 8
-1      i32.and
 0      local.tee 0
-1      i32.shl
 0      local.tee 1
+1      i32.const 520192
-1      i32.add
+1      i32.const 16
-1      i32.shr_u
+1      i32.const 4
-1      i32.and
 0      local.tee 4
+1      local.get 0
-1      i32.or
+1      local.get 1
+1      local.get 4
-1      i32.shl
 0      local.tee 0
+1      i32.const 245760
-1      i32.add
+1      i32.const 16
-1      i32.shr_u
+1      i32.const 2
-1      i32.and
 0      local.tee 1
-1      i32.or
-1      i32.sub
+1      local.get 0
+1      local.get 1
-1      i32.shl
+1      i32.const 15
-1      i32.shr_u
-1      i32.add
 0      local.tee 0
+1      i32.const 7
-1      i32.add
-1      i32.shr_u
+1      i32.const 1
-1      i32.and
+1      local.get 0
+1      i32.const 1
-1      i32.shl
-1      i32.or
 0    end
-1  i32.or
+1    i32.const 0
 0  end
 0  local.tee 1
+1  i32.const 2
-1  i32.shl
+1  i32.const 19232
-1  i32.add
-1  local.set 0
+1  local.get 2
+1  i32.const 28
+1  local.get 1
-3  call 17
+1  local.get 2
+1  i32.const 20
+1  i32.const 0
-3  call 17
+1  local.get 2
+1  i32.const 16
+1  i32.const 0
-3  call 17
 0  block  ;; label = @1
+1    i32.const 18932
+1    i32.const 0
-1    call 20
 0    local.tee 4
+1    i32.const 1
+1    local.get 1
-1    i32.shl
 0    local.tee 6
-1    i32.and
-1    if  ;; label = @2
 0      block  ;; label = @3
+1        local.get 0
+1        i32.const 0
-1        call 20
 0        local.tee 0
+1        i32.const 4
-1        call 20
+1        i32.const -8
-1        i32.and
+1        local.get 3
-1        i32.eq
-1        if (result i32)  ;; label = @4
+1          local.get 0
-1        i32.or
+1          i32.const 25
+1          local.get 1
+1          i32.const 1
-1          i32.shr_u
-1          i32.sub
-1          local.set 4
+1          local.get 3
+1          local.get 1
+1          i32.const 31
-1          i32.eq
-1          if (result i32)  ;; label = @5
+1            i32.const 0
-1          i32.or
+1            local.get 4
 0          end
-1          i32.shl
-1          local.set 4
 0          loop  ;; label = @5
+1            local.get 0
+1            i32.const 16
-1            i32.add
+1            local.get 4
+1            i32.const 31
-1            i32.shr_u
+1            i32.const 2
-1            i32.shl
-1            i32.add
 0            local.tee 6
+1            i32.const 0
-1            call 20
 0            local.tee 1
-1            if  ;; label = @6
+1              local.get 4
+1              i32.const 1
-1              i32.shl
-1              local.set 4
+1              local.get 1
+1              i32.const 4
-1              call 20
+1              i32.const -8
-1              i32.and
+1              local.get 3
-1              i32.eq
-1              br_if 3 (;@3;)
+1              local.get 1
-1              local.set 0
 0              br 1 (;@5;)
 0            end
 0          end
+1          local.get 6
+1          i32.const 0
+1          local.get 2
-3          call 17
+1          local.get 2
+1          i32.const 24
+1          local.get 0
-3          call 17
+1          local.get 2
+1          i32.const 12
+1          local.get 2
-3          call 17
+1          local.get 2
+1          i32.const 8
+1          local.get 2
-3          call 17
 0          br 3 (;@1;)
 0        end
-1        local.set 1
 0      end
+1      local.get 1
+1      i32.const 8
-1      i32.add
 0      local.tee 0
+1      i32.const 0
-1      call 20
 0      local.tee 3
+1      i32.const 12
+1      local.get 2
-3      call 17
+1      local.get 0
+1      i32.const 0
+1      local.get 2
-3      call 17
+1      local.get 2
+1      i32.const 8
+1      local.get 3
-3      call 17
+1      local.get 2
+1      i32.const 12
+1      local.get 1
-3      call 17
+1      local.get 2
+1      i32.const 24
+1      i32.const 0
-3      call 17
-1    i32.or
+1      i32.const 18932
+1      i32.const 0
+1      local.get 4
+1      local.get 6
-1      i32.or
-3      call 17
+1      local.get 0
+1      i32.const 0
+1      local.get 2
-3      call 17
+1      local.get 2
+1      i32.const 24
+1      local.get 0
-3      call 17
+1      local.get 2
+1      i32.const 12
+1      local.get 2
-3      call 17
+1      local.get 2
+1      i32.const 8
+1      local.get 2
-3      call 17
 0    end
 0  end
+1  i32.const 18960
+1  i32.const 0
+1  i32.const 18960
+1  i32.const 0
-1  call 20
+1  i32.const -1
-1  i32.add
 0  local.tee 0
-3  call 17
+1  local.get 0
-1  if  ;; label = @1
 0    return
 0  end
+1  i32.const 19384
-1  local.set 0
 0  loop  ;; label = @1
+1    local.get 0
+1    i32.const 0
-1    call 20
 0    local.tee 2
+1    i32.const 8
-1    i32.add
-1    local.set 0
+1    local.get 2
-1    br_if 0 (;@1;)
 0  end
+1  i32.const 18960
+1  i32.const 0
+1  i32.const -1
-3  call 17)
