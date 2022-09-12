type loop_metric_info =
{
  prefix_cost:      Et.et;  (* cost of the prefix portion of the loop *)
  loop_cost:        Et.et;  (* cost of the loop portion of the loop *)
  loop_cond:        Et.et;  (* the condition under which the loop iterates *)
  loop_vars:        Et.var list;    (* variables that appear in the loop_cond *)
  lv_entry_vals:    Ssa.ssa list;   (* loop variable values, in ssa form, at the beginning of the loop *)
  lv_loop_vals:     Ssa.ssa list;   (* loop variable values, in ssa form, when the branchback block has been executed *)
}

type loop_metric = Infinite | LMI of loop_metric_info

type loop_path_parts =
{
  prefix_part:  Cp.cp;  (* the code path that leads to the loop *)
  loop_part:    Cp.cp;  (* the code path inside the loop *)
}

type path_cost_info = {terminal: Bb.bb; mutable path: Bb.bb list; mutable cost: int}

val cost_of_loop:     Ex.execution_context -> Bb.bb -> loop_path_parts -> loop_metric
val cost_of_loops:    Ex.execution_context -> Cp.cp list -> Cp.cp list  -> Bb.bb -> loop_metric list
val cost_of_bb_path:  Bb.bb -> Bb.bb -> int
val max_cost_paths:   Bb.bb list -> Bb.bb list -> Bb.bb list list
val string_of_pci:    path_cost_info -> string
