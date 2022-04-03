open Core

let cost_of_bblock (bb: Bblock.bblock): int =
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

let cost_of_code_path (cp: Code_path.code_path): int =
    List.fold ~f:(+) (List.map ~f:cost_of_bblock cp) ~init:0

let cost_of_code_paths (cps: Code_path.code_path list): int =
    List.fold (List.map ~f:cost_of_code_path cps) ~init:0 ~f:(fun acc x -> if acc > x then acc else x)

let rec max_cost_of_code_paths (cps: Code_path.code_path list) (init: int): int =
    match cps with
    | [] -> init
    | hd::tl ->
        let new_max = cost_of_code_path hd in
        match new_max > init with
        | true  -> max_cost_of_code_paths tl new_max
        | false -> max_cost_of_code_paths tl init
