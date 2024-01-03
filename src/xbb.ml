open Core

type xbb_type = Loop | Block

type xbb = {
  xbbtype:      xbb_type;
  cost:         Et.et;
  bbs:          Bb.bb list;
  succ_xbb:     xbb option;
  nested_xbbs:  xbb list;
}

let xbb_bbs_of_bbs (bblocks: Bb.bb list): Bb.bb list list =
   List.fold_left
    bblocks
    ~init:[]
    ~f:(fun acc b-> 
          match acc with 
          | []    -> [[b]]
          | hd::tl -> (
            if ((List.hd_exn hd).nesting = b.nesting) then
              (b::hd)::tl
            else
              [b]::acc
            )
    )

let xbbs_of_bbs (bblocks: Bb.bb list): xbb list = 
  let z = xbb_bbs_of_bbs bblocks in
  List.iter ~f:(fun x -> Printf.printf "%s\n" (Bb.string_of_raw_bblocks x)) z;
  []
