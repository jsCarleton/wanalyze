open Core
open Easy_logging
open Wasm_module
open Symbolic_expr
open Bblock
open Execution

type code_path = bblock list

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
    code_paths_of_bblocks'
        Takes a list of bblocks, a list of non-terminal code paths and a list of terminal code paths
        Returns the terminal code paths *unless* we think there are too many code paths. In that case
        we return []
*)
let rec code_paths_of_bblocks' (last_idx: int) (nterm: code_path list) (term: code_path list): code_path list =
  match nterm with
    | []        -> term
    | hd::tl    ->
        let n,t = step_code_path last_idx hd in
            code_paths_of_bblocks' last_idx (List.append n tl) (List.append t term)
  
(*
    For convenience we build each code path in reverse order. Here we reverse that since
    we actually need them in flow graph order for execution purposes
*)
let code_paths_of_bblocks (bblocks: bblock list) (nterm: code_path list) (term: code_path list): code_path list =
  let last_idx = (List.nth_exn bblocks ((List.length bblocks)-1)).bbindex in
  match (mult_succ_count bblocks) < 24 with   (* hack to prevent this code from running for a very long time *)
    | true  -> List.map ~f:List.rev (code_paths_of_bblocks' last_idx nterm term)
    | false -> []
    
let block_is_loop (bb: bblock): bool =
  match bb.bbtype with
    | BB_loop -> true
    | _       -> false

let rec code_path_has_loop (bblocks: bblock list) (cp: code_path)=
  match cp with
  | hd::tl -> (match block_is_loop hd with | false -> code_path_has_loop bblocks tl | _ -> true)
  | _ -> false

let code_path_with_loop (bblocks: bblock list) (cp: code_path): code_path option =
  match code_path_has_loop bblocks cp with |true -> Some cp | _ -> None

let rec loop_prefix_of_code_path (bblocks: bblock list) (acc: code_path) (cp: code_path) : code_path =
  match cp with
  | []      -> acc
  | hd::tl  ->
      (match block_is_loop hd with
        | true  -> List.rev (hd::acc)
        | _     -> loop_prefix_of_code_path bblocks (hd::acc) tl)

let loop_code_paths (bblocks: bblock list) (cps: code_path list): code_path list =
  List.map ~f:(loop_prefix_of_code_path bblocks []) (List.filter_map ~f:(code_path_with_loop bblocks) cps)

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
  loop_exit
  describes the conditions where a loop is exited
*)
type loop_path = {
  path_to_exit:         bblock list;      (* path within the loop to the bblock where the exit occurs *)
  condition_at_exit:    expr_tree;        (* condition that's true for the exit to occur *)
  vars_of_condition:    string list;      (* variables used in the condition *)
(*   assignments_to_vars:  ssa list;         (* assignments made to the condition variables *)
 *)  loop_prefixes:        loop_prefix list; (* the list of prefix code paths for this loop_exit*)
}

(*
  loop
  consists of a the bblocks that make up the loop and the list of loop exits
*)
type loop = {
  loop_bblocks: bblock list;      (* list of consecutive bblocks that comprise the loop *)
  loop_paths:   loop_path list;   (* list of possible paths through the loop *)
}

(**
  Given the bblocks of a function return a list of loop bblocks

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
            (match hd.bbtype with
              | BB_loop ->
                  loop_bblocks_of_bblocks' tl acc_lbs [hd] true hd.nesting
              | _ ->
                  loop_bblocks_of_bblocks' tl acc_lbs [] false (-1)))

let loop_bblocks_of_bblocks (bblocks: bblock list): bblock list list =
  loop_bblocks_of_bblocks' bblocks [] [] false (-1)

let loop_paths_of_loop_bblocks (loop_bblocks: bblock list): loop_path list =
  List.map  ~f:(fun path_to_exit -> { path_to_exit;
                                      condition_at_exit = Empty;
                                      vars_of_condition = [];
 (*                                       assignments_to_vars = [];
  *)                                    loop_prefixes =[]})
            (code_paths_of_bblocks loop_bblocks [[List.hd_exn loop_bblocks]] [])

(**
  Given the bblocks of a function return a list of loops

  Parameters:
    bblocks   the list of basic blocks
  Returns:
    the list of loops in the basic blocks
**)

let loops_of_bblocks (bblocks: bblock list): loop list =
  List.map  ~f:(fun loop_bblocks -> { loop_bblocks; 
                                      loop_paths = loop_paths_of_loop_bblocks loop_bblocks})
            (loop_bblocks_of_bblocks bblocks)
  
(**
  cp_has_bb

  Given a code path and a bblock returns a code path option that's None
  if the code path contains the index and the given code path otherwise 

  Parameters:
    bb     bblock index
    cp     code path that contains the bbidx
  Returns:
    Some cp if the code path contains the bblock, None otherwise
**)

let rec cp_has_bb' (cp: code_path) (bb: bblock): bool =
  match cp with
    | []      -> false
    | hd::tl  ->
        (match hd.bbindex = bb.bbindex with
          | true  -> true
          | _     -> cp_has_bb' tl bb)
  
let cp_has_bb (bb: bblock) (cp: code_path): code_path option =
  match cp_has_bb' cp bb with | true -> Some cp | _ -> None
  
(**
  loop_prefix

  Given a bblock and a code path that contains that bblock
  return the prefix of the code path up to, but not including, the
  bblock

  Parameters:
    bb    bblock
    acc   accumulated prefix so far
    cp    code path that contains the bb
  Returns:
    the prefix of the cp up to bb
**)

let rec loop_prefix (bb: bblock) (acc: code_path) (cp: code_path): code_path =
    match cp with
    | []      -> failwith "Loop not found"
    | hd::tl  ->
        (match hd.bbindex = bb.bbindex with
          | true -> (List.rev acc)
          | _    -> loop_prefix bb (hd::acc) tl)
  
(**
  code_paths_of_loop

  Given the code paths of a function and a loop body return the code
  paths that contain loop body

  Parameters:
    cps   code paths
    lb    loop body
  Returns:
    the code paths to that loop body
**)
let code_paths_of_loop' (cps: code_path list) (bb: bblock): code_path list =
  List.map ~f:(loop_prefix bb [])
  (List.filter_map ~f:(cp_has_bb bb) cps)  (* code paths that contain this loop *)

let code_paths_of_loop (cps: code_path list) (lb: bblock list): code_path list =
  code_paths_of_loop' cps (List.hd_exn lb)





let has_loop' (bb: bblock): bool = 
  match bb.bbtype with
  | BB_loop -> true
  | _       -> false

let rec has_loop (bblocks: bblock list): bool =
  match bblocks with
  | hd::tl ->
    (match has_loop' hd with
    | true  -> true
    | _     -> has_loop tl)
  | _ ->  false

let idx_of_bbs_of_loops (bblocks: bblock list): int list =
  List.fold_left
    ~init:[] 
    ~f:(fun acc bb -> match bb.bbtype with | BB_loop -> (List.append acc [bb.bbindex]) | _ -> acc)
    bblocks

let ids_with_loops (bblocks: bblock list): int list =
  List.filter_map ~f:(fun s -> match has_loop' s with | true -> Some (s.bbindex+1) | _ -> None) bblocks

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

(** analyze_simple_loop given a bblocks that is a simple brif loops, analyzes the loop to
  determine the branch condition
  Parameters:
  bb        brif loop bblock
  e         code of the function that the bblock is from
  locals    type of locals in the function
  Returns:
  the loop condition in the form of an expr_tree
*)
let analyze_simple_loop (w: wasm_module) (e: expr) (param_types: resulttype list) (local_types: local_type list) 
      (bb: bblock): expr_tree =
  let _,loop_cond = reduce_bblock w (expr_of_bblock e bb) (empty_program_state w param_types local_types) in
    loop_cond

let execution_paths (bblocks: bblock list): int list list =
  [List.map ~f:(fun s -> s.bbindex) bblocks]