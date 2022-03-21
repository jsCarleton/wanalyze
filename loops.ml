open Core
open Wasm_module

type loop_body =
  bblock list    (* the basic blocks of the loop *)

(**
  Given the bblocks of a function return a list of loop bodies

  Parameters:
    bblocks   the list of basic blocks
  Returns:
    the list of loop bodies in the basic blocks
**)
let rec loop_bodies_of_bblocks' 
    (bblocks: bblock list) 
    (acc_lbs: loop_body list)
    (acc_lb:  loop_body)
    (in_loop: bool) 
    (nesting: int): loop_body list =
  match bblocks with
    | []      -> (List.rev acc_lbs)
    | hd::tl  ->
        (match in_loop with
          | true ->
            (match hd.bbtype with
              | BB_end when hd.nesting = nesting ->
                  let x = List.rev (hd::acc_lb) in
                  loop_bodies_of_bblocks' ((List.tl_exn x)@tl) (x::acc_lbs) [] false (-1)
              | _ ->
                  loop_bodies_of_bblocks' tl acc_lbs (hd::acc_lb) true nesting)
          | false ->
            (match hd.bbtype with
              | BB_loop ->
                  loop_bodies_of_bblocks' tl acc_lbs [hd] true hd.nesting
              | _ ->
                  loop_bodies_of_bblocks' tl acc_lbs [] false (-1)))

let loop_bodies_of_bblocks (bblocks: bblock list): loop_body list =
  loop_bodies_of_bblocks' bblocks [] [] false (-1)

(**
  cp_has_bbidx

  Given a code path and a bblock index returns a code path option that's None
  if the code path contains the index and the given code path otherwise 

  Parameters:
    bbidx   bblock index
    cp      code path that contains the bbidx
  Returns:
    Some cp if the code path contains the bblock, None otherwise
**)

let rec cp_has_bbidx' (cp: code_path) (bbidx: int): bool =
  match cp with
    | []      -> false
    | hd::tl  ->
        (match hd=bbidx with
          | true  -> true
          | _     -> cp_has_bbidx' tl bbidx)
  
let cp_has_bbidx (bbidx: int) (cp: code_path): code_path option =
  match cp_has_bbidx' cp bbidx with | true -> Some cp | _ -> None
  
(**
  loop_prefix

  Given a bblock index and a code path that contains that bblock
  return the prefix of the code path up to, but not including, the
  index

  Parameters:
    bbidx   bblock index
    acc     accumulated prefix so far
    cp      code path that contains the bbidx
  Returns:
    the prefix of the cp up to bbidx
**)

let rec loop_prefix (bbidx: int) (acc: code_path) (cp: code_path): code_path =
    match cp with
    | []      -> failwith "Loop not found"
    | hd::tl  ->
        (match hd=bbidx with
          | true -> (List.rev acc)
          | _    -> loop_prefix bbidx (hd::acc) tl)
  
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
  List.map ~f:(loop_prefix bb.index [])
  (List.filter_map ~f:(cp_has_bbidx bb.index) cps)  (* code paths that contain this loop *)

let code_paths_of_loop (cps: code_path list) (lb: loop_body): code_path list =
  code_paths_of_loop' cps (List.hd_exn lb)