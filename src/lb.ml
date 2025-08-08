open Core

(* loop block *)
type lb = 
{
  first:        Bb.bb;        (* basic blocks of the loop block *)
  last:         Bb.bb;
  codepaths:    Cp.cp list;   (* code paths through the loop block *)
  cp_conds:     Et.et list;   (* condition for each code path in the loop block *)
}

let string_of_lb (lblock: lb): string =
  String.concat["["; 
                  string_of_int lblock.first.bbindex; 
                  ", "; 
                  string_of_int lblock.last.bbindex; "]\n";
                  String.concat ~sep:"\n" 
                    (List.map2_exn ~f:(fun x y -> Printf.sprintf "    %s\n    %s" (Bb.string_of_bbs x) (Et.string_of_et y))
                               lblock.codepaths lblock.cp_conds)]

let lbs_of_fn (ctx: Ex.execution_context) (bblocks: Bb.bb list): lb list =
  let lb_of_bb (first: Bb.bb) (lbs: lb list) (last: Bb.bb): lb list =
    if first.bbindex <= last.bbindex then
      let codepaths = Cp.codepaths_from_to_bb_exn first last true in
      let cp_conds = List.map ~f:(Cp.condition_of_loop ctx last) codepaths in
      List.cons {first; last; codepaths; cp_conds} lbs
    else
      lbs
  in
  let lbs_of_loop (bblock: Bb.bb): lb list =
    List.fold_left ~f:(lb_of_bb bblock) ~init:[] bblock.pred
  in
  let lbs_of_bb (lbs: lb list) (bblock: Bb.bb): lb list =
    match bblock.bbtype with
    | BB_loop -> List.append lbs (lbs_of_loop (List.hd_exn bblock.succ))
    | _       -> lbs
  in

  List.fold_left ~f:lbs_of_bb ~init:[] bblocks

