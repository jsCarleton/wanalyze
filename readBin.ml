open Core
open Wasm_module
(* TODO: 
    - use map instead of coding recursion on lists 
    - use read_ instead of get_ when reading from ic
    - make printfs look at verbose flag 
    - add validation of indices (e.g. functions, types)
    - add the rest of the op codes 
    - fix up all calls to get_idx 
    - get rid of all [@warning "-27"]
    - fix format of param and result in section 1*)

let usage_msg = "readBin -verbose <file1> <file2> ..."
let verbose = ref false
let input_files = ref []
let speclist =
    [("-verbose", Arg.Set verbose, "Output debug information")]
let anon_fun filename =
       input_files := filename::!input_files

let get_byte ic : int =
  let b = In_channel.input_byte ic in
    match b with
    | None -> -1
    | Some x -> 
      match !verbose with
      | true -> printf "!%X! " x; x
      | _ -> x

let read_magic ic =
  get_byte ic = 0x00
  && get_byte ic = 0x61
  && get_byte ic = 0x73
  && get_byte ic = 0x6d

let read_version ic =
  get_byte ic = 0x01
  && get_byte ic = 0x00
  && get_byte ic = 0x00
  && get_byte ic = 0x00

let rec skip_bytes ic n =
  match n with
  | 0 -> true
  | _ ->
    get_byte ic >= 0 && skip_bytes ic (n-1)

(* i64 helper functions *)
let i64lt i1 i2 = (Int64.compare i1 i2) < 0
let i64le i1 i2 = (Int64.compare i1 i2) <=0
let i64mul i1 i2 : int64 = Stdlib.Int64.mul i1 i2
let i64add i1 i2 : int64 = Stdlib.Int64.add i1 i2
let i64sub i1 i2 : int64 = Stdlib.Int64.sub i1 i2
let i64lsl i n : int64 = Stdlib.Int64.shift_left i n
let i64lor i1 i2 : int64 = Stdlib.Int64.logor i1 i2
let i64land i1 i2 : int64 = Stdlib.Int64.logand i1 i2
let of_int i : int64 = Stdlib.Int64.of_int i

let rec uLEB ic size =
  let n = get_byte ic in
  match (n < (1 lsl 7)) && (n < (1 lsl size)) with
  | true -> n
  | _ -> (1 lsl 7) * (uLEB ic (size-7)) + (n - (1 lsl 7))

let rec fillbits n bits =
  match bits <= 0 with
  | true -> n
  | _ -> fillbits (i64lor (i64lsl 1L (64-bits)) n) (bits - 1)

let rec nLEB ic size n acc bits =
  match i64land n 0x80L with
  | 0x80L -> nLEB ic size (of_int (get_byte ic)) (i64lor (i64lsl acc 7) (i64land n 0x7fL)) (bits+7)
  | _ -> fillbits (i64lor (i64lsl acc 7) (i64land n 0x7fL)) (64-bits-7)
  
let rec sLEB ic size : int64 =
  let n = of_int (get_byte ic) in
  match i64land n 0x40L with
  | 0x40L -> let n = nLEB ic size n 0L 0 in
            printf "negative LEB %Ld" n;
            n
  | _ ->
  (
  match (i64lt n (i64lsl 1L 6)) && (size >=64 || (i64lt n (i64lsl 1L (size - 1)))) with
  | true -> n
  | _ -> 
    (match (i64le (i64lsl 1L 6) n) && (i64lt n (i64lsl 1L 7)) 
        && (i64le n (i64sub (i64lsl 1L 7) (i64lsl 1L (size-1)))) with
     | true -> (i64sub n (i64lsl 1L 7))
     | _ -> i64add (i64mul (i64lsl 1L 7)  (sLEB ic (size-7)))  (i64sub n (i64lsl 1L 7))
    )
  )

let get_vec_len ic =
  let len = uLEB ic 32 in
    printf "vector length: %d" len; len

let xxget_idx ic =
  match get_byte ic with
  | -1 -> printf "idx error!\n"; false, -1
  | i -> printf "Index: %d " i; true, i

let get_idx ic =
  match get_byte ic with
  | -1 -> printf "idx error!\n"; false
  | i -> printf "Index: %d " i; true

let rec vec_idx ic n =
  match n with
  | 0 -> true
  | _ ->
    get_idx ic
    && vec_idx ic (n-1)

