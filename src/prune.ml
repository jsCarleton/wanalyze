open Core

(* pruning ebb paths *)
let ids_of_ep (ep: ebb_path): int list = 
  List.map ~f:(fun b -> b.bbindex) ep

let bbs_of_ebbs (ebbs: ebb list): bb list =
  List.map ~f:(fun x -> List.hd_exn x.bblocks) ebbs

let list_in (l1: int list) (l2: int list): bool =
  List.for_all ~f:(fun x -> (List.mem l1 x ~equal:(=))) l2

(* thinking of l1, l2 as sets
    returns +1 if l2 is a subset of l1,
            -1 if l1 is a subset of l2,
              0 otherwise, i.e. at least one of them has an element not in the other *)
let path_compare (ep1: ebb_path) (ep2: ebb_path): int =
  if list_in (ids_of_ep ep1) (ids_of_ep ep2) then
    +1
  else if list_in (ids_of_ep ep2) (ids_of_ep ep1) then
      -1
  else
      0

let bigger_loop (ep1: ebb_path) (ep2: ebb_path) (lmi1: Cost.loop_metric) (lmi2: Cost.loop_metric): bool =
  (* either the first path contains the second and the loop metrics are the same
      or the first path contains *)
  (not (Cost.compare_loop_conds lmi1 lmi2)) || (path_compare ep1 ep2 = 1 && Cost.compare_loop_conds lmi1 lmi2) || (path_compare ep1 ep2 = 0)

let prune_loop_paths (ebbpaths: ebb_path list) (lmis: Cost.loop_metric list): ebb_path list * Cost.loop_metric list =
  let zip = List.zip_exn ebbpaths lmis in
  List.unzip
    (List.filter ~f:(fun a -> List.for_all ~f:(fun b -> bigger_loop (fst a) (fst b) (snd a) (snd b)) zip) zip)

let prune_ebb_paths (ebbpaths: ebb list list): ebb list list =
  List.filter ~f:(fun a -> List.for_all ~f:(fun b -> bigger_loop (bbs_of_ebbs a) (bbs_of_ebbs b) Cost.Infinite Cost.Infinite) ebbpaths) ebbpaths

