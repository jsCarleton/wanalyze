open Core

(* loop block *)
type lb = 
{
  first:  Bb.bb;        (* basic blocks of the loop block *)
  last:   Bb.bb;
}

let string_of_lb (lblock: lb): string =
  String.concat["["; string_of_int lblock.first.bbindex; ", "; string_of_int lblock.last.bbindex; "]"]

let lbs_of_fn (bblocks: Bb.bb list): lb list =
  let lb_of_bb (first: Bb.bb) (lbs: lb list) (last: Bb.bb): lb list =
    Printf.printf "first: %d last: %d\n" first.bbindex last.bbindex;
    if first.bbindex <= last.bbindex then
      (Printf.printf "loop block\n";
      List.cons ({first; last}) lbs)
    else
      lbs
  in
  let lbs_of_loop (bblock: Bb.bb): lb list =
    List.fold_left ~f:(lb_of_bb bblock) ~init:[] bblock.pred
  in
  let lbs_of_bb (lbs: lb list) (bblock: Bb.bb): lb list =
    match bblock.bbtype with
    | BB_loop -> Printf.printf "loop\n";List.append lbs (lbs_of_loop (List.hd_exn bblock.succ))
    | _       -> lbs
  in

  List.fold_left ~f:lbs_of_bb ~init:[] bblocks
