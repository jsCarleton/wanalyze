open Core
open Wasm_module

(* Notes on connecting segments
----------------------------

TODO: 
- for every END, BLOCK and LOOP segment assign a label
- for BR, BR_IF, BR_TABLE store the labels in the segment entry

for i = 0; i < segments.length; i++
	if segments[i].segtype == IF
		segments[i].succ = [i + 1; end_else_segment(i, segments[i].nesting)]
	if segments[i].segtype == ELSE
		segments[i].succ = [end_segment(i, segments[i].nesting)]
	if segments[i].segtype == BR
		segments[i].succ = [br_target(segments, i, nesting, segments[i].labels[0])]
	if segments[i].segtype == BR_IF
		segments[i].succ = [br_target(segments, i, nesting, segments[i].labels[0]); i + 1]
	if segments[i].segtype == BR_TABLE
		segments[i].succ = []
		for j = 0; j < segments[i].labels.length; j++
			segments[i].succ = segments[i].succ ++ [br_target(segments, i, nesting, segments[i].labels[i])]
	if segments[i].segtype == RETURN
		segments[i].succ = [last_segment(segments)]
	if segments[i].segtype == LOOP or BLOCK
		segments[i].succ = [i + 1]
	if segments[i].segtype == UNREACHABLE
		segments[i].succ = []
	if segments[i].segtype == END
		segments[i].succ = []
	if segments[i].segtype == LAST
		segments[i].succ = []
		
function end_else_segment(segments, index, nesting): index
	for (i = index+1; i < segments.length; i++)
		if (segments[i].segtype == END or ELSE and segments[i].nesting == nesting)
			return i+1;
	failwith "No END or ELSE for IF found"

function end_segment(segments, index, nesting): index
	for (i = index+1; i < segments.length; i++)
		if (segments[i].segtype == END and segments[i].nesting == nesting)
			return i+1;
	failwith "No END for ELSE found"
	
function br_target(segments, index, nesting, label)
	// search backwards for LOOP that's the target of the BR
	for (i = index-1; i >= 0; i--)
		if segments[i].segtype == LOOP and segments[i].nesting < nesting and segments[i].label == label
			return i+1;
	// if we didn't find it search forwards for an END that's the target of the loops
	for (i = index+1; i < segments.length; i++)
		if segments[i].segtype == END and segments[i].nesting < nesting and segments[i].label == label
			return i+1;
	failwith "BR target not found"
	
function last_segment(segments)
	return segments.length - 1

label of IF, BLOCK assigned to matching END			
label of LOOP assigned to following segment			

type segment =
{
          start_op:    int;        (* index into e of the first op in the expr *)
  mutable end_op:      int;        (* index+1 of the last op in the expr *)
  mutable succ:        list int;   (* segment index for segments that can be directly reached from this segment *)
  
		  segtype:	   segment_type; -- could just be an opcode
		  nesting:	   int;			(* the nesting level of the last opcode in the segment *)
		  label:	   int;			(* the label of the LOOP or END instruction *)
}
 *)

type segment_type =
  UNR_SEG | IF_SEG | ELSE_SEG | END_SEG | BR_SEG | BRIF_SEG | BRT_SEG | RET_SEG | LOOP_SEG | LAST_SEG
let segtype_of_opcode (opcode: int) : segment_type =
  match opcode with
  | 0x00 -> UNR_SEG | 0x03 -> LOOP_SEG | 0x04 -> IF_SEG | 0x05 -> ELSE_SEG | 0x0b -> END_SEG | 0x0c -> BR_SEG | 0x0d -> BRIF_SEG
  | 0x0e -> BRT_SEG | 0x0f -> RET_SEG  | _ -> failwith (String.concat ["Invalid segment type: "; string_of_int opcode])

