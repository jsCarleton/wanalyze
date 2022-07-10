open Core
open Bb
open Cp
open Et

type ebb_exit =
  {
    exit_bb:  bb;              (* bb external to the ebb to which it can exit *)
    codepaths:      cp list option;  (* corresponding code paths to the exit bb *)
  }

type ebb_type = EBB_loop | EBB_block

type ebb = 
  {
    ebbtype:      ebb_type;       (* either a block or a loop*)
    cost:         et;             (* cost of executing this ebb *)
    entry_bb:     bb;             (* bb that's the entry to the ebb *)
    bblocks:      bb list;        (* list of bblocks that make up the ebb *)
    exits:        ebb_exit list;  (* info about how the ebb is exitted *)
    mutable
    succ_ebbs:    ebb list;       (* list of ebblocks directly reachable from this one*)
    (* these properties are used when the ebb contains a loop *)
    loop_cps:     cp list;        (* codepaths in the ebb that loop *)
    exit_cps:     cp list;        (* codepaths in the ebb that aren't in the loop *)
    nested_ebbs:  ebb list;       (* ebbs containing nested loops *)
  }

let string_of_ebb_type (t: ebb_type): string =
  match t with
  | EBB_block -> "block"
  | EBB_loop  -> "loop"

let string_of_ebblocks (ebbs: ebb list): string =
  string_of_raw_bblocks (List.map ~f:(fun e -> e.entry_bb) ebbs)

let string_of_ebblock (ebb: ebb): string =

  let rec string_of_ebblock' (indent: int) (ebb: ebb) =
    let spaces = (String.make (indent+2) ' ') in
    String.concat [
      sprintf "%sebb entry:  %d\n"  (String.make indent ' ') ebb.entry_bb.bbindex;
      sprintf "%sebb type:   %s\n"  spaces (string_of_ebb_type ebb.ebbtype);
      sprintf "%sebb blocks: %s\n"  spaces (string_of_raw_bblocks ebb.bblocks);
      sprintf "%sebb cost:   %s\n"  spaces (format_et ebb.cost);
      sprintf "%sebb exits:  %s\n"  spaces (string_of_raw_bblocks (List.map ~f:(fun e -> e.exit_bb) ebb.exits));
      sprintf "%sebb succs:  %s\n"  spaces (string_of_ebblocks ebb.succ_ebbs);
      String.concat
        (List.map 
          ~f:(fun e -> match e.codepaths with
                        | None ->
                            sprintf "%sunknown number of paths to exit %d\n"
                              spaces 
                              e.exit_bb.bbindex
                        | Some codepaths  ->
                            sprintf "%s%d paths to exit %d\n%s\n"
                              (String.make (indent+2) ' ') 
                              (List.length codepaths)
                              e.exit_bb.bbindex
                              (String.concat ~sep:"\n" (List.map ~f:(fun cp -> String.concat[spaces; string_of_raw_bblocks cp]) codepaths))) 
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

let ebb_to_unreachable (ebb: ebb): bool =
  List.exists ~f:(fun bblock -> match bblock.bbtype with | BB_unreachable -> true | _ -> false) ebb.bblocks

let ebb_to_return (ebb: ebb): bool =
  List.exists ~f:(fun bblock -> match bblock.bbtype with | BB_return -> true | _ -> false) ebb.bblocks

let ebb_has_branchback (ebb: ebb): bool =
  let ebb_head_idx = ebb.entry_bb.bbindex in
  List.exists 
    ~f:(fun bblock -> List.exists 
                    ~f:(fun bblock' -> bblock'.bbindex <= bblock.bbindex && bblock'.bbindex >= ebb_head_idx)
                    bblock.succ) 
    ebb.bblocks

let ebb_too_many_paths (ebb: ebb): bool =
  List.exists ~f:(fun e -> match e.codepaths with | None -> true | _ -> false) ebb.exits

let exit_bbs_of_bbs (bblocks: bb list): bb list =
  (* to be an exit bb of a list of bblocks a bb must meet each these conditions:
      - it's a successor of some bb in the given list of bblocks,
      - it's not in the given list of bblocks,
      - it's not an unreachable bb
    or it's one of our special exit bblocks ("E", "U" or "R")
  *)
  let bb_not_unreachable (bblock: bb): bool = 
    match bblock.bbtype with | BB_unreachable -> false | _ -> true
  in
  List.filter ~f:(fun bblock -> (bb_not_unreachable bblock) && (bb_not_in_bblocks bblock bblocks || bb_is_exit bblock))
    (List.dedup_and_sort ~compare:compare_bbs 
      (List.fold_left ~init:[] ~f:(fun acc bblock -> List.append bblock.succ acc) bblocks))

let exits_of_bbs (bblocks: bb list) (exit_bbs: bb list): ebb_exit list =
  List.map ~f:(fun exit_bb -> {exit_bb; codepaths = Cp.codepaths_from_bbs_to_bb bblocks exit_bb}) exit_bbs

(*
    paths_of_ebblocks

    Given a list of ebblocks return the paths through those ebblocks. Each path is a list
    of ebblocks on the path

    Parameters:
      ebbs      list of ebblocks

    Returns:
      list of list of ebblocks
*)

let paths_of_ebblocks (ebbs: ebb list): ebb list list =

  let succ_of_ebbs (ebbs: ebb list): ebb list list =
      List.map ~f:(fun ebb -> ebb::ebbs) (List.hd_exn ebbs).succ_ebbs
  in
  
  let is_term (ebbs: ebb list): bool =
    match (List.hd_exn ebbs).succ_ebbs with
    | []  -> true
    | _   -> false
  in 

  let step_ebb (ebbs: ebb list): (ebb list list)*(ebb list list) =
    match is_term ebbs with
    | true  -> [], [ebbs]
    | _     -> succ_of_ebbs ebbs, []
  in

  let rec paths_of_ebblocks' (nterm: ebb list list) (term: ebb list list) (iters: int): ebb list list =
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
    ebbs_of_bbs

    Takes a list of consecutive basic blocks and returns the corresponding list of
    ebblocks

    Parameters:
      ctx       execution context
      all_bbs   basic blocks

    Returns:
      list of ebblocks

    Note, the execution context is required since part of the ebb definition includes
    its cost and an execution context is required to determine the cost of a loop ebb 
*)

let rec ebbs_of_bbs (ctx: Execution.execution_context) 
          (all_bbs: bb list): ebb list =

  let cost_of_block_ebb (exits: ebb_exit list): et =
    if List.exists ~f:(fun e -> match e.codepaths with | None -> true | _ -> false) exits then
      Constant (String_value "Infinity")
    else
      max_cost_of_codepaths 
        ctx.w_e 
        (List.concat 
          (List.map 
            ~f:(fun e -> match e.codepaths with Some codepaths' -> codepaths' | None -> failwith "no code paths for cost")
            exits))
  in

  let sub_ebbs_of_bbs (sub_bbs: bb list): ebb list =
    if List.exists ~f:(fun bblock -> match bblock.bbtype with | BB_loop -> true | _ -> false) sub_bbs then
      ebbs_of_bbs ctx sub_bbs
    else
      []
  in

  let exit_cps (exits: ebb_exit list): cp list =
    List.fold_left  ~init:[] 
                    ~f:(fun acc e ->
                      match e.codepaths with
                      | None -> acc
                      | Some codepaths -> List.append acc codepaths)
                    exits
  in

  let bback_of_cp (codepath: cp) (bblocks: bb list): bb =
    List.find_exn ~f:(fun bblock -> List.exists ~f:(fun bblock' -> bblock'.bbindex = bblock.bbindex) codepath) bblocks
  in

  let looping_parts_costs (bbacks: bb list) (loop_cps: cp list) (prefix_part: cp):
        Cost.loop_metric list =
    List.map ~f:(fun loop_part -> Cost.cost_of_loop ctx (bback_of_cp loop_part bbacks) {prefix_part; loop_part}) loop_cps
  in

  let expr_of_lm (lm: Cost.loop_metric): et =
    match lm with
    | Infinite  -> Constant (String_value "Infinity")
    | LMI lmi   ->
        Node {
          op = "*"; 
          args = [  lmi.loop_cost;
                    Node {
                      op = "I";
                      args = [  ExprList (List.map ~f:(fun lv -> Variable lv) lmi.loop_vars);
                                ExprList [lmi.loop_cond];
                                ExprList (List.map ~f:(fun lvev -> Variable (Ssa.string_of_ssa lvev)) lmi.lv_entry_vals);
                                ExprList (List.map ~f:(fun lvlv -> Variable (Ssa.string_of_ssa lvlv)) lmi.lv_loop_vals)
                              ]}
                  ]}
  in

  let finish_ebblock' (ebbtype: ebb_type) (bblocks: bb list): ebb =

    let entry_bb    = List.hd_exn bblocks in
    let exits       = exits_of_bbs bblocks (exit_bbs_of_bbs bblocks) in
    let succ_ebbs   = [] in
    (* only a loop can have a nested loop *)
    match ebbtype with
    | EBB_loop ->
        let loop_cps = looping_paths_of_loop_bblocks bblocks in
        if List.length loop_cps > 0 then
          begin
            let exit_cps    = exit_paths (exit_cps exits) loop_cps in
            let nested_ebbs = sub_ebbs_of_bbs bblocks in
            let root_bb     = List.hd_exn all_bbs in (* TODO doesn't work for nested loops *)
            let codepaths   = Cp.codepaths_from_to_bb_exn root_bb (List.hd_exn entry_bb.pred) in
            if List.length codepaths > 0 then
              begin
                let cp = List.rev (List.hd_exn codepaths) in (* TODO this reverse should be done earlier *)
                let bbacks = Cp.branchbacks_of_loop bblocks in 
                let lms = looping_parts_costs bbacks loop_cps cp in
                let exit_cost = max_cost_of_codepaths ctx.w_e exit_cps in
                (* do we have more than 1 set of loop metrics to consider? *)
                if List.length lms > 1 then
                  (* yes, we need a max operation *)
                  begin
                    match exit_cost with
                    | Empty ->
                        let cost = Node {op = "list_max"; args = List.map ~f:expr_of_lm lms} in
                        {ebbtype; cost; entry_bb; bblocks; exits; succ_ebbs; loop_cps; exit_cps; nested_ebbs}
                    | _     ->
                        let cost = Node {op = "+";
                                         args = [Node {op = "list_max"; args =  List.map ~f:expr_of_lm lms};
                                                 exit_cost]} in
                        {ebbtype; cost; entry_bb; bblocks; exits; succ_ebbs; loop_cps; exit_cps; nested_ebbs}
                  end
                else
                  (* no, we need use the cost of the single path through the loop *)
                  begin
                    match exit_cost with
                    | Empty ->
                        let cost = expr_of_lm (List.hd_exn lms) in
                        {ebbtype; cost; entry_bb; bblocks; exits; succ_ebbs; loop_cps; exit_cps; nested_ebbs}
        | _     ->
                        let cost = Node {op = "+"; args = [expr_of_lm (List.hd_exn lms); exit_cost]} in
                        {ebbtype; cost; entry_bb; bblocks; exits; succ_ebbs; loop_cps; exit_cps; nested_ebbs}
                  end
              end
            else
              begin
                let cost       =  Constant (String_value "Infinity") in
                {ebbtype; cost; entry_bb; bblocks; exits; succ_ebbs; loop_cps; exit_cps; nested_ebbs}
              end
          end
        else
          (* this happens when there are too many looping paths and we give up trying to enumerate them *)
          begin 
            let cost        = Constant (String_value "Infinity") in
            let exit_cps    = [] in
            let nested_ebbs = [] in
            {ebbtype; cost; entry_bb; bblocks; exits; succ_ebbs; loop_cps; exit_cps; nested_ebbs}
          end
    | EBB_block ->
        let loop_cps    = [] in
        let exit_cps    = [] in
        let nested_ebbs = [] in
        let cost        = cost_of_block_ebb exits in
        {ebbtype; cost; entry_bb; bblocks; exits; succ_ebbs; loop_cps; exit_cps; nested_ebbs}
  in

  let finish_ebblock (ebbtype: ebb_type) (bbs_acc: bb list): ebb =
    finish_ebblock' ebbtype (List.rev bbs_acc)
  in

  let build_ebblock (ebbtype: ebb_type) (last_bb: bb) (bbs_acc: bb list): ebb =
   finish_ebblock ebbtype (last_bb::bbs_acc)
  in

  let pred_before_ebb (bblock: bb option) (bblocks: bb list): bool =
    match bblock with
    | Some bblock'  -> List.exists ~f:(fun bblock'' -> bblock''.bbindex < bblock'.bbindex) bblocks
    | _             -> false
  in

  let ebb_entry_bb (entry_bb: bb option) (bblock: bb): bb option =
    (match entry_bb with | None -> Some bblock | _ -> entry_bb)
  in

  let rec eblock_of_bbs' (all_bbs: bb list) (bbs_acc: bb list) (ebbs_acc: ebb list) (lnest: int) (entry_bb: bb option): ebb list =
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
                        eblock_of_bbs' tl [] ((build_ebblock EBB_block hd bbs_acc)::ebbs_acc) hd.nesting None
                    | _ ->
                        (* yes, close it off and create one containing just the loop *)
                        eblock_of_bbs' tl [] 
                          ((finish_ebblock EBB_block [hd])
                              ::(finish_ebblock EBB_block bbs_acc)
                              ::ebbs_acc) hd.nesting None
                  )
              | _  ->
                  (* does this bb have a pred that's before the current ebb? 
                      i.e. does some earlier ebb enter this bb? if so it needs to be
                      the head of a new ebb *)
                  if pred_before_ebb entry_bb hd.pred then
                    (* yes, start a new ebb *)
                    eblock_of_bbs' tl [hd] ((finish_ebblock EBB_block bbs_acc)::ebbs_acc) lnest (Some hd)
                  else
                    (* no, keep accumulating the ebb *)
                    eblock_of_bbs' tl (hd::bbs_acc) ebbs_acc lnest (ebb_entry_bb entry_bb hd))
          else
            (* yes, we're in a loop *)
            (match hd.bbtype with
              (* are we at the end of the loop? *)
              | BB_end ->
                if hd.nesting = lnest then
                  (* yes, close it off *)
                  eblock_of_bbs' tl [] ((build_ebblock EBB_loop hd bbs_acc)::ebbs_acc) (-1) None
                else
                  (* no, keep accumulating the ebb *)
                  eblock_of_bbs' tl (hd::bbs_acc) ebbs_acc lnest (ebb_entry_bb entry_bb hd)
              | _ ->
                (* not done the loop, keep accumulating the ebb *)
                eblock_of_bbs' tl (hd::bbs_acc) ebbs_acc lnest (ebb_entry_bb entry_bb hd))
      | []      ->
          (* no, close off the current ebb if there is one *)
          match bbs_acc with
          | []  -> List.rev ebbs_acc
          | _   -> List.rev (finish_ebblock' EBB_block (List.rev bbs_acc)::ebbs_acc)
    in

    let ebb_of_bb (ebbs: ebb list) (bblock: bb): ebb option =
      List.find ~f:(fun ebb -> ebb.entry_bb.bbindex = bblock.bbindex) ebbs
    in

    (* update the successor ebbs for all ebbs *)
    (* TODO what's the difference between exits and succs? *)
    let update_succ (ebbs: ebb list) =

      let update_succ' (ebbs: ebb list) (ebb: ebb) =
        let update_succ'' (ebbs: ebb list) (ebb: ebb) (e: ebb_exit) =
          let s = ebb_of_bb ebbs e.exit_bb in
          match s with
          | Some succ   -> ebb.succ_ebbs <- succ::ebb.succ_ebbs
          | None        -> ()
        in
      List.iter ~f:(update_succ'' ebbs ebb) ebb.exits;
     in
     List.iter ~f:(update_succ' ebbs) ebbs;
    in

  let ebbs = eblock_of_bbs' all_bbs [] [] (-1) None in
  update_succ ebbs;
  ebbs

(*
    ebb_path_cost

    Takes an ebb path and returns the cost as a symbolic expr tree

    Parameters:
      ebb_path  ebb list list

    Returns:
      cost
*)

let ebb_path_cost (ebb_path: ebb list): et =
  match ebb_path with
  | []    -> Constant (Int_value 0)
  | [hd]  -> hd.cost
  | _     -> Node { op = "list_sum"; args = List.map ~f:(fun ebb -> ebb.cost) ebb_path}

let ebb_paths_max_cost (ebb_paths: ebb list list): et =
  match ebb_paths with
  | []    -> Empty
  | [hd]  -> ebb_path_cost hd
  | _     -> Node {op = "list_max"; args = List.map ~f:ebb_path_cost ebb_paths}
