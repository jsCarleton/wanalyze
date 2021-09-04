open Core
open Wasm_module
(* TODO: 
    - use map instead of coding recursion on lists 
    - use read_ instead of get_ when reading from ic
    - make eprintfs look at verbose flag 
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
      | true -> eprintf "!%X! " x; x
      | _ -> x

let read_magic ic = get_byte ic = 0x00 && get_byte ic = 0x61 && get_byte ic = 0x73 && get_byte ic = 0x6d
let read_version ic = get_byte ic = 0x01 && get_byte ic = 0x00 && get_byte ic = 0x00 && get_byte ic = 0x00

let rec skip_bytes ic n =
  match n with
  | 0 -> true
  | _ -> get_byte ic >= 0 && skip_bytes ic (n-1)

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

let rec sLEB' ic size acc shift: int64 =
  let b = of_int (get_byte ic) in
  match i64land 0xC0L b with
  | 0x80L | 0xC0L-> sLEB' ic size 
                    (i64lor (i64lsl (i64land b 0x7FL) shift) acc) (shift+7)
  | 0x00L ->         i64lor (i64lsl (i64land b 0x7FL) shift) acc
  | 0x40L -> i64lor (i64lor (i64lsl (i64land b 0x7FL) shift) acc) (i64lsl 0xffffffffffffff80L shift)
  | _ -> printf "invalid byte in LEB: %Lx\n" b; 0L

let sLEB ic size : int64 = sLEB' ic size 0L 0

let get_vec_len ic =
  let len = uLEB ic 32 in
    eprintf "vector length: %d" len; len

let xxget_idx ic =
  match get_byte ic with
  | -1 -> eprintf "idx error!\n"; false, -1
  | i -> eprintf "Index: %d " i; true, i

let get_idx ic =
  match get_byte ic with
  | -1 -> eprintf "idx error!\n"; false
  | i -> eprintf "Index: %d " i; true

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
  | 0x70 -> eprintf "funcref"; true
  | 0x6F -> eprintf "externref"; true
  | x -> printf "Invalid reftype %x!" x; false

let memarg ic =
  eprintf "align: %d " (uLEB ic 32);
  eprintf "offset: %d " (uLEB ic 32);
  true

let read_memarg ic bits = 
  let a = uLEB ic 32 in
  {a; o=uLEB ic 32; bits}

let rec instr ic =
let opcode = get_byte ic in
  match opcode with
  (* control instructions *)
  | 0x00 -> eprintf "unreachable "; opcode
  | 0x01 -> eprintf "nop "; opcode
  | 0x02 -> eprintf "block, type:%X" (get_byte ic);
      (	match instr ic with
        | 0x0b -> eprintf "end "; opcode
        | _ -> instr ic
      )
  |	0x03 -> eprintf "loop, type:%X" (get_byte ic);
      (	match instr ic with
        | 0x0b -> eprintf "end "; opcode
        | _ -> instr ic
      )
  |	0x04 -> eprintf "if, type:%X" (get_byte ic);
      (	match instr ic with
        | 0x05 -> eprintf "else ";
          ( match instr ic with
            | 0x0b -> eprintf "end "; opcode
            | _ -> instr ic
          )
        | 0x0b -> eprintf "end "; opcode
        | _ -> instr ic
      )
  | 0x0c -> eprintf "br %x " (get_byte ic); opcode
  | 0x0d -> eprintf "br_if %x " (get_byte ic); opcode
  | 0x0e -> ignore(vec_idx ic (get_byte ic): bool); eprintf "br_table %X" (get_byte ic); opcode
  | 0x0f -> eprintf "return "; opcode
  | 0x10 -> eprintf "call %x " (get_byte ic); opcode
  | 0x11 -> eprintf "call_indirect %x %x " (get_byte ic) (get_byte ic); opcode
  | 0x0b -> eprintf "end "; opcode
  (* reference instructions*)
  | 0xd0 -> eprintf "ref.null "; opcode (* not what the spec says *)
  (* parametric instructions *)
  (* variable instructions*)
  | 0x20 -> eprintf "local.get %x " (uLEB ic 32); opcode
  | 0x21 -> eprintf "local.set %x " (uLEB ic 32); opcode
  | 0x22 -> eprintf "local.tee %x " (uLEB ic 32); opcode
  | 0x23 -> eprintf "global.get %x " (uLEB ic 32); opcode
  | 0x24 -> eprintf "global.set %x " (uLEB ic 32); opcode
  (* table instructions *)
  | 0x25 -> eprintf "table.get %x " (uLEB ic 32); opcode
  | 0x26 -> eprintf "table.set %x " (uLEB ic 32); opcode
  (* memory instructions *)
  | 0x28 -> eprintf "i32.load %d %d " 0 0 (* TODO *); opcode
  | 0x2c -> eprintf "i32.load8_s "; ignore(memarg ic: bool); opcode
  | 0x3a -> eprintf "i32.store 8 "; ignore(memarg ic: bool); opcode
  | 0x3f -> eprintf "memory.size "; opcode (* not what the spec says *)
  | 0x40 -> eprintf "memory grow "; opcode (* not what the spec says *)
  (* numeric instructions *)
  | 0x41 -> eprintf "i32.const %d " (get_i32 ic); opcode
  |	0x42 -> eprintf "i64.const %Ld " (get_i64 ic); opcode
  | 0x43 -> eprintf "f32.const %f " (get_f32 ic); opcode
  | 0x44 -> eprintf "f64.const %f " (get_f64 ic); opcode
  | 0x6a -> eprintf "i32.add "; opcode
  | 0x7d -> eprintf "i64.sub "; opcode
  | 0x7e -> eprintf "i64.mul "; opcode
  | 0xa0 -> eprintf "f64.add "; opcode
  (* unhandled opcode *)
  | _ -> eprintf "unhandled opcode: %x " opcode; -1

let rec expr ic =
  match instr ic with
  | 0x0B -> true
  | -1 -> false
  | _ -> expr ic

(* Sections consisting of vectors of entries *)
let rec read_entries ic n w entry_handler =
  eprintf "section has %d entries left\n" n;
  match n with
  | 0 -> true
  | _ ->
    entry_handler ic w &&
    read_entries ic (n-1) w entry_handler

let read_section_length ic = uLEB ic 32
let read_section ic section entry_handler =
  eprintf "reading section: \n";
  read_section_length ic >= 0 (* discard the section size *)
  && read_entries ic (get_vec_len ic) section entry_handler

(* Type section *)
let valtype ic =
  match get_byte ic with
  | 0 -> eprintf "None "; (true, 0)
  | 0x7f -> eprintf "i32 "; (true, 0x7f)
  | 0x7e -> eprintf "i64 "; (true, 0x7e)
  | 0x7d -> eprintf "f32 "; (true, 0x7d)
  | 0x7c -> eprintf "f64 "; (true, 0x7c)
  | 0x70 -> eprintf "funcref "; (true, 0x70)
  | 0x6f -> eprintf "externref "; (true, 0x6f)
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
  | 0 ->    true, []
  | len ->  get_types ic len []

let get_functype ic =
  (* it seems we need to write it like this to ensure that the order of
     evaluation is correct *)
  let rt1 = get_type_vector ic in
  let rt2 = get_type_vector ic in
  rt1, rt2

let read_type ic w = (get_byte ic = 0x60) && update_type_section w (get_functype ic)

(* Import section *)
let limits ic =
  let limit_type = get_byte ic in
  match limit_type with
  | 0x00 -> eprintf "lower: %d, no upper" (uLEB ic 32); true
  | 0x01 -> eprintf "lower: %d, upper: %d" (uLEB ic 32) (uLEB ic 32); true
  | _ -> eprintf "Invalid limits %x!" limit_type; false

let read_limits ic = 
  let limit_type = get_byte ic in
  match limit_type with
  | 0x00 -> eprintf "lower limit"; Noupper (uLEB ic 32)
  | 0x01 -> eprintf "lower, upper"; Lowerupper ((uLEB ic 32), (uLEB ic 32))
  | _ -> eprintf "Invalid limits %x!" limit_type; Lowerupper (0, 0)

let read_mem_type ic = read_limits ic

let read_reftype ic =
  let x = get_byte ic in
  match x with
  | 0x70 -> eprintf "funcref"; Funcref
  | 0x6F -> eprintf "externref"; Externref
  | x -> printf "Invalid reftype %x!" x; Funcref

let read_table_type ic = 
  let et = read_reftype ic in
  let lim = read_limits ic in
  {et; lim}

let read_mut ic =
  let mut_type = get_byte ic in
  match mut_type with
  | 0x00 -> eprintf "const "; Const
  | 0x01 -> eprintf "var "; Var
  | _ -> eprintf "Invalid mut %x!" mut_type; Const

let read_valtype ic =
  let valtype = get_byte ic in
  match valtype with
  | 0x7f -> Numtype I32
  | 0x7e -> Numtype I64
  | 0x7d -> Numtype F32
  | 0x7c -> Numtype F64
  | 0x70 -> Reftype Funcref
  | 0x6f -> Reftype Externref
  | _ -> printf "Invalid valtype %x" valtype; Numtype I32

let read_globaltype ic = 
  let t = read_valtype ic in
  let m = read_mut ic in
  {t; m}

let read_idx ic = get_byte ic

let read_importdesc ic =
  let importdesc_type = get_byte ic in
  match importdesc_type with
  | 0x00 -> eprintf "func ";    Some (Functype (read_idx ic))
  | 0x01 -> eprintf "table ";   Some (Tabletype (read_table_type ic))
  | 0x02 -> eprintf "mem ";     Some (Memtype (read_mem_type ic))
  | 0x03 -> eprintf "global ";  Some (Globaltype (read_globaltype ic))
  | _ -> printf("Invalid importdesc %x!") importdesc_type; None

let rec get_string ic n =
  match n with
  | 0 -> eprintf " "; true
  | _ -> eprintf "%c" (char_of_int (get_byte ic)); get_string ic (n-1)

let get_name ic =
  match get_byte ic with
  | 0 -> eprintf "name length 0 ";true
  | n -> eprintf "name length %d" n ; get_string ic n

let rec read_string' ic len acc =
  match len with
  | 0 -> acc
  | _ -> read_string' ic (len-1) (List.append acc [Char.escaped (char_of_int (get_byte ic))])

let read_string ic len =
  String.concat ~sep:"" (read_string' ic len [])

let read_name ic =
  let name = read_string ic (get_byte ic) in
  eprintf("name = %s") name; name

let read_import ic w =
  let module_name = read_name ic in
  let import_name = read_name ic in
  let description = read_importdesc ic in
  update_import_section w module_name import_name description

(* Function section *)
let read_function ic w = update_function_section w (xxget_idx ic)

(* Table section *)
let get_table_type ic = reftype ic && limits ic
  
let [@warning "-27"]read_table ic w = get_table_type ic

(* Memory section *)
let get_mem_type ic = limits ic
let [@warning "-27"]read_memory ic w = get_mem_type ic

(* Global section *)
let mut ic =
  let mut_type = get_byte ic in
  match mut_type with
  | 0x00 -> eprintf "const "; true
  | 0x01 -> eprintf "var "; true
  | _ -> eprintf "Invalid mut %x!" mut_type; false

let globaltype ic = (fst (valtype ic)) && mut ic

let [@warning "-27"]read_global ic w = globaltype ic && expr ic

(* Export section *)
let exportdesc ic =
  let exportdesc_type = get_byte ic in
  match exportdesc_type with
  | 0x00 -> eprintf "func"; get_idx ic
  | 0x01 -> eprintf "table"; get_idx ic
  | 0x02 -> eprintf "mem "; get_idx ic
  | 0x03 -> eprintf "global "; get_idx ic
  | _ -> printf("Invalid exportdesc %x!") exportdesc_type; false

let [@warning "-27"]read_export ic w = get_name ic && exportdesc ic

(* Start section *)
let [@warning "-27"]read_start ic w =
  read_section_length ic >= 0 (* discard the section length *)
  && get_idx ic

(* Element section *)
let elemkind ic =
  let elemkind_type = get_byte ic in
  match elemkind_type with
  | 0x00 -> true
  | _ -> printf "Invalid elemkind %x" elemkind_type; false

let rec vec_expr ic n =
  match n with
  | 0 -> true
  | _ ->
    expr ic
    && vec_expr ic (n-1)

let [@warning "-27"]read_element ic w =
  let element_type = get_byte ic in
  match element_type with
  | 0x00 -> expr ic && vec_idx ic (get_byte ic)
  | 0x01 -> elemkind ic && vec_idx ic (get_byte ic)
  | 0x02 -> get_idx ic && expr ic && elemkind ic && vec_idx ic (get_byte ic)
  | 0x03 -> elemkind ic && vec_idx ic (get_byte ic)
  | 0x04 -> expr ic && vec_expr ic (get_byte ic)
  | 0x05 -> reftype ic && vec_expr ic (get_byte ic)
  | 0x06 -> get_idx ic && expr ic && reftype ic && vec_expr ic (get_byte ic)
  | 0x07 -> reftype ic && vec_expr ic (get_byte ic)
  | _ ->  printf "Invalid element item %x" element_type; false

(* Code section *)
let get_type_count ic = uLEB ic 32

let get_local ic =
  match get_type_count ic with
  | 0 -> printf("Type count error!\n"); false
  | n ->
    let type_type = get_byte ic in
    match type_type with
    | 0x7F -> eprintf "%d i32 " n; true
    | 0x7E -> eprintf "%d i64 " n; true
    | 0x7D -> eprintf "%d f32 " n; true
    | 0x7C -> eprintf "%d f64 " n; true
    | _ -> printf "Type error %x!\n" type_type; false

let rec get_locals ic n =
  match n with
  | 0 -> true
  | _ ->
    get_local ic && get_locals ic (n-1)

let read_blocktype ic =
  let t = get_byte ic in
  match t with
  | 0x40 -> Emptytype
  | 0x7F | 0x7E | 0x7D | 0x7C | 0x70 | 0x6F -> Valuetype (valtype_of_int t)
  | _ -> Typeindex t (* TODO this needs to handle the multi-byte integer case *)

let read_vec_valtype ic =
  List.init (get_vec_len ic) ~f:(fun _ -> (valtype_of_int (get_byte ic)))

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

let get_arg ic opcode _ =
   match opcode with
  (* control instructions *)
  | 0x00 -> ("unreachable", EmptyArg)
  | 0x01 -> ("nop", EmptyArg)
  | 0x02 -> ("block", Blocktype (read_blocktype ic))
  | 0x03 -> ("loop", Blocktype (read_blocktype ic))
  | 0x04 -> ("if", Blocktype (read_blocktype ic))
  | 0x05 -> ("else", EmptyArg)
  | 0x0b -> ("end", EmptyArg)
  | 0x0c -> ("br", Labelidx (get_byte ic))
  | 0x0d -> ("br_if",  Labelidx (get_byte ic))
  | 0x0e -> ("br_table", 
      let table = (read_vec_labelidx ic) in
      let index = (read_labelidx ic) in
      BrTable {table; index})
  | 0x0f -> ("return", EmptyArg)
  | 0x10 -> ("call", Funcidx (get_byte ic))
  | 0x11 -> ("call_indirect", CallIndirect {y = (get_byte ic); x = (get_byte ic)})
   (* reference instructions*)
  | 0xd0 -> ("ref.null", EmptyArg) (* not what the spec says *)
  (* parametric instructions *)
  | 0x1a -> ("drop", EmptyArg)
  | 0x1b -> ("select", EmptyArg)
   | 0x1c -> ("select", ValtypeList (read_vec_valtype ic))
  (* variable instructions*)
  | 0x20 -> ("local.get", Localidx (uLEB ic 32))
  | 0x21 -> ("local.set", Localidx (uLEB ic 32))
  | 0x22 -> ("local.tee", Localidx (uLEB ic 32))
  | 0x23 -> ("global.get", Globalidx (uLEB ic 32))
  | 0x24 -> ("global.set", Globalidx (uLEB ic 32))
  (* table instructions *)
  | 0x25 -> ("table.get", Tableidx (uLEB ic 32))
  | 0x26 -> ("table.set", Tableidx (uLEB ic 32))
  (* memory instructions *)
  | 0x28 -> ("i32.load", Memarg (read_memarg ic 32))
  | 0x29 -> ("i64.load", Memarg (read_memarg ic 64))
  | 0x2a -> ("f32.load", Memarg (read_memarg ic 32))
  | 0x2b -> ("f64.load", Memarg (read_memarg ic 64))
  | 0x2c -> ("i32.load8_s", Memarg (read_memarg ic 8))
  | 0x2d -> ("i32.load8_u", Memarg (read_memarg ic 8))
  | 0x2e -> ("i32.load16_s", Memarg (read_memarg ic 16))
  | 0x2f -> ("i32.load16_u", Memarg (read_memarg ic 16))
  | 0x30 -> ("i64.load8_s", Memarg (read_memarg ic 8))
  | 0x31 -> ("i64.load8_u", Memarg (read_memarg ic 8))
  | 0x32 -> ("i64.load16_s", Memarg (read_memarg ic 16))
  | 0x33 -> ("i64.load16_u", Memarg (read_memarg ic 16))
  | 0x34 -> ("i64.load32_s", Memarg (read_memarg ic 32))
  | 0x35 -> ("i64.load32_u", Memarg (read_memarg ic 32))
  | 0x36 -> ("i32.store", Memarg (read_memarg ic 32))
  | 0x37 -> ("i64.store", Memarg (read_memarg ic 64))
  | 0x38 -> ("f32.store", Memarg (read_memarg ic 32))
  | 0x39 -> ("f64.store", Memarg (read_memarg ic 64))
  | 0x3a -> ("i32.store8", Memarg (read_memarg ic 8))
  | 0x3b -> ("i32.store16", Memarg (read_memarg ic 16))
  | 0x3c -> ("i64.store8", Memarg (read_memarg ic 8))
  | 0x3d -> ("i64.store16", Memarg (read_memarg ic 16))
  | 0x3e -> ("i64.store32", Memarg (read_memarg ic 32))
  | 0x3f -> ("memory.size", EmptyArg) (* not what the spec says *)
  | 0x40 -> ("memory grow", EmptyArg) (* not what the spec says *)
  (* numeric instructions *)
  | 0x41 -> ("i32.const", I32value (get_i32 ic))
  |	0x42 -> ("i64.const", I64value (sLEB ic 64))
  | 0x43 -> ("f32.const", F32value (get_f32 ic))
  | 0x44 -> ("f64.const", F64value (get_f64 ic))

  | 0x45 -> ("i32.eqz", EmptyArg)
  | 0x46 -> ("i32.eq", EmptyArg)
  | 0x47 -> ("i32.ne", EmptyArg)
  | 0x48 -> ("i32.lt_s", EmptyArg)
  | 0x49 -> ("i32.lt_u", EmptyArg)
  | 0x4a -> ("i32.gt_s", EmptyArg)
  | 0x4b -> ("i32.gt_u", EmptyArg)
  | 0x4c -> ("i32.le_s", EmptyArg)
  | 0x4d -> ("i32.le_u", EmptyArg)
  | 0x4e -> ("i32.ge_s", EmptyArg)
  | 0x4f -> ("i32.ge_u", EmptyArg)

  | 0x50 -> ("i64.eqz", EmptyArg)
  | 0x51 -> ("i64.eq", EmptyArg)
  | 0x52 -> ("i64.ne", EmptyArg)
  | 0x53 -> ("i64.lt_s", EmptyArg)
  | 0x54 -> ("i64.lt_u", EmptyArg)
  | 0x55 -> ("i64.gt_s", EmptyArg)
  | 0x56 -> ("i64.gt_u", EmptyArg)
  | 0x57 -> ("i64.le_s", EmptyArg)
  | 0x58 -> ("i64.le_u", EmptyArg)
  | 0x59 -> ("i64.ge_s", EmptyArg)
  | 0x5a -> ("i64.ge_u", EmptyArg)

  | 0x5b -> ("f32.eq", EmptyArg)
  | 0x5c -> ("f32.ne", EmptyArg)
  | 0x5d -> ("f32.lt", EmptyArg)
  | 0x5e -> ("f32.gt", EmptyArg)
  | 0x5f -> ("f32.le", EmptyArg)
  | 0x60 -> ("f32.ge", EmptyArg)

  | 0x61 -> ("f64.eq", EmptyArg)
  | 0x62 -> ("f64.ne", EmptyArg)
  | 0x63 -> ("f64.lt", EmptyArg)
  | 0x64 -> ("f64.gt", EmptyArg)
  | 0x65 -> ("f64.le", EmptyArg)
  | 0x66 -> ("f64.ge", EmptyArg)

  | 0x67 -> ("i32.clz", EmptyArg)
  | 0x68 -> ("i32.ctz", EmptyArg)
  | 0x69 -> ("i32.popcnt", EmptyArg)
  | 0x6a -> ("i32.add", EmptyArg)
  | 0x6b -> ("i32.sub", EmptyArg)
  | 0x6c -> ("i32.mul", EmptyArg)
  | 0x6d -> ("i32.div_s", EmptyArg)
  | 0x6e -> ("i32.div_u", EmptyArg)
  | 0x6f -> ("i32.rem_s", EmptyArg)
  | 0x70 -> ("i32.rem_u", EmptyArg)
  | 0x71 -> ("i32.and", EmptyArg)
  | 0x72 -> ("i32.or", EmptyArg)
  | 0x73 -> ("i32.xor", EmptyArg)
  | 0x74 -> ("i32.shl", EmptyArg)
  | 0x75 -> ("i32.shr_s", EmptyArg)
  | 0x76 -> ("i32.shr_u", EmptyArg)
  | 0x77 -> ("i32.rotl", EmptyArg)
  | 0x78 -> ("i32.rotr", EmptyArg)

  | 0x79 -> ("i64.clz", EmptyArg)
  | 0x7a -> ("i64.ctz", EmptyArg)
  | 0x7b -> ("i64.popcnt", EmptyArg)
  | 0x7c -> ("i64.add", EmptyArg)
  | 0x7d -> ("i64.sub", EmptyArg)
  | 0x7e -> ("i64.mul", EmptyArg)
  | 0x7f -> ("i64.div_s", EmptyArg)
  | 0x80 -> ("i64.div_u", EmptyArg)
  | 0x81 -> ("i64.rem_s", EmptyArg)
  | 0x82 -> ("i64.rem_u", EmptyArg)
  | 0x83 -> ("i64.and", EmptyArg)
  | 0x84 -> ("i64.or", EmptyArg)
  | 0x85 -> ("i64.xor", EmptyArg)
  | 0x86 -> ("i64.shl", EmptyArg)
  | 0x87 -> ("i64.shr_s", EmptyArg)
  | 0x88 -> ("i64.shr_u", EmptyArg)
  | 0x89 -> ("i64.rotl", EmptyArg)
  | 0x8a -> ("i64.rotr", EmptyArg)

  | 0x8b -> ("f32.abs", EmptyArg)
  | 0x8c -> ("f32.neg", EmptyArg)
  | 0x8d -> ("f32.ceil", EmptyArg)
  | 0x8e -> ("f32.floor", EmptyArg)
  | 0x8f -> ("f32.trunc", EmptyArg)
  | 0x90 -> ("f32.nearest", EmptyArg)
  | 0x91 -> ("f32.sqrt", EmptyArg)
  | 0x92 -> ("f32.add", EmptyArg)
  | 0x93 -> ("f32.sub", EmptyArg)
  | 0x94 -> ("f32.mul", EmptyArg)
  | 0x95 -> ("f32.div", EmptyArg)
  | 0x96 -> ("f32.min", EmptyArg)
  | 0x97 -> ("f32.max", EmptyArg)
  | 0x98 -> ("f32.copysign", EmptyArg)

  | 0x99 -> ("f64.abs", EmptyArg)
  | 0x9a -> ("f64.neg", EmptyArg)
  | 0x9b -> ("f64.ceil", EmptyArg)
  | 0x9c -> ("f64.floor", EmptyArg)
  | 0x9d -> ("f64.trunc", EmptyArg)
  | 0x9e -> ("f64.nearest", EmptyArg)
  | 0x9f -> ("f64.sqrt", EmptyArg)
  | 0xa0 -> ("f64.add", EmptyArg)
  | 0xa1 -> ("f64.sub", EmptyArg)
  | 0xa2 -> ("f64.mul", EmptyArg)
  | 0xa3 -> ("f64.div", EmptyArg)
  | 0xa4 -> ("f64.min", EmptyArg)
  | 0xa5 -> ("f64.max", EmptyArg)
  | 0xa6 -> ("f64.copysign", EmptyArg)

  | 0xa7 -> ("i32.wrap_i64", EmptyArg)
  | 0xa8 -> ("i32.trunc_f32_s", EmptyArg)
  | 0xa9 -> ("i32.trunc_f32_u", EmptyArg)
  | 0xaa -> ("i32.trunc_f64_s", EmptyArg)
  | 0xab -> ("i32.trunc_f64_u", EmptyArg)
  | 0xac -> ("i64.extend_i32_s", EmptyArg)
  | 0xad -> ("i64.extend_i32_u", EmptyArg)
  | 0xae -> ("i64.trunc_f32_s", EmptyArg)
  | 0xaf -> ("i64.trunc_f32_u", EmptyArg)
  | 0xb0 -> ("i64.trunc_f64_s", EmptyArg)
  | 0xb1 -> ("i64.trunc_f64_u", EmptyArg)
  | 0xb2 -> ("f32.convert_i32_s", EmptyArg)
  | 0xb3 -> ("f32.convert_i32_u", EmptyArg)
  | 0xb4 -> ("f32.convert_i64_s", EmptyArg)
  | 0xb5 -> ("f32.convert_i64_u", EmptyArg)
  | 0xb6 -> ("f32.demote_f64", EmptyArg)
  | 0xb7 -> ("f64.convert_i32_s", EmptyArg)
  | 0xb8 -> ("f64.convert_i32_u", EmptyArg)
  | 0xb9 -> ("f64.convert_i64_s", EmptyArg)
  | 0xba -> ("f64.convert_i64_u", EmptyArg)
  | 0xbb -> ("f64.promote_f64", EmptyArg)
  | 0xbc -> ("f32.reinterpret_f32", EmptyArg)
  | 0xbd -> ("i64.reinterpret_f64", EmptyArg)
  | 0xbe -> ("f32.reinterpret_i32", EmptyArg)
  | 0xbf -> ("f64.reinterpret_i64", EmptyArg)

  | 0xc0 -> ("i32.extend_8_s", EmptyArg)
  | 0xc1 -> ("i32.extend_16_s", EmptyArg)
  | 0xc2 -> ("i64.extend_8_s", EmptyArg)
  | 0xc3 -> ("i64.extend_16_s", EmptyArg)
  | 0xc4 -> ("i64.extend_32_s", EmptyArg)

  | 0xFC -> ("ixx.trunc_sat_fxx_x", TruncSat (get_i32 ic)) (* TODO a polymorphic opcode that needs interpretation to be printed correctly *)

  (* unhandled opcode *)
  | _ -> (sprintf "unknown opcode: %x" opcode, EmptyArg)

let read_valtype ic = valtype_of_int (get_byte ic)
let xxget_local ic = (fun _ -> eprintf "local \n"; 
  let n = uLEB ic 32 in
  {n; v = (read_valtype ic)})

let rec get_instr_list ic nesting acc_instr acc_labels =
  let opcode = get_byte ic in
  let (opname, arg) = (get_arg ic opcode get_instr_list) in
  match opcode with
  (* end *)
  | 0x0b ->
      ( match nesting with
        | 0 -> List.append acc_instr [{opcode; opname; arg; nesting=nesting-1}], acc_labels
        | _ -> get_instr_list ic  (nesting-1)  (List.append acc_instr [{opcode; opname; arg; nesting=nesting-1}]) acc_labels
      )
  (* block, loop, if *)
  | 0x02 | 0x03 | 0x04 -> get_instr_list ic (nesting+1) (List.append acc_instr [{opcode; opname; arg; nesting}]) acc_labels
  (* else, all others *)
  | 0x05 ->  get_instr_list ic  nesting (List.append acc_instr [{opcode; opname; arg; nesting=nesting-1}]) acc_labels
  (* all others *)
  | _ ->  get_instr_list ic nesting (List.append acc_instr [{opcode; opname; arg; nesting}]) acc_labels

let read_code ic w =
  (uLEB ic 32) >= 0 (* we discard the size *)
  &&
  (* func *)
  let len = get_vec_len ic in
  let locals = List.init len ~f:(xxget_local ic) in
  let (e, labels) = get_instr_list ic 0 [] [] in
  update_code_section w locals e labels;
  true

(* Data section *)
let rec vec_bytes ic n =
  match n with
  | 0 -> true
  | _ -> eprintf "%X " (get_byte ic); vec_bytes ic (n-1)

let [@warning "-27"]read_data ic w =
  let data_item_type = get_byte ic in
  match data_item_type with
  | 0x00 -> eprintf "data section type 0\n"; expr ic && vec_bytes ic (get_vec_len ic)
  | 0x01 -> eprintf "data section type 1\n"; vec_bytes ic (get_vec_len ic)
  | 0x02 -> eprintf "data section type 2\n"; get_idx ic && expr ic && vec_bytes ic (get_vec_len ic)
  | _ -> printf "Invalid data item %x\n" data_item_type; false

(* Section reader *)
let read_section_body ic w id =
  match id with
  | 0 -> eprintf "Custom section - unimplemented, skipping\n"; skip_bytes ic (read_section_length ic)
  | 1 -> eprintf "Type section\n";      read_section ic w read_type
  | 2 -> eprintf "Import section\n";    read_section ic w read_import
  | 3 -> eprintf "Function section\n";  read_section ic w read_function
  | 4 -> eprintf "Table section\n";     read_section ic w read_table
  | 5 -> eprintf "Memory section";      read_section ic w read_memory
  | 6 -> eprintf "Global section\n";    read_section ic w read_global
  | 7 -> eprintf "Export section\n";    read_section ic w read_export
  | 8 -> eprintf "Start section\n";     read_start ic w
  | 9 -> eprintf "Element section\n";   read_section ic w read_element
  | 10 -> eprintf "Code section\n";     read_section ic w read_code
  | 11 -> eprintf "Data section\n";     read_section ic w read_data
  | 12 -> eprintf "Data count section - unimplemented, skipping\n"; skip_bytes ic (read_section_length ic)
  | _ -> eprintf "Unknown section, skipping\n"; skip_bytes ic (read_section_length ic)

let read_section_id ic =
  match get_byte ic with
  | id -> eprintf "\n\nSection type: %d\n" id; id


(* wasm Module reader *)
let rec read_sections ic w =
  match read_section_id ic with
  | -1 -> true
  | id -> read_section_body ic w id && read_sections ic w

let parse_wasm ic w =
  read_magic ic && read_version ic && read_sections ic w

let rec parseFiles filelist =
  match filelist with
  | [] -> true
  | file::files ->
      eprintf "**** New file: %s\n" file;
      let ic = In_channel.create file in
      let w  = Wasm_module.create file in
      match parse_wasm ic w with
      | true  -> Wasm_module.print w; parseFiles files 
      | _     -> Wasm_module.print w; false

let () =
  Arg.parse speclist anon_fun usage_msg;
  match parseFiles !input_files with
  | true  -> eprintf "Success!\n"
  | _     -> eprintf "Fail!\n"