let get_i16 ic = Int64.to_int (sLEB ic 16)
let get_i32 ic = 
  match Int64.to_int (sLEB ic 32) with
  | None -> -1
  | Some x -> x
let get_i64 ic = sLEB ic 64

let rec bytes_to_i64' ic n acc : int64 =
  match n with
  | 0 -> acc
  | _ -> bytes_to_i64' ic (n-1) (i64add (i64lsl acc 8) (Int64.of_int (get_byte ic)))
let bytes_to_i64 ic n : int64 = bytes_to_i64' ic n 0L

let get_f32 ic = Int64.float_of_bits (Int64.shift_left (bytes_to_i64 ic 4) 32)
let get_f64 ic = Int64.float_of_bits (bytes_to_i64 ic 8)
                      
let reftype ic =
  match get_byte ic with
  | 0x70 -> printf "funcref"; true
  | 0x6F -> printf "externref"; true
  | x -> printf "Invalid reftype %x!" x; false

let memarg ic =
  printf "align: %d " (uLEB ic 32);
  printf "offset: %d " (uLEB ic 32);
  true

let read_memarg ic =
  [uLEB ic 32; uLEB ic 32]

let rec instr ic =
let opcode = get_byte ic in
  match opcode with
  (* control instructions *)
  | 0x00 -> printf "unreachable "; opcode
  | 0x01 -> printf "nop "; opcode
  | 0x02 -> printf "block, type:%X" (get_byte ic);
      (	match instr ic with
        | 0x0b -> printf "end "; opcode
        | _ -> instr ic
      )
  |	0x03 -> printf "loop, type:%X" (get_byte ic);
      (	match instr ic with
        | 0x0b -> printf "end "; opcode
        | _ -> instr ic
      )
  |	0x04 -> printf "if, type:%X" (get_byte ic);
      (	match instr ic with
        | 0x05 -> printf "else ";
          ( match instr ic with
            | 0x0b -> printf "end "; opcode
            | _ -> instr ic
          )
        | 0x0b -> printf "end "; opcode
        | _ -> instr ic
      )
  | 0x0c -> printf "br %x " (get_byte ic); opcode
  | 0x0d -> printf "br_if %x " (get_byte ic); opcode
  | 0x0e -> ignore(vec_idx ic (get_byte ic): bool); printf "br_table %X" (get_byte ic); opcode
  | 0x0f -> printf "return "; opcode
  | 0x10 -> printf "call %x " (get_byte ic); opcode
  | 0x11 -> printf "call_indirect %x %x " (get_byte ic) (get_byte ic); opcode
  | 0x0b -> printf "end "; opcode
  (* reference instructions*)
  | 0xd0 -> printf "ref.null "; opcode (* not what the spec says *)
  (* parametric instructions *)
  (* variable instructions*)
  | 0x20 -> printf "local.get %x " (get_byte ic); opcode
  | 0x21 -> printf "local.set %x " (get_byte ic); opcode
  | 0x22 -> printf "local.tee %x " (get_byte ic); opcode
  | 0x23 -> printf "global.get %x " (get_byte ic); opcode
  | 0x24 -> printf "global.set %x " (get_byte ic); opcode
  (* table instructions *)
  | 0x25 -> printf "table.get %x " (get_byte ic); opcode
  | 0x26 -> printf "table.set %x " (get_byte ic); opcode
  (* memory instructions *)
  | 0x28 -> printf "i32.load %d %d " 0 0 (* TODO *); opcode
  | 0x2c -> printf "i32.load8_s "; ignore(memarg ic: bool); opcode
  | 0x3a -> printf "i32.store 8 "; ignore(memarg ic: bool); opcode
  | 0x3f -> printf "memory.size "; opcode (* not what the spec says *)
  | 0x40 -> printf "memory grow "; opcode (* not what the spec says *)
  (* numeric instructions *)
  | 0x41 -> printf "i32.const %d " (get_i32 ic); opcode
  |	0x42 -> printf "i64.const %Ld " (get_i64 ic); opcode
  | 0x43 -> printf "f32.const %f " (get_f32 ic); opcode
  | 0x44 -> printf "f64.const %f " (get_f64 ic); opcode
  | 0x6a -> printf "i32.add "; opcode
  | 0x7d -> printf "i64.sub "; opcode
  | 0x7e -> printf "i64.mul "; opcode
  | 0xa0 -> printf "f64.add "; opcode
  (* unhandled opcode *)
  | _ -> printf "unhandled opcode: %x " opcode; -1

