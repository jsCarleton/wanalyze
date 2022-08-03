open Core
open Easy_logging
open Wm
open Et

(* basic blocks and code paths are supplementary information that we store as part of the func definition to
    facilitate analysis *)
(* basic blocks have a type that's determined by the control instruction that terminates the bb *)
type bb_type =
  BB_unknown 
  | BB_exit_end | BB_exit_return | BB_exit_unreachable
  | BB_unreachable | BB_block | BB_loop | BB_if | BB_else | BB_end | BB_br | BB_br_if | BB_br_table | BB_return

let string_of_bb_type b =
  match b with
  BB_unknown -> "unknown" 
  | BB_exit_end -> "exit end" | BB_exit_return -> "exit return" | BB_exit_unreachable -> "exit unreachable"
  | BB_unreachable -> "unreachable" | BB_block -> "block" | BB_loop -> "loop" | BB_if -> "if" | BB_else -> "else"
  | BB_end -> "end" | BB_br -> "br" | BB_br_if -> "if" | BB_br_table -> "br_table" | BB_return -> "return"

type bb =
{
          bbindex:  int;        (* the index of this bb in the list of bblocks, makes things easier to have this *)
          start_op: int;        (* index into e of the first op in the expr *)
  mutable end_op:   int;        (* index+1 of the last op in the expr *)
  mutable succ:     bb list;    (* bblocks that can be directly reached from this bb *)
  mutable pred:     bb list;    (* bblocks that can directly reach this bb *)
  mutable bbtype:	  bb_type;    (* effectively the control opcode that created this bb *)
  mutable nesting:  int;        (* nesting level of the last opcode in the bb *)
  mutable labels:   int list;   (* destination labels used in BR, BR_IF, BR_TABLE instructions *)
  mutable br_dest:	bb option;  (* for LOOP, BLOCK and IF instructions the bb that's the target of a branch for this instruction  *)
}

let bb_type_of_opcode (op: int): bb_type =
  match op with
  | (* unreachable *) 0x00 -> BB_unreachable
  | (* block *)       0x02 -> BB_block
  | (* loop *)        0x03 -> BB_loop
  | (* if *)          0x04 -> BB_if
  | (* else *)        0x05 -> BB_else
  | (* end *)         0x0b -> BB_end
  | (* br *)          0x0c -> BB_br
  | (* br_if *)       0x0d -> BB_br_if
  | (* br_table *)    0x0e -> BB_br_table   
  | (* return *)      0x0f -> BB_return
  | _                      -> failwith (sprintf "Invalid opcode for bb %x" op)

let cost_of_bb (bblock: bb): int = bblock.end_op - bblock.start_op

let compare_bbs (bblock1: bb) (bblock2: bb): int =
  Int.compare bblock1.bbindex bblock2.bbindex

let bb_in_bblocks (bblock: bb) (bblocks: bb list): bool =
  List.exists ~f:(fun bblock' -> bblock.bbindex = bblock'.bbindex) bblocks

let bb_not_in_bblocks (bblock: bb) (bblocks: bb list): bool =
  List.for_all ~f:(fun bblock' -> bblock.bbindex <> bblock'.bbindex) bblocks
    
let indexes_of_bbs (bblocks: bb list): int list =
  List.map ~f:(fun x -> x.bbindex) bblocks

let string_of_ints (ints: int list): string =
    String.concat ~sep:" " (List.map ~f:string_of_int ints)

let string_of_bbs (bblocks: bb list): string =
  String.concat ["["; string_of_ints (List.filter ~f:(fun idx -> idx >= 0) (indexes_of_bbs bblocks)); "]"]

let string_of_raw_bblocks (bblocks: bb list): string =
  String.concat ["["; string_of_ints (indexes_of_bbs bblocks); "]"]
  
let mult_succ_count (bblocks: bb list): int =
  List.fold bblocks ~init:0 ~f:(fun a x -> match x.succ with |[] | [_] -> a | _ -> a+1)

let expr_of_bb (e: expr) (bblock: bb): expr =
  if bblock.start_op >= 0 then
    (List.sub e ~pos:bblock.start_op ~len:(bblock.end_op - bblock.start_op))
  else
    []

let exit_bblock (idx: int) (exit_type: bb_type): bb = 
      { bbindex     = idx;
        start_op    = -1; 
        end_op      = -1;
        succ        = [];
        pred        = [];
        bbtype      = exit_type;
        nesting     = -1;
        labels      = [];
        br_dest     = None}

let return_bblock (bblocks: bb list): bb list =
  if List.exists ~f:(fun bblock -> match bblock.bbtype with | BB_return -> true | _ -> false) bblocks then
    (exit_bblock (List.length bblocks) BB_exit_return)::bblocks
  else
    bblocks

let unreachable_bblock (bblocks: bb list): bb list =
  if List.exists ~f:(fun bblock -> match bblock.bbtype with | BB_unreachable -> true | _ -> false) bblocks then
    (exit_bblock (List.length bblocks) BB_exit_unreachable)::bblocks
  else
    bblocks
  
let bb_is_exit (bblock: bb): bool =
  match bblock.bbtype with | BB_exit_end | BB_exit_return | BB_exit_unreachable -> true | _ -> false

let non_exit_bbs (bblocks: bb list): bb list =
  List.filter ~f:(fun bblock -> not (bb_is_exit bblock)) bblocks

let rec bblocks_of_expr' (e: expr) (bb_acc: bb list) (current: bb): bb list =
match e with
| [] -> List.rev (unreachable_bblock (return_bblock ((exit_bblock (List.length bb_acc) BB_exit_end)::bb_acc)))
| _  ->
  match (List.hd_exn e).opcode with
    (* 1. each of these control instructions cause the current bb to end *)
    | (* unreachable *) 0x00
    | (* block *)       0x02
    | (* loop *)        0x03
    | (* if *)          0x04
    | (* else *)        0x05
    | (* end *)         0x0b
    | (* br *)          0x0c
    | (* br_if *)       0x0d
    | (* br_table *)    0x0e
    | (* return *)      0x0f ->
      (* 1.1 if we have a branch instruction we remember the labels *)
      (match (List.hd_exn e).arg with
      | Labelidx labelidx  -> current.labels <- [labelidx]
      | BrTable br_table   -> current.labels <- br_table
      | _ -> ()
      );
      (* 1.2 end the bb, start a new one*)
      current.bbtype <- bb_type_of_opcode (List.hd_exn e).opcode;
      current.nesting <- (List.hd_exn e).opnesting;
      (* the new block doesn't have a correct type until we discover what it is*)
      bblocks_of_expr' (List.tl_exn e) (current::bb_acc) 
                    {bbindex    = current.bbindex+1;
                    start_op    = current.end_op; 
                    end_op      = current.end_op+1;
                    succ        = [];
                    pred        = [];
                    bbtype      = BB_unknown;
                    nesting     = -2;
                    labels      = [];
                    br_dest     = None}
    (* 2. all other opcodes get added to the current bb *)
    | _ ->
      current.end_op <- current.end_op + 1;
      bblocks_of_expr' (List.tl_exn e) bb_acc current

let set_pred' (bblocks: bb list) (src: bb) (dest: bb) =
  match dest.bbindex < List.length bblocks with 
  | true -> dest.pred <- List.cons src dest.pred
  | _ -> ()

let set_pred (bblocks: bb list) (bblock: bb) =
  List.iter ~f:(set_pred' bblocks bblock) bblock.succ
 
let rec get_end_else_bblock (bblocks: bb list) (index: int) (nesting: int): bb =
  match (List.nth_exn bblocks index).bbtype with
  | BB_else when (List.nth_exn bblocks index).nesting = nesting -> (List.nth_exn bblocks (index+1))
  | BB_end  when (List.nth_exn bblocks index).nesting = nesting -> (List.nth_exn bblocks (index+1))
  | _ -> get_end_else_bblock bblocks (index+1) nesting

let rec get_end_bblock (bblocks: bb list) (index: int) (nesting: int): bb =
  match (List.nth_exn bblocks index).bbtype with
  | BB_end when (List.nth_exn bblocks index).nesting = nesting -> (List.nth_exn bblocks (index+1))
  | _ -> get_end_bblock bblocks (index+1) nesting

let rec get_target_loop (bblocks: bb list) (index: int) (nesting: int) (label: int): bb option =
  match index >= 0 with
  | true ->
    (let s = List.nth_exn bblocks index in
    match s.bbtype with
    | BB_block  when s.nesting = nesting - label - 1 -> s.br_dest
    | BB_loop   when s.nesting = nesting - label - 1 -> s.br_dest
    | BB_if     when s.nesting = nesting - label - 1 -> s.br_dest
    | _ -> get_target_loop bblocks (index-1) nesting label
    )
  | false -> None

let br_dest_index (br_dest: bb option): int =
  match br_dest with
  | Some bb -> bb.bbindex
  | _       -> failwith "No branch destination found"

let rec get_target_end (bblocks: bb list) (index: int) (nesting: int) (label: int): bb =
  match index < List.length bblocks with
  | true ->
    (let s = List.nth_exn bblocks index in
    match s.bbtype with
    | BB_block  when nesting = s.nesting - label -> (List.nth_exn bblocks ((br_dest_index s.br_dest) + 1))
    | BB_if     when nesting = s.nesting - label -> (List.nth_exn bblocks ((br_dest_index s.br_dest) + 1))
    | _ -> get_target_end bblocks (index+1) nesting label
    )
  | false -> failwith "Unable to find branch target"
    
let br_target (bblocks: bb list) (index: int) (nesting: int) (label: int): bb =
  match get_target_loop bblocks (index-1) nesting label with 
  | None    -> get_target_end bblocks (index-1) nesting label
  | Some bb -> bb

let set_successor (bblocks: bb list) (index: int) =
  let s = List.nth_exn bblocks index in
  match s.bbtype with
    | BB_end ->
        (match (index+1) >= (List.length bblocks) with
          | true  -> s.succ <- []
          | false -> s.succ <- [List.nth_exn bblocks (index+1)])
    | BB_block
    | BB_loop ->
        s.succ <- [List.nth_exn bblocks (index+1)]
    | BB_if ->
        s.succ <- [List.nth_exn bblocks (index+1); get_end_else_bblock bblocks index s.nesting]
    | BB_else ->
        s.succ <- [get_end_bblock bblocks index s.nesting]
    | BB_br_if ->
        s.succ <- List.cons (List.nth_exn bblocks (index+1)) (List.map ~f:(br_target bblocks index s.nesting) s.labels)
    | BB_br
    | BB_br_table ->
        s.succ <- List.map ~f:(br_target bblocks index s.nesting) s.labels
    | BB_unreachable ->
        s.succ <- [List.find_exn ~f:(fun bblock -> match bblock.bbtype with | BB_exit_unreachable -> true | _ -> false) bblocks]
    | BB_return ->
        s.succ <- [List.find_exn ~f:(fun bblock -> match bblock.bbtype with | BB_exit_return -> true | _ -> false) bblocks]
    | BB_exit_end
    | BB_exit_return
    | BB_exit_unreachable ->
              s.succ <- []
    | BB_unknown ->
        failwith "Unknown bb block type in set_successor"
 
let rec set_successors (bblocks: bb list) (index: int) =
match index < List.length bblocks with
  | true -> set_successor bblocks index;
            set_successors bblocks (index+1)
  | _ -> ()

let rec set_br_dest (bblocks: bb list) (index: int) =
match index < List.length bblocks with
| false -> ()
| true ->
    (let s = List.nth_exn bblocks index in
    match s.bbtype with
      | BB_loop           -> s.br_dest <- Some (List.nth_exn bblocks (index + 1))
      | BB_if | BB_block  -> s.br_dest <- Some (get_end_bblock bblocks index s.nesting)
      | _ -> ()
    );
  set_br_dest bblocks (index+1)

let bblocks_of_expr (e: expr) : bb list =

  let bblocks = bblocks_of_expr' e [] {bbindex=0; start_op=0; end_op=1; succ=[]; pred=[]; bbtype=BB_unknown; nesting = -2;
                                      labels=[]; br_dest= None} in
  (Logging.get_logger "wanalyze")#info "# bblocks: %d" (List.length bblocks);
  set_br_dest bblocks 0;
  set_successors bblocks 0;
  List.iter ~f:(set_pred bblocks) bblocks;
  bblocks
  
let loop_count_of_bbs (bblocks: bb list) (init: int): int =
  List.fold_left ~f:(fun init bblock -> init + (match bblock.bbtype with | BB_loop -> 1 | _ -> 0)) 
                  ~init:init
                  bblocks

let rec first_loop_of_bbs (bblocks: bb list): bb =
  match (List.hd_exn bblocks).bbtype with
  | BB_loop  -> List.hd_exn bblocks
  | _        -> first_loop_of_bbs (List.tl_exn bblocks)
