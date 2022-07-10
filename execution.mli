type execution_context =
    {
        w:              Wasm_module.wasm_module;
        w_e:            Wasm_module.expr;
        w_state:        Wasm_module.program_state;
        param_types:    Wasm_module.resulttype list;
        local_types:    Wasm_module.local_type list;

    }

val succ_cond_of_bb     : Wasm_module.wasm_module -> Wasm_module.program_state -> Wasm_module.expr -> Et.et 
        -> Et.et
val empty_program_state : Wasm_module.wasm_module -> Wasm_module.resulttype list -> Wasm_module.local_type list 
        -> Wasm_module.program_state
val reduce_bblock       : Wasm_module.wasm_module -> Wasm_module.expr -> Wasm_module.program_state 
        -> Wasm_module.program_state * Et.et
val et_of_retval        : int -> Wasm_module.resulttype -> Et.et
val nparams             : Wasm_module.wasm_module -> int -> int
val ret_types           : Wasm_module.wasm_module -> int -> Wasm_module.resulttype list
val int_of_get_argL     : Wasm_module.op_arg -> int
val et_of_const_arg     : Wasm_module.op_arg -> Et.et
