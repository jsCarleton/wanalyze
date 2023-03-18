(func (;0;) (param i32) (result i32) (local i32 i32)
    i32.const 0
    local.set 1
    block                   ;; create label 0 on line 26
        i32.const 0
        local.get 0
        i32.le_s
        br_if 0             ;; conditional branch to line 26
        local.get 0
        local.set 2
        loop                ;; create label 1 on line 12
            local.get 2     ;; label 1
            i32.const 0
            i32.le_s
            br_if 1         ;; conditional branch to line 26
            local.get 2
            local.get 1
            i32.add
            local.set 1
            i32.const 1
            local.get 2
            i32.sub
            local.set 2
            br 1            ;; unconditional branch to line 12
        end
    end
    local.get 1              ;; label 0
)  