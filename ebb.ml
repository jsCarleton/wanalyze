open Core
open Bb
open Cp
open Et

type ebb_type = EBB_loop | EBB_block

type ebb = 
  {
    ebbtype:      ebb_type;       (* either a block or a loop*)
    cost:         et;             (* cost of executing this ebb *)
    entry_bb:     bb;             (* bb that's the entry to the ebb *)
    bblocks:      bb list;        (* list of bblocks that make up the ebb *)
    mutable
    succ_ebbs:    ebb list;       (* list of ebblocks directly reachable from this one*)
    exit_bbs:     bb list;        (* bb external to the ebb to which it can exit *)
    (* these properties are used when the ebb contains a loop *)
    codepaths:    cp list option list;   (* corresponding code paths to the exit bb *)
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
      sprintf "%sebb exits:  %s\n"  spaces (string_of_raw_bblocks ebb.exit_bbs);
      sprintf "%sebb succs:  %s\n"  spaces (string_of_ebblocks ebb.succ_ebbs);
      (match ebb.codepaths with
      | [] -> ""
      | _  ->
        String.concat
          (List.map2_exn 
            ~f:(fun codepaths exit_bb -> 
                  match codepaths with
                    | None ->
                        sprintf "%sunknown number of paths to exit %d\n"
                          spaces 
                          exit_bb.bbindex
                    | Some codepaths  ->
                        sprintf "%s%d paths to exit %d\n%s\n"
                          (String.make (indent+2) ' ') 
                          (List.length codepaths)
                          exit_bb.bbindex
                          (String.concat ~sep:"\n" (List.map ~f:(fun cp -> String.concat[spaces; string_of_raw_bblocks cp]) codepaths))) 
            ebb.codepaths ebb.exit_bbs));
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
        | _   -> String.concat ["nested ebbs:\n"; String.concat (List.map ~f:(string_of_ebblock' (indent+2)) ebb.nested_ebbs)])
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
  List.exists ~f:(fun codepath -> match codepath with | None -> true | _ -> false) ebb.codepaths

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

let exits_of_bbs (bblocks: bb list) (exit_bbs: bb list): cp list option list =
  List.map ~f:(fun exit_bb -> Cp.codepaths_from_bbs_to_bb bblocks exit_bb) exit_bbs

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

  let paths_of_ebblocks' (ebbs: ebb list): ebb list list =

    let rec paths_of_ebblocks'' (nterm: ebb list list) (term: ebb list list) (iters: int) (last_bb: int): ebb list list =

      (* given an ebb path return a list of the ebb paths that are one step
        after the given path without looping *)
      let succ_of_ebbs (ebbs: ebb list): ebb list list =
        let t = List.hd_exn ebbs in
        let succs = List.dedup_and_sort ~compare:(fun e1 e2 -> Int.compare e1.entry_bb.bbindex e2.entry_bb.bbindex)
          ( match t.nested_ebbs with
          |   []    -> t.succ_ebbs
          |   hd::_ -> List.append t.succ_ebbs (hd.succ_ebbs)) in
        let succs' =
              List.filter 
                ~f:(fun e -> e.entry_bb.bbindex > t.entry_bb.bbindex
                          && e.entry_bb.bbindex <= last_bb)
                succs in
        List.map ~f:(fun e' -> e'::ebbs) succs'          
      in
      
      let is_term (ebbs: ebb list): bool =
        match (List.hd_exn ebbs).succ_ebbs with
        | []  -> true
        | _   -> (List.hd_exn ebbs).entry_bb.bbindex = last_bb
      in 

      let step_ebb (ebbs: ebb list): (ebb list list)*(ebb list list) =
        match is_term ebbs with
        | true  -> [], [ebbs]
        | _     -> succ_of_ebbs ebbs, []
      in

      if iters > 1_000_000 then
        (Printf.printf "exploded\n%!"; [])
      else 
        match nterm with
          | []        -> term
          | hd::tl    ->
              let n,t = step_ebb hd in
                paths_of_ebblocks'' (List.append n tl) (List.append t term) (iters + 1) last_bb
      in

      (paths_of_ebblocks'' [[List.hd_exn ebbs]] [] 0 (List.hd_exn (List.rev ebbs)).entry_bb.bbindex)
  in

  let pl = List.map ~f:List.rev (paths_of_ebblocks' ebbs) in
    match pl with
    | [] -> []
    | _  -> pl

(**
  is_looping_path

  Given a code path in a loop returns true if it is a looping path, false
  otherwise

  Parameters:
    codepath   the code path
  Returns:
    true if its looping
**)

let is_branchback (bblock: bb) (idx: int): bool =
  List.exists ~f:(fun bblock' -> bblock'.bbindex = idx && bblock'.bbindex <= bblock.bbindex ) bblock.succ

let is_looping_path (codepath: cp): bool =
  is_branchback (List.nth_exn codepath ((List.length codepath) - 1)) (List.hd_exn codepath).bbindex
    
(**
  looping_paths_of_loop_bblocks

  Given the bblocks of a loop return the looping paths within that loop

  Parameters:
    loop_bblocks   list of basic blocks that make up the loop
    bback          branchbacks of the loop
  Returns:
    the list of looping paths within the loop
**)

let looping_paths_of_loop_bblocks (loop_bblocks: bb list) (bbacks: bb list): cp list =
  let cps = List.filter 
              ~f:is_looping_path (codepaths_of_bbs loop_bblocks [[List.hd_exn loop_bblocks]] []) in
  match cps with
  | [] -> Cost.max_cost_paths loop_bblocks bbacks
  | _  -> cps
  
(*
  branchbacks_of_loop

  Given a loop return the bb that contains the branchback for that loop

  Parameters:
    l the loop
  Returns:
    the branchback of that loop

*)

let branchbacks_of_loop (lbb: bb list): bb list =
  (* get the index of the loop head *)
  (* any branchback with have this bb in its list of successors *)
  let lh = (List.hd_exn lbb).bbindex in
  List.filter_map ~f:(fun bblock -> if is_branchback bblock lh then Some bblock else None) lbb

(**
  loops_of_bbs
  Given the bblocks of a function return a list of loops

  Parameters:
    bblocks   the list of basic blocks of the function
  Returns:
    the list of loops in the basic blocks
**)

(* let loops_of_bbs (bblocks: bb list): loop list =
  List.map  ~f:(fun loop_bblocks -> { (* the bblocks that make up the loop from loop ... end *)
                                      loop_bblocks;
                                      (* the paths in the loop that loop *)
                                      looping_paths = looping_paths_of_loop_bblocks loop_bblocks [];
                                      (* the blocks where the loop loops *)
                                      branchbacks = branchbacks_of_loop loop_bblocks})
            (loop_bblocks_of_bbs bblocks) *)

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

let rec ebbs_of_bbs (ctx: Ex.execution_context) 
          (all_bbs: bb list): ebb list =

  let cost_of_block_ebb (entry_bb: bb) (exit_bbs: bb list): et =
    let max_pci =
          List.fold
            ~init:(Cost.empty_pci entry_bb)
            ~f:(fun info exit_bb ->
                  let new_info = Cost.max_cost_info entry_bb exit_bb in
                  if new_info.cost > info.cost then new_info else info)
            exit_bbs in
    cost_of_codepath ctx.w_e max_pci.path
  in

  let sub_ebbs_of_bbs (sub_bbs: bb list): ebb list =
    if List.exists ~f:(fun bblock -> match bblock.bbtype with | BB_loop -> true | _ -> false) sub_bbs then
      ebbs_of_bbs ctx sub_bbs
    else
      []
  in

  let exit_cps (exit_paths: cp list option list): cp list =
    List.fold_left  ~init:[] 
                    ~f:(fun acc code_paths ->
                      match code_paths with
                      | None -> acc
                      | Some code_paths -> List.append acc code_paths)
                    exit_paths
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
    | Infinite  -> Constant (String_value "Infinity-y")
    | LMI lmi   ->
        Node {
          op = "*"; 
          args = [  lmi.loop_cost;
                    Node {
                      op = "I";
                      args = [  ExprList (List.map ~f:(fun lv -> Variable lv) lmi.loop_vars);
                                ExprList [lmi.loop_cond];
                                ExprList (List.map ~f:(fun lvev -> Constant (String_value (Ssa.string_of_ssa lvev))) lmi.lv_entry_vals); (* TODO improve this *)
                                ExprList (List.map ~f:(fun lvlv -> Constant (String_value (Ssa.string_of_ssa lvlv))) lmi.lv_loop_vals)
                              ]}
                  ]}
  in

  let unique_loop_vars (lms: Cost.loop_metric list): var list =
    List.dedup_and_sort ~compare:compare_vars
      (List.fold ~init:[] ~f:(fun acc lm -> match lm with | Infinite -> acc | LMI lm ->List.append lm.loop_vars acc) lms)
  in

  let idx_of_params (params: var list): int list =
    List.map ~f:(fun p -> p.idx) params
  in

  let bblocks_of_parameters (bblocks: bb list) (entry_bb: bb) (params: var list): bb list list =
    let idx = idx_of_params params in
    List.map
      ~f:(fun i ->
        List.filter 
          ~f:(fun bb -> (bb.bbindex <= entry_bb.bbindex) &&
            (List.exists 
              ~f:(fun op -> 
                match (Opcode.opcode_of_int op.opcode) with 
                | OP_local_set | OP_local_tee ->
                    (match op.arg with
                    | Localidx i' when i = i'
                        -> true
                    | _ -> false)
                | _ -> false)
              (expr_of_bb ctx.w_e bb)))
          bblocks)
      idx
  in

  let finish_ebblock' (ebbtype: ebb_type) (bblocks: bb list): ebb =

    let entry_bb    = List.hd_exn bblocks in
    let succ_ebbs   = [] in
    let exit_bbs    = exit_bbs_of_bbs bblocks in
    (* only a loop can have a nested loop *)
    match ebbtype with
    | EBB_loop ->
        let codepaths = exits_of_bbs bblocks (exit_bbs_of_bbs bblocks) in
        let bbacks = branchbacks_of_loop bblocks in
        let loop_cps  = looping_paths_of_loop_bblocks bblocks bbacks in
        if List.length loop_cps > 0 then
          begin
            let exit_cps    = exit_paths (exit_cps codepaths) loop_cps in
            let nested_ebbs = sub_ebbs_of_bbs bblocks in
            let root_bb     = List.hd_exn all_bbs in (* TODO doesn't work for nested loops *)
            (* TODO goal is to replace this call to Cp.codepaths_from_to_bb_exn with a function
               that returns the paths that update any of the loop vars rather than all paths *)
            let cp =
              (match Cp.codepaths_from_to_bb_exn root_bb (back_pred entry_bb) with
              | [] -> []
              (* TODO why do we only consider one prefix? *)
              | cp  -> List.rev (List.hd_exn cp)) in (* TODO this reverse should be done earlier *)
            let lms = looping_parts_costs bbacks loop_cps cp in
            let ulv = unique_loop_vars lms in
            let ulv_bb = bblocks_of_parameters bblocks entry_bb ulv in
            let exit_cost = max_cost_of_codepaths ctx.w_e exit_cps in
            (* *)
            if ((List.fold ~init:0 ~f:(fun acc lv_bb -> acc + List.length lv_bb) ulv_bb) = 0) || (List.length lms > 0) then
              begin
                (* do we have more than 1 set of loop metrics to consider? *)
                if List.length lms > 1 then
                  (* yes, we need a max operation *)
                  begin
                    match exit_cost with
                    | Empty ->
                        let cost = Node {op = "list_max"; args = List.map ~f:expr_of_lm lms} in
                        {ebbtype; cost; entry_bb; bblocks; succ_ebbs; exit_bbs; codepaths; loop_cps; exit_cps; nested_ebbs}
                    | _     ->
                        let cost = Node {op = "+";
                                         args = [Node {op = "list_max"; args =  List.map ~f:expr_of_lm lms};
                                                 exit_cost]} in
                        {ebbtype; cost; entry_bb; bblocks; succ_ebbs; exit_bbs; codepaths; loop_cps; exit_cps; nested_ebbs}
                  end
                else
                  (* no, we need use the cost of the single path through the loop *)
                  begin
                    match exit_cost with
                    | Empty ->
                        let cost = expr_of_lm (List.hd_exn lms) in
                        {ebbtype; cost; entry_bb; bblocks; succ_ebbs; exit_bbs; codepaths; loop_cps; exit_cps; nested_ebbs}
                    | _     ->
                      let cost = Node {op = "+"; args = [expr_of_lm (List.hd_exn lms); exit_cost]} in
                      {ebbtype; cost; entry_bb; bblocks; succ_ebbs; exit_bbs; codepaths; loop_cps; exit_cps; nested_ebbs}
                  end
              end
            else
              (* this happens when there are too many loop prefixes and we give up trying to enumerate them *)
              begin
                let cost       =  Constant (String_value "Infinity-z") in
                {ebbtype; cost; entry_bb; bblocks; succ_ebbs; exit_bbs; codepaths; loop_cps; exit_cps; nested_ebbs}
              end
          end
        else
          (* this happens when there are too many looping paths and we give up trying to enumerate them *)
          begin 
            let cost        = Constant (String_value "Infinity-t") in
            let exit_cps    = [] in
            let nested_ebbs = [] in
            {ebbtype; cost; entry_bb; bblocks; succ_ebbs; exit_bbs; codepaths; loop_cps; exit_cps; nested_ebbs}
          end
    | EBB_block ->
        let codepaths   = [] in
        let loop_cps    = [] in
        let exit_cps    = [] in
        let nested_ebbs = [] in
        let cost        = cost_of_block_ebb entry_bb exit_bbs in
        {ebbtype; cost; entry_bb; bblocks; succ_ebbs; exit_bbs; codepaths; loop_cps; exit_cps; nested_ebbs}
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
          begin
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
                  begin
                    (* yes, start a new ebb *)
                    eblock_of_bbs' tl [hd] ((finish_ebblock EBB_block bbs_acc)::ebbs_acc) lnest (Some hd)
                  end
                  else
                  begin
                    (* no, keep accumulating the ebb *)
                    eblock_of_bbs' tl (hd::bbs_acc) ebbs_acc lnest (ebb_entry_bb entry_bb hd)
                  end
            )
          end
          else
            (* yes, we're in a loop *)
            (match hd.bbtype with
              (* are we at the end of the loop? *)
              | BB_end ->
                if hd.nesting = lnest then
                begin
                  (* yes, close it off *)
                  eblock_of_bbs' tl [] ((build_ebblock EBB_loop hd bbs_acc)::ebbs_acc) (-1) None
                end
                else
                begin
                  (* no, keep accumulating the ebb *)
                  eblock_of_bbs' tl (hd::bbs_acc) ebbs_acc lnest (ebb_entry_bb entry_bb hd)
                end
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
      List.find 
        ~f:(fun ebb ->  ebb.entry_bb.bbindex = bblock.bbindex) ebbs
    in

    let rec flatten (ebbs: ebb list): ebb list =
      List.fold ~init:[] 
                ~f:(fun acc e -> 
                    match e.nested_ebbs with 
                    | [] -> e::acc 
                    | _ -> List.append (flatten e.nested_ebbs) acc)
                ebbs
    in

    (* update the successor ebbs for all ebbs *)
    let update_succ (ebbs: ebb list) =

      let update_succ' (ebbs: ebb list) (ebb: ebb) =

        let update_succ'' (ebbs: ebb list) (ebb: ebb) (exit_bb: bb) =
          let s = ebb_of_bb ebbs exit_bb in
          match s with
          | Some succ   -> ebb.succ_ebbs <- succ::ebb.succ_ebbs
          | None        -> ()
        in
      List.iter ~f:(update_succ'' ebbs ebb) ebb.exit_bbs;
     in
     List.iter ~f:(update_succ' ebbs) ebbs;
    in

  let ebbs = eblock_of_bbs' all_bbs [] [] (-1) None in
  update_succ (List.rev (flatten ebbs));
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
