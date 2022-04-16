open Core
open Bblock
open Code_path

type ebb_exit =
  {
    exit_bb:  bblock;
    cps:      code_path list;
  }

type ebblock = 
  {
    entry_bb: bblock;
    bbs:      bblock list;
    exits:    ebb_exit list;
  }

let string_of_ebblock (ebb: ebblock): string =
  String.concat [string_of_bblocks ebb.bbs; " "; string_of_int (List.length ebb.exits)]

let exit_bbs_of_bblocks (bbs: bblock list): bblock list =
  List.filter ~f:(fun bb -> (List.exists ~f:(fun bb' -> bb_not_in_bblocks bb' bbs) bb.succ)) bbs

let exits_of_bbs (entry_bb: bblock) (exit_bbs: bblock list): ebb_exit list =
  List.map ~f:(fun exit_bb -> {exit_bb; cps = Code_path.code_paths_from_to entry_bb exit_bb}) exit_bbs

let ebblocks_of_bblocks (all_bbs: bblock list): ebblock list =
  let build_ebblock' (bbs: bblock list): ebblock =
    let entry_bb  = List.hd_exn bbs in
    let exits     = exits_of_bbs entry_bb (exit_bbs_of_bblocks bbs) in
    Printf.printf "ebb entry: %d\n%!" entry_bb.bbindex;
    Printf.printf "  ebb blocks: %s\n%!" (string_of_bblocks bbs);
    List.iter ~f:(fun e -> Printf.printf "  %d paths to exit %d\n%!" (List.length e.cps) e.exit_bb.bbindex) exits;
    {entry_bb; bbs; exits}
  in
  let build_ebblock (last_bb: bblock) (bbs_acc: bblock list): ebblock =
    build_ebblock' (List.rev (last_bb::bbs_acc))
  in
  let rec eblock_of_bblocks' (all_bbs: bblock list) (bbs_acc: bblock list) (ebbs_acc: ebblock list) (lnest: int): ebblock list =
    match all_bbs with
      | hd::tl  ->
          if lnest < 0 then
            (match hd.bbtype with
              | BB_loop -> 
                  eblock_of_bblocks' tl [] ((build_ebblock hd bbs_acc)::ebbs_acc) hd.nesting
              | _       ->
                  eblock_of_bblocks' tl (hd::bbs_acc) ebbs_acc lnest)
          else
            (match hd.bbtype with
              | BB_end ->
                if hd.nesting = lnest then
                  eblock_of_bblocks' tl [] ((build_ebblock hd bbs_acc)::ebbs_acc) (-1)
                else
                  eblock_of_bblocks' tl (hd::bbs_acc) ebbs_acc lnest
              | _ ->
                eblock_of_bblocks' tl (hd::bbs_acc) ebbs_acc lnest)
      | []      ->
          List.rev ((build_ebblock' (List.rev bbs_acc))::ebbs_acc)
    in
  eblock_of_bblocks' all_bbs [] [] (-1)
