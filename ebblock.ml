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
    mutable
    succ_ebbs:    ebblock list;   (* list of ebblocks directly reachable from this one*)
    (* these properties are used when the ebb contains a loop *)
    loop_cps:     code_path list; (* code_paths in the ebb that loop *)
    exit_cps:     code_path list; (* code_paths in the ebb that aren't in the loop *)
    nested_ebbs:  ebblock list;   (* ebbs containing nested loops *)
  }

let string_of_ebb_type (t: ebb_type): string =
  match t with
  | EBB_block -> "block"
  | EBB_loop  -> "loop"

let string_of_ebblocks (ebbs: ebblock list): string =
  string_of_raw_bblocks (List.map ~f:(fun e -> e.entry_bb) ebbs)

let string_of_ebblock (ebb: ebblock): string =

  let rec string_of_ebblock' (indent: int) (ebb: ebblock) =
    let spaces = (String.make (indent+2) ' ') in
    String.concat [
      sprintf "%sebb entry:  %d\n"  (String.make indent ' ') ebb.entry_bb.bbindex;
      sprintf "%sebb type:   %s\n"  spaces (string_of_ebb_type ebb.ebbtype);
      sprintf "%sebb blocks: %s\n"  spaces (string_of_raw_bblocks ebb.bbs);
      sprintf "%sebb cost:   %s\n"  spaces (Execution.string_of_expr_tree ebb.cost);
      sprintf "%sebb exits:  %s\n"  spaces (string_of_raw_bblocks (List.map ~f:(fun e -> e.exit_bb) ebb.exits));
      sprintf "%sebb succs:  %s\n"  spaces (string_of_ebblocks ebb.succ_ebbs);
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

(*
    paths_of_ebblocks

    Given a list of ebblocks return the paths through those ebblocks. Each path is a list
    of ebblocks on the path

    Parameters:
      ebbs      list of ebblocks

    Returns:
      list of list of ebblocks
*)

let paths_of_ebblocks (ebbs: ebblock list): ebblock list list =

  let succ_of_ebbs (ebbs: ebblock list): ebblock list list =
      List.map ~f:(fun ebb -> ebb::ebbs) (List.hd_exn ebbs).succ_ebbs
  in
  
  let is_term (ebbs: ebblock list): bool =
    match (List.hd_exn ebbs).succ_ebbs with
    | []  -> true
    | _   -> false
  in 

  let step_ebb (ebbs: ebblock list): (ebblock list list)*(ebblock list list) =
    match is_term ebbs with
    | true  -> [], [ebbs]
    | _     -> succ_of_ebbs ebbs, []
  in

  let rec paths_of_ebblocks' (nterm: ebblock list list) (term: ebblock list list) (iters: int): ebblock list list =
    if iters > 1_000_000 then
      []
    else 
      match nterm with
        | []        -> term
        | hd::tl    ->
            let n,t = step_ebb hd in
              paths_of_ebblocks' (List.append n tl) (List.append t term) (iters + 1)
  in

  List.map ~f:List.rev (paths_of_ebblocks' [[List.hd_exn ebbs]] [] 0)

(*
    ebblocks_of_bblocks

    Takes a list of consecutive basic blocks and returns the corresponding list of
    ebblocks

    Parameters:
      ctx       execution context
      all_bbs   basic blocks

    Returns:
      list of ebblocks

    Note, the execution context is required since part of the ebblock definition includes
    its cost and an execution context is required to determine the cost of a loop ebblock 
*)

let rec ebblocks_of_bblocks (ctx: Execution.execution_context) 
          (all_bbs: bblock list): ebblock list =

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

  let exit_cps (exits: ebb_exit list): code_path list =
    List.fold_left  ~init:[] 
                    ~f:(fun acc e ->
                      match e.cps with
                      | None -> acc
                      | Some cps -> List.append acc cps)
                    exits
  in

  let bback_of_cp (cp: code_path) (bbs: bblock list): bblock =
    List.find_exn ~f:(fun bb -> List.exists ~f:(fun bb' -> bb'.bbindex = bb.bbindex) cp) bbs
  in

  let looping_parts_costs (bbacks: bblock list) (loop_cps: code_path list) (prefix_part: code_path):
        Cost.loop_metric list =
    List.map ~f:(fun loop_part -> Cost.cost_of_loop ctx (bback_of_cp loop_part bbacks) {prefix_part; loop_part}) loop_cps
  in

  let string_of_lm (lm: Cost.loop_metric): string =
    match lm with
    | Infinite  -> "Infinite"
    | LMI lmi   ->
        String.concat [
                  string_of_int lmi.loop_cost;
                  "*I(";
                  Execution.string_of_expr_tree lmi.loop_cond; ", ";
                  Ssa.string_of_ssa_list lmi.lv_entry_vals ";" false; ", ";
                  Ssa.string_of_ssa_list lmi.lv_loop_vals ";" false; ")"]
  in

  let loop_path_costs (lms: Cost.loop_metric list): string =
    String.concat [ "["; 
                    String.concat ~sep:"; " (List.map ~f:string_of_lm lms);
                    "]"]
  in
  
  let finish_ebblock' (ebbtype: ebb_type) (bbs: bblock list): ebblock =

    let entry_bb    = List.hd_exn bbs in
    let exits       = exits_of_bbs bbs (exit_bbs_of_bbs bbs) in
    let succ_ebbs   = [] in
    (* only a loop can have a nested loop *)
    match ebbtype with
    | EBB_loop ->
        let loop_cps = looping_paths_of_loop_bblocks bbs in
        if List.length loop_cps > 0 then
          begin
            let exit_cps    = exit_paths (exit_cps exits) loop_cps in
            let nested_ebbs = sub_ebbs_of_bblocks bbs in
            let root_bb = List.hd_exn all_bbs in (* TODO doesn't work for nested loops *)
            let cps = Code_path.code_paths_from_to_bb_exn root_bb (List.hd_exn entry_bb.pred) in
            if List.length cps > 0 then
              begin
                let cp = List.rev (List.hd_exn cps) in (* TODO this reverse should be done earlier *)
                let bbacks = Code_path.branchbacks_of_loop bbs in 
                let lms = looping_parts_costs bbacks loop_cps cp in
                if List.length lms > 1 then
                  begin
                    let cost = Node {op = "+";
                                arg1 = Node {op = "list_max";
                                              arg1 = Constant (loop_path_costs lms);
                                              arg2 = Empty;
                                              arg3 = Empty};
                                arg2 = Constant (string_of_int (max_cost_of_code_paths exit_cps 0));
                                arg3 = Empty} in
                    {ebbtype; cost; entry_bb; bbs; exits; succ_ebbs; loop_cps; exit_cps; nested_ebbs}
                  end
                else
                  begin
                    let cost = Node {op = "+";
                                arg1 = Constant (string_of_lm (List.hd_exn lms));
                                arg2 = Constant (string_of_int (max_cost_of_code_paths exit_cps 0));
                                arg3 = Empty} in
                    {ebbtype; cost; entry_bb; bbs; exits; succ_ebbs; loop_cps; exit_cps; nested_ebbs}
                  end
              end
            else
              begin
                let cost       = Constant "INF" in
                {ebbtype; cost; entry_bb; bbs; exits; succ_ebbs; loop_cps; exit_cps; nested_ebbs}
              end
          end
        else
          (* this happens when there are too many looping paths and we give up trying to enumerate them *)
          begin 
            let cost        = Constant "INF" in
            let exit_cps    = [] in
            let nested_ebbs = [] in
            {ebbtype; cost; entry_bb; bbs; exits; succ_ebbs; loop_cps; exit_cps; nested_ebbs}
          end
    | EBB_block ->
        let loop_cps    = [] in
        let exit_cps    = [] in
        let nested_ebbs = [] in
        let cost        = Constant (string_of_int (cost_of_block_ebb exits)) in
        {ebbtype; cost; entry_bb; bbs; exits; succ_ebbs; loop_cps; exit_cps; nested_ebbs}
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

    let ebb_of_bblock (ebbs: ebblock list) (bb: bblock): ebblock option =
      List.find ~f:(fun ebb -> ebb.entry_bb.bbindex = bb.bbindex) ebbs
    in

    let update_succ'' (ebbs: ebblock list) (ebb: ebblock) (e: ebb_exit) =
      let s = ebb_of_bblock ebbs e.exit_bb in
      match s with
      | Some succ   -> ebb.succ_ebbs <- succ::ebb.succ_ebbs
      | None        -> ()
    in

    let update_succ' (ebbs: ebblock list) (ebb: ebblock) =
      List.iter ~f:(update_succ'' ebbs ebb) ebb.exits;
    in

    let update_succ (ebbs: ebblock list) =
      List.iter ~f:(update_succ' ebbs) ebbs;
    in

  let ebbs = eblock_of_bblocks' all_bbs [] [] (-1) None in
  update_succ ebbs;
  ebbs

(*
    ebb_path_cost

    Takes an ebb path and returns the cost as a symbolic expr tree

    Parameters:
      ebb_path  ebblock list list

    Returns:
      cost
*)

let ebb_path_cost (ebb_path: ebblock list): expr_tree =
  
  let string_of_costs (ebb_path: ebblock list): string =
    String.concat ~sep:"; " (List.map ~f:(fun ebb -> Execution.string_of_expr_tree ebb.cost) ebb_path)
  in

  match List.length ebb_path with
  | 0 -> Constant "0"
  | 1 -> (List.hd_exn ebb_path).cost
  | _ -> Node {op = "list_sum"; arg1 = Constant (String.concat["["; (string_of_costs ebb_path); "]"]); arg2 = Empty; arg3 = Empty}


let ebb_paths_max_cost (ebb_paths: ebblock list list): expr_tree =
  Node {op = "list_max"; 
        arg1 = Constant (String.concat["["; 
                                      String.concat ~sep:"; " (List.map ~f:(fun ebb_path -> Execution.string_of_expr_tree (ebb_path_cost ebb_path)) ebb_paths);
                                      "]"]); 
        arg2 = Empty; 
        arg3 = Empty}
