type mem_element = {
  elem_type:    Wm.numtype;
  elem_offset:  int;
  elem_value:   Et.et;
}

type program_state =
{
  mutable instr_count:    int;
  mutable value_stack:    Et.et list;
  mutable local_values:   Et.et array;
  mutable global_values:  Et.et array;
  mutable mem_values:     mem_element list;
}

type program_states = program_state list
type pending_states = program_states option list

type states =
{
  mutable active:   program_states;
  mutable pending:  pending_states;
  mutable final:    program_states;
}

type execution =
{
  eindex:             int;                      (* the index of the bb being executed *)
  pred_index:         int;
  succ_index:         int;
  initial:            program_state;            (* the program state before the first instruction of the bb is executed *)
  mutable final:      program_state;            (* the program state after the last instruction of the bb is executed *)
  mutable succ_cond:  Et.et;  (* the expression that must be true in order for the first successor state to be entered *) 
}

type execution_context =
{
    w:              Wm.wm;
    w_e:            Wm.expr;
    w_state:        program_state;
    param_types:    Wm.resulttype list;
    local_types:    Wm.local_type list;
}

val succ_cond_of_bb:     Wm.wm -> program_state -> Wm.expr -> Et.et -> Et.et
val empty_program_state: Wm.wm -> Wm.resulttype list -> Wm.local_type list -> program_state
val reduce_bblock:       Wm.wm -> Wm.expr -> program_state -> program_state * Et.et
val et_of_retval:        int -> Wm.resulttype -> Et.et
val nparams:             Wm.wm -> int -> int
val ret_types:           Wm.wm -> int -> Wm.resulttype list
val int_of_get_argL:     Wm.op_arg -> int
val et_of_const_arg:     Wm.op_arg -> Et.et
val elem_type_of_arg:    Wm.op_arg -> Wm.numtype
val elem_offset_of_arg:  Wm.op_arg -> int
val find_mem_elem:       mem_element list -> Wm.op_arg -> Et.et
