open Core
open Bblock
open Ebblock

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

  let graph_node (src: int) (label: string) (dest: int): string =
    let dest_name = 
      (match dest with
        | -1  -> "E"
        | -2  -> "R"
        | -3  -> "U"
        |  _ -> string_of_int dest) in
    match dest >= 0 && src >= dest with
    | true  -> 
        String.concat ["    "; string_of_int src; " -> "; dest_name; "[color=\"red\" fontcolor=\"red\" label=\""; label; "\"];\n"]
    | false -> 
        String.concat ["    "; string_of_int src; " -> "; dest_name; "[label=\""; label; "\"];\n"]
  in

  let graph_bblock (index: int) (bbtype: bb_type) (succ: bblock list) (pred: bblock list): string =
    match List.length pred > 0 || index = 0 with
    | true ->
      (match bbtype with
      | BB_block        -> graph_node index "block" (List.nth_exn succ 0).bbindex
      | BB_loop         -> graph_node index "loop" (List.nth_exn succ 0).bbindex
      | BB_if           ->
          String.concat [
            graph_node index "if" (List.nth_exn succ 0).bbindex;
            graph_node index "else" (List.nth_exn succ 1).bbindex;
          ]
      | BB_else         -> graph_node index "end" (List.nth_exn succ 0).bbindex
      | BB_br_if        ->
          String.concat [
            graph_node index "~br_if" (List.nth_exn succ 0).bbindex;
            graph_node index "br_if" (List.nth_exn succ 1).bbindex;
          ]
      | BB_br_table     -> String.concat (List.map ~f:(graph_node index "br_table") (indexes_of_bblocks succ))
      | BB_end          -> graph_node index "end"         (List.nth_exn succ 0).bbindex
      | BB_return       -> graph_node index "return"      (List.nth_exn succ 0).bbindex
      | BB_unreachable  -> graph_node index "unreachable" (List.nth_exn succ 0).bbindex
      | BB_br           -> graph_node index "br"          (List.nth_exn succ 0).bbindex
      | BB_exit         -> ""
      | BB_unknown      -> failwith "Unknown bb type in graph_bblock")
    | _ -> ""
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
    | hd::tl -> graph_bblocks' tl (String.concat [acc; graph_bblock hd.bbindex hd.bbtype hd.succ hd.pred])
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

  let graph_prefix (module_name: string) (func_idx: int) (ebbs: ebblock list): string =
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
    | hd::[] -> String.concat["["; string_of_int hd.bbindex; "]"]
    | hd::tl -> String.concat["["; string_of_int hd.bbindex; " ... ";
                      string_of_int (List.nth_exn tl ((List.length tl) -1)).bbindex;
                      "]"]
    | _ -> failwith "invalid bbs in ebb"
  in

  let name_of_bb (bb: bblock): string =
    string_of_int bb.bbindex
  in
  
  let name_of_ebb (ebb: ebblock): string = 
    name_of_bb ebb.entry_bb
  in

  let rec graph_node (ebb: ebblock): string  =
    match ebb.nested_ebbs with
    | []  -> String.concat[ if ebb_too_many_paths ebb then
                                "    node [shape=box, fontcolor=white, style=filled, fillcolor=red] "
                            else
                                "    node [shape=box, fontcolor=black, style=\"\"] ";
                            name_of_ebb ebb; 
                            "[label=\""; 
                            label_of_ebb ebb;
                            "\"]\n"]
    | _   -> String.concat [
              "    subgraph cluster_"; name_of_ebb ebb; "{\n";
              "    label = \"\";\n";
              "    color = red;\n";
              String.concat (List.map ~f:graph_node ebb.nested_ebbs);
              "    }\n"
             ]
  in

  let graph_terminal (src_ebb: ebblock) (dest: int): string =
    let dest_name = 
    (match dest with
      | -1 -> "E"
      | -2 -> "U"
      | -3 -> "R"
      |  _ -> failwith "invalid terminal") in
    String.concat ["    "; name_of_ebb src_ebb; " -> "; dest_name; ";\n"]
  in

  let graph_edge (src_ebb: ebblock) (dest_exit: ebb_exit): string =
    if src_ebb.entry_bb.bbindex < dest_exit.exit_bb.bbindex then
      String.concat ["    "; name_of_ebb src_ebb; " -> "; name_of_bb dest_exit.exit_bb; ";\n"]
    else
      String.concat ["    "; name_of_ebb src_ebb; " -> "; name_of_bb dest_exit.exit_bb; "[color=\"red\"];\n"]
  in

  let rec graph_edges (ebb: ebblock): string =
    String.concat [
      if not (List.exists ~f:(fun _ -> true) ebb.exits) then graph_terminal ebb (-1) else "";
      if ebb_to_unreachable ebb                         then graph_terminal ebb (-2) else "";
      if ebb_to_return ebb                              then graph_terminal ebb (-3) else "";
      (match ebb.nested_ebbs with
        | []  ->
            String.concat[
              String.concat (List.map ~f:(graph_edge ebb) ebb.exits);
              if ebb_has_branchback ebb then
                String.concat ["    "; name_of_ebb ebb; " -> "; name_of_ebb ebb; "[color=\"red\"];\n"]
              else 
                ""
            ]
        | _   ->
            String.concat (List.map ~f:graph_edges ebb.nested_ebbs))
    ]
  in

  let graph_suffix = "}\n" in

  String.concat [ graph_prefix module_name func_idx ebbs; 
                  String.concat (List.map ~f:graph_node  ebbs);
                  String.concat (List.map ~f:graph_edges ebbs);
                  graph_suffix]
