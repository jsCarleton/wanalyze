type ebb_exit =
  {
    exit_bb:  Bblock.bblock;                    (* bb external to the ebb to which it can exit *)
    cps:      Code_path.code_path list option;  (* corresponding code paths to the exit bb *)
  }

type ebb_type = EBB_loop | EBB_block

type ebb = 
  {
    ebbtype:      ebb_type;                   (* either a block or a loop*)
    cost:         Et.et;    (* cost of executing this ebb *)
    entry_bb:     Bblock.bblock;              (* bb that's the entry to the ebb *)
    bbs:          Bblock.bblock list;         (* list of bbs that make up the ebb *)
    exits:        ebb_exit list;              (* info about how the ebb is exitted *)
    mutable
    succ_ebbs:    ebb list;               (* list of ebblocks directly reachable from this one*)
    (* these properties are used when the ebb contains a loop *)
    loop_cps:     Code_path.code_path list;   (* code_paths in the ebb that loop *)
    exit_cps:     Code_path.code_path list;   (* code_paths in the ebb that aren't the loop *)
    nested_ebbs:  ebb list;               (* ebbs containing nested loops *)
  }

val string_of_ebblock:      ebb -> string
val ebb_to_unreachable:     ebb -> bool
val ebb_to_return:          ebb -> bool
val ebb_has_branchback:     ebb -> bool
val ebb_too_many_paths:     ebb -> bool
val ebblocks_of_bblocks:    Execution.execution_context -> Bblock.bblock list -> ebb list
val paths_of_ebblocks:      ebb list -> ebb list list
val ebb_path_cost:          ebb list -> Et.et
val ebb_paths_max_cost:     ebb list list -> Et.et
