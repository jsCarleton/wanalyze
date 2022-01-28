open Core
open Easy_logging
open Wasm_module

type code_path = int list

(*
    succ_of_cp
    Takes a list of bblocks and a code path and returns the list of bblocks that
    are immediate successors to the code path
*)
let succ_of_cp (bblocks: bblock list) (cp: code_path): int list =
    (List.nth_exn bblocks (List.hd_exn cp)).succ
(*
    term_of_cp_seg
        Takes a code path and a successor bblock id
        Returns the code path if the successor bblock has index greater than the
        index of the last bblock in the given code path.
        None otherwise
*)
let term_of_cp_seg (bblocks: bblock list) (cp: code_path) (succ: int): code_path option =
    match       (succ >= List.length bblocks) 
            ||  (List.nth_exn bblocks (List.hd_exn cp)).index >= (List.nth_exn bblocks succ).index with
    | true  -> 
        (Logging.get_logger "wanalyze")#info "term_of_cp_seg: succ %d cp %s" succ (String.concat ~sep:" " (List.map ~f:string_of_int cp));
        Some cp
    |  _    -> None
    
(*
    terms_of_cp
        Takes a code path and returns a list containing the terminal code paths that are terminated
        by the next bblock one bblock longer than the given code path
*)
let terms_of_cp (bblocks: bblock list) (cp: code_path): code_path list =
    List.filter_map ~f:(term_of_cp_seg bblocks cp) (succ_of_cp bblocks cp)

(*
    nterm_of_cp_seg
    Takes a code path and a successor bblock id
    Returns an updated code path if the successor bblock has index greater than the
    index of the last bblock in the given code path.
    None otherwise
*)
let nterm_of_cp_seg (bblocks: bblock list) (cp: code_path) (succ: int): code_path option =
    match       (succ < List.length bblocks) 
            &&  (List.nth_exn bblocks (List.hd_exn cp)).index < (List.nth_exn bblocks succ).index with
    | true    -> Some (List.cons succ cp)
    | _       -> None

(*
    nterms_of_cp
        Takes a code path and returns a list containing the non-terminal code paths that are one bblock longer
        than the given code path
*)
let nterms_of_cp (bblocks: bblock list) (cp: code_path): code_path list =
    List.filter_map ~f:(nterm_of_cp_seg bblocks cp) (succ_of_cp bblocks cp)

(*
    is_term
        Takes a code path and returns true if it has reached a terminal state, false otherwise
*)
let is_term (bblocks: bblock list) (cp: code_path): bool =
    match (List.nth_exn bblocks (List.hd_exn cp)).segtype with
    | 0x0f (* return *)
    | 0x00 (* unreachable *) -> true
    | _ ->
        (match succ_of_cp bblocks cp with
        | []    -> true
        | _     -> false)

(*
    step_code_path
        Takes list of bblocks and a code path
        Returns a pair of lists of code-paths that's the resulting non-terminal and terminal paths respectively
*)
let step_code_path (bblocks: bblock list) (cp: code_path): (code_path list)*(code_path list) =
    match is_term bblocks cp with
    | true  -> [], [cp]
    | _     -> (nterms_of_cp bblocks cp), (terms_of_cp bblocks cp)

(* 
    code_paths_of_bblocks
        Takes a list of bblocks, a list of non-terminal code paths and a list of terminal code paths
        Returns the terminal code paths
*)
let rec code_paths_of_bblocks (bblocks: bblock list) (nterm: code_path list) (term: code_path list): code_path list =
    match nterm with
    | []        -> term
    | hd::tl    ->
        let n,t = step_code_path bblocks hd in
            code_paths_of_bblocks bblocks (List.append n tl) (List.append t term)