open Core
open Bblock
open Code_path
open Symbolic_expr

type ebb_exit =
  {
    exit_bb:  bblock;                 (* bb external to the ebb to which it can exit *)
    cps:      code_path list option;  (* corresponding code paths to the exit bb *)
  }

type ebb_type = EBB_loop | EBB_block

type ebblock = 
  {
    ebbtype:      ebb_type;       (* either a block or a loop*)
    cost:         expr_tree;      (* cost of executing this ebb *)
    entry_bb:     bblock;         (* bb that's the entry to the ebb *)
    bbs:          bblock list;    (* list of bbs that make up the ebb *)
    exits:        ebb_exit list;  (* info about how the ebb is exitted *)
    (* these properties are used when the ebb contains a loop *)
    loop_cps:     code_path list; (* code_paths in the ebb that loop *)
    exit_cps:     code_path list; (* code_paths in the ebb that aren't in the loop *)
    loop_iters:   expr_tree;      (* the number of iterations the loop with loop for *)
    nested_ebbs:  ebblock list;   (* ebbs containing nested loops *)
  }

let string_of_ebblock (ebb: ebblock): string =

  let rec string_of_ebblock' (indent: int) (ebb: ebblock) =
    let spaces = (String.make (indent+2) ' ') in
    String.concat [
      sprintf "%sebb entry: %d\n"   (String.make indent ' ') ebb.entry_bb.bbindex;
      sprintf "%sebb blocks: %s\n"  spaces (string_of_raw_bblocks ebb.bbs);
      sprintf "%sebb cost:   %s\n"  spaces (Execution.string_of_expr_tree ebb.cost);
      sprintf "%sebb exits:  %s\n"  spaces (string_of_raw_bblocks (List.map ~f:(fun e -> e.exit_bb) ebb.exits));
      String.concat
        (List.map 
          ~f:(fun e -> match e.cps with
                        | None ->
                            sprintf "%sunknown number of paths to exit %d\n"
                              spaces 
                              e.exit_bb.bbindex
                        | Some cps  ->
                            sprintf "%s%d paths to exit %d\n%s\n"
                              (String.make (indent+2) ' ') 
                              (List.length cps)
                              e.exit_bb.bbindex
                              (String.concat ~sep:"\n" (List.map ~f:(fun cp -> String.concat[spaces; string_of_raw_bblocks cp]) cps))) 
          ebb.exits);
      (match ebb.loop_cps with
        | []  -> ""
        | _   -> sprintf "%s%d loop paths\n%s\n" spaces (List.length ebb.loop_cps) 
                  (String.concat (List.map ~f:(fun cp -> String.concat[spaces; string_of_raw_bblocks cp]) ebb.loop_cps)));
      (match ebb.exit_cps with
        | []  -> ""
        | _   -> sprintf "%s%d post loop exit paths\n%s\n" spaces (List.length ebb.exit_cps) 
                  (String.concat (List.map ~f:(fun cp -> String.concat[spaces; string_of_raw_bblocks cp]) ebb.exit_cps)));
      (match ebb.nested_ebbs with
        | []  -> ""
        | _   -> String.concat (List.map ~f:(string_of_ebblock' (indent+2)) ebb.nested_ebbs))
    ]
  in

  string_of_ebblock' 0 ebb

let ebb_to_unreachable (ebb: ebblock): bool =
  List.exists ~f:(fun bb -> match bb.bbtype with | BB_unreachable -> true | _ -> false) ebb.bbs

let ebb_to_return (ebb: ebblock): bool =
  List.exists ~f:(fun bb -> match bb.bbtype with | BB_return -> true | _ -> false) ebb.bbs

let ebb_has_branchback (ebb: ebblock): bool =
  let ebb_head_idx = ebb.entry_bb.bbindex in
  List.exists 
    ~f:(fun bb -> List.exists 
                    ~f:(fun bb' -> bb'.bbindex <= bb.bbindex && bb'.bbindex >= ebb_head_idx)
                    bb.succ) 
    ebb.bbs

let ebb_too_many_paths (ebb: ebblock): bool =
  List.exists ~f:(fun e -> match e.cps with | None -> true | _ -> false) ebb.exits

let exit_bbs_of_bbs (bbs: bblock list): bblock list =
  (* an exit of a list of bbs is a successor of one of the bb of the bbs that's not in the
      bbs or an exit bb *)
  List.filter ~f:(fun bb -> bb_not_in_bblocks bb bbs || bb_is_exit bb)
    (List.dedup_and_sort ~compare:compare_bbs 
      (List.fold_left ~init:[] ~f:(fun acc bb -> List.append bb.succ acc) bbs))
(*
let edge_bbs_of_bblocks (bbs: bblock list): bblock list =
  List.filter ~f:(fun bb -> (List.exists ~f:(fun bb' -> bb_not_in_bblocks bb' bbs) bb.succ)) bbs
*)

let exits_of_bbs (bbs: bblock list) (exit_bbs: bblock list): ebb_exit list =
  List.map ~f:(fun exit_bb -> {exit_bb; cps = Code_path.code_paths_from_bbs_to_bb bbs exit_bb}) exit_bbs

let rec ebblocks_of_bblocks (ctx: Execution.execution_context) (all_bbs: bblock list): ebblock list =

  let cost_of_block_ebb (exits: ebb_exit list): int =
    if List.exists ~f:(fun e -> match e.cps with | None -> true | _ -> false) exits then
      -1
    else
      List.fold_left 
        ~init:0 
        ~f:(fun acc e ->  match e.cps with
                            | Some cps' ->
                                let cps_cost = max_cost_of_code_paths cps' 0 in 
                                if cps_cost > acc then cps_cost else acc
                            | None -> failwith "no code paths for cost")
        exits
  in

  let sub_ebbs_of_bblocks (sub_bbs: bblock list): ebblock list =
    if List.exists ~f:(fun bb -> match bb.bbtype with | BB_loop -> true | _ -> false) sub_bbs then
      ebblocks_of_bblocks ctx sub_bbs
    else
      []
  in

  let finish_ebblock' (ebbtype: ebb_type) (bbs: bblock list): ebblock =

    let exit_cps (exits: ebb_exit list): code_path list =
      List.fold_left  ~init:[] 
                      ~f:(fun acc e ->
                        match e.cps with
                        | None -> acc
                        | Some cps -> List.append acc cps)
                      exits
    in

    let entry_bb    = List.hd_exn bbs in
    let exits       = exits_of_bbs bbs (exit_bbs_of_bbs bbs) in
    (* only a loop can have a nested loop *)
    match ebbtype with
    | EBB_loop ->
        let loop_cps    = looping_paths_of_loop_bblocks bbs in
        let exit_cps    = exit_paths (exit_cps exits) loop_cps in
        let nested_ebbs = sub_ebbs_of_bblocks bbs in
        (* TODO prefix is wrong, need to iterate over all prefixes, all loop_cps *)
        let bback = (List.hd_exn (Code_path.branchbacks_of_loop bbs)) in
        let root_bb = List.hd_exn all_bbs in (* TODO doesn't work for nested loops *)
        let cps = Code_path.code_paths_from_to_bb_exn root_bb (List.hd_exn entry_bb.pred) in
        if List.length cps > 0 then
          let cp = List.rev (List.hd_exn cps) in (* TODO this reverse should be done earlier *)
          let lmi = Cost.cost_of_loop ctx 
                                      bback 
                                      { prefix_part = cp; 
                                        loop_part   = List.hd_exn loop_cps} in
          let loop_iters  = Constant (String.concat [ "I(";
                                                      Execution.string_of_expr_tree lmi.loop_cond; ", ";
                                                      Ssa.string_of_ssa_list lmi.lv_entry_vals ";" false; ", ";
                                                      Ssa.string_of_ssa_list lmi.lv_loop_vals ";" false; ")"]) in
          let cost        = Node {op = "+";
                                  arg1 = Node {op = "*";
                                                arg1 = Constant (string_of_int (max_cost_of_code_paths loop_cps 0));
                                                arg2 = loop_iters;
                                                arg3 = Empty};
                                  arg2 = Constant (string_of_int (max_cost_of_code_paths exit_cps 0));
                                  arg3 = Empty} in
          {ebbtype; cost; entry_bb; bbs; exits; loop_cps; exit_cps; loop_iters; nested_ebbs}
        else (
          let cost = Constant "INF" in
          let loop_iters = Constant "INF" in
          {ebbtype; cost; entry_bb; bbs; exits; loop_cps; exit_cps; loop_iters; nested_ebbs})
    | _ ->
        let loop_cps    = [] in
        let exit_cps    = [] in
        let loop_iters  = Empty in
        let nested_ebbs = [] in
        let cost        = Constant (string_of_int (cost_of_block_ebb exits)) in
        {ebbtype; cost; entry_bb; bbs; exits; loop_cps; exit_cps; loop_iters; nested_ebbs}
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
          (* are we in a loop ? *)
          if lnest < 0 then
            (* no, not in a loop *)
            (match hd.bbtype with
              (* are we starting a loop ? *)
              | BB_loop -> 
                  (* TODO not sure that this is quite right. should it be: always start a bb after an else? *)
                  (* we make the loop bb an ebb with just that bb *)
                  (match bbs_acc with
                    (* have we already started to build an ebb? *)
                    | [] ->
                        (* no, just build an ebb for the loop *)
                        eblock_of_bblocks' tl [] ((build_ebblock EBB_block hd bbs_acc)::ebbs_acc) hd.nesting None
                    | _ ->
                        (* yes, close it off and create one containing just the loop *)
                        eblock_of_bblocks' tl [] 
                          ((finish_ebblock EBB_block [hd])
                              ::(finish_ebblock EBB_block bbs_acc)
                              ::ebbs_acc) hd.nesting None
                  )
              | _  ->
                  (* does this bblock have a pred that's before the current ebb? 
                      i.e. does some earlier ebb enter this bblock? if so it needs to be
                      the head of a new ebb *)
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
