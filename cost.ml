open Core
open Easy_logging
open Bblock
open Code_path

let cost_of_bblock (bb: bblock): int =
    match bb.bbtype with
    | BB_unreachable
    | BB_block
    | BB_loop
    | BB_if
    | BB_else
    | BB_end
    | BB_br
    | BB_br_if
    | BB_br_table
    | BB_return
        -> bb.end_op - bb.start_op
    | BB_unknown -> failwith "Unknown bblock type in cost"

let cost_of_code_path (cp: code_path): int =
    List.fold ~f:(+) (List.map ~f:cost_of_bblock cp) ~init:0

let cost_of_code_paths (cps: code_path list): int =
    List.fold (List.map ~f:cost_of_code_path cps) ~init:0 ~f:(fun acc x -> if acc > x then acc else x)
