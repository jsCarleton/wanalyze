open Core
open Bblock
open Ebblock

let name_of_bblock (bb: bblock): string =
  match bb.bbtype with
  | BB_exit_end         -> "E"
  | BB_exit_return      -> "R"
  | BB_exit_unreachable -> "U"
  | _                   -> string_of_int bb.bbindex

(**
  cfg_dot_of_bblocks

  Given a module name, a function index and a list of bblocks create the .dot file
  contents that can be used to create a printable cfg of the bblock structure. Typically
  the list of bblocks is those for some function. The module name and function index are
  used for diagram labelling purposes. The list of bblocks is used to create the 
  structure of the cfg and to label the nodes and edges.

  Parameters:
    module_name:  string        name of the wasm module
    func_idx:     int           module index of the function
    bbs:          bblock list   basic blocks of the function
  Returns:
    a string containing the .dot file commands to produce the cfg
**)

let cfg_dot_of_bblocks (module_name: string) (func_idx: int) (bbs: bblock list): string =

  let graph_node (src: bblock) (label: string) (dest: bblock): string =
    if src.bbindex >= dest.bbindex then
        String.concat ["    "; name_of_bblock src; " -> "; name_of_bblock dest; "[color=\"red\" fontcolor=\"red\" label=\""; label; "\"];\n"]
    else
        String.concat ["    "; name_of_bblock src; " -> "; name_of_bblock dest; "[label=\""; label; "\"];\n"]
  in

  let graph_bblock (bb: bblock): string =
    if List.length bb.pred > 0 || bb.bbindex = 0 then
      (match bb.bbtype with
      | BB_block        -> graph_node bb "block" (List.nth_exn bb.succ 0)
      | BB_loop         -> graph_node bb "loop" (List.nth_exn bb.succ 0)
      | BB_if           ->
          String.concat [
            graph_node bb "if" (List.nth_exn bb.succ 0);
            graph_node bb "else" (List.nth_exn bb.succ 1);
          ]
      | BB_else         -> graph_node bb "end" (List.nth_exn bb.succ 0)
      | BB_br_if        ->
          String.concat [
            graph_node bb "~br_if" (List.nth_exn bb.succ 0);
            graph_node bb "br_if" (List.nth_exn bb.succ 1);
          ]
      | BB_br_table         -> String.concat (List.map ~f:(graph_node bb "br_table") bb.succ)
      | BB_end              -> graph_node bb "end"         (List.nth_exn bb.succ 0)
      | BB_return           -> graph_node bb "return"      (List.nth_exn bb.succ 0)
      | BB_unreachable      -> graph_node bb "unreachable" (List.nth_exn bb.succ 0)
      | BB_br               -> graph_node bb "br"          (List.nth_exn bb.succ 0)
      | BB_exit_end
      | BB_exit_return
      | BB_exit_unreachable -> ""
      | BB_unknown          -> failwith "Unknown bb type in graph_bblock")
    else
      ""
  in

  let graph_prefix (module_name: string) (func_idx: int) (bblocks: bblock list): string =
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
            "    node [shape = doublecircle]; 0 "; terminals; ";\n";
            "    node [shape = circle];\n"]
  in

  let graph_suffix = "}\n" in

  let rec graph_bblocks' (bblocks: bblock list) (acc: string): string =
    match bblocks with
    | [] -> acc
    | hd::tl -> graph_bblocks' tl (String.concat [acc; graph_bblock hd])
  in

  String.concat [ graph_prefix module_name func_idx bbs; 
                  graph_bblocks' bbs "";
                  graph_suffix]

(**
  cfg_dot_of_ebblocks

  Given a module name, a function index and a list of ebblocks create the .dot file
  contents that can be used to create a printable cfg of the ebblock structure. Typically
  the list of ebblocks is those for some function. The module name and function index are
  used for diagram labelling purposes. The list of ebblocks is used to create the 
  structure of the cfg and to label the nodes and edges.

  Parameters:
    module_name:  string        name of the wasm module
    func_idx:     int           module index of the function
    ebbs:         ebblock list  extended basic blocks of the function
  Returns:
    a string containing the .dot file commands to produce the cfg
**)

let cfg_dot_of_ebblocks (module_name: string) (func_idx: int) (ebbs: ebblock list): string =

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

  let label_of_ebb (ebb: ebblock): string =
    match ebb.bbs with
    | hd::[] -> if bb_is_exit hd then
                  name_of_bblock hd
                else
                  String.concat["["; name_of_bblock hd; "]"]
    | _      -> let bbs = non_exit_bbs ebb.bbs in
                match bbs with
                | [] -> "" (* TODO under what circumstances does this happen? *)
                | hd::[] -> if bb_is_exit hd then
                              name_of_bblock hd
                            else
                              String.concat["["; name_of_bblock hd; "]"]
                | hd::tl -> String.concat["["; name_of_bblock hd; " ... ";
                              name_of_bblock (List.nth_exn (non_exit_bbs tl) ((List.length tl) -1));
                              "]"]
  in

  let name_of_ebb (ebb: ebblock): string = 
    name_of_bblock ebb.entry_bb
  in

  let node_of_ebb (ebb: ebblock): string =
    String.concat[ 
      if ebb_too_many_paths ebb then
        "    node [shape=box, fontcolor=white, style=filled, fillcolor=red] "
      else
        "    node [shape=box, fontcolor=black, style=\"\"] ";
      name_of_ebb ebb; 
      "[label=\""; 
      label_of_ebb ebb;
      "\"]\n"]
  in

  let rec graph_node (ebb: ebblock): string  =
    match ebb.nested_ebbs with
    | []  -> node_of_ebb ebb
    | _   -> String.concat [
              "    subgraph cluster_"; name_of_ebb ebb; "{\n";
              "    label = \"\";\n";
              "    color = red;\n";
              String.concat (List.map ~f:graph_node ebb.nested_ebbs);
              "    }\n"
             ]
  in

  let graph_edge (src_ebb: ebblock) (dest_exit: ebb_exit): string =
    if src_ebb.entry_bb.bbindex >= dest_exit.exit_bb.bbindex then
      String.concat ["    "; name_of_ebb src_ebb; " -> "; name_of_bblock dest_exit.exit_bb; "[color=\"red\"];\n"]
    else
      String.concat ["    "; name_of_ebb src_ebb; " -> "; name_of_bblock dest_exit.exit_bb; ";\n"]
  in

  let rec graph_edges (ebb: ebblock): string =
    String.concat [
      match ebb.nested_ebbs with
        | []  ->
            String.concat[
              String.concat (List.map ~f:(graph_edge ebb) ebb.exits);
              if ebb_has_branchback ebb then
                String.concat ["    "; name_of_ebb ebb; " -> "; name_of_ebb ebb; "[color=\"red\"];\n"]
              else 
                ""
            ]
        | _   ->
            String.concat (List.map ~f:graph_edges ebb.nested_ebbs)
    ]
  in

  let graph_suffix = "}\n" in

  String.concat [ graph_prefix module_name func_idx; 
                  String.concat (List.map ~f:graph_node  ebbs);
                  String.concat (List.map ~f:graph_edges ebbs);
                  graph_suffix]
