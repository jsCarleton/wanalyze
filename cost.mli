type loop_metric_info =
{
  prefix_cost:      int;            (* the cost of the prefix portion of the loop *)
  loop_cost:        Symbolic_expr.expr_tree;  (* cost of the loop portion of the loop *)
  loop_cond:        Symbolic_expr.expr_tree;  (* the condition under which the loop iterates *)
  loop_vars:        string list;    (* the names of the variables that appear in the loop_cond *)
  lv_entry_vals:    Ssa.ssa list;   (* loop variable values, in ssa form, at the beginning of the loop *)
  lv_loop_vals:     Ssa.ssa list;   (* loop variable values, in sss form, when the branchback block has been executed *)
}

type loop_metric = Infinite | LMI of loop_metric_info

type loop_path_parts =
{
  prefix_part:  Code_path.code_path;  (* the code path that leads to the loop *)
  loop_part:    Code_path.code_path;  (* the code path inside the loop *)
}

val cost_of_loop            : Execution.execution_context -> Bblock.bblock -> loop_path_parts -> loop_metric
val cost_of_loops           : Execution.execution_context -> Code_path.code_path list -> Code_path.code_path list
      -> Bblock.bblock -> loop_metric list
val cost_of_function        : Wasm_module.func -> Symbolic_expr.expr_tree
