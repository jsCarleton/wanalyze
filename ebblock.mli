type ebb_exit =
  {
    exit_bb:  Bblock.bblock;
    cps:      Code_path.code_path list;
  }

type ebblock = 
  {
    entry_bb: Bblock.bblock;
    bbs:      Bblock.bblock list;
    exits:    ebb_exit list;
  }

val string_of_ebblock:      ebblock -> string
val ebblocks_of_bblocks:    Bblock.bblock list -> ebblock list
