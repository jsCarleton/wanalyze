type execution_context =
    {
        w:              Wm.wm;
        w_e:            Wm.expr;
        w_state:        Wm.program_state;
        param_types:    Wm.resulttype list;
        local_types:    Wm.local_type list;

    }

val succ_cond_of_bb:     Wm.wm -> Wm.program_state -> Wm.expr -> Et.et -> Et.et
val empty_program_state: Wm.wm -> Wm.resulttype list -> Wm.local_type list -> Wm.program_state
val reduce_bblock:       Wm.wm -> Wm.expr -> Wm.program_state -> Wm.program_state * Et.et
val et_of_retval:        int -> Wm.resulttype -> Et.et
val nparams:             Wm.wm -> int -> int
val ret_types:           Wm.wm -> int -> Wm.resulttype list
val int_of_get_argL:     Wm.op_arg -> int
val et_of_const_arg:     Wm.op_arg -> Et.et
