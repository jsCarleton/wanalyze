open Core
open Wasm_module
open Ssa
open Symbolic_expr

(*
  loop_prefix
  for a given loop_exit, a loop_prefix consists of the path (in bblocks) from the start
  of the program and the value of the loop_exit's condition variables at the end of the path
*)
type loop_prefix = {
  prefix_cp:        bblock list;  (* path to the loop from the start of the program *)
  loop_var_values:  ssa list;     (* values of loop condition variables at path end *)
}

(*
  loop_exit
  describes the conditions where a loop is exited
*)
type loop_path = {
  path_to_exit:         bblock list;      (* path within the loop to the bblock where the exit occurs *)
  condition_at_exit:    expr_tree;        (* condition that's true for the exit to occur *)
  vars_of_condition:    string list;      (* variables used in the condition *)
  assignments_to_vars:  ssa list;         (* assignments made to the condition variables *)
  loop_prefixes:        loop_prefix list; (* the list of prefix code paths for this loop_exit*)
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
                                      assignments_to_vars = [];
                                      loop_prefixes =[]})
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
        (match hd.index = bb.index with
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
        (match hd.index = bb.index with
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