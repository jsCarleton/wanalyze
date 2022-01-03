(type (;3;) (func (param i32)))
(func (;20;) (type 5) (param i32 i32) (result i32))
(func (;17;) (type 7) (param i32 i32 i32))

(func (;33;) (type 3) (param i32) (local i32 i32 i32 i32 i32 i32 i32 i32)
+1  ;; param
 0
-1  if  ;; label = @1
 0    return
 0  end
 0
 0  block (result i32)  ;; label = @1
+1
-1    if (result i32)  ;; label = @2
 0
-1      if  ;; label = @3
 0        return
 0      end
+1
-1      if  ;; label = @3
 0        return
 0      end
+1
-1      if  ;; label = @3
+2
-1        br_if 2 (;@1;)
-1
 0      end
+1
-1      if  ;; label = @3
+1
-1        if  ;; label = @4
+1
 0        end
+1
 0        br 2 (;@1;)
 0      end
 0
  0      block  ;; label = @3
+1
-1        if  ;; label = @4
+1
-1          if  ;; label = @5
-1
-1            if  ;; label = @6
 0
 0              br 3 (;@3;)
 0            end
 0          end
 0          loop  ;; label = @5
 0            block  ;; label = @6
 0
-1              if  ;; label = @7
 0
-1                br_if 1 (;@6;)
 0              end

 0
 0              br 1 (;@5;)
 0            end
 0          end
+1
 0        end
 0      end
+1
-1      if (result i32)  ;; label = @3
+1
-1        if  ;; label = @4
 0
-1          if  ;; label = @5
+1
 0            br 4 (;@1;)
 0          end
 0
-1          if (result i32)  ;; label = @5
+1
 0          end
 0
-1          br_if 3 (;@1;)
-1
 0        end
+1
-1        if  ;; label = @4
 0
 0        end
+1
-1        if  ;; label = @4
 0
 0        end
+1
 0      end
 0    end
 0  end
 0
-1  if  ;; label = @1
 0    return
 0  end
 0
-1  if  ;; label = @1
 0    return
 0  end
+1
-1  if  ;; label = @1
 0
-1    if  ;; label = @2
+1
-1      if  ;; label = @3
 0        return
 0      end
 0
 0      return
 0    end
+1
-1    if  ;; label = @2
 0
 0      return
 0    end
 0
 0    block  ;; label = @2
+1
-1      if  ;; label = @3
+1
-1        if  ;; label = @4
-1
 0        end
-1
 0        block  ;; label = @4
+1
-1          if  ;; label = @5
+1
-1            if  ;; label = @6
-1
-1              if  ;; label = @7
 0
 0                br 3 (;@4;)
 0              end
 0            end
 0            loop  ;; label = @6
 0              block  ;; label = @7
 0
-1                if  ;; label = @8
 0
-1                  br_if 1 (;@7;)
 0                end
 0
 0                br 1 (;@6;)
 0              end
 0            end
-1
 0          end
 0        end
+1
-1        if  ;; label = @4
+1
-1          if  ;; label = @5
 0
-1            if  ;; label = @6
 0
 0              br 4 (;@2;)
 0            end
 0
-1            if (result i32)  ;; label = @6
+1
 0            end
-1
-1            br_if 3 (;@2;)
 0          end
+1
-1          if  ;; label = @5
 0
 0          end
+1
-1          if  ;; label = @5
 0
 0          end
 0        end
 0      end
 0    end
+1
-1    if  ;; label = @2
 0
 0      return
 0    end
 0  end
+1
-1  if  ;; label = @1
+1
-1    if (result i32)  ;; label = @2
+1
 0    end
-1
 0    return
 0  end
+1
-1  if (result i32)  ;; label = @1
+1
-1    if (result i32)  ;; label = @2
+1
 0    end
 0
 0  end
-1
 0  block  ;; label = @1
+1
-1    if  ;; label = @2
 0      block  ;; label = @3
+1
-1        if (result i32)  ;; label = @4
+2
-1          if (result i32)  ;; label = @5
+1
 0          end
-2
 0          loop  ;; label = @5
+1
-1            if  ;; label = @6
+1
-1              br_if 3 (;@3;)
 0
 0              br 1 (;@5;)
 0            end
 0          end
 0
 0          br 3 (;@1;)
 0        end
-1
 0      end
-2
 0    end
 0  end
+1
-1  if  ;; label = @1
 0    return
 0  end
 0
 0  loop  ;; label = @1
+1
-1    br_if 0 (;@1;)
 0  end
 0)
