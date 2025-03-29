(* loop block *)
type lb = 
{
  first:  Bb.bb;        (* basic blocks of the loop block *)
  last:   Bb.bb;
}


val lbs_of_fn:      Bb.bb list -> lb list
val string_of_lb:   lb -> string
