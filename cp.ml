open Core
open Opcode
open Wm
open Et
open Bb
open Ex

type cp = bb list

let cost_of_codepath (e: expr) (codepath: cp): et =

  let cost_of_codepath_body (codepath: cp): et =
    Constant (Int_value (List.fold  ~init:0 ~f:(+) (List.map ~f:cost_of_bb codepath)))
  in

  let cost_of_fn (fn: int): et =
    Constant (String_value (sprintf "|f%d|" fn))
  in

  let cost_of_calls (fns: int list): et =
    match fns with
    | []    -> Empty
    | [hd]  -> cost_of_fn hd
    | _     -> Node {op = "list_sum"; op_disp = Function; args = List.map ~f:cost_of_fn fns}
  in

  let fns_of_cp (e: expr) (codepath: cp): int list =

    let fns_of_bb (e: expr) (bblock: bb): int list =
      List.map ~f:(fun op -> match op.arg with | Funcidx idx -> idx | _ -> failwith "invalid argument in call op")
        (List.filter ~f:(fun op -> match opcode_of_int op.opcode with | OP_call -> true | _ -> false) (expr_of_bb e bblock))
    in

    List.dedup_and_sort ~compare:Int.compare (List.concat (List.map ~f:(fns_of_bb e) codepath))
  in

  let fns = fns_of_cp e codepath in
    match fns with
    | []    -> cost_of_codepath_body codepath
    | _     -> Node {op = "+"; op_disp = Infix; args = [cost_of_codepath_body codepath; cost_of_calls fns]}
     
let max_cost_of_codepaths (e: expr) (codepaths: cp list): et =
  match codepaths with
  | []    -> Empty
  | [hd]  -> cost_of_codepath e hd
  | _     -> Node {op = "list_max"; op_disp = Function; args = List.map ~f:(cost_of_codepath e) codepaths}
  
(*
  succ_of_cp
    Takes the index of the last block in the code fragment we're working with and a code path and
    returns the list of bblocks in the fragment that are immediate successors to the code path

  Parameters:
    last_idx    last block index
    codepath   code path

  Returns:
    the list of successor basic blocks
*)

let succ_of_cp (last_idx: int) (codepath: cp): bb list = 
  List.filter ~f:(fun x -> x.bbindex <= last_idx) (List.hd_exn codepath).succ

(*
    term_of_cp_bb

    Takes a code path and a successor bb and returns the code path if the successor bb
    has index greater than the index of the last bb in the given code path.
    None otherwise

    Parameters:
      last_idx    last block index
      codepath   code path
      succ        possible succesor block

    Returns:
      a code path option that is None if the successor is outside the code fragment, the successor
      otherwise
*)

let term_of_cp_bb (last_idx: int) (codepath: cp) (succ: bb): cp option =
    match       (succ.bbindex > last_idx)
            ||  (List.hd_exn codepath).bbindex >= succ.bbindex with
    | true  -> Some codepath
    |  _    -> None
    
(*
    terms_of_cp
        Takes a code path and returns a list containing the terminal code paths that are terminated
        by the next bb one bb longer than the given code path
*)

let terms_of_cp (last_idx: int) (codepath: cp): cp list =
    List.filter_map ~f:(term_of_cp_bb last_idx codepath) (succ_of_cp last_idx codepath)

(*
    nterm_of_cp_bb
    Takes a code path and a successor bb
    Returns an updated code path if the successor bb has index greater than the
    index of the last bb in the given code path.
    None otherwise
*)

let nterm_of_cp_bb (last_idx: int) (codepath: cp) (succ: bb): cp option =
    match       (succ.bbindex <= last_idx) 
            &&  (List.hd_exn codepath).bbindex < succ.bbindex with
    | true    -> Some (List.cons succ codepath)
    | _       -> None

(*
    nterms_of_cp
        Takes a code path and returns a list containing the non-terminal code paths that are one bb longer
        than the given code path
*)

let nterms_of_cp (last_idx: int) (codepath: cp): cp list =
    List.filter_map ~f:(nterm_of_cp_bb last_idx codepath) (succ_of_cp last_idx codepath)

