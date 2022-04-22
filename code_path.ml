open Core
open Easy_logging
open Wasm_module
open Symbolic_expr
open Bblock
open Execution

type code_path = bblock list

let cost_of_code_path (cp: code_path): int =
  List.fold ~f:(+) (List.map ~f:cost_of_bblock cp) ~init:0

let max_cost_of_code_paths (cps: code_path list) (init: int): int =
  List.fold (List.map ~f:cost_of_code_path cps) ~init:init ~f:(fun acc x -> if acc > x then acc else x)
  
  
(*
  succ_of_cp
    Takes the index of the last block in the code fragment we're working with and a code path and
    returns the list of bblocks in the fragment that are immediate successors to the code path

  Parameters:
    last_idx  last block index
    cp        a code path

  Returns:
    the list of successor basic blocks
*)

let succ_of_cp (last_idx: int) (cp: code_path): bblock list = 
  List.filter ~f:(fun x -> x.bbindex <= last_idx) (List.hd_exn cp).succ

(*
    term_of_cp_bb

    Takes a code path and a successor bblock and returns the code path if the successor bblock
    has index greater than the index of the last bblock in the given code path.
    None otherwise

    Parameters:
      last_idx  last block index
      cp        a code path
      succ      possible succesor block

    Returns:
      a code path option that is None if the successor is outside the code fragment, the successor
      otherwise
*)

let term_of_cp_bb (last_idx: int) (cp: code_path) (succ: bblock): code_path option =
    match       (succ.bbindex > last_idx)
            ||  (List.hd_exn cp).bbindex >= succ.bbindex with
    | true  -> Some cp
    |  _    -> None
    
(*
    terms_of_cp
        Takes a code path and returns a list containing the terminal code paths that are terminated
        by the next bblock one bblock longer than the given code path
*)

let terms_of_cp (last_idx: int) (cp: code_path): code_path list =
    List.filter_map ~f:(term_of_cp_bb last_idx cp) (succ_of_cp last_idx cp)

(*
    nterm_of_cp_bb
    Takes a code path and a successor bblock
    Returns an updated code path if the successor bblock has index greater than the
    index of the last bblock in the given code path.
    None otherwise
*)

let nterm_of_cp_bb (last_idx: int) (cp: code_path) (succ: bblock): code_path option =
    match       (succ.bbindex <= last_idx) 
            &&  (List.hd_exn cp).bbindex < succ.bbindex with
    | true    -> Some (List.cons succ cp)
    | _       -> None

(*
    nterms_of_cp
        Takes a code path and returns a list containing the non-terminal code paths that are one bblock longer
        than the given code path
*)

let nterms_of_cp (last_idx: int) (cp: code_path): code_path list =
    List.filter_map ~f:(nterm_of_cp_bb last_idx cp) (succ_of_cp last_idx cp)

(*
    is_term
        Takes a code path and returns true if it has reached a terminal state, false otherwise
*)

let is_term (last_idx: int) (cp: code_path): bool =
    match (List.hd_exn cp).bbtype with
    | BB_return
    | BB_unreachable -> true
    | _ ->
        (match succ_of_cp last_idx cp with
        | []    -> true
        | _     -> false)

(*
    step_code_path
        Takes list of bblocks and a code path
        Returns a pair of lists of code-paths that's the resulting non-terminal and terminal paths respectively
*)

let step_code_path (last_idx: int) (cp: code_path): (code_path list)*(code_path list) =
    match is_term last_idx cp with
    | true  -> [], [cp]
    | _     -> (nterms_of_cp last_idx cp), (terms_of_cp last_idx cp)

(*
    code_paths_of_bblocks

    Takes a list of consecutive basic blocks, a list of partial non-terminal code paths,
    a list of terminal code paths and returns a list of all code paths through the
    list of basic blocks

    TODO - the nterm parameter has to be of the form [[bb]] where bb is the first bblock
    of the bblocks parameter

    Parameters:
      bblocks   list of bblocks
      nterm     list of non-terminal paths
      term      list of terminal paths

    Returns:
      the list containing all code paths through basic blocks

    Note, for performance purpoises we build the code paths in reverse order and reverse them when we're done.
    Also, to prevent this from running away exponentially we return an empty list if there are more than N basic
    blocks with more than 1 successor.
*)

let rec code_paths_of_bblocks' (last_idx: int) (nterm: code_path list) (term: code_path list): code_path list =
  match nterm with
    | []        -> term
    | hd::tl    ->
        let n,t = step_code_path last_idx hd in
            code_paths_of_bblocks' last_idx (List.append n tl) (List.append t term)

