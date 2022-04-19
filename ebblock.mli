type ebb_exit =
  {
    exit_bb:  Bblock.bblock;
    cps:      Code_path.code_path list;
  }

type ebb_type = EBB_loop | EBB_block

type ebblock = 
  {
    ebbtype:      ebb_type;
    entry_bb:     Bblock.bblock;
    bbs:          Bblock.bblock list;
    exits:        ebb_exit list;
    nested_ebbs:  ebblock list;
  }

val string_of_ebblock:      ebblock -> string
val ebb_to_unreachable:     ebblock -> bool
val ebb_to_return:          ebblock -> bool
val ebb_has_branchback:     ebblock -> bool
val ebblocks_of_bblocks:    Bblock.bblock list -> ebblock list