let rec expr ic =
  match instr ic with
  | 0x0B -> true
  | -1 -> false
  | _ -> expr ic

(* Sections consisting of vectors of entries *)
let rec read_entries ic n w entry_handler =
  printf "section has %d entries left\n" n;
  match n with
  | 0 -> true
  | _ ->
    entry_handler ic w &&
    read_entries ic (n-1) w entry_handler

let read_section_length ic = uLEB ic 32
let read_section ic section entry_handler =
  printf "reading section: \n";
  read_section_length ic >= 0 (* discard the section size *)
  && read_entries ic (get_vec_len ic) section entry_handler

(* Type section *)
let valtype ic =
  match get_byte ic with
  | 0 -> printf "None "; (true, 0)
  | 0x7f -> printf "i32 "; (true, 0x7f)
  | 0x7e -> printf "i64 "; (true, 0x7e)
  | 0x7d -> printf "f32 "; (true, 0x7d)
  | 0x7c -> printf "f64 "; (true, 0x7c)
  | 0x70 -> printf "funcref "; (true, 0x70)
  | 0x6f -> printf "externref "; (true, 0x6f)
  | x -> printf "invalid valtype %x" x; (false, -1)
  
let rec get_types ic len acc =
    match len with
    | 0 -> (true, acc)
    | _ -> (
      match (valtype ic) with
      | (false, _) -> (false, [])
      | (_, x) -> get_types ic (len - 1) (List.append acc [x])
    )
  
let get_type_vector ic =
  match get_vec_len ic with
  | 0 -> (true, [])
  | len ->
    get_types ic len []

let get_functype ic =
  (* it seems we need to write it like this to ensure that the order of
     evaluation is correct *)
  let rt1 = get_type_vector ic in
  let rt2 = get_type_vector ic in
  rt1, rt2

let read_type ic w =
  get_byte ic = 0x60
  && update_type_section w (get_functype ic)

(* Import section *)
let limits ic =
  match get_byte ic with
  | 0x00 -> printf "lower: %d, no upper" (uLEB ic 32); true
  | 0x01 -> printf "lower: %d, upper: %d" (uLEB ic 32) (uLEB ic 32); true
  | _ -> printf "Invalid limits!"; false

let get_table_type ic =
  reftype ic && limits ic

let get_mem_type ic =
  limits ic

let mut ic =
  match get_byte ic with
  | 0x00 -> printf "const "; true
  | 0x01 -> printf "var "; true
  | _ -> printf "Invalid mut!"; false

let globaltype ic =
  (fst (valtype ic)) && (mut ic)

let importdesc ic =
  match get_byte ic with
  | 0x00 -> printf "func "; (get_idx ic)
  | 0x01 -> printf "table "; get_table_type ic
  | 0x02 -> printf "mem "; get_mem_type ic
  | 0x03 -> printf "global "; globaltype ic
  | _ -> printf("Invalid importdesc!"); false

let rec get_string ic n =
  match n with
  | 0 -> printf " "; true
  | _ -> printf "%c" (char_of_int (get_byte ic)); get_string ic (n-1)

let name ic =
  match get_byte ic with
  | 0 -> printf "name length 0 ";true
  | n -> printf "name length %d" n ; get_string ic n

let [@warning "-27"]read_import ic w =
  name ic
  && name ic
  && importdesc ic

(* Function section *)
let [@warning "-27"]read_function ic w = 
  update_function_section w (xxget_idx ic)

(* Table section *)
let [@warning "-27"]read_table ic w =
  get_table_type ic

(* Memory section *)
let [@warning "-27"]memory_reader ic w =
  get_mem_type ic

(* Global section *)
let [@warning "-27"]read_global ic w =
  globaltype ic && expr ic

(* Export section *)
let exportdesc ic =
  match get_byte ic with
  | 0x00 -> printf "func"; get_idx ic
  | 0x01 -> printf "table"; get_idx ic
  | 0x02 -> printf "mem "; get_idx ic
  | 0x03 -> printf "global "; get_idx ic
  | _ -> printf("Invalid exportdesc!"); false

let [@warning "-27"]read_export ic w =
  name ic &&
  exportdesc ic

(* Start section *)
let [@warning "-27"]read_start_section ic w =
  read_section_length ic >= 0 (* discard the section length *)
  && get_idx ic