let code_paths_of_bblocks (bblocks: bblock list) (nterm: code_path list) (term: code_path list): code_path list =
  let last_idx = (List.nth_exn bblocks ((List.length bblocks)-1)).bbindex in
  match (mult_succ_count bblocks) < 24 with   (* hack to prevent this code from running for a very long time *)
    | true  -> List.map ~f:List.rev (code_paths_of_bblocks' last_idx nterm term)
    | false -> []  

(*
    code_paths_from_to

    Given a start bblock and an end bblock return the non-looping code paths between the two blocks

    Parameters:
      from_bb   a bblock
      to_bb     a bblock

    Returns:
      the list containing all code paths from the first bblock to the second
*)

let succ_of_cp_to (to_bb: bblock) (cp: code_path): bblock list = 
  List.filter ~f:(fun x -> x.bbindex <= to_bb.bbindex) (List.hd_exn cp).succ

let term_of_cp_to (to_bb: bblock) (cp: code_path) (succ: bblock): code_path option =
  match succ.bbindex = to_bb.bbindex with
  | true  -> Some cp
  |  _    -> None

let terms_of_cp_to (to_bb: bblock) (cp: code_path): code_path list =
  List.filter_map ~f:(term_of_cp_to to_bb cp) (succ_of_cp_to to_bb cp)

let nterm_of_cp_to (to_bb: bblock) (cp: code_path) (succ: bblock): code_path option =
  match       (succ.bbindex <= to_bb.bbindex) 
          &&  (List.hd_exn cp).bbindex < succ.bbindex with
  | true    -> Some (succ::cp)
  | _       -> None

let nterms_of_cp_to (to_bb: bblock) (cp: code_path): code_path list =
  List.filter_map ~f:(nterm_of_cp_to to_bb cp) (succ_of_cp_to to_bb cp)

let rec code_paths_to (to_bb: bblock) (nterm: code_path list) (term: code_path list) (n_iters: int): code_path list option =
  if n_iters > 1_000_000 then
    None
  else
    match nterm with
      | []        -> Some term
      | hd::tl    ->
          let n = nterms_of_cp_to to_bb hd in
          let t = terms_of_cp_to to_bb hd in
            code_paths_to to_bb (List.append n tl) (List.append t term) (n_iters + 1)

let code_paths_from_to (from_bb: bblock) (to_bb: bblock): code_path list option =
  if from_bb.bbindex = to_bb.bbindex then
    Some [[from_bb]]
  else
    code_paths_to to_bb [[from_bb]] [] 0
    
let bblock_is_loop (bb: bblock): bool =
  match bb.bbtype with
    | BB_loop -> true
    | _       -> false

let rec code_path_has_loop (cp: code_path)=
  match cp with
  | hd::tl -> (match bblock_is_loop hd with | false -> code_path_has_loop tl | _ -> true)
  | _ -> false

let code_path_with_loop (cp: code_path): code_path option =
  match code_path_has_loop cp with |true -> Some cp | _ -> None

let rec loop_prefix_of_code_path (bblocks: bblock list) (acc: code_path) (cp: code_path) : code_path =
  match cp with
  | []      -> acc
  | hd::tl  ->
      (match bblock_is_loop hd with
        | true  -> List.rev (hd::acc)
        | _     -> loop_prefix_of_code_path bblocks (hd::acc) tl)

let loop_code_paths (bblocks: bblock list) (cps: code_path list): code_path list =
  List.map ~f:(loop_prefix_of_code_path bblocks []) (List.filter_map ~f:code_path_with_loop cps)

let rec compare_cps (cp1: code_path) (cp2: code_path): int =
  match cp1, cp2 with
  | [], []              ->  0
  | _::_, []            -> -1
  | [], _::_            -> +1
  | hd1::tl1, hd2::tl2  ->
      (match hd1.bbindex = hd2.bbindex with
        | true                                  -> compare_cps tl1 tl2
        | false when hd1.bbindex < hd2.bbindex  -> -1
        | _                                     -> +1)

(*
  loop_prefix
  for a given loop_exit, a loop_prefix consists of the path (in bblocks) from the start
  of the program and the value of the loop_exit's condition variables at the end of the path
*)

type loop_prefix = {
  prefix_cp:        bblock list;  (* path to the loop from the start of the program *)
(*   loop_var_values:  ssa list;     (* values of loop condition variables at path end *)
 *)}

(*
  loop_path
  describes the conditions where a loop is exited
*)

type loop_path = {
  path_to_exit:         code_path;        (* path within the loop to the bblock where the exit occurs *)
}

(*
  loop
  consists of a the bblocks that make up the loop and the list of loop exits
*)

type loop = {
  loop_bblocks:   bblock list;     (* list of consecutive bblocks that comprise the loop *)
  looping_paths:  code_path list;  (* list of possible looping paths through the loop *)
  branchbacks:    Bblock.bblock list; (* list of bblocks that contain branchbacks *)
}

(**
  loop_bblocks_of_bblocks

  Given the bblocks of a function return a list of loop bblocks
  The loop bblocks are comprised of the the set

  Parameters:
    bblocks   the list of basic blocks
  Returns:
    the list of loop bblocks in the basic blocks
**)

let rec loop_bblocks_of_bblocks' 
    (bblocks: bblock list) 
    (acc_lbs: bblock list list)
    (acc_lb:  bblock list)
    (in_loop: bool) 
    (nesting: int): bblock list list =
  match bblocks with
    | []      -> (List.rev acc_lbs)
    | hd::tl  ->
        (match in_loop with
          | true ->
            (match hd.bbtype with
              | BB_end when hd.nesting = nesting ->
                  let x = List.rev (hd::acc_lb) in
                  loop_bblocks_of_bblocks' ((List.tl_exn x)@tl) (x::acc_lbs) [] false (-1)
              | _ ->
                  loop_bblocks_of_bblocks' tl acc_lbs (hd::acc_lb) true nesting)
          | false ->
            (match bblock_is_loop hd with
              | true ->
                  loop_bblocks_of_bblocks' tl acc_lbs [hd] true hd.nesting
              | _ ->
                  loop_bblocks_of_bblocks' tl acc_lbs [] false (-1)))

let loop_bblocks_of_bblocks (bblocks: bblock list): bblock list list =
  loop_bblocks_of_bblocks' bblocks [] [] false (-1)

(**
  is_looping_path

  Given a code path in a loop returns true if it is a looping path, false
  otherwise

  Parameters:
    cp   the code path
  Returns:
    true if its looping
**)

let is_branchback (bb: bblock) (idx: int): bool =
  List.exists ~f:(fun bb' -> bb'.bbindex = idx && bb'.bbindex <= bb.bbindex ) bb.succ

let is_looping_path (cp: code_path): bool =
  is_branchback (List.nth_exn cp ((List.length cp) - 1)) (List.hd_exn cp).bbindex

(**
  looping_paths_of_loop_bblocks

  Given the bblocks of a loop return the looping paths within that loop

  Parameters:
    loop_bblocks   list of basic blocks that make up the loop
  Returns:
    the list of looping paths within the loop
**)

let looping_paths_of_loop_bblocks (loop_bblocks: bblock list): code_path list =
  (* the first bblock is a loop and is never part of a looping path *)
  let tl = List.tl_exn loop_bblocks in
    List.filter ~f:is_looping_path
      (code_paths_of_bblocks tl [[List.hd_exn tl]] [])

(*
  branchbacks_of_loop

  Given a loop return the bblock that contains the branchback for that loop

  Parameters:
    l the loop
  Returns:
    the branchback of that loop

*)

let branchbacks_of_loop (lbb: bblock list): bblock list =
  (* get the index of the second bblock in the loop, the loop head *)
  (* any branchback with have this bblock in its list of successors *)
  let lh = (List.nth_exn lbb 1).bbindex in
  List.filter_map ~f:(fun bb -> if is_branchback bb lh then Some bb else None) lbb

(**
  Given the bblocks of a function return a list of loops

  Parameters:
    bblocks   the list of basic blocks of the function
  Returns:
    the list of loops in the basic blocks
**)

let loops_of_bblocks (bblocks: bblock list): loop list =
  List.map  ~f:(fun loop_bblocks -> { (* the bblocks that make up the loop from loop ... end *)
                                      loop_bblocks;
                                      (* the paths in the loop that loop *)
                                      looping_paths = looping_paths_of_loop_bblocks loop_bblocks;
                                      (* the blocks where the loop loops *)
                                      branchbacks = branchbacks_of_loop loop_bblocks})
            (loop_bblocks_of_bblocks bblocks)

(**
  cp_has_bb

  Given a code path and a bblock returns a bool that's true
  if the code path contains the index and false otherwise 

  Parameters:
    bb     bblock index
    cp     code path that contains the bbidx
  Returns:
    Some cp if the code path contains the bblock, None otherwise
**)

let cp_has_bb (bb: bblock) (cp: code_path) : bool =
  List.exists ~f:(fun x -> x.bbindex = bb.bbindex) cp
  
(**
  prefix_of_code_path

  Given a bblock and a code path that contains that bblock
  return the prefix of the code path up to and including the
  bblock

  Parameters:
    bb    bblock
    acc   accumulated prefix so far
    cp    code path that contains the bb
  Returns:
    the prefix of the cp up to bb
**)

let rec prefix_of_code_path (bb: bblock) (acc: code_path) (cp: code_path): code_path =
    match cp with
    | []      -> failwith "Bblock not found"
    | hd::tl  ->
        (match hd.bbindex = bb.bbindex with
          | true -> (List.rev (hd::acc))
          | _    -> prefix_of_code_path bb (hd::acc) tl)
  
(**
  prefixes_of_code_paths

  Given a bblock and a list of code paths that contains that bblock
  return a list of the code paths that are the prefixes of the code path up to
  and including the  bblock

  Parameters:
    cps   list of code paths that contain the bb
    bb    bblock
  Returns:
    the prefixes of the cps up to bb
**)

let prefixes_of_code_paths (cps: code_path list) (bb: bblock): code_path list =
  List.map ~f:(prefix_of_code_path bb []) cps
          
(**
  unique_paths_to_bblock

  Given a list of code paths and a bblock return the list of unique prefixes of the
  bblock, including the bblock, in the list of code paths

  Parameters:
    cps   list of code paths that may or may not contain the bb
    bb    bblock
  Returns:
    unique prefixes from the cps that contain the bb
**)
  
let unique_paths_to_bblock (cps: code_path list) (bb: bblock): code_path list =
  List.dedup_and_sort ~compare:compare_cps (prefixes_of_code_paths (List.filter ~f:(cp_has_bb bb) cps) bb)
  
(**
  paths_with_no_loops

  Given a list of code paths return the sublist of paths with no loops

  Parameters:
    cps  the list of code paths
  Returns:
    the sublist with no loops
**)

let paths_with_no_loops (cps: code_path list): code_path list =
    List.filter ~f:(fun cp -> not (code_path_has_loop cp)) cps
  
(**
  exit_bblocks_of_loop

  Given a loop return the list of bblocks in the loop that are
  bblocks from which the loops is exitted

  Parameters:
    l  the loop
  Returns:
    the list of exit bblocks
**)

(* TODO we have to generate all exiting paths in the loop to find the exit bbs *)
let is_loop_exit_bblock last_index bb =
  (List.length bb.pred > 0) && (* TODO this is a patch solution for the case in oxipng#401 *)
  0 = 
    List.fold_left
      ~f:(fun init' succ_bb -> 
            if succ_bb.bbindex >= last_index then 
                init' 
            else init'+1) 
      ~init:0
      bb.succ

let exit_bblocks_of_loop (l: loop): bblock list =
  let lbb = l.loop_bblocks in
  let last_index = (List.hd_exn lbb).bbindex + (List.length lbb) in
  List.filter ~f:(is_loop_exit_bblock last_index) lbb


(**
  unique_paths_from_bblocks

  Given a list of bblocks, return the list of code paths from those bblocks

  Parameters:
    bbs the bblock list
  Returns:
    the list of code paths

**)

let rec paths_from_bblock (acc: code_path list) (bb: bblock): code_path list =
  match bb.succ with
  | []  -> List.map ~f:List.rev (List.map ~f:(fun cp -> bb::cp) acc)
  | _   -> List.concat (List.map ~f:(fun bb' -> paths_from_bblock (List.map ~f:(fun cp -> bb::cp) acc) bb') bb.succ)

let paths_from_bblocks (bbs: bblock list): code_path list =
  List.concat (List.map ~f:(paths_from_bblock [[]]) bbs)

(*
  condition_of_code_path

  Given a code path and a branchback bblock in the code path, return the loop condition
  as a string

  Parameters:
    w           wasm module
    e           code of the function
    param_types function parameter types
    local_types function local variable types
    cp          the code path
    bback       the branchback bblock
  Returns:
    the condition of the loop

*)

let rec expr_of_code_path e (cp: code_path) (bb: bblock) (acc: expr list): expr =
  match cp with
  | [] ->       failwith "Branchback block not found"
  | hd::tl ->   if    hd.bbindex = bb.bbindex 
                then  List.concat (List.rev ((expr_of_bblock e hd)::acc))
                else  expr_of_code_path e tl bb ((expr_of_bblock e hd)::acc)

let condition_of_loop w e param_types local_types (bback: bblock) (cp: code_path): expr_tree =
  match bback.bbtype with
  | BB_br_if ->
      let _,loop_cond = reduce_bblock w (expr_of_code_path e cp bback []) (empty_program_state w param_types local_types) in
        loop_cond
  | BB_br_table ->  Empty (* TODO *)
  | BB_br ->        Empty (* TODO *)
  | _ ->            failwith "Invalid branchback"

let rec all_paths (cp1: code_path list) (cp2: code_path list) (cp2all: code_path list) (acc: code_path list): code_path list =
    match cp1, cp2 with
    | [], _               -> acc
    | _::tl1, []          -> all_paths tl1 cp2all cp2all acc
    | hd1::tl1, hd2::tl2  -> all_paths tl1 tl2 cp2all ((List.concat [hd1; hd2])::acc)
  
let conditions_of_paths w e param_types local_types (prefixes: code_path list) (loop_paths: code_path list) (bback: bblock): expr_tree list =
  List.map ~f:(condition_of_loop w e param_types local_types bback) (all_paths prefixes loop_paths loop_paths [])

(*
  classify loops

  Given a list of loops determine the classification of each of those loops

  Parameters:
    ls    the list of loops
  Returns:
    the list of loop classifications

*)

type loops_class = {
  loops_series:   bool;
  loops_parallel: bool;
  loops_nested:   bool;
}

let paths_from_to_loops (l1: loop) (l2: loop): code_path list option =
  let end1  = List.nth_exn l1.loop_bblocks ((List.length l1.loop_bblocks) - 1) in
  let loop2 = List.hd_exn l2.loop_bblocks in
  code_paths_from_to end1 loop2

let loop_hd_bbidx (l: loop): int =
  (List.hd_exn l.loop_bblocks).bbindex

let loop_pair_nested (lp: loop*loop): bool =
  let l1 = fst lp in
  let l2 = snd lp in
  let hd1_idx = (List.hd_exn l1.loop_bblocks).bbindex in
  let hd2_idx = (List.hd_exn l2.loop_bblocks).bbindex in
  let tl1_idx = (List.nth_exn l1.loop_bblocks ((List.length l1.loop_bblocks) - 1)).bbindex in
  let tl2_idx = (List.nth_exn l2.loop_bblocks ((List.length l2.loop_bblocks) - 1)).bbindex in
    hd2_idx > hd1_idx && tl2_idx < tl1_idx

let loop_pair_parallel (lp: loop*loop): bool =
  if loop_pair_nested lp then
    false
  else 
    let ap =  paths_from_to_loops (fst lp) (snd lp) in
    match ap with
    | Some [] -> true
    | _       -> false

let loop_pair_series (lp: loop*loop): bool =
  let l1 = fst lp in
  let l2 = snd lp in
  let end1  = List.nth_exn l1.loop_bblocks ((List.length l1.loop_bblocks) - 1) in
  let loop2 = List.hd_exn l2.loop_bblocks in
  let ap    = paths_from_to_loops l1 l2 in
  match ap with
  | None -> false
  | Some ap' ->
      (match end1.bbindex < loop2.bbindex with
      | true  ->  (List.exists 
                    ~f:(fun p ->
                              List.exists ~f:(fun bb -> bb.bbindex = end1.bbindex) p
                          &&  List.exists ~f:(fun bb -> bb.bbindex = loop2.bbindex) p)
                  ap')
      | false ->  false)

let rec all_pairs (ls1: loop list) (ls2: loop list) (ls2_init: loop list) (acc: (loop*loop) list): (loop*loop) list =
  match ls1, ls2 with
  | [], _             ->  acc
  | _::tl1, []        ->  all_pairs tl1 ls2_init ls2_init acc
  | hd1::_, hd2::tl2  ->  if (loop_hd_bbidx hd1) < (loop_hd_bbidx hd2) then
                            all_pairs ls1 tl2 ls2_init ((hd1, hd2)::acc)
                          else
                            all_pairs ls1 tl2 ls2_init acc

(* TODO we could improve the performance of this by not generating all pairs but a lazy list of pairs *)
let loops_classify (loop_classifier: loop*loop -> bool) (ls: loop list): bool =
  match List.length ls with
  | 0 | 1 -> false
  | _     ->
    match List.find ~f:loop_classifier (all_pairs ls ls ls []) with
    | Some _  -> true
    | _       -> false
(* 
let long_path (bbs: bblock list) (lp: loop*loop): bool =
  let l1 = fst lp in
  let l2 = snd lp in
  let end1  = List.nth_exn l1.loop_bblocks ((List.length l1.loop_bblocks) - 1) in
  let loop2 = List.hd_exn l2.loop_bblocks in
  let nsucc =
  (List.fold_left
      ~f:(fun acc bb ->
        if bb.bbindex >= end1.bbindex && bb.bbindex <= loop2.bbindex then
          acc + (List.length bb.succ)
        else
          acc)
      ~init:0
      bbs)
    - (loop2.bbindex - end1.bbindex) in
  Printf.printf "total # of successors is %d\n%!" nsucc;
  nsucc > 120

let too_many (ls: loop list) (bbs: bblock list): bool =
  List.exists ~f:(long_path bbs) (all_pairs ls ls ls [])

let classify_loops (ls: loop list) (bbs: bblock list) : loops_class =
  let too_many_paths = too_many ls bbs in
  {
    loops_series    = if too_many_paths then false else loops_classify loop_pair_series ls;
    loops_parallel  = if too_many_paths then false else loops_classify loop_pair_parallel ls;
    loops_nested    = loops_classify loop_pair_nested ls
  } *)

let classify_loops (ls: loop list): loops_class =
  {
    loops_series    = loops_classify loop_pair_series ls;
    loops_parallel  = loops_classify loop_pair_parallel ls;
    loops_nested    = loops_classify loop_pair_nested ls
  }







(* TODO deprecate all of this *)
let rec has_loop (bblocks: bblock list): bool =
  match bblocks with
  | hd::tl ->
    (match bblock_is_loop hd with
    | true  -> true
    | _     -> has_loop tl)
  | _ ->  false

let ids_with_loops (bblocks: bblock list): int list =
  List.filter_map ~f:(fun s -> match bblock_is_loop s with | true -> Some (s.bbindex+1) | _ -> None) bblocks

let simple_br_loop (bblocks: bblock list) (s: bblock): int option =
  match List.length bblocks - s.bbindex >= 5 with
    | true -> (match s.bbtype,
                  (List.nth_exn bblocks (s.bbindex+1)).bbtype,
                  (List.nth_exn bblocks (s.bbindex+2)).bbtype,
                  (List.nth_exn bblocks (s.bbindex+3)).bbtype,
                  (List.nth_exn bblocks (s.bbindex+4)).bbtype with
              | BB_loop, BB_if, BB_br, BB_end,BB_end -> Some (s.bbindex+2)
              | _ -> None)
    | false -> None

let simple_brif_loop (bblocks: bblock list) (b: bblock): int option =
  match List.length bblocks - b.bbindex >= 3 with
    | true -> (match b.bbtype,
                  (List.nth_exn bblocks (b.bbindex+1)).bbtype,
                  (List.nth_exn bblocks (b.bbindex+2)).bbtype with
                | BB_loop, BB_br_if, BB_end -> Some (b.bbindex+1)
                | _ -> None)
    | false -> None

let ids_with_simple_br_loops (bblocks: bblock list): int list =
  List.filter_map ~f:(simple_br_loop bblocks) bblocks
  
let ids_with_simple_brif_loops (bblocks: bblock list): int list =
    List.filter_map ~f:(simple_brif_loop bblocks) bblocks
 
let bblocks_with_simple_brif_loops (bblocks: bblock list): bblock list =
    List.map ~f:(fun i -> List.nth_exn bblocks i) (ids_with_simple_brif_loops bblocks)

(** 

  analyze_simple_loop
  
  Given a bblocks that is a simple brif loops, analyzes the loop to
  determine the branch condition

  Parameters:
    w           wasm module
    e           code of the function that the bblock is from
    param_types types of the parameters to this function
    local_types types of the local variable in this function
    bb          brif loop bblock
  Returns:
    the loop condition in the form of an expr_tree
**)

let analyze_simple_loop (w: wasm_module) (e: expr) (param_types: resulttype list) (local_types: local_type list) 
      (bb: bblock): expr_tree =
  let _,loop_cond = reduce_bblock w (expr_of_bblock e bb) (empty_program_state w param_types local_types) in
    loop_cond