(*
    is_term
        Takes a code path and returns true if it has reached a terminal state, false otherwise
*)

let is_term (last_idx: int) (codepath: cp): bool =
    match (List.hd_exn codepath).bbtype with
    | BB_return
    | BB_unreachable -> true
    | _ ->
        (match succ_of_cp last_idx codepath with
        | []    -> true
        | _     -> false)

(*
    step_codepath
        Takes list of bblocks and a code path
        Returns a pair of lists of code-paths that's the resulting non-terminal and terminal paths respectively
*)

let step_codepath (last_idx: int) (codepath: cp): (cp list)*(cp list) =
    match is_term last_idx codepath with
    | true  -> [], [codepath]
    | _     -> (nterms_of_cp last_idx codepath), (terms_of_cp last_idx codepath)

(*
    codepaths_of_bbs

    Takes a list of consecutive basic blocks, a list of partial non-terminal code paths,
    a list of terminal code paths and returns a list of all code paths through the
    list of basic blocks

    TODO - the nterm parameter has to be of the form [[bb]] where bb is the first bb
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

let codepaths_of_bbs (bblocks: bb list) (nterm: cp list) (term: cp list): cp list =

  let rec codepaths_of_bbs' (last_idx: int) (nterm: cp list) (term: cp list): cp list =
    match nterm with
      | []        -> term
      | hd::tl    ->
          let n,t = step_codepath last_idx hd in
              codepaths_of_bbs' last_idx (List.append n tl) (List.append t term)
  in

  let last_idx = (List.nth_exn bblocks ((List.length bblocks)-1)).bbindex in
  match (mult_succ_count bblocks) < 29 with   (* hack to prevent this code from running for a very long time *)
    | true  -> List.map ~f:List.rev (codepaths_of_bbs' last_idx nterm term)
    | false -> []  

(*
    codepaths_from_to_bb

    Given a start bb and an end bb return the non-looping code paths between the two bblocks

    Parameters:
      from_bb   a bb
      to_bb     a bb

    Returns:
      the list containing all code paths from the first bb to the second
*)

let codepaths_from_to_bb (from_bb: bb) (to_bb: bb): cp list option =

  let succ_of_cp_to (to_bb: bb) (codepath: cp): bb list = 
    List.filter ~f:(fun x -> to_bb.bbindex < 0 || x.bbindex <= to_bb.bbindex) (List.hd_exn codepath).succ
  in
  
  let term_of_cp_to (to_bb: bb) (codepath: cp) (succ: bb): cp option =
    match succ.bbindex = to_bb.bbindex with
    | true  -> Some codepath
    |  _    -> None
  in
  
  let terms_of_cp_to (to_bb: bb) (codepath: cp): cp list =
    List.filter_map ~f:(term_of_cp_to to_bb codepath) (succ_of_cp_to to_bb codepath)
  in
  
  let nterm_of_cp_to (to_bb: bb) (codepath: cp) (succ: bb): cp option =
    if      succ.bbindex <= to_bb.bbindex 
        &&  (List.hd_exn codepath).bbindex < succ.bbindex then
      Some (succ::codepath)
    else
      None
  in
  
  let nterms_of_cp_to (to_bb: bb) (codepath: cp): cp list =
    List.filter_map ~f:(nterm_of_cp_to to_bb codepath) (succ_of_cp_to to_bb codepath)
  in
  
  let rec codepaths_to_bb (to_bb: bb) (nterm: cp list) (term: cp list) (n_iters: int): cp list option =
    if n_iters > 1_000_000 then
      begin
        None
      end
    else
      match nterm with
        | []        -> Some term
        | hd::tl    ->
            let n = nterms_of_cp_to to_bb hd in
            let t = terms_of_cp_to to_bb hd in
              codepaths_to_bb to_bb (List.append n tl) (List.append t term) (n_iters + 1)
  in

  if from_bb.bbindex = to_bb.bbindex then
    Some [[from_bb]]
  else
    codepaths_to_bb to_bb [[from_bb]] [] 0
    
let codepaths_from_to_bb_exn (from_bb: bb) (to_bb: bb): cp list =
  let cps_o = codepaths_from_to_bb from_bb to_bb in
  match cps_o with
    | None            -> []
    | Some codepaths  -> codepaths

(*
    codepaths_from_bbs_to_bb

    Given a bb list and an end bb return the non-looping code paths that
    - start at the beginning of the bb list
    - end at the end bb
    - stay in the bb list until they reach the end bb

    Parameters:
      from_bbs    a bb list
      to_bb       a bb

    Returns:
      cp list option which is either:
          Some cp list       the list of possible code paths
          None               too many paths
*)

let codepaths_from_bbs_to_bb (from_bbs: bb list) (to_bb: bb): cp list option =

  let bb_in_bbs (bblock: bb) (bblocks: bb list): bool =
    List.exists ~f:(fun bblock' -> bblock.bbindex = bblock'.bbindex) bblocks
  in

  let succ_of_cp_from_to (from_bbs: bb list) (to_bb: bb) (codepath: cp): bb list = 
    List.filter ~f:(fun bblock -> (bb_in_bbs bblock from_bbs) || (bblock.bbindex = to_bb.bbindex)) (List.hd_exn codepath).succ
  in
  
  let term_of_cp_from_to (to_bb: bb) (codepath: cp) (succ: bb): cp option =
    match succ.bbindex = to_bb.bbindex with
    | true  -> Some codepath
    |  _    -> None
  in
  
  let terms_of_cp_from_to (from_bbs: bb list) (to_bb: bb) (codepath: cp): cp list =
    List.map ~f:List.rev (List.filter_map ~f:(term_of_cp_from_to to_bb codepath) (succ_of_cp_from_to from_bbs to_bb codepath))
  in
  
  let nterm_of_cp_from_to (to_bb: bb) (codepath: cp) (succ: bb): cp option =
    if      succ.bbindex <= to_bb.bbindex 
        &&  (List.hd_exn codepath).bbindex < succ.bbindex then
      Some (succ::codepath)
    else
      None
  in

  let nterms_of_cp_from_to (from_bbs: bb list) (to_bb: bb) (codepath: cp): cp list =
    List.filter_map ~f:(nterm_of_cp_from_to to_bb codepath) (succ_of_cp_from_to from_bbs to_bb codepath)
  in
  
  let rec codepaths_from_to_ebb' (from_bbs: bb list) (to_bb: bb) (nterm: cp list)
      (term: cp list) (n_iters: int): cp list option =
    if n_iters > 1_000_000 then
      None
    else
      match nterm with
        | []        -> Some term
        | hd::tl    ->
            let n = nterms_of_cp_from_to from_bbs to_bb hd in
            let t = terms_of_cp_from_to from_bbs to_bb hd in
              codepaths_from_to_ebb' from_bbs to_bb (List.append n tl) (List.append t term) (n_iters + 1)
  in

  codepaths_from_to_ebb' from_bbs to_bb [[List.hd_exn from_bbs]] [] 0
    
    
let bblock_is_loop (bblock: bb): bool =
  match bblock.bbtype with
    | BB_loop -> true
    | _       -> false

let rec codepath_has_loop (codepath: cp)=
  match codepath with
  | hd::tl -> (match bblock_is_loop hd with | false -> codepath_has_loop tl | _ -> true)
  | _ -> false

let codepath_with_loop (codepath: cp): cp option =
  match codepath_has_loop codepath with |true -> Some codepath | _ -> None

let rec loop_prefix_of_codepath (bblocks: bb list) (acc: cp) (codepath: cp) : cp =
  match codepath with
  | []      -> acc
  | hd::tl  ->
      (match bblock_is_loop hd with
        | true  -> List.rev (hd::acc)
        | _     -> loop_prefix_of_codepath bblocks (hd::acc) tl)

let loop_codepaths (bblocks: bb list) (codepaths: cp list): cp list =
  List.map ~f:(loop_prefix_of_codepath bblocks []) (List.filter_map ~f:codepath_with_loop codepaths)

let rec compare_cps (cp1: cp) (cp2: cp): int =
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
  prefix_cp:        bb list;  (* path to the loop from the start of the program *)
(*   loop_var_values:  ssa list;     (* values of loop condition variables at path end *)
 *)}

(*
  loop
  consists of a the bblocks that make up the loop and the list of loop exits
*)

type loop = {
  loop_bblocks:   bb list;     (* list of consecutive bblocks that comprise the loop *)
  looping_paths:  cp list;  (* list of possible looping paths through the loop *)
  branchbacks:    bb list;     (* list of bblocks that contain branchbacks *)
}

(**
  loop_bblocks_of_bbs

  Given the bblocks of a function return a list of loop bblocks
  The loop bblocks are comprised of the the set of bblocks that
  make up the body of the loop but not including the loop bb itself

  Parameters:
    bblocks   the list of basic blocks
  Returns:
    the list of loop bblocks in the basic blocks
**)

let rec loop_bblocks_of_bbs' 
    (bblocks: bb list) 
    (acc_lbs: bb list list)
    (acc_lb:  bb list)
    (in_loop: bool) 
    (nesting: int): bb list list =
  match bblocks with
    | []      -> (List.rev acc_lbs)
    | hd::tl  ->
        (match in_loop with
          | true ->
            (match hd.bbtype with
              | BB_end when hd.nesting = nesting ->
                  let x = List.rev (hd::acc_lb) in
                  loop_bblocks_of_bbs' ((List.tl_exn x)@tl) (x::acc_lbs) [] false (-1)
              | _ ->
                  loop_bblocks_of_bbs' tl acc_lbs (hd::acc_lb) true nesting)
          | false ->
            (match bblock_is_loop hd with
              | true -> (* don't include this bb *)
                  loop_bblocks_of_bbs' tl acc_lbs [] true hd.nesting
              | _ ->
                  loop_bblocks_of_bbs' tl acc_lbs [] false (-1)))

let loop_bblocks_of_bbs (bblocks: bb list): bb list list =
  loop_bblocks_of_bbs' bblocks [] [] false (-1)

(**
  exit_paths

  Given two lists of code paths return the code paths that are suffixes
  of the code paths in the first list with leading occurrences of bblocks
  in the second list of code paths removed

  Parameters:
    cps1, cps2   two lists of code paths
  Returns:
    the suffix code paths
**)

let exit_paths (cps1: cp list) (cps2: cp list): cp list =

  let bbs_of_cps (codepaths: cp list): bb list =
    List.dedup_and_sort ~compare:compare_bbs (List.concat codepaths)
  in

  let bb_in_bbs (bblock: bb) (bblocks: bb list): bool =
    List.exists ~f:(fun bblock' -> bblock.bbindex = bblock'.bbindex) bblocks
  in

  let rec remove_suffix (bblocks: bb list) (codepath: cp): cp option =
    match codepath with
    | []      -> None
    | hd::tl  -> if bb_in_bbs hd bblocks then
                  remove_suffix bblocks tl
                else
                  Some codepath
  in

  List.filter_map ~f:(remove_suffix (bbs_of_cps cps2)) cps1

(**
  cp_has_bb

  Given a code path and a bb returns a bool that's true
  if the code path contains the index and false otherwise 

  Parameters:
    bblock      bb
    codepath   code path that contains the bb
  Returns:
    Some cp if the code path contains the bb, None otherwise
**)

let cp_has_bb (bblock: bb) (codepath: cp) : bool =
  List.exists ~f:(fun x -> x.bbindex = bblock.bbindex) codepath
  
(**
  prefix_of_codepath

  Given a bb and a code path that contains that bb
  return the prefix of the code path up to but not including the
  bb

  Parameters:
    bblock      bb
    acc         accumulated prefix so far
    codepath   code path that contains the bb
  Returns:
    the prefix of the codepath up to bb
**)

let rec prefix_of_codepath (bblock: bb) (acc: cp) (codepath: cp): cp =
    match codepath with
    | []      -> failwith "bb not found"
    | hd::tl  ->
        (match hd.bbindex = bblock.bbindex with
          | true -> (List.rev acc)
          | _    -> prefix_of_codepath bblock (hd::acc) tl)
  
(**
  prefixes_of_codepaths

  Given a bb and a list of code paths that contains that bb
  return a list of the code paths that are the prefixes of the code path up to
  and not including the bb

  Parameters:
    codepaths   list of code paths that contain the bb
    bb    bb
  Returns:
    the prefixes of the codepaths up to bb
**)

let prefixes_of_codepaths (codepaths: cp list) (bblock: bb): cp list =
  List.map ~f:(prefix_of_codepath bblock []) codepaths
          
(**
  unique_paths_to_bblock

  Given a list of code paths and a bb return the list of unique prefixes of the
  bb, not including the bb, in the list of code paths

  Parameters:
    codepaths   list of code paths that may or may not contain the bb
    bb    bb
  Returns:
    unique prefixes from the codepaths that contain the bb
**)
  
let unique_paths_to_bblock (codepaths: cp list) (bblock: bb): cp list =
  List.dedup_and_sort ~compare:compare_cps (prefixes_of_codepaths (List.filter ~f:(cp_has_bb bblock) codepaths) bblock)
  
(**
  paths_with_no_loops

  Given a list of code paths return the sublist of paths with no loops

  Parameters:
    codepaths  the list of code paths
  Returns:
    the sublist with no loops
**)

let paths_with_no_loops (codepaths: cp list): cp list =
    List.filter ~f:(fun codepath -> not (codepath_has_loop codepath)) codepaths
  
(**
  exit_bblocks_of_loop

  Given a loop return the list of bblocks in the loop that are
  bblocks from which the loops is exitted

  Parameters:
    l  the loop
  Returns:
    the list of exit bblocks
**)

(* TODO we have to generate all exiting paths in the loop to find the exit bblocks *)
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

let exit_bblocks_of_loop (l: loop): bb list =
  let lbb = l.loop_bblocks in
  let last_index = (List.hd_exn lbb).bbindex + (List.length lbb) in
  List.filter ~f:(is_loop_exit_bblock last_index) lbb


(**
  unique_paths_from_bblocks

  Given a list of bblocks, return the list of code paths from those bblocks

  Parameters:
    bblocks the bb list
  Returns:
    the list of code paths

**)

let rec paths_from_bblock (acc: cp list) (bblock: bb): cp list =
  match bblock.succ with
  | []  -> List.map ~f:List.rev (List.map ~f:(fun codepath -> bblock::codepath) acc)
  | _   -> List.concat (List.map ~f:(fun bblock' -> paths_from_bblock (List.map ~f:(fun codepath -> bblock::codepath) acc) bblock') bblock.succ)

let paths_from_bblocks (bblocks: bb list): cp list =
  List.concat (List.map ~f:(paths_from_bblock [[]]) bblocks)

(*
  expr_of_codepath

  Given an the code of a function, a code path through the function and a 
  branchback bb in the code path return the code from the beginning
  of the code path up to and including the branchback

  Parameters:
    e           code of the function
    codepath   code path
    bback       branchback bb

  Returns:
    code on the code path up to and including the branchback

*)

let expr_of_codepath (e: expr) (codepath: cp) (bblock: bb): expr =

  let rec expr_of_codepath' (e: expr) (codepath: cp) (bblock: bb) (acc: expr list): expr =
    match codepath with
    | [] ->       failwith "Branchback block not found"
    | hd::tl ->   if    hd.bbindex = bblock.bbindex 
                  then  List.concat (List.rev ((expr_of_bb e hd)::acc))
                  else  expr_of_codepath' e tl bblock ((expr_of_bb e hd)::acc)
  in

  expr_of_codepath' e codepath bblock []

let condition_of_loop ctx (bback: bb) (codepath: cp): et =
  match bback.bbtype with
  | BB_br_if ->
      let _,loop_cond = reduce_bblock ctx.w 
                                      (expr_of_codepath ctx.w_e codepath bback) 
                                      (empty_program_state ctx.w ctx.param_types ctx.local_types) in
        loop_cond
  | BB_br_table ->  Empty (* TODO *)
  | BB_br ->        Empty (* TODO *)
  | _ ->            failwith "Invalid branchback"
                    
let conditions_of_paths (ctx: execution_context) (prefixes: cp list) (loop_paths: cp list) (bback: bb): 
      et list =

  let rec all_paths (cp1: cp list) (cp2: cp list) (cp2all: cp list) (acc: cp list): cp list =
    match cp1, cp2 with
    | [], _               -> acc
    | _::tl1, []          -> all_paths tl1 cp2all cp2all acc
    | hd1::tl1, hd2::tl2  -> all_paths tl1 tl2 cp2all ((List.concat [hd1; hd2])::acc)
  in

  List.map ~f:(condition_of_loop ctx bback) (all_paths prefixes loop_paths loop_paths [])

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

let paths_from_to_loops (l1: loop) (l2: loop): cp list option =
  let end1  = List.nth_exn l1.loop_bblocks ((List.length l1.loop_bblocks) - 1) in
  let loop2 = List.hd_exn l2.loop_bblocks in
  codepaths_from_to_bb end1 loop2

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
                              List.exists ~f:(fun bblock -> bblock.bbindex = end1.bbindex) p
                          &&  List.exists ~f:(fun bblock -> bblock.bbindex = loop2.bbindex) p)
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

let classify_loops (ls: loop list): loops_class =
  {
    loops_series    = loops_classify loop_pair_series ls;
    loops_parallel  = loops_classify loop_pair_parallel ls;
    loops_nested    = loops_classify loop_pair_nested ls
  }







(* TODO deprecate all of this *)
let rec has_loop (bblocks: bb list): bool =
  match bblocks with
  | hd::tl ->
    (match bblock_is_loop hd with
    | true  -> true
    | _     -> has_loop tl)
  | _ ->  false

let ids_with_loops (bblocks: bb list): int list =
  List.filter_map ~f:(fun s -> match bblock_is_loop s with | true -> Some (s.bbindex+1) | _ -> None) bblocks

let simple_br_loop (bblocks: bb list) (s: bb): int option =
  match List.length bblocks - s.bbindex >= 5 with
    | true -> (match s.bbtype,
                  (List.nth_exn bblocks (s.bbindex+1)).bbtype,
                  (List.nth_exn bblocks (s.bbindex+2)).bbtype,
                  (List.nth_exn bblocks (s.bbindex+3)).bbtype,
                  (List.nth_exn bblocks (s.bbindex+4)).bbtype with
              | BB_loop, BB_if, BB_br, BB_end,BB_end -> Some (s.bbindex+2)
              | _ -> None)
    | false -> None

let simple_brif_loop (bblocks: bb list) (b: bb): int option =
  match List.length bblocks - b.bbindex >= 3 with
    | true -> (match b.bbtype,
                  (List.nth_exn bblocks (b.bbindex+1)).bbtype,
                  (List.nth_exn bblocks (b.bbindex+2)).bbtype with
                | BB_loop, BB_br_if, BB_end -> Some (b.bbindex+1)
                | _ -> None)
    | false -> None

let ids_with_simple_br_loops (bblocks: bb list): int list =
  List.filter_map ~f:(simple_br_loop bblocks) bblocks
  
let ids_with_simple_brif_loops (bblocks: bb list): int list =
    List.filter_map ~f:(simple_brif_loop bblocks) bblocks
 
let bblocks_with_simple_brif_loops (bblocks: bb list): bb list =
    List.map ~f:(fun i -> List.nth_exn bblocks i) (ids_with_simple_brif_loops bblocks)

(** 

  analyze_simple_loop
  
  Given a bblocks that is a simple brif loops, analyzes the loop to
  determine the branch condition

  Parameters:
    ctx         execution context
    bb          brif loop bb
  Returns:
    the loop condition in the form of an et
**)

let analyze_simple_loop (ctx: execution_context) (bblock: bb): et =
  let _,loop_cond = reduce_bblock ctx.w (expr_of_bb ctx.w_e bblock) (empty_program_state ctx.w ctx.param_types ctx.local_types) in
    loop_cond
