open Core
open Easy_logging
open Wasm_module
open Symbolic_expr

(* basic blocks and code paths are supplementary information that we store as part of the func definition to
    facilitate analysis *)
(* basic blocks have a type that's determined by the control instruction that terminates the bblock *)
type bb_type =
  BB_unknown
  | BB_unreachable | BB_block | BB_loop | BB_if | BB_else | BB_end | BB_br | BB_br_if | BB_br_table | BB_return

let string_of_bb_type b =
  match b with
  BB_unknown -> "unknown"
  | BB_unreachable -> "unreachable" | BB_block -> "block" | BB_loop -> "loop" | BB_if -> "if" | BB_else -> "else"
  | BB_end -> "end" | BB_br -> "br" | BB_br_if -> "if" | BB_br_table -> "br_table" | BB_return -> "return"

type bblock =
{
          bbindex:  int;            (* the index of this bblock in the list of bblocks, makes things easier to have this *)
          start_op: int;            (* index into e of the first op in the expr *)
  mutable end_op:   int;            (* index+1 of the last op in the expr *)
  mutable succ:     bblock list;    (* bblocks that can be directly reached from this bblock *)
  mutable pred:     bblock list;    (* bblocks that can directly reach this bblock *)
  mutable bbtype:	  bb_type;        (* effectively the control opcode that created this bblock *)
  mutable nesting:  int;            (* nesting level of the last opcode in the bblock *)
  mutable labels:   int list;       (* destination labels used in BR, BR_IF, BR_TABLE instructions *)
  mutable br_dest:	bblock option;  (* for LOOP, BLOCK and IF instructions the bblock that's the target of a branch for this instruction  *)
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

let mult_succ_count (bblocks: bblock list): int =
  List.fold bblocks ~init:0 ~f:(fun a x -> match x.succ with |[] | [_] -> a | _ -> a+1)

let expr_of_bblock (e: expr) (bb: bblock): expr =
  (List.sub e ~pos:bb.start_op ~len:(bb.end_op - bb.start_op))

let rec bblocks_of_expr' (e: expr) (bb_acc: bblock list) (current: bblock): bblock list =
match e with
| [] -> bb_acc
| _  ->
  match (List.hd_exn e).opcode with
    (* 1. each of these control instructions cause the current bblock to end *)
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
      | BrTable br_table   -> current.labels <- br_table.table
      | _ -> ()
      );
      (* 1.2 end the bblock, start a new one*)
      current.bbtype <- bb_type_of_opcode (List.hd_exn e).opcode;
      current.nesting <- (List.hd_exn e).opnesting;
      (* the new block doesn't have a correct type until we discover what it is*)
      bblocks_of_expr' (List.tl_exn e) (List.append bb_acc [current]) 
                    {bbindex    = current.bbindex+1;
                    start_op    = current.end_op; 
                    end_op      = current.end_op+1;
                    succ        = [];
                    pred        = [];
                    bbtype      = BB_unknown;
                    nesting     = -2;
                    labels      = [];
                    br_dest     = None}
    (* 2. all other opcodes get added to the current bblock *)
    | _ ->
      current.end_op <- current.end_op + 1;
      bblocks_of_expr' (List.tl_exn e) bb_acc current

let rec get_end_else_bblock (bblocks: bblock list) (index: int) (nesting: int): bblock =
  match (List.nth_exn bblocks index).bbtype with
  | BB_else when (List.nth_exn bblocks index).nesting = nesting -> (List.nth_exn bblocks (index+1))
  | BB_end  when (List.nth_exn bblocks index).nesting = nesting -> (List.nth_exn bblocks (index+1))
  | _ -> get_end_else_bblock bblocks (index+1) nesting

let rec get_end_bblock (bblocks: bblock list) (index: int) (nesting: int): bblock =
  match (List.nth_exn bblocks index).bbtype with
  | BB_end when (List.nth_exn bblocks index).nesting = nesting -> (List.nth_exn bblocks (index+1))
  | _ -> get_end_bblock bblocks (index+1) nesting

let rec get_target_loop (bblocks: bblock list) (index: int) (nesting: int) (label: int): bblock option =
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

let br_dest_index (br_dest: bblock option): int =
  match br_dest with
  | Some bb -> bb.bbindex
  | _       -> failwith "No branch destination found"

let rec get_target_end (bblocks: bblock list) (index: int) (nesting: int) (label: int): bblock =
  match index < List.length bblocks with
  | true ->
    (let s = List.nth_exn bblocks index in
    match s.bbtype with
    | BB_block  when nesting = s.nesting - label -> (List.nth_exn bblocks ((br_dest_index s.br_dest) + 1))
    | BB_if     when nesting = s.nesting - label -> (List.nth_exn bblocks ((br_dest_index s.br_dest) + 1))
    | _ -> get_target_end bblocks (index+1) nesting label
    )
  | false -> failwith "Unable to find branch target"
    
let br_target (bblocks: bblock list) (index: int) (nesting: int) (label: int): bblock =
  match get_target_loop bblocks (index-1) nesting label with 
  | None    -> get_target_end bblocks (index-1) nesting label
  | Some bb -> bb

let set_successor (bblocks: bblock list) (index: int) =
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
    | BB_unreachable
    | BB_return ->
        s.succ <- []
    | BB_unknown ->
        failwith "Unknown bb block type in set_successor"
 
let rec set_successors (bblocks: bblock list) (index: int) =
match index < List.length bblocks with
  | true -> set_successor bblocks index;
            set_successors bblocks (index+1)
  | _ -> ()

let rec set_br_dest (bblocks: bblock list) (index: int) =
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