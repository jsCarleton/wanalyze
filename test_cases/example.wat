(module
  (type (;0;) (func (param f32 f32 f32 f32) (result f32)))
  (type (;1;) (func (param f32) (result f32)))
  (import "env" "sqrt" (func (;0;) (type 1)))
  ;; take 2 points in 2D space and return the distance
  ;; between them
  (func (;1;) (type 0) (param f32 f32 f32 f32) (result f32)
    local.get 0
    local.get 2
    f32.sub
    call 2
    local.get 1
    local.get 3
    f32.sub
    call 2
    f32.add
    call 0          ;; sqrt function
  )
  ;; take a float and return its square
  (func (;2;) (type 1) (param f32) (result f32)
    local.get 0
    local.get 0
    f32.mul
  )
  (export "distance" (func 1))
)