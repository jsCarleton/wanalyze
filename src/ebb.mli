type ebb_type = EBB_loop | EBB_block

type ebb_path = Bb.bb list  (* a list of entry_bbs for the ebbs in the path *)

type loop = {
  codepaths:    ebb_path list option list;  (* corresponding code paths to the exit bb *)
  loop_cps:     ebb_path list;       (* codepaths in the ebb that loop *)
  exit_cps:     ebb_path list;     (* codepaths in the ebb that aren't the loop *)
}

type ebb = 
{
  ebbtype:      ebb_type;       (* either a block or a loop*)
  mutable
  ebb_cost:     Et.et;          (* cost of executing this ebb *)
  entry_bb:     Bb.bb;          (* bb that's the entry to the ebb *)
  bblocks:      Bb.bb list;     (* list of bbs that make up the ebb *)
  mutable
  succ_ebbs:    ebb list;       (* list of ebblocks directly reachable from this one*)
  nested_ebbs:  ebb list;       (* ebbs containing nested loops *)
  exit_bbs:     Bb.bb list;     (* bb external to the ebb to which it can exit *)
  ebb_loop:     loop option;
  lms:          Cost.loop_metric list;
}

val string_of_ebblock:  ebb -> string
val string_of_ebblocks: ebb list -> string
val ebb_to_unreachable: ebb -> bool
val ebb_to_return:      ebb -> bool
val ebb_has_branchback: ebb -> bool
val ebb_too_many_paths: ebb -> bool
val ebbs_of_bbs:        Ex.execution_context -> Bb.bb list -> Bb.bb list -> ebb list
val paths_of_ebblocks:  ebb list -> ebb list list
val ebb_path_cost:      ebb list -> Et.et
val ebb_paths_max_cost: ebb list list -> Et.et
