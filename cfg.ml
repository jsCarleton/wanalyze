open Core
open Bblock

let graph_node (src: int) (label: string) (dest: int): string =
  let dest_name = 
    (match dest with
      | -1 -> "E"
      | -2 -> "R"
      | -3 -> "U"
      |  _ -> string_of_int dest) in
  match dest >= 0 && src >= dest with
  | true  -> 
      String.concat ["    "; string_of_int src; " -> "; dest_name; "[color=\"red\" fontcolor=\"red\" label=\""; label; "\"];\n"]
  | false -> 
      String.concat ["    "; string_of_int src; " -> "; dest_name; "[label=\""; label; "\"];\n"]

let graph_bblock (index: int) (bbtype: bb_type) (succ: bblock list) (pred: bblock list): string =
  match true || List.length pred > 0 || index = 0 with
  | true ->
    (match bbtype with
    | BB_unreachable  -> graph_node index "unreachable" (-3)
    | BB_end          -> 
        (match succ with 
          | []  -> graph_node index "end" (-1) 
          | _   -> graph_node index "end" (List.nth_exn succ 0).bbindex)
    | BB_block        -> graph_node index "block" (List.nth_exn succ 0).bbindex
    | BB_loop         -> graph_node index "loop" (List.nth_exn succ 0).bbindex
    | BB_if           ->
        String.concat [
          graph_node index "if" (List.nth_exn succ 0).bbindex;
          graph_node index "~if" (List.nth_exn succ 1).bbindex;
        ]
    | BB_else         -> graph_node index "else" (List.nth_exn succ 0).bbindex
    | BB_br_if        ->
        String.concat [
          graph_node index "~br_if" (List.nth_exn succ 0).bbindex;
          graph_node index "br_if" (List.nth_exn succ 1).bbindex;
        ]
    | BB_br           -> graph_node index "br" (List.nth_exn succ 0).bbindex
    | BB_br_table     -> String.concat (List.map ~f:(graph_node index "br_table") (indexes_of_bblocks succ))
    | BB_return       -> graph_node index "return" (-2)
    | BB_unknown      -> failwith "Unknown bb type in graph_bblock")
  | _ -> ""

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
let graph_suffix = "}\n"

let rec graph_bblocks' (bblocks: bblock list) (acc: string): string =
  match bblocks with
  | [] -> acc
  | hd::tl -> graph_bblocks' tl (String.concat [acc; graph_bblock hd.bbindex hd.bbtype hd.succ hd.pred])

let graph_bblocks (module_name: string) (func_idx: int) (bblocks: bblock list): string =
  String.concat [ graph_prefix module_name func_idx bblocks; 
                  graph_bblocks' bblocks "";
                  graph_suffix]