type segment =
{
          start_op:   int;      (* index into e of the first op in the expr *)
  mutable end_op:     int;      (* index+1 of the last op in the expr *)
  mutable succ:       int list; (* segment index for segments that can be directly reached from this segment *)
  mutable segtype:	  int;      (* the control opcode that created this segment *)
  mutable nesting:    int;      (* the nesting level of the last opcode in the segment *)
  mutable labels:     int list; (* the destination labels used in BR, BR_IF, BR_TABLE instructions *)
  mutable label:	    int;			(* the label of the LOOP or END instruction *)
  }

let rec get_segments' (e: expr) (seg_acc: segment list) (current: segment): segment list =
match e with
| [] -> seg_acc
| _  ->
  match (List.hd_exn e).opcode with
    (* 1. each of these control instructions cause the current segment to end *)
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
      (* 1.2 end the segment, start a new one*)
      current.segtype <- (List.hd_exn e).opcode;
      current.nesting <- (List.hd_exn e).nesting;
      get_segments' (List.tl_exn e) (List.append seg_acc [current]) 
                    {start_op=current.end_op; end_op=current.end_op+1; succ=[]; segtype= -1; nesting = -2; labels=[]; label= -1}
    (* 2. all other opcodes get added to the current segment *)
    | _ ->
      current.end_op <- current.end_op + 1;
      get_segments' (List.tl_exn e) seg_acc current

let get_segments (e: expr) : segment list = 
  get_segments' e [] {start_op=0; end_op=1; succ=[]; segtype= -1; nesting = -2; labels=[]; label= -1}

let rec get_end_else_segment (segments: segment list) (index: int) (nesting: int): int =
  match (List.nth_exn segments index).segtype with
  | 0x05 when (List.nth_exn segments index).nesting = nesting -> index+1
  | 0x0b when (List.nth_exn segments index).nesting = nesting -> index+1
  | _ -> get_end_else_segment segments (index+1) nesting

let rec get_end_segment (segments: segment list) (index: int) (nesting: int): int =
  match (List.nth_exn segments index).segtype with
  | 0x0b when (List.nth_exn segments index).nesting = nesting -> index+1
  | _ -> get_end_segment segments (index+1) nesting

let rec get_target_loop (segments: segment list) (index: int) (nesting: int) (label: int): int =
  match index >= 0 with
  | true ->
    (let s = List.nth_exn segments index in
    match s.segtype with
    | 0x03 when s.nesting < nesting && s.label = label -> index + 1
    | _ -> get_target_loop segments (index-1) nesting label
    )
  | false -> -1
  
let rec get_target_end (segments: segment list) (index: int) (nesting: int) (label: int): int =
  match index < List.length segments with
  | true ->
    (let s = List.nth_exn segments index in
    match s.segtype with
    | 0x0b when s.nesting < nesting && s.label = label -> index + 1
    | _ -> get_target_end segments (index+1) nesting label
    )
  | false -> failwith "Unable to find branch target"
    
let br_target (segments: segment list) (index: int) (nesting: int) (label: int): int =
  match get_target_loop segments (index-1) nesting label with 
  | -1 -> get_target_end segments (index-1) nesting label
  | i  -> i

let last_segment (segments: segment list): int =
  List.length segments

let set_successor (segments: segment list) (index: int) =
  let s = List.nth_exn segments index in
  match s.segtype with
    | (* unreachable *) 0x00
    | (* end *)         0x0b  -> ()
    | (* block *)       0x02
    | (* loop *)        0x03  ->
        s.succ <- [index+1]
    | (* if *)          0x04  ->
        s.succ <- [index+1; get_end_else_segment segments index s.nesting]
    | (* else *)        0x05  ->
        s.succ <- [index+1; get_end_segment segments index s.nesting]
    | (* br *)          0x0c
    | (* br_if *)       0x0d
    | (* br_table *)    0x0e ->
        s.succ <- List.map ~f:(br_target segments index s.nesting) s.labels
    | (* return *)      0x0f ->
        s.succ <- [last_segment segments]
    | _ -> failwith (String.concat ["Unknown segtype: "; string_of_int s.segtype])
 
 let rec set_successors (segments: segment list) (index: int ) =
  match segments with
    | [] -> ()
    | _::tl ->  set_successor segments index;
                set_successors tl (index+1)