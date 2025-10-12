type sb_type = SB_loop | SB_block

type sb_path = Bb.bb list  (* a list of entry_bbs for the sbs in the path *)

type loop = {
  codepaths:    sb_path list option list;  (* corresponding code paths to the exit bb *)
  loop_cps:     sb_path list;     (* codepaths in the sb that loop *)
  exit_cps:     sb_path list;     (* codepaths in the sb that aren't the loop *)
}

type sb = 
{
  sbtype:      sb_type;       (* either a block or a loop*)
  mutable
  sb_cost:     Et.et;         (* cost of executing this sb *)
  entry_bb:    Bb.bb;         (* bb that's the entry to the sb *)
  bblocks:     Bb.bb list;    (* list of bbs that make up the sb *)
  mutable
  succ_sbs:    sb list;       (* list of sblocks directly reachable from this one*)
  nested_sbs:  sb list;       (* sbs containing nested loops *)
  exit_bbs:    Bb.bb list;    (* bb external to the sb to which it can exit *)
  sb_loop:     loop option;
  lms:         Cost.loop_metric list;
}

val string_of_sblock:  sb -> string
val string_of_sblocks: sb list -> string
val sb_to_unreachable: sb -> bool
val sb_to_return:      sb -> bool
val sb_has_branchback: sb -> bool
val sb_too_many_paths: sb -> bool
val sbs_of_bbs:        Ex.execution_context -> Bb.bb list -> Bb.bb list -> sb list
val paths_of_sblocks:  sb list -> sb list list
val sb_path_cost:      sb list -> Et.et
val sb_paths_max_cost: sb list list -> Et.et
val prune_sb_paths:    sb list list -> sb list list
