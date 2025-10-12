open Core
open Bb
open Cp
open Et

type sb_type = SB_loop | SB_block

type sb_path = Bb.bb list

type loop = {
  codepaths:    sb_path list option list;  (* corresponding code paths to the exit bb *)
  loop_cps:     sb_path list;              (* codepaths in the sb that loop *)
  exit_cps:     sb_path list;              (* codepaths in the sb that aren't the loop *)
}

type sb = 
{
  sbtype:      sb_type;       (* either a block or a loop*)
  mutable
  sb_cost:     Et.et;         (* cost of executing this sb *)
  entry_bb:    Bb.bb;         (* bb that's the entry to the sb *)
  bblocks:     Bb.bb list;    (* list of bbs that make up the sb *)
  mutable
  succ_sbs:    sb list;       (* list of sblocks directly reachable from this one*)
  nested_sbs:  sb list;       (* sbs containing nested loops *)
  exit_bbs:    Bb.bb list;    (* bb external to the sb to which it can exit *)
  sb_loop:     loop option;
  lms:         Cost.loop_metric list;
}

let compare_sbs (e1: sb) (e2: sb): int =
  Bb.compare_bbs e1.entry_bb e2.entry_bb

let string_of_sb_type (t: sb_type): string =
  match t with
  | SB_block -> "block"
  | SB_loop  -> "loop"

let string_of_sblocks (sbs: sb list): string =
  string_of_raw_bblocks (List.map ~f:(fun e -> e.entry_bb) sbs)

let string_of_sblock (sb: sb): string =

  let rec string_of_sblock' (indent: int) (sb: sb) =
    let spaces = (String.make (indent+2) ' ') in

    let string_of_loop (lo: loop option) (e: sb): string =
      match lo with
      | None ->   ""
      | Some l -> 
          match l.codepaths with
            | [] -> ""
            | _  ->
              String.concat [
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
                    l.codepaths e.exit_bbs);
                (match l.loop_cps with
                  | []  -> ""
                  | _   -> sprintf "%s%d loop paths\n%s\n" spaces (List.length l.loop_cps) 
                            (String.concat (List.map ~f:(fun cp -> String.concat[spaces; string_of_raw_bblocks cp]) l.loop_cps)));
                (match l.exit_cps with
                  | []  -> ""
                  | _   -> sprintf "%s%d post loop exit paths\n%s\n" spaces (List.length l.exit_cps) 
                            (String.concat (List.map ~f:(fun cp -> String.concat[spaces; string_of_raw_bblocks cp]) l.exit_cps)))]
    in
      String.concat [
      sprintf "%ssb entry:  %d\n"  (String.make indent ' ') sb.entry_bb.bbindex;
      sprintf "%ssb type:   %s\n"  spaces (string_of_sb_type sb.sbtype);
      sprintf "%ssb blocks: %s\n"  spaces (string_of_raw_bblocks sb.bblocks);
      sprintf "%ssb cost:   %s\n"  spaces (let c = node_count sb.sb_cost in
                                      if c > 10000 then
                                        sprintf "Cost too large %d" c
                                      else
                                        format_et sb.sb_cost);
      sprintf "%ssb exits:  %s\n"  spaces (string_of_raw_bblocks sb.exit_bbs);
      sprintf "%ssb succs:  %s\n"  spaces (string_of_sblocks sb.succ_sbs);
      string_of_loop sb.sb_loop sb;
      (match sb.nested_sbs with
      | []  -> ""
      | _   -> String.concat ["nested sbs:\n"; String.concat (List.map ~f:(string_of_sblock' (indent+2)) sb.nested_sbs)])
    ]
  in
  string_of_sblock' 0 sb

let sb_to_unreachable (sb: sb): bool =
  List.exists ~f:(fun bblock -> match bblock.bbtype with | BB_unreachable -> true | _ -> false) sb.bblocks

let sb_to_return (sb: sb): bool =
  List.exists ~f:(fun bblock -> match bblock.bbtype with | BB_return -> true | _ -> false) sb.bblocks

let sb_has_branchback (sb: sb): bool =
  let sb_head_idx = sb.entry_bb.bbindex in
  List.exists 
    ~f:(fun bblock -> List.exists 
                    ~f:(fun bblock' -> bblock'.bbindex <= bblock.bbindex && bblock'.bbindex >= sb_head_idx)
                    bblock.succ) 
    sb.bblocks

let sb_too_many_paths (sb: sb): bool =
  match sb.sb_loop with
  | None -> false
  | Some l -> 
      List.exists ~f:(fun codepath -> match codepath with | None -> true | _ -> false) l.codepaths

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

  (* pruning paths of various types *)

let prune_loop_paths (sbpaths: sb_path list) (lmis: Cost.loop_metric list): sb_path list * Cost.loop_metric list =
  let bb_in_path (b: bb) (path: cp): bool =
    List.exists ~f:(fun b' -> b.bbindex = b'.bbindex) path
  in
  let path_in_path (loop_path: (sb_path)*(Cost.loop_metric)) (loop_path': (sb_path)*(Cost.loop_metric)): bool =
    (Cost.compare_loop_conds (snd loop_path) (snd loop_path')) && (List.for_all ~f:(fun b -> bb_in_path b (fst loop_path)) (fst loop_path'))
  in
  let path_in_paths (loop_path: (sb_path)*(Cost.loop_metric)) (loop_paths: ((sb_path)*(Cost.loop_metric)) list): bool =
    List.exists ~f:(fun p -> path_in_path p loop_path) loop_paths
  in
  List.unzip 
    (List.fold ~init:[] ~f:(fun acc a -> if path_in_paths a acc then acc else a::acc)
      (List.sort ~compare:(fun a b -> Int.compare (List.length (fst b)) (List.length (fst a)))
        (List.zip_exn sbpaths lmis)))

let prune_sb_paths (sbpaths: sb list list): sb list list =
  let sb_in_path (e: sb) (path: sb list): bool =
    List.exists ~f:(fun e' -> e.entry_bb.bbindex = e'.entry_bb.bbindex) path
  in
  let path_in_path (path: sb list) (path': sb list): bool =
    List.for_all ~f:(fun e -> sb_in_path e path) path'
  in
  let path_in_paths (path: sb list) (paths: sb list list): bool =
    List.exists ~f:(fun p -> path_in_path p path) paths
  in
  List.fold ~init:[] ~f:(fun acc a -> if path_in_paths a acc then acc else a::acc)
    (List.sort ~compare:(fun a b -> Int.compare (List.length b) (List.length a)) sbpaths)

let prune_cps (cps: cp list): cp list =
  let bb_in_path (b: bb) (path: cp): bool =
    List.exists ~f:(fun b' -> b.bbindex = b'.bbindex) path
  in
  let path_in_path (path: cp) (path': cp): bool =
    List.for_all ~f:(fun b -> bb_in_path b path) path'
  in
  let path_in_paths (path: cp) (paths: cp list): bool =
    List.exists ~f:(fun p -> path_in_path p path) paths
  in
  List.fold ~init:[] ~f:(fun acc a -> if path_in_paths a acc then acc else a::acc)
    (List.sort ~compare:(fun a b -> Int.compare (List.length b) (List.length a)) cps)

(*
    paths_of_sblocks

    Given a list of sblocks return the paths through those sblocks. Each path is a list
    of sblocks on the path

    Parameters:
      sbs      list of sblocks

    Returns:
      list of list of sblocks
*)

let paths_of_sblocks (sbs: sb list): sb list list =

  let paths_of_sblocks' (sbs: sb list): sb list list =

    let rec paths_of_sblocks'' (nterm: sb list list) (term: sb list list) (iters: int) (last_bb: int): sb list list =

      (* given an sb path return a list of the sb paths that are one step
        after the given path without looping *)
      let succ_of_sbs (sbs: sb list): sb list list =
        let t = List.hd_exn sbs in
        let succs = List.dedup_and_sort ~compare:(fun e1 e2 -> Int.compare e1.entry_bb.bbindex e2.entry_bb.bbindex) t.succ_sbs
(*          ( match t.nested_sbs with
          |   []    -> t.succ_sbs
          |   hd::_ -> List.append t.succ_sbs (hd.succ_sbs))*) in
        let succs' =
              List.filter 
                ~f:(fun e -> e.entry_bb.bbindex > t.entry_bb.bbindex
                          && e.entry_bb.bbindex <= last_bb)
                succs in
        List.map ~f:(fun e' -> e'::sbs) succs'          
      in
      
      let is_term (sbs: sb list): bool =
        match (List.hd_exn sbs).succ_sbs with
        | []  -> true
        | _   -> (List.hd_exn sbs).entry_bb.bbindex = last_bb
      in 

      let step_sb (sbs: sb list): (sb list list)*(sb list list) =
        match is_term sbs with
        | true  -> [], [sbs]
        | _     -> succ_of_sbs sbs, []
      in

      if iters > 1_000_000 then
        (* sb path explosion, give up *)
        []
      else 
        match nterm with
          | []        -> term
          | hd::tl    ->
              let n,t = step_sb hd in
                paths_of_sblocks'' (List.append n tl) (List.append t term) (iters + 1) last_bb
      in

      (paths_of_sblocks'' [[List.hd_exn sbs]] [] 0 (List.hd_exn (List.rev sbs)).entry_bb.bbindex)
  in

  let pl = List.map ~f:List.rev (paths_of_sblocks' sbs) in
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

(*
    sb_path_cost

    Takes an sb path and returns the cost as a symbolic expr tree

    Parameters:
      sb_path  sb list list

    Returns:
      cost
*)

let sb_path_cost (sb_path: sb list): et =
  match sb_path with
  | []    -> Constant (Int_value 0)
  | [hd]  -> hd.sb_cost
  | _     -> Et.simplify_sum (List.map ~f:(fun sb -> sb.sb_cost) sb_path)

let sb_paths_max_cost (sb_paths: sb list list): et =
  match sb_paths with
  | []    -> Empty
  | [hd]  -> sb_path_cost hd
  | _     -> simplify_max (List.map ~f:sb_path_cost sb_paths)

(*
    sbs_of_bbs

    Takes a list of consecutive basic blocks and returns the corresponding list of
    sblocks

    Parameters:
      ctx         execution context
      all_bbs     basic blocks
      bbs_to_do:  bbs of the sb

    Returns:
      list of sblocks

    Note, the execution context is required since part of the sb definition includes
    its cost and an execution context is required to determine the cost of a loop sb 
*)

let rec sbs_of_bbs (ctx: Ex.execution_context) 
          (all_bbs: bb list) (bbs_todo: bb list): sb list =

  let cost_of_bbs (bbs: bb list): int =
    List.fold
      ~init:0
      ~f:(fun c bb -> c + (cost_of_bb bb))
      bbs
  in

  let cost_of_block_sb (bbs: bb list): et =
    Constant (
      Int_value (
        List.fold 
          ~init:(-1)
          ~f:(fun c cp ->
                let c' = cost_of_bbs cp in
                if c' > c then c' else c)
          (codepaths_of_bbs bbs [[List.hd_exn bbs]] [])
      )
    )
  in

  let sub_sbs_of_bbs (sub_bbs: bb list): sb list =
    if List.exists ~f:(fun bblock -> match bblock.bbtype with | BB_loop -> true | _ -> false) sub_bbs then
      sbs_of_bbs ctx all_bbs sub_bbs
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

  let looping_parts_costs (bbacks: bb list) (loop_cps: cp list) (prefix_part: cp): Cost.loop_metric list =
    List.map ~f:(fun loop_part -> Cost.cost_of_loop ctx (bback_of_cp loop_part bbacks) {prefix_part; loop_part}) loop_cps
  in

  let expr_of_lm (lm: Cost.loop_metric): et =
    match lm with
    | Infinite  -> Constant (String_value "Infinity-y")
    | LMI lmi   ->
        Node {
          op = "*"; 
          op_disp = Infix; 
          args = [  lmi.loop_cost;
                    Node {
                      op = "N";
                      op_disp = Function; 
                      args = [  ExprList (List.map ~f:(fun lv -> Variable lv) lmi.loop_vars);
                                ExprList [lmi.loop_cond];
                                ExprList (List.map ~f:(fun lvev -> lvev.etree) lmi.lv_entry_vals);
                                ExprList (List.map ~f:(fun lvlv -> lvlv.etree) lmi.lv_loop_vals)
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
                match op.opsym with 
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


  let finish_sblock' (sbtype: sb_type) (bblocks: bb list): sb =
    let entry_bb    = List.hd_exn bblocks in
    let succ_sbs   = [] in
    let exit_bbs    = exit_bbs_of_bbs bblocks in
    (* only a loop can have a nested loop *)
    match sbtype with
    | SB_loop ->
        let bbacks    = branchbacks_of_loop bblocks in
        let loop_cps  = looping_paths_of_loop_bblocks bblocks bbacks in
        if List.length loop_cps > 0 then
          begin
            let codepaths   = exits_of_bbs bblocks (exit_bbs_of_bbs bblocks) in
            let exit_cps    = prune_cps (exit_paths (exit_cps codepaths) loop_cps) in
            let nested_sbs = sub_sbs_of_bbs bblocks in
            let root_bb     = List.hd_exn all_bbs in (* TODO doesn't work for nested loops *)
            (* TODO goal is to replace this call to Cp.codepaths_from_to_bb_exn with a function
               that returns the paths that update any of the loop vars rather than all paths *)
            let cp =
              (match Cp.codepaths_from_to_bb_exn root_bb entry_bb false with
              | [] -> []
              (* TODO why do we only consider one prefix? *)
              | cps  -> List.hd_exn cps) in
            let lms = looping_parts_costs bbacks loop_cps cp in
            let ulv = unique_loop_vars lms in
            let ulv_bb = bblocks_of_parameters bblocks entry_bb ulv in
            let exit_cost = max_cost_of_codepaths ctx.w_e exit_cps in
            if ((List.fold ~init:0 ~f:(fun acc lv_bb -> acc + List.length lv_bb) ulv_bb) = 0) || (List.length lms > 0) then
            begin
              (* do we have more than 1 set of loop metrics to consider *)
              if List.length lms > 1 then
                begin
                  (* yes, we need a max operation *)
                  let sb_cost = Node { op = "+";
                                        op_disp = Infix; 
                                        args = [simplify_max (List.map ~f:expr_of_lm lms); exit_cost]} in
                  {sbtype; sb_cost; entry_bb; bblocks; succ_sbs; nested_sbs; exit_bbs; sb_loop = Some {codepaths; loop_cps; exit_cps}; lms}
                end
              else
                (* no, we need use the cost of the single path through the loop *)
                begin
                  (* somehow this code is a problem *)
                  match exit_cost with
                  | Empty ->
                      let sb_cost = expr_of_lm (List.hd_exn lms) in
                      {sbtype; sb_cost; entry_bb; bblocks; succ_sbs; nested_sbs; exit_bbs; sb_loop = Some {codepaths; loop_cps; exit_cps}; lms}
                  | _     ->
                    let sb_cost = Node {op = "+"; op_disp = Infix; args = [expr_of_lm (List.hd_exn lms); exit_cost]} in
                    {sbtype; sb_cost; entry_bb; bblocks; succ_sbs; nested_sbs; exit_bbs; sb_loop = Some {codepaths; loop_cps; exit_cps}; lms}
                end
            end
            else
              (* this happens when there are too many loop prefixes and we give up trying to enumerate them *)
              begin
                let sb_cost       =  Constant (String_value "Infinity-z") in
                {sbtype; sb_cost; entry_bb; bblocks; succ_sbs; nested_sbs; exit_bbs; sb_loop = Some {codepaths; loop_cps; exit_cps}; lms = []}
              end
            end
        else
          (* this happens when there are too many looping paths and we give up trying to enumerate them *)
          begin 
            let sb_cost    = Constant (String_value "Infinity-t") in
            let nested_sbs = [] in
            {sbtype; sb_cost; entry_bb; bblocks; succ_sbs; nested_sbs; exit_bbs; sb_loop = None; lms = []}
          end
      | SB_block ->
        let nested_sbs = [] in
        let sb_cost    = cost_of_block_sb bblocks in
        {sbtype; sb_cost; entry_bb; bblocks; succ_sbs; nested_sbs; exit_bbs; sb_loop = None; lms = []}
  in

  let finish_sblock (sbtype: sb_type) (bbs_acc: bb list): sb =
    finish_sblock' sbtype (List.rev bbs_acc)
  in

  let build_sblock (sbtype: sb_type) (last_bb: bb) (bbs_acc: bb list): sb =
    finish_sblock sbtype (last_bb::bbs_acc)
  in

  let pred_before_sb (bblock: bb option) (bblocks: bb list): bool =
    match bblock with
    | Some bblock'  -> List.exists ~f:(fun bblock'' -> bblock''.bbindex < bblock'.bbindex) bblocks
    | _             -> false
  in

  let sb_entry_bb (entry_bb: bb option) (bblock: bb): bb option =
    (match entry_bb with | None -> Some bblock | _ -> entry_bb)
  in

  let rec eblock_of_bbs' (bbs_todo: bb list) (bbs_acc: bb list) (sbs_acc: sb list) (lnest: int) (entry_bb: bb option): sb list =
    match bbs_todo with
      (* do we still have bblocks to process ? *)
      | hd::tl  ->
          (* are we in a loop ? *)
          if lnest < 0 then
          begin
            (* no, not in a loop *)
            (match hd.bbtype with
              (* are we starting a loop ? *)
              | BB_loop ->
                  (* yes, finish the SB *)
                  eblock_of_bbs' tl [] ((finish_sblock SB_block (hd::bbs_acc))::sbs_acc) hd.nesting None
              | _  ->
                  (* does this bb have a pred that's before the current sb? 
                      i.e. does some earlier sb enter this bb? if so it needs to be
                      the head of a new sb *)
                  if pred_before_sb entry_bb hd.pred then
                  begin
                    (* yes, start a new sb *)
                    eblock_of_bbs' tl [hd] ((finish_sblock SB_block bbs_acc)::sbs_acc) lnest (Some hd)
                  end
                  else
                  begin
                    (* no, keep accumulating the sb *)
                    eblock_of_bbs' tl (hd::bbs_acc) sbs_acc lnest (sb_entry_bb entry_bb hd)
                  end
            )
          end
          else
            (* yes, we're in a loop *)
            (
              match hd.bbtype with
              (* are we at the end of the loop? *)
              | BB_end ->
                if hd.nesting = lnest then
                begin
                  (* yes, close it off *)
                  eblock_of_bbs' tl [] ((build_sblock SB_loop hd bbs_acc)::sbs_acc) (-1) None
                end
                else
                begin
                  (* no, keep accumulating the sb *)
                  eblock_of_bbs' tl (hd::bbs_acc) sbs_acc lnest (sb_entry_bb entry_bb hd)
                end
              | _ ->
                (* not done the loop, keep accumulating the sb *)
                eblock_of_bbs' tl (hd::bbs_acc) sbs_acc lnest (sb_entry_bb entry_bb hd))
      | []      ->
          (* no, close off the current sb if there is one *)
          match bbs_acc with
          | []  -> List.rev sbs_acc
          | _   -> List.rev (finish_sblock' SB_block (List.rev bbs_acc)::sbs_acc)
  in

  let sb_of_bb (sbs: sb list) (bblock: bb): sb option =
    List.find ~f:(fun sb ->  sb.entry_bb.bbindex = bblock.bbindex) sbs
  in

  let rec flatten (sbs: sb list): sb list =
    List.fold ~init:[] 
              ~f:(fun acc e -> 
                  match e.nested_sbs with 
                  | [] -> e::acc 
                  | _ -> List.append (flatten e.nested_sbs) (e::acc))
              sbs
  in

  (* update the successor sbs for all sbs *)
  let update_succ (sbs: sb list) =

    let update_succ' (sbs: sb list) (sb: sb) =

      let update_succ'' (sbs: sb list) (sb: sb) (exit_bb: bb) =
          let s = sb_of_bb sbs exit_bb in
          match s with
          | Some succ   -> sb.succ_sbs <- List.dedup_and_sort ~compare:compare_sbs (succ::sb.succ_sbs)
          | None        -> ()
      in

      List.iter ~f:(update_succ'' sbs sb) sb.exit_bbs;
    in

       List.iter ~f:(update_succ' sbs) sbs;
  in

  let sbs_from_bbs (sbs: sb list) (bbs: bb list): sb list =
    List.fold ~init:[] ~f:(fun acc x ->
                            (match List.find ~f:(fun y -> x.bbindex = y.entry_bb.bbindex) sbs with
                            | Some e -> List.cons e acc
                            | _ -> acc)) bbs
  in

  let loop_iters (lm: Cost.loop_metric): et = 
    match lm with
    | Infinite  -> Constant (String_value "Infinity-y")
    | LMI lmi   ->
        Node {
          op = "N";
          op_disp = Function; 
          args = [  ExprList (List.map ~f:(fun lv -> Variable lv) lmi.loop_vars);
                    ExprList [lmi.loop_cond];
                    ExprList (List.map ~f:(fun lvev -> lvev.etree) lmi.lv_entry_vals);
                    ExprList (List.map ~f:(fun lvlv -> lvlv.etree) lmi.lv_loop_vals)
                  ]}
  in

  let rec update_costs (sbs: sb list) =
    match sbs with
    | [] -> ()
    | hd::tl -> (
      match hd.sbtype with
        | SB_block -> ()
        | SB_loop  -> (
          update_costs hd.nested_sbs;
          match hd.nested_sbs with
          | [] -> ()
          | _  -> (match hd.sb_loop with
              | None -> failwith "Missing loop"
              | Some z -> let x = List.length z.loop_cps in
                          let y = List.length hd.lms in
                          if x <> y then
                            failwith "code paths and loop info have different lengths"
                          else
                            ()
                          ;
                          let paths, lmis = prune_loop_paths z.loop_cps hd.lms in
                          hd.sb_cost <- Node {op="list_MAX"; 
                            op_disp=Function; 
                            args=(List.map2_exn ~f:(fun a b -> Node {op="*"; op_disp=Infix; args=[sb_path_cost (sbs_from_bbs hd.nested_sbs a); (loop_iters b)]}) paths lmis)}
          )
        )
      );
      update_costs tl
  in

  let sbs = eblock_of_bbs' bbs_todo [] [] (-1) None in
    update_succ (List.rev (flatten sbs));
    update_costs sbs;
    sbs
