open Core

(* Design notes on connecting segments
----------------------------

TODO: 
- for every END, BLOCK and LOOP segment assign a label

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
(* 
type segment_type =
  UNR_SEG | IF_SEG | ELSE_SEG | END_SEG | BR_SEG | BRIF_SEG | BRT_SEG | RET_SEG | LOOP_SEG | LAST_SEG
let segtype_of_opcode (opcode: int) : segment_type =
  match opcode with
  | 0x00 -> UNR_SEG | 0x03 -> LOOP_SEG | 0x04 -> IF_SEG | 0x05 -> ELSE_SEG | 0x0b -> END_SEG | 0x0c -> BR_SEG | 0x0d -> BRIF_SEG
  | 0x0e -> BRT_SEG | 0x0f -> RET_SEG  | _ -> failwith (String.concat ["Invalid segment type: "; string_of_int opcode])

type initial_state =
{
  pred:       int;           (* the index of the predecessor segment *)
  (* pred_state: Reduce.program_state; *) (* the state after the predecessor segment was executed *)
}
  
type final_state =
{
          succ:       int;           (* the index of the predecessor segment *)
   (* mutable succ_state: Reduce.program_state; *) (* the state after the predecessor segment was executed *)
   mutable succ_cond:  string;        (* the expression that must be true in order for this successor state to be entered *)
}
  
type segment =
{
          index:      int;      (* the index of this segment in the list of segments, makes things easier to have this *)
          start_op:   int;      (* index into e of the first op in the expr *)
  mutable end_op:     int;      (* index+1 of the last op in the expr *)
  mutable succ:       int list; (* segment index for segments that can be directly reached from this segment *)
  mutable segtype:	  int;      (* the control opcode that created this segment *)
  mutable nesting:    int;      (* the nesting level of the last opcode in the segment *)
  mutable labels:     int list; (* the destination labels used in BR, BR_IF, BR_TABLE instructions *)
  mutable br_dest:	  int;			(* for LOOP, BLOCK and IF instructions the segment that's the target of a branch for this instruction  *)
  mutable initial_states: initial_state list;  (* the possible initial states for this segment *)
  mutable final_states:   final_state list;    (* the possible final states for this segment *)
}

let rec get_segments (e: Wasm_module.expr) (seg_acc: segment list) (current: segment): segment list =
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
      get_segments (List.tl_exn e) (List.append seg_acc [current]) 
                    {index=current.index+1; start_op=current.end_op; end_op=current.end_op+1; succ=[]; segtype= -1;
                     nesting = -2; labels=[]; br_dest= -1; initial_states = []; final_states = []}
    (* 2. all other opcodes get added to the current segment *)
    | _ ->
      current.end_op <- current.end_op + 1;
      get_segments (List.tl_exn e) seg_acc current

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
    | 0x02 when s.nesting = nesting - label - 1 -> s.br_dest
    | 0x03 when s.nesting = nesting - label - 1 -> s.br_dest
    | 0x04 when s.nesting = nesting - label - 1 -> s.br_dest
    | _ -> get_target_loop segments (index-1) nesting label
    )
  | false -> -1
  
let rec get_target_end (segments: segment list) (index: int) (nesting: int) (label: int): int =
  match index < List.length segments with
  | true ->
    (let s = List.nth_exn segments index in
    match s.segtype with
    | 0x02 when nesting = s.nesting - label -> s.br_dest + 1
    | 0x04 when nesting = s.nesting - label -> s.br_dest + 1
    | _ -> get_target_end segments (index+1) nesting label
    )
  | false -> -1 (* failwith "Unable to find branch target" *)
    
let br_target (segments: segment list) (index: int) (nesting: int) (label: int): int =
  match get_target_loop segments (index-1) nesting label with 
  | -1 -> get_target_end segments (index-1) nesting label
  | i  -> i

let last_segment (segments: segment list): int =
  List.length segments

let set_successor (segments: segment list) (index: int) =
  let s = List.nth_exn segments index in
  match s.segtype with
    | (* unreachable *) 0x00  -> ()
    | (* end *)         0x0b
    | (* block *)       0x02
    | (* loop *)        0x03  ->
        s.succ <- [index+1]
    | (* if *)          0x04  ->
        s.succ <- [index+1; get_end_else_segment segments index s.nesting]
    | (* else *)        0x05  ->
        s.succ <- [get_end_segment segments index s.nesting]
    | (* br_if *)       0x0d ->
        s.succ <- List.cons (s.index+1) (List.map ~f:(br_target segments index s.nesting) s.labels)
    | (* br *)          0x0c
    | (* br_table *)    0x0e ->
        s.succ <- List.map ~f:(br_target segments index s.nesting) s.labels
    | (* return *)      0x0f ->
        s.succ <- [last_segment segments]
    | _ -> failwith (String.concat ["Unknown segtype: "; string_of_int s.segtype])
 
let rec set_successors (segments: segment list) (index: int) =
match index < List.length segments with
  | true -> set_successor segments index;
            set_successors segments (index+1)
  | _ -> ()

let rec set_br_dest (segments: segment list) (index: int) =
match index < List.length segments with
| false -> ()
| true ->
    (let s = List.nth_exn segments index in
    match s.segtype with
      | 0x03        -> s.br_dest <- index + 1 (* loop *)
      | 0x04 | 0x02 -> s.br_dest <- get_end_segment segments index s.nesting (* if, block *)
      | _ -> ()
    );
  set_br_dest segments (index+1)

let segments_of_expr (e: Wasm_module.expr) : segment list =
  let segments = get_segments e [] {index=0; start_op=0; end_op=1; succ=[]; segtype= -1; nesting = -2;
                                     labels=[]; br_dest= -1; initial_states = []; final_states = []} in
  set_br_dest segments 0;
  set_successors segments 0;
  segments

let graph_node (src: int) (dest: int) (label: string): string =
  match src > dest with
  | true  -> 
      String.concat ["    "; string_of_int src; " -> "; string_of_int dest; "[color=\"red\" label = \""; label; "\"];\n"]
  | false -> 
      String.concat ["    "; string_of_int src; " -> "; string_of_int dest; "[label = \""; label; "\"];\n"]

let graph_segment (index: int) (segtype: int) (succ: int list) (last: int): string =
  match segtype with
  | (* unreachable *) 0x00 -> ""
  | (* end *)         0x0b -> graph_node index (List.nth_exn succ 0) "end"
  | (* block *)       0x02 -> graph_node index (List.nth_exn succ 0) "block"
  | (* loop *)        0x03 -> graph_node index (List.nth_exn succ 0) "loop"
  | (* if *)          0x04 ->
      String.concat [
        graph_node index (List.nth_exn succ 0) "if";
        graph_node index (List.nth_exn succ 1) "~if";
      ]
  | (* else *)        0x05 -> graph_node index (List.nth_exn succ 0) "else"
  | (* br_if *)       0x0d ->
      String.concat [
        graph_node index (List.nth_exn succ 0) "~br_if";
        graph_node index (List.nth_exn succ 1) "br_if";
      ]
  | (* br *)          0x0c -> graph_node index (List.nth_exn succ 0) "br"
  | (* br_table *)    0x0e -> "TODO\n"
  | (* return *)      0x0f -> graph_node index last "return"
  | _ -> failwith (String.concat ["Unknown segtype to graph: "; string_of_int segtype])

let graph_prefix (last: int) =
  String.concat["digraph finite_state_machine {\n    node [shape = doublecircle]; 0 ";
    string_of_int last; ";\n    node [shape = circle];\n"]
let graph_suffix = "}\n"
let rec graph_segments' (segments: segment list) (last: int) (acc: string): string =
  match segments with
  | [] -> acc
  | hd::tl -> graph_segments' tl last (String.concat [acc; graph_segment hd.index hd.segtype hd.succ last])
let graph_segments (segments: segment list): string =
  let last = (List.length segments) in
  String.concat [graph_prefix last; graph_segments' segments (List.length segments) ""; graph_suffix] *)