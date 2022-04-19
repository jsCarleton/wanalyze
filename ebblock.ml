open Core
open Bblock
open Code_path

type ebb_exit =
  {
    exit_bb:  bblock;
    cps:      code_path list;
  }

type ebb_type = EBB_loop | EBB_block

type ebblock = 
  {
    ebbtype:  ebb_type;
    entry_bb: bblock;
    bbs:      bblock list;
    exits:    ebb_exit list;
  }

let string_of_ebblock (ebb: ebblock): string =
  String.concat [string_of_bblocks ebb.bbs; " "; string_of_int (List.length ebb.exits)]

let ebb_to_unreachable (ebb: ebblock): bool =
  List.exists ~f:(fun bb -> match bb.bbtype with | BB_unreachable -> true | _ -> false) ebb.bbs

let ebb_to_return (ebb: ebblock): bool =
  List.exists ~f:(fun bb -> match bb.bbtype with | BB_return -> true | _ -> false) ebb.bbs

let ext_succ_of_bbs (bbs: bblock list): bblock list =
  List.filter ~f:(fun bb -> bb_not_in_bblocks bb bbs)
    (List.dedup_and_sort ~compare:compare_bbs 
      (List.fold_left ~init:[] ~f:(fun acc bb -> List.append bb.succ acc) bbs))
(*
let edge_bbs_of_bblocks (bbs: bblock list): bblock list =
  List.filter ~f:(fun bb -> (List.exists ~f:(fun bb' -> bb_not_in_bblocks bb' bbs) bb.succ)) bbs
*)

let exits_of_bbs (entry_bb: bblock) (exit_bbs: bblock list): ebb_exit list =
  List.map ~f:(fun exit_bb -> {exit_bb; cps = Code_path.code_paths_from_to entry_bb exit_bb}) exit_bbs

let ebblocks_of_bblocks (all_bbs: bblock list): ebblock list =

  let finish_ebblock' (ebbtype: ebb_type) (bbs: bblock list): ebblock =
    let entry_bb  = List.hd_exn bbs in
    Printf.printf "ebb entry: %d\n%!" entry_bb.bbindex;
    Printf.printf "  ebb blocks: %s\n%!" (string_of_bblocks bbs);
    let exit_bbs  = ext_succ_of_bbs bbs in
    Printf.printf "  ebb exits: %s\n%!" (string_of_bblocks exit_bbs);
    let exits     = exits_of_bbs entry_bb (ext_succ_of_bbs bbs) in
    List.iter ~f:(fun e -> Printf.printf "  %d paths to exit %d\n%!" (List.length e.cps) e.exit_bb.bbindex) exits;
    {ebbtype; entry_bb; bbs; exits}
  in

  let finish_ebblock (ebbtype: ebb_type) (bbs_acc: bblock list): ebblock =
    finish_ebblock' ebbtype (List.rev bbs_acc)
  in

  let build_ebblock (ebbtype: ebb_type) (last_bb: bblock) (bbs_acc: bblock list): ebblock =
   finish_ebblock ebbtype (last_bb::bbs_acc)
  in

  let pred_before_ebb (bb: bblock option) (bbs: bblock list): bool =
    match bb with
    | Some bb'  -> List.exists ~f:(fun bb'' -> bb''.bbindex < bb'.bbindex) bbs
    | _         -> false
  in

  let ebb_entry_bb (entry_bb: bblock option) (bb: bblock): bblock option =
    (match entry_bb with | None -> Some bb | _ -> entry_bb)
  in

  let rec eblock_of_bblocks' (all_bbs: bblock list) (bbs_acc: bblock list) (ebbs_acc: ebblock list) (lnest: int) (entry_bb: bblock option): ebblock list =
    match all_bbs with
      (* do we still have bblocks to process ? *)
      | hd::tl  ->
          (* yes, are we in a loop ? *)
          if lnest < 0 then
            (* no, are we starting a loop ? *)
            (match hd.bbtype with
              | BB_loop -> 
                  (* yes, close off the current ebb *)
                  eblock_of_bblocks' tl [] ((build_ebblock EBB_block hd bbs_acc)::ebbs_acc) hd.nesting None
              | _       ->
                  (* does this bblock have a pred that's before the current ebb? *)
                  if pred_before_ebb entry_bb hd.pred then
                    (* yes, start a new ebb *)
                    eblock_of_bblocks' tl [hd] ((finish_ebblock EBB_block bbs_acc)::ebbs_acc) lnest (Some hd)
                  else
                    (* no, keep accumulating the ebb *)
                    eblock_of_bblocks' tl (hd::bbs_acc) ebbs_acc lnest (ebb_entry_bb entry_bb hd))
          else
            (* yes, we're in a loop *)
            (match hd.bbtype with
              (* are we at the end of the loop? *)
              | BB_end ->
                if hd.nesting = lnest then
                  (* yes, close it off *)
                  eblock_of_bblocks' tl [] ((build_ebblock EBB_loop hd bbs_acc)::ebbs_acc) (-1) None
                else
                  (* no, keep accumulating the ebb *)
                  eblock_of_bblocks' tl (hd::bbs_acc) ebbs_acc lnest (ebb_entry_bb entry_bb hd)
              | _ ->
                (* not done the loop, keep accumulating the ebb *)
                eblock_of_bblocks' tl (hd::bbs_acc) ebbs_acc lnest (ebb_entry_bb entry_bb hd))
      | []      ->
          (* no, close off the current ebb if there is one *)
          match bbs_acc with
          | []  -> List.rev ebbs_acc
          | _   -> List.rev (finish_ebblock' EBB_block (List.rev bbs_acc)::ebbs_acc) 
    in

  eblock_of_bblocks' all_bbs [] [] (-1) None
