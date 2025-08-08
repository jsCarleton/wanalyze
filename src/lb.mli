(* loop block *)
type lb = 
{
  first:        Bb.bb;        (* basic blocks of the loop block *)
  last:         Bb.bb;
  codepaths:    Cp.cp list;   (* code paths through the loop block *)
  cp_conds:     Et.et list;   (* condition for each code path in the loop block *)
}

val lbs_of_fn:      Ex.execution_context -> Bb.bb list -> lb list
val string_of_lb:   lb -> string