(* Element section *)
let elemkind ic =
  match get_byte ic with
  | 0x00 -> true
  | _ -> printf "Invalid elemkind"; false

let rec vec_expr ic n =
  match n with
  | 0 -> true
  | _ ->
    expr ic
    && vec_expr ic (n-1)

let [@warning "-27"]element_reader ic w = 
  match get_byte ic with
  | 0x00 ->
    expr ic
    && vec_idx ic (get_byte ic)
  | 0x01 ->
    elemkind ic
    && vec_idx ic (get_byte ic)
  | 0x02 ->
    get_idx ic
    && expr ic
    && elemkind ic
    && vec_idx ic (get_byte ic)
  | 0x03 ->
    elemkind ic
    && vec_idx ic (get_byte ic)
  | 0x04 ->
    expr ic
    && vec_expr ic (get_byte ic)
  | 0x05 ->
    reftype ic
    && vec_expr ic (get_byte ic)
  | 0x06 -> 
    get_idx ic
    && expr ic
    && reftype ic
    && vec_expr ic (get_byte ic)
  | 0x07 ->
    reftype ic
    && vec_expr ic (get_byte ic)
  | _ ->
    printf "Invalid element item";
    false

(* Code section *)
let get_type_count ic =
  get_byte ic

let get_local ic =
  match get_type_count ic with
  | 0 -> printf("Type count error!\n"); false
  | n ->
    match get_byte ic with
    | 0x7F -> printf "%d i32 " n; true
    | 0x7E -> printf "%d i64 " n; true
    | 0x7D -> printf "%d f32 " n; true
    | 0x7C -> printf "%d f64 " n; true
    | _ -> printf "Type error!\n"; false

let rec get_locals ic n =
  match n with
  | 0 -> true
  | _ ->
    get_local ic
    && get_locals ic (n-1)

(* TODO this is wrong see 5.4.1*)
let read_blocktype ic =
  let t = get_byte ic in
    printf "%d\n" t;
    t

let read_vec_valtype ic =
  List.init (get_vec_len ic) ~f:(fun _ -> get_byte ic)

let ints_of_i64 _ = [0; 0] (* TODO *)

let read_labelidx ic = uLEB ic 32
let rec read_vec_labelidx' ic len acc =
  match len with
  | 0 -> acc
  | _ ->
      let label = read_labelidx ic in
      read_vec_labelidx' ic (len-1) (List.append acc [label])
let read_vec_labelidx ic =
  read_vec_labelidx' ic (get_vec_len ic) []

let get_args ic opcode _ =
   match opcode with
 (* control instructions *)
  | 0x00 -> ("unreachable", [])
  | 0x01 -> ("nop", [])
  | 0x02 -> ("block", [read_blocktype ic])
  | 0x03 -> ("loop", [read_blocktype ic])
  | 0x04 -> ("if", [read_blocktype ic])
  | 0x05 -> ("else", [])
  | 0x0b -> ("end", [])
  | 0x0c -> ("br", [get_byte ic])
  | 0x0d -> ("br_if",  [get_byte ic])
  | 0x0e -> let labels = read_vec_labelidx ic in
      ("br_table", List.append labels [read_labelidx ic])
  | 0x0f -> ("return", [])
  | 0x10 -> ("call", [get_byte ic])
  | 0x11 -> ("call_indirect", [(get_byte ic); (get_byte ic)])
  (* reference instructions*)
  | 0xd0 -> ("ref.null", []) (* not what the spec says *)
  (* parametric instructions *)
  | 0x1a -> ("drop", [])
  | 0x1b -> ("select", [])
  | 0x1c -> ("select", (read_vec_valtype ic))
  (* variable instructions*)
  | 0x20 -> ("local.get", [get_byte ic])
  | 0x21 -> ("local.set", [get_byte ic])
  | 0x22 -> ("local.tee", [get_byte ic])
  | 0x23 -> ("global.get", [get_byte ic])
  | 0x24 -> ("global.set", [get_byte ic])
  (* table instructions *)
  | 0x25 -> ("table.get", [get_byte ic])
  | 0x26 -> ("table.set", [get_byte ic])
  (* memory instructions *)
  | 0x28 -> ("i32.load", (read_memarg ic))
  | 0x29 -> ("i64.load", (read_memarg ic))
  | 0x2a -> ("f32.load", (read_memarg ic))
  | 0x2b -> ("f64.load", (read_memarg ic))
  | 0x2c -> ("i32.load8_s", (read_memarg ic))
  | 0x2d -> ("i32.load8_u", (read_memarg ic))
  | 0x2e -> ("i32.load16_s", (read_memarg ic))
  | 0x2f -> ("i32.load16_u", (read_memarg ic))
  | 0x30 -> ("i64.load8_s", (read_memarg ic))
  | 0x31 -> ("i64.load8_u", (read_memarg ic))
  | 0x32 -> ("i64.load16_s", (read_memarg ic))
  | 0x33 -> ("i64.load16_u", (read_memarg ic))
  | 0x34 -> ("i64.load32_s", (read_memarg ic))
  | 0x35 -> ("i64.load32_u", (read_memarg ic))
  | 0x36 -> ("i32.store", (read_memarg ic))
  | 0x37 -> ("i64.store", (read_memarg ic))
  | 0x38 -> ("f32.store", (read_memarg ic))
  | 0x39 -> ("f64.store", (read_memarg ic))
  | 0x3a -> ("i32.store8", (read_memarg ic))
  | 0x3b -> ("i32.store16", (read_memarg ic))
  | 0x3c -> ("i64.store8", (read_memarg ic))
  | 0x3d -> ("i64.store16", (read_memarg ic))
  | 0x3e -> ("i64.store32", (read_memarg ic))
  | 0x3f -> ("memory.size", []) (* not what the spec says *)
  | 0x40 -> ("memory grow", []) (* not what the spec says *)
  (* numeric instructions *)
  | 0x41 -> ("i32.const", [get_i32 ic])
  |	0x42 -> ("i64.const", ints_of_i64 (sLEB ic 64))
  | 0x43 -> ("f32.const", [0]) (* TODO [get_f32 ic] *)
  | 0x44 -> ("f64.const", [0]) (* TODO [get_f64 ic] *)
  
  | 0x45 -> ("i32.eqz", [])
  | 0x46 -> ("i32.eq", [])
  | 0x47 -> ("i32.ne", [])
  | 0x48 -> ("i32.lt_s", [])
  | 0x49 -> ("i32.lt_u", [])
  | 0x4a -> ("i32.gt_s", [])
  | 0x4b -> ("i32.gt_u", [])
  | 0x4c -> ("i32.le_s", [])
  | 0x4d -> ("i32.le_u", [])
  | 0x4e -> ("i32.ge_s", [])
  | 0x4f -> ("i32.ge_u", [])

  | 0x50 -> ("i64.eqz", [])
  | 0x51 -> ("i64.eq", [])
  | 0x52 -> ("i64.ne", [])
  | 0x53 -> ("i64.lt_s", [])
  | 0x54 -> ("i64.lt_u", [])
  | 0x55 -> ("i64.gt_s", [])
  | 0x56 -> ("i64.gt_u", [])
  | 0x57 -> ("i64.le_s", [])
  | 0x58 -> ("i64.le_u", [])
  | 0x59 -> ("i64.ge_s", [])
  | 0x5a -> ("i64.ge_u", [])

  | 0x5b -> ("f32.eq", [])
  | 0x5c -> ("f32.ne", [])
  | 0x5d -> ("f32.lt", [])
  | 0x5e -> ("f32.gt", [])
  | 0x5f -> ("f32.le", [])
  | 0x60 -> ("f32.ge", [])

  | 0x61 -> ("f64.eq", [])
  | 0x62 -> ("f64.ne", [])
  | 0x63 -> ("f64.lt", [])
  | 0x64 -> ("f64.gt", [])
  | 0x65 -> ("f64.le", [])
  | 0x66 -> ("f64.ge", [])

  | 0x67 -> ("i32.clz", [])
  | 0x68 -> ("i32.ctz", [])
  | 0x69 -> ("i32.popcnt", [])
  | 0x6a -> ("i32.add", [])
  | 0x6b -> ("i32.sub", [])
  | 0x6c -> ("i32.mul", [])
  | 0x6d -> ("i32.div_s", [])
  | 0x6e -> ("i32.div_u", [])
  | 0x6f -> ("i32.rem_s", [])
  | 0x70 -> ("i32.rem_u", [])
  | 0x71 -> ("i32.and", [])
  | 0x72 -> ("i32.or", [])
  | 0x73 -> ("i32.xor", [])
  | 0x74 -> ("i32.shl", [])
  | 0x75 -> ("i32.shr_s", [])
  | 0x76 -> ("i32.shr_u", [])
  | 0x77 -> ("i32.rotl", [])
  | 0x78 -> ("i32.rotr", [])

  | 0x79 -> ("i64.clz", [])
  | 0x7a -> ("i64.ctz", [])
  | 0x7b -> ("i64.popcnt", [])
  | 0x7c -> ("i64.add", [])
  | 0x7d -> ("i64.sub", [])
  | 0x7e -> ("i64.mul", [])
  | 0x7f -> ("i64.div_s", [])
  | 0x80 -> ("i64.div_u", [])
  | 0x81 -> ("i64.rem_s", [])
  | 0x82 -> ("i64.rem_u", [])
  | 0x83 -> ("i64.and", [])
  | 0x84 -> ("i64.or", [])
  | 0x85 -> ("i64.xor", [])
  | 0x86 -> ("i64.shl", [])
  | 0x87 -> ("i64.shr_s", [])
  | 0x88 -> ("i64.shr_u", [])
  | 0x89 -> ("i64.rotl", [])
  | 0x8a -> ("i64.rotr", [])

  | 0x8b -> ("f32.abs", [])
  | 0x8c -> ("f32.neg", [])
  | 0x8d -> ("f32.ceil", [])
  | 0x8e -> ("f32.floor", [])
  | 0x8f -> ("f32.trunc", [])
  | 0x90 -> ("f32.nearest", [])
  | 0x91 -> ("f32.sqrt", [])
  | 0x92 -> ("f32.add", [])
  | 0x93 -> ("f32.sub", [])
  | 0x94 -> ("f32.mul", [])
  | 0x95 -> ("f32.div", [])
  | 0x96 -> ("f32.min", [])
  | 0x97 -> ("f32.max", [])
  | 0x98 -> ("f32.copysign", [])

  | 0x99 -> ("f64.abs", [])
  | 0x9a -> ("f64.neg", [])
  | 0x9b -> ("f64.ceil", [])
  | 0x9c -> ("f64.floor", [])
  | 0x9d -> ("f64.trunc", [])
  | 0x9e -> ("f64.nearest", [])
  | 0x9f -> ("f64.sqrt", [])
  | 0xa0 -> ("f64.add", [])
  | 0xa1 -> ("f64.sub", [])
  | 0xa2 -> ("f64.mul", [])
  | 0xa3 -> ("f64.div", [])
  | 0xa4 -> ("f64.min", [])
  | 0xa5 -> ("f64.max", [])
  | 0xa6 -> ("f64.copysign", [])

  | 0xa7 -> ("i32.wrap_i64", [])
  | 0xa8 -> ("i32.trunc_f32_s", [])
  | 0xa9 -> ("i32.trunc_f32_u", [])
  | 0xaa -> ("i32.trunc_f64_s", [])
  | 0xab -> ("i32.trunc_f64_u", [])
  | 0xac -> ("i64.extend_i32_s", [])
  | 0xad -> ("i64.extend_i32_u", [])
  | 0xae -> ("i64.trunc_f32_s", [])
  | 0xaf -> ("i64.trunc_f32_u", [])
  | 0xb0 -> ("i64.trunc_f64_s", [])
  | 0xb1 -> ("i64.trunc_f64_u", [])
  | 0xb2 -> ("f32.convert_i32_s", [])
  | 0xb3 -> ("f32.convert_i32_u", [])
  | 0xb4 -> ("f32.convert_i64_s", [])
  | 0xb5 -> ("f32.convert_i64_u", [])
  | 0xb6 -> ("f32.demote_f64", [])
  | 0xb7 -> ("f64.convert_i32_s", [])
  | 0xb8 -> ("f64.convert_i32_u", [])
  | 0xb9 -> ("f64.convert_i64_s", [])
  | 0xba -> ("f64.convert_i64_u", [])
  | 0xbb -> ("f64.promote_f64", [])
  | 0xbc -> ("f32.reinterpret_f32", [])
  | 0xbd -> ("i64.reinterpret_f64", [])
  | 0xbe -> ("f32.reinterpret_i32", [])
  | 0xbf -> ("f64.reinterpret_i64", [])

  | 0xc0 -> ("i32.extend_8_s", [])
  | 0xc1 -> ("i32.extend_16_s", [])
  | 0xc2 -> ("i64.extend_8_s", [])
  | 0xc3 -> ("i64.extend_16_s", [])
  | 0xc4 -> ("i64.extend_32_s", [])

  | 0xFC -> ("ixx.trunc_sat_fxx_x", [get_i32 ic]) (* TODO a polymorphic opcode that needs interpretation to be printed correctly *)
 
  (* unhandled opcode *)
  | _ -> ("unknown opcode:", [])

