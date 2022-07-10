type bb_type =
  BB_unknown
  | BB_exit_end | BB_exit_return | BB_exit_unreachable
  | BB_unreachable | BB_block | BB_loop | BB_if | BB_else | BB_end | BB_br | BB_br_if | BB_br_table | BB_return

type bb =
{
          bbindex:  int;        (* the index of this bb in the list of bblocks, makes things easier to have this *)
          start_op: int;        (* index into e of the first op in the expr *)
  mutable end_op:   int;        (* index+1 of the last op in the expr *)
  mutable succ:     bb list;    (* bblocks that can be directly reached from this bb *)
  mutable pred:     bb list;    (* bblocks that can directly reach this bb *)
  mutable bbtype:	  bb_type;    (* effectively the control opcode that created this bb *)
  mutable nesting:  int;        (* nesting level of the last opcode in the bb *)
  mutable labels:   int list;   (* destination labels used in BR, BR_IF, BR_TABLE instructions *)
  mutable br_dest:	bb option;  (* for LOOP, BLOCK and IF instructions the bb that's the target of a branch for this instruction  *)
}

val bb_is_exit        : bb -> bool
val non_exit_bbs      : bb list -> bb list
val cost_of_bb        : bb -> int
val compare_bbs       : bb -> bb -> int
val bb_in_bblocks     : bb -> bb list-> bool
val bb_not_in_bblocks : bb -> bb list-> bool
val string_of_ints    : int list -> string
val indexes_of_bbs    : bb list -> int list
val string_of_bbs     : bb list -> string
val string_of_raw_bblocks : bb list -> string
val expr_of_bb        : Wm.expr -> bb -> Wm.expr
val bblocks_of_expr   : Wm.expr -> bb list
val mult_succ_count   : bb list -> int
val string_of_bb_type : bb_type -> string
val loop_count_of_bbs : bb list -> int -> int
val first_loop_of_bbs : bb list -> bb
