open Core
open Easy_logging
open Wasm_module

type code_path = int list

(*
    succ_of_cp
    Takes a list of segments and a code path and returns the list of segments that
    are immediate successors to the code path
*)
let succ_of_cp (segments: segment list) (cp: code_path): int list =
    (List.nth_exn segments (List.hd_exn cp)).succ
(*
    term_of_cp_seg
        Takes a code path and a successor segment id
        Returns the code path if the successor segment has index greater than the
        index of the last segment in the given code path.
        None otherwise
*)
let term_of_cp_seg (segments: segment list) (cp: code_path) (succ: int): code_path option =
    match       (succ >= List.length segments) 
            ||  (List.nth_exn segments (List.hd_exn cp)).index >= (List.nth_exn segments succ).index with
    | true  -> Some cp
    |  _    -> None
    
(*
    terms_of_cp
        Takes a code path and returns a list containing the terminal code paths that are terminated
        by the next segment one segment longer
        than the given code path
*)
let terms_of_cp (segments: segment list) (cp: code_path): code_path list =
    List.filter_map ~f:(term_of_cp_seg segments cp) (succ_of_cp segments cp)

(*
    nterm_of_cp_seg
    Takes a code path and a successor segment id
    Returns an updated code path if the successor segment has index greater than the
    index of the last segment in the given code path.
    None otherwise
*)
let nterm_of_cp_seg (segments: segment list) (cp: code_path) (succ: int): code_path option =
    match       (succ < List.length segments) 
            &&  (List.nth_exn segments (List.hd_exn cp)).index < (List.nth_exn segments succ).index with
    | true    -> Some (List.cons succ cp)
    | _       -> None

(*
    nterms_of_cp
        Takes a code path and returns a list containing the non-terminal code paths that are one segment longer
        than the given code path
*)
let nterms_of_cp (segments: segment list) (cp: code_path): code_path list =
    List.filter_map ~f:(nterm_of_cp_seg segments cp) (succ_of_cp segments cp)

(*
    is_term
        Takes a code path and returns true if it has reached a terminal state, false otherwise
*)
let is_term (segments: segment list) (cp: code_path): bool =
    match (List.nth_exn segments (List.hd_exn cp)).segtype with
    | 0x0f (* return *)
    | 0x00 (* unreachable *) -> true
    | _ ->
        (match succ_of_cp segments cp with
        | []    -> true
        | _     -> false)

(*
    step_code_path
        Takes list of segments and a code path
        Returns a pair of lists of code-paths that's the resulting non-terminal and terminal paths respectively
*)
let step_code_path (segments: segment list) (cp: code_path): (code_path list)*(code_path list) =
    match is_term segments cp with
    | true  -> [], [cp]
    | _     -> (nterms_of_cp segments cp), (terms_of_cp segments cp)

(* 
    code_paths_of_segments
        Takes a list of segments, a list of non-terminal code paths and a list of terminal code paths
        Returns the terminal code paths
*)
let rec code_paths_of_segments (segments: segment list) (nterm: code_path list) (term: code_path list): code_path list =
    (Logging.get_logger "wanalyze")#info "code_paths_of_segments: nterm length %d term length %d"
      (List.length nterm) (List.length term);
    match nterm with
    | []        -> term
    | hd::tl    ->
        let n,t = step_code_path segments hd in
            code_paths_of_segments segments (List.append n tl) [] (*(List.append t term)*)