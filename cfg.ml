open Core
open Bb
open Ebb


let name_of_bb (bblock: bb): string =
  match bblock.bbtype with
  | BB_exit_end         -> "E"
  | BB_exit_return      -> "R"
  | BB_exit_unreachable -> "U"
  | _                   -> string_of_int bblock.bbindex

let label_of_bb (bblock: bb): string =
    match bblock.bbtype with
    | BB_exit_end | BB_exit_return | BB_exit_unreachable -> name_of_bb bblock
    | _ -> String.concat [name_of_bb bblock; "(";  string_of_int (bblock.end_op - bblock.start_op); ")"]
  
(**
  cfg_dot_of_bbs

  Given a module name, a function index and a list of bblocks create the .dot file
  contents that can be used to create a printable cfg of the bb structure. Typically
  the list of bblocks is those for some function. The module name and function index are
  used for diagram labelling purposes. The list of bblocks is used to create the 
  structure of the cfg and to label the nodes and edges.

  Parameters:
    module_name:  string    name of the wasm module
    func_idx:     int       module index of the function
    bblocks:          bb list   basic blocks of the function
  Returns:
    a string containing the .dot file commands to produce the cfg
**)

let cfg_dot_of_bbs (module_name: string) (func_idx: int) (bblocks: bb list): string =

  let graph_prefix (module_name: string) (func_idx: int) (bblocks: bb list): string =
    let terminals = 
      String.concat ["E ";
        if (List.exists ~f:(fun bb -> match bb.bbtype with | BB_unreachable -> true | _ -> false) bblocks) then "U " else "";
        if (List.exists ~f:(fun bb -> match bb.bbtype with | BB_return      -> true | _ -> false) bblocks) then "R " else "";
      ] in
      String.concat[
            "digraph finite_state_machine {\n";
            "    label = \""; module_name; " - function "; string_of_int func_idx; "\"\n";
            "    labelloc =  t\n";
            "    labelfontsize = 16\n";
            "    labelfontcolor = black\n";
            "    labelfontname = \"Helvetica\"\n";
            "    node [shape = doublecircle]; "; terminals; ";\n"]
  in

  let graph_node (bblock: bb): string =
    String.concat [ "node [shape=circle, fontcolor=black, style=\"\", label=\""; 
                    label_of_bb bblock; "\"]"; name_of_bb bblock; "\n"]
  in

  let graph_edge (src: bb) (label: string) (dest: bb): string =
    if src.bbindex >= dest.bbindex then
        String.concat ["    "; name_of_bb src; " -> "; name_of_bb dest; "[color=\"red\" fontcolor=\"red\" label=\""; label; "\"];\n"]
    else
        String.concat ["    "; name_of_bb src; " -> "; name_of_bb dest; "[label=\""; label; "\"];\n"]
  in

  let graph_edges (bblock: bb): string =
    if List.length bblock.pred > 0 || bblock.bbindex = 0 then
      (match bblock.bbtype with
      | BB_block        -> graph_edge bblock "block" (List.nth_exn bblock.succ 0)
      | BB_loop         -> graph_edge bblock "loop" (List.nth_exn bblock.succ 0)
      | BB_if           ->
          String.concat [
            graph_edge bblock "if" (List.nth_exn bblock.succ 0);
            graph_edge bblock "else" (List.nth_exn bblock.succ 1);
          ]
      | BB_else         -> graph_edge bblock "end" (List.nth_exn bblock.succ 0)
      | BB_br_if        ->
          String.concat [
            graph_edge bblock "~br_if" (List.nth_exn bblock.succ 0);
            graph_edge bblock "br_if" (List.nth_exn bblock.succ 1);
          ]
      | BB_br_table         -> String.concat (List.map ~f:(graph_edge bblock "br_table") bblock.succ)
      | BB_end              -> graph_edge bblock "end"         (List.nth_exn bblock.succ 0)
      | BB_return           -> graph_edge bblock "return"      (List.nth_exn bblock.succ 0)
      | BB_unreachable      -> graph_edge bblock "unreachable" (List.nth_exn bblock.succ 0)
      | BB_br               -> graph_edge bblock "br"          (List.nth_exn bblock.succ 0)
      | BB_exit_end
      | BB_exit_return
      | BB_exit_unreachable -> ""
      | BB_unknown          -> failwith "Unknown bb type in graph_bblock")
    else
      ""
  in

  let graph_suffix = "}\n" in

  String.concat [ graph_prefix module_name func_idx bblocks; 
                  String.concat (List.map ~f:graph_node  bblocks);
                  String.concat (List.map ~f:graph_edges bblocks);
                  graph_suffix]

(**
  cfg_dot_of_ebblocks

  Given a module name, a function index and a list of ebblocks create the .dot file
  contents that can be used to create a printable cfg of the ebb structure. Typically
  the list of ebblocks is those for some function. The module name and function index are
  used for diagram labelling purposes. The list of ebblocks is used to create the 
  structure of the cfg and to label the nodes and edges.

  Parameters:
    module_name:  string        name of the wasm module
    func_idx:     int           module index of the function
    ebbs:         ebb list  extended basic blocks of the function
  Returns:
    a string containing the .dot file commands to produce the cfg
**)

let cfg_dot_of_ebblocks (module_name: string) (func_idx: int) (ebbs: ebb list): string =

  let graph_prefix (module_name: string) (func_idx: int): string =
    let terminals = 
      String.concat ["E ";
        if List.exists ~f:ebb_to_unreachable ebbs  then "U " else "";
        if List.exists ~f:ebb_to_return ebbs       then "R " else "";
      ] in
      String.concat[
            "digraph finite_state_machine {\n";
            "    label = \""; module_name; " - function "; string_of_int func_idx; "\"\n";
            "    labelloc =  t\n";
            "    labelfontsize = 16\n";
            "    labelfontcolor = black\n";
            "    labelfontname = \"Helvetica\"\n";
            "    node [shape = doublecircle]; "; terminals; ";\n";
            "    node [shape = box];\n"]
  in

  let label_of_ebb (ebblock: ebb): string =
    match ebblock.bblocks with
    | hd::[] -> if bb_is_exit hd then
                  name_of_bb hd
                else
                  String.concat["["; name_of_bb hd; "]"]
    | _      -> let bblocks = non_exit_bbs ebblock.bblocks in
                match bblocks with
                | [] -> "" (* TODO under what circumstances does this happen? *)
                | hd::[] -> if bb_is_exit hd then
                              name_of_bb hd
                            else
                              String.concat["["; name_of_bb hd; "]"]
                | hd::tl -> String.concat["["; name_of_bb hd; " ... ";
                              name_of_bb (List.nth_exn (non_exit_bbs tl) ((List.length tl) -1));
                              "]"]
  in

  let name_of_ebb (ebblock: ebb): string = 
    name_of_bb ebblock.entry_bb
  in

  let node_of_ebb (ebblock: ebb): string =
    String.concat[ 
      if ebb_too_many_paths ebblock then
        "    node [shape=box, fontcolor=white, style=filled, fillcolor=red] "
      else
        "    node [shape=box, fontcolor=black, style=\"\"] ";
      name_of_ebb ebblock; 
      "[label=\""; 
      label_of_ebb ebblock;
      "\"]\n"]
  in

  let rec graph_node (ebblock: ebb): string  =
    match ebblock.nested_ebbs with
    | []  -> node_of_ebb ebblock
    | _   -> String.concat [
              "    subgraph cluster_"; name_of_ebb ebblock; "{\n";
              "    label = \"\";\n";
              "    color = red;\n";
              String.concat (List.map ~f:graph_node ebblock.nested_ebbs);
              "    }\n"
             ]
  in

  let graph_edge (src_ebblock: ebb) (dest_exit: bb): string =
    if src_ebblock.entry_bb.bbindex >= dest_exit.bbindex then
      String.concat ["    "; name_of_ebb src_ebblock; " -> "; name_of_bb dest_exit; "[color=\"red\"];\n"]
    else
      String.concat ["    "; name_of_ebb src_ebblock; " -> "; name_of_bb dest_exit; ";\n"]
  in

  let rec graph_edges (ebblock: ebb): string =
    String.concat [
      match ebblock.nested_ebbs with
        | []  ->
            String.concat[
              String.concat (List.map ~f:(graph_edge ebblock) ebblock.exit_bbs);
              if ebb_has_branchback ebblock then
                String.concat ["    "; name_of_ebb ebblock; " -> "; name_of_ebb ebblock; "[color=\"red\" dir=back];\n"]
              else 
                ""
            ]
        | _   ->
            String.concat (List.map ~f:graph_edges ebblock.nested_ebbs)
    ]
  in

  let graph_suffix = "}\n" in

  String.concat [ graph_prefix module_name func_idx; 
                  String.concat (List.map ~f:graph_node  ebbs);
                  String.concat (List.map ~f:graph_edges ebbs);
                  graph_suffix]