let read_valtype ic = valtype_of_int (get_byte ic)
let xxget_local ic = (fun _ -> printf "local \n"; { n = get_byte ic; v = (read_valtype ic)})

let rec get_instr_list ic acc nesting =
  let opcode = get_byte ic in
  let (opname, args) = (get_args ic opcode get_instr_list) in
  match opcode with
  (* end *)
  | 0x0b ->
      ( match nesting with
        | 0 -> List.append acc [{opcode; opname; args; nesting=nesting-1}]
        | _ -> get_instr_list ic (List.append acc [{opcode; opname; args; nesting=nesting-1}]) (nesting-1)
      )
  (* block, loop, if *)
  | 0x02 | 0x03 | 0x04 -> get_instr_list ic (List.append acc [{opcode; opname; args; nesting}]) (nesting+1)
  (* else, all others *)
  | 0x05 ->  get_instr_list ic (List.append acc [{opcode; opname; args; nesting=nesting-1}]) nesting
  (* all others *)
  | _ ->  get_instr_list ic (List.append acc [{opcode; opname; args; nesting}]) nesting

let read_code ic w =
  (uLEB ic 32) >= 0 (* we discard the size *)
  &&
  (* func *)
  let locals = List.init (get_vec_len ic) ~f:(xxget_local ic) in
  let e = get_instr_list ic [] 0 in
  update_code_section w ((true, locals), (true, e)) (* why pass true? *)

(* Data section *)
let rec vec_bytes ic n =
  match n with
  | 0 -> true
  | _ ->
    printf "%X " (get_byte ic);
    vec_bytes ic (n-1)

let [@warning "-27"]data_reader ic w =
  match get_byte ic with
  | 0x00 -> printf "data section type 0\n"; expr ic && vec_bytes ic (get_vec_len ic)
  | 0x01 -> printf "data section type 1\n"; vec_bytes ic (get_vec_len ic)
  | 0x02 -> printf "data section type 2\n"; get_idx ic && expr ic && vec_bytes ic (get_vec_len ic)
  | _ -> printf "Invalid data item\n"; false

let read_section_body ic w id =
  match id with
  | 0 -> printf "Custom section - unimplemented, skipping\n"; skip_bytes ic (read_section_length ic)
  | 1 -> printf "Type section\n"; read_section ic w read_type
  | 2 -> printf "Import section\n"; read_section ic w read_import
  | 3 -> printf "Function section\n"; read_section ic w read_function
  | 4 -> printf "Table section\n"; read_section ic w read_table
  | 5 -> printf "Memory section"; read_section ic w memory_reader
  | 6 -> printf "Global section\n"; read_section ic w read_global
  | 7 -> printf "Export section\n"; read_section ic w read_export
  | 8 -> printf "Start section\n"; read_start_section ic w
  | 9 -> printf "Element section\n"; read_section ic w element_reader
  | 10 -> printf "Code section\n"; read_section ic w read_code
  | 11 -> printf "Data section\n"; read_section ic w data_reader
  | 12 -> printf "Data count section - unimplemented, skipping\n"; skip_bytes ic (read_section_length ic)
  | _ -> printf "Unknown section, skipping\n"; skip_bytes ic (read_section_length ic)

let read_section_id ic =
  match get_byte ic with
  | id ->
    printf "\n\nSection type: %d\n" id;
    id

let rec read_sections ic w =
  match read_section_id ic with
  | -1 -> true
  | id ->
    read_section_body ic w id
    && read_sections ic w

let parse_wasm ic w =
  read_magic ic
  && read_version ic
  && read_sections ic w

let rec parseFiles filelist =
  match filelist with
  | [] -> true
  | file::files ->
    printf "**** New file: %s\n" file;
      let ic = In_channel.create file in
      let w = Wasm_module.create file in
      match parse_wasm ic w with
      | true -> Wasm_module.print w; parseFiles files 
      | _ -> Wasm_module.print w; false

let () =
  Arg.parse speclist anon_fun usage_msg;
  match parseFiles !input_files with
  | true -> printf "Success!\n"
  | _ -> printf "Fail!\n"
