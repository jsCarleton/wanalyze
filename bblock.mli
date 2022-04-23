val exit_final_end    : int
val exit_return       : int
val exit_unreachable  : int

type bb_type =
  BB_unknown | BB_exit
  | BB_unreachable | BB_block | BB_loop | BB_if | BB_else | BB_end | BB_br | BB_br_if | BB_br_table | BB_return

type bblock =
{
          bbindex:  int;            (* the index of this bblock in the list of bblocks, makes things easier to have this *)
          start_op: int;            (* index into e of the first op in the expr *)
  mutable end_op:   int;            (* index+1 of the last op in the expr *)
  mutable succ:     bblock list;    (* bblocks that can be directly reached from this bblock *)
  mutable pred:     bblock list;    (* bblocks that can directly reach this bblock *)
  mutable bbtype:	  bb_type;        (* effectively the control opcode that created this bblock *)
  mutable nesting:  int;            (* nesting level of the last opcode in the bblock *)
  mutable labels:   int list;       (* destination labels used in BR, BR_IF, BR_TABLE instructions *)
  mutable br_dest:	bblock option;  (* for LOOP, BLOCK and IF instructions the bblock that's the target of a branch for this instruction  *)
}

val cost_of_bblock        : bblock -> int
val compare_bbs           : bblock -> bblock -> int
val bb_in_bblocks         : bblock -> bblock list-> bool
val bb_not_in_bblocks     : bblock -> bblock list-> bool
val string_of_ints        : int list -> string
val indexes_of_bblocks    : bblock list -> int list
val string_of_bblocks     : bblock list -> string
val string_of_raw_bblocks : bblock list -> string
val expr_of_bblock        : Wasm_module.expr -> bblock -> Wasm_module.expr
val bblocks_of_expr       : Wasm_module.expr -> bblock list
val mult_succ_count       : bblock list -> int
val string_of_bb_type     : bb_type -> string
val loop_count_of_bblocks : bblock list -> int -> int
val first_loop_of_bblocks : bblock list -> bblock
