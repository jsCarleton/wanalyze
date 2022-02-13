open Core

type wasm_opcode =
(* Control *)
| OP_unreachable | OP_nop | OP_block | OP_loop | OP_if | OP_else | OP_end | OP_br | OP_br_if
| OP_br_table | OP_return | OP_call | OP_call_indirect
(* Parametric *)
| OP_drop | OP_select

let opcode_of_int (code: int): wasm_opcode =
  match code with
  (* Control *)
  | 0x00 -> OP_unreachable | 0x01 -> OP_nop | 0x02 -> OP_block | 0x03 -> OP_loop
  | 0x04 -> OP_if | 0x05 -> OP_else | 0x0b -> OP_end | 0x0c -> OP_br | 0x0d -> OP_br_if
  | 0x0e -> OP_br_table | 0x0f -> OP_return | 0x10 -> OP_call | 0x11 -> OP_call_indirect
  (* Parametric *)
  | 0x1a -> OP_drop | 0x1b | 0x1c -> OP_select
  | _ -> failwith (sprintf "Missing op code definition %x" code)