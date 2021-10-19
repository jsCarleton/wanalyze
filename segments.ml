open Core
open Wasm_module

type segment_type =
  UNR_SEG | IF_SEG | ELSE_SEG | END_SEG | BR_SEG | BRIF_SEG | BRT_SEG | RET_SEG | LOOP_SEG | LAST_SEG
let segtype_of_opcode (opcode: int) : segment_type =
  match opcode with
  | 0x00 -> UNR_SEG | 0x03 -> LOOP_SEG | 0x04 -> IF_SEG | 0x05 -> ELSE_SEG | 0x0b -> END_SEG | 0x0c -> BR_SEG | 0x0d -> BRIF_SEG
  | 0x0e -> BRT_SEG | 0x0f -> RET_SEG  | _ -> failwith (String.concat ["Invalid segment type: "; string_of_int opcode])

type segment =
{
          start_op:    int;         (* index into e of the first op in the expr *)
  mutable end_op:      int;         (* index+1 of the last op in the expr *)
  mutable succL:       int option;  (* segment index for true side of a conditional or next segment for an unconditional *)
  mutable succR:       int option;  (* false side of a conditional *)
}
let segment_sep show_segments = 
  match show_segments with
  | true -> "\n------------------------------"
  | _ -> ""

let rec get_segments' (e: expr) (seg_acc: segment list) (current: segment): segment list =
match e with
| [] -> seg_acc
| _  ->
  match (List.hd_exn e).opcode with
    (* 1. each of these causes the current segment to end *)
    | (* unreachable *) 0x00
    | (* if *)          0x04
    | (* else *)        0x05
    | (* end *)         0x0b
    | (* br *)          0x0c
    | (* br_if *)       0x0d
    | (* br_table *)    0x0e
    | (* return *)      0x0f ->
      (* 1.1 end the segment, start a new one*)
        get_segments' (List.tl_exn e) (List.append seg_acc [current]) 
                      {start_op=current.end_op; end_op=current.end_op+1; succL=None; succR=None}
    (* 2. the loop instruction causes us to start a new segment beginning with the loop *)
    | (* loop *)      0x03 ->
      (* 2.1 did we just end a segment ?*)
      ( match current.start_op = current.end_op - 1 with
          (* 2.1.1 yes, just add the loop instruction to the new segment *)
        | true  ->  current.end_op <- current.end_op + 1;
                    get_segments' (List.tl_exn e) seg_acc current
          (* 2.1.2 no, close off the existing segment and create a new one beginning with the loop*)
        | false ->  current.end_op <- current.end_op - 1;
                    get_segments' (List.tl_exn e) (List.append seg_acc [current]) 
                                  {start_op=current.end_op; end_op=current.end_op+2; succL=None; succR=None}
      )
    (* 3. all other opcodes get added to the current segment *)
    | _ ->
      current.end_op <- current.end_op + 1;
      get_segments' (List.tl_exn e) seg_acc current
let get_segments (e: expr) : segment list = 
  get_segments' e [] {start_op=0; end_op=1; succL=None; succR=None}

let string_of_segment (s: segment) : string = sprintf "start: %4.4d end: %4.4d\n" s.start_op s.end_op
let string_of_segments (s: segment list) : string =
  String.concat (List.map ~f:string_of_segment s)
