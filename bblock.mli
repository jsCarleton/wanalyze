type bb_type =
  BB_unknown
  | BB_unreachable | BB_block | BB_loop | BB_if | BB_else | BB_end | BB_br | BB_br_if | BB_br_table | BB_return

type bblock =
{
          bbindex:  int;            (* the index of this bblock in the list of bblocks, makes things easier to have this *)
          start_op: int;            (* index into e of the first op in the expr *)
  mutable end_op:   int;            (* index+1 of the last op in the expr *)
  mutable succ:     bblock list;    (* bblocks that can be directly reached from this bblock *)
  mutable pred:     bblock list;    (* bblocks that can directly reach this bblock *)
  mutable bbtype:	bb_type;        (* effectively the control opcode that created this bblock *)
  mutable nesting:  int;            (* nesting level of the last opcode in the bblock *)
  mutable labels:   int list;       (* destination labels used in BR, BR_IF, BR_TABLE instructions *)
  mutable br_dest:	bblock option;  (* for LOOP, BLOCK and IF instructions the bblock that's the target of a branch for this instruction  *)
}

val expr_of_bblock      : Wasm_module.expr -> bblock -> Wasm_module.expr
val bblocks_of_expr'    : Wasm_module.expr -> bblock list -> bblock -> bblock list
val set_br_dest         : bblock list -> int -> unit
val set_successors      : bblock list -> int -> unit
val mult_succ_count     : bblock list -> int
val string_of_bb_type   : bb_type -> string
