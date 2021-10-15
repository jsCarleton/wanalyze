open Core
open Wasm_module
open Reduce
(* TODO: 
    - make eprintfs look at verbose flag 
    - add validation of indices (e.g. functions, types)*)

let usage_msg = "readBin -verbose [-f n] <file1> <file2> ..."
let verbose = ref false
let fn_arg = ref (-1)
let input_files = ref []
let speclist =
    [("-verbose", Arg.Set verbose, "Output debug information");
    ("-f", Arg.Set_int fn_arg, "Analyze function specified by argument")]
let anon_fun filename =
       input_files := filename::!input_files

let read_byte ic : int =
  let b = In_channel.input_byte ic in
    match b with
    | None -> -1
    | Some x -> 
      match !verbose with
      | true -> eprintf "!%X!\n" x; x
      | _ -> x

let read_4bytes ic =
  (read_byte ic) lor ((read_byte ic) lsl 8) lor ((read_byte ic) lsl 16) lor ((read_byte ic) lsl 24)
let read_magic ic = 
  let magic =  read_4bytes ic in
  eprintf "Magic:   %8.8x\n" magic;
  magic = 0x0061736d
let read_version ic = 
  let version = (read_byte ic) lor ((read_byte ic) lsl 8) lor ((read_byte ic) lsl 16) lor ((read_byte ic) lsl 24) in
  eprintf "Version: %8.8x\n" version;
  version =0x01000000

let rec skip_bytes ic n =
  match n with
  | 0 -> true
  | _ -> read_byte ic >= 0 && skip_bytes ic (n-1)
  
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
  let n = read_byte ic in
  match (n < (1 lsl 7)) && (n < (1 lsl size)) with
  | true -> n
  | _ -> (1 lsl 7) * (uLEB ic (size-7)) + (n - (1 lsl 7))

let rec sLEB' ic size acc shift b: int64 =
  match i64land 0xC0L b with
  | 0x80L | 0xC0L-> sLEB' ic size 
                    (i64lor (i64lsl (i64land b 0x7FL) shift) acc) (shift+7) (of_int (read_byte ic))
  | 0x00L ->         i64lor (i64lsl (i64land b 0x7FL) shift) acc
  | 0x40L -> i64lor (i64lor (i64lsl (i64land b 0x7FL) shift) acc) (i64lsl 0xffffffffffffff80L shift)
  | _ -> printf "invalid byte in LEB: %Lx\n" b; 0L

let sLEB ic size : int64 = sLEB' ic size 0L 0 (of_int (read_byte ic))

let read_vec_len ic = uLEB ic 32
      
let read_bytes ic : bytes =
  let len = read_vec_len ic in
  Bytes.init len ~f:(fun _ -> Char.of_int_exn (read_byte ic))

 let read_i32 ic = 
  match Int64.to_int (sLEB ic 32) with
  | None -> -1
  | Some x -> x

let read_i32' ic b = 
    match Int64.to_int (sLEB' ic 32 0L 0 (of_int b)) with
    | None -> -1
    | Some x -> x

let rec bytes_to_i64' ic n acc : int64 =
  match n with
  | 0 -> acc
  | _ -> bytes_to_i64' ic (n-1) (i64add (i64lsl acc 8) (Int64.of_int (read_byte ic)))
let bytes_to_i64 ic n : int64 = bytes_to_i64' ic n 0L

let read_f32 ic = Int64.float_of_bits (Int64.shift_left (bytes_to_i64 ic 4) 32)
let read_f64 ic = Int64.float_of_bits (bytes_to_i64 ic 8)
                      
let reftype ic =
  match read_byte ic with
  | 0x70 -> eprintf "funcref"; true
  | 0x6F -> eprintf "externref"; true
  | x -> printf "Invalid reftype %x!" x; false

let read_memarg ic bits = 
  let a = uLEB ic 32 in
  {a; o=uLEB ic 32; bits}

let rec read_vec' ic n reader acc =
  match n with
  | 0 -> acc
  | _ -> read_vec' ic (n-1) reader (acc@[reader ic])
let read_vec ic reader = read_vec' ic (read_vec_len ic) reader []

(* Sections consisting of vectors of entries *)
let rec read_entries ic n w entry_handler =
  eprintf "%s - section has %d entries left\n" (Time.to_sec_string ~zone:Time.Zone.utc (Time.now ())) n;
  match n with
  | 0 -> true
  | _ ->
    entry_handler ic w &&
    read_entries ic (n-1) w entry_handler

let read_section_length ic = uLEB ic 32
let read_section ic section entry_handler =
  eprintf "reading section: \n";
  read_section_length ic >= 0 (* discard the section size *)
  && read_entries ic (read_vec_len ic) section entry_handler

(* Type section *)
let read_valtype ic =
  match read_byte ic with
  | 0 -> eprintf "None "; 0
  | 0x7f -> eprintf "i32 "; 0x7f
  | 0x7e -> eprintf "i64 "; 0x7e
  | 0x7d -> eprintf "f32 "; 0x7d
  | 0x7c -> eprintf "f64 "; 0x7c
  | 0x70 -> eprintf "funcref "; 0x70
  | 0x6f -> eprintf "externref "; 0x6f
  | x -> printf "invalid valtype %x" x; -1
  
let read_functype ic =
  (* it seems we need to write it like this to ensure that the order of
     evaluation is correct *)
  let rt1 = read_vec ic read_valtype in
  let rt2 = read_vec ic read_valtype in
  rt1, rt2

let read_type ic w = (read_byte ic = 0x60) && update_type_section w (read_functype ic)

(* Import section *)
let read_limits ic = 
  let limit_type = read_byte ic in
  match limit_type with
  | 0x00 -> eprintf "lower limit"; Noupper (uLEB ic 32)
  | 0x01 -> eprintf "lower, upper"; Lowerupper ((uLEB ic 32), (uLEB ic 32))
  | _ -> failwith (String.concat ["Invalid limit type: " ; string_of_int limit_type])

let read_mem_type ic = read_limits ic

let read_reftype ic =
  let x = read_byte ic in
  match x with
  | 0x70 -> eprintf "funcref"; Funcref
  | 0x6F -> eprintf "externref"; Externref
  | x -> printf "Invalid reftype %x!" x; Funcref

let read_tabletype ic = 
  let et = read_reftype ic in
  let lim = read_limits ic in
  {et; lim}

let read_mut ic =
  let mut_type = read_byte ic in
  match mut_type with
  | 0x00 -> eprintf "const "; Const
  | 0x01 -> eprintf "var "; Var
  | _ -> eprintf "Invalid mut %x!" mut_type; Const

let read_valtype ic =
  let valtype = read_byte ic in
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

let read_idx ic = uLEB ic 32

let read_importdesc ic =
  let importdesc_type = read_byte ic in
  match importdesc_type with
  | 0x00 -> eprintf "func ";    Some (Functype (read_idx ic))
  | 0x01 -> eprintf "table ";   Some (Tabletype (read_tabletype ic))
  | 0x02 -> eprintf "mem ";     Some (Memtype (read_mem_type ic))
  | 0x03 -> eprintf "global ";  Some (Globaltype (read_globaltype ic))
  | _ -> printf("Invalid importdesc %x!") importdesc_type; None

let rec read_string' ic len acc =
  match len with
  | 0 -> acc
  | _ ->
    let c = [Char.escaped (char_of_int (read_byte ic))] in
    read_string' ic (len-1) (acc@c)

let read_string ic len =
  String.concat ~sep:"" (read_string' ic len [])

let read_name ic =
  let name = read_string ic (read_byte ic) in
  eprintf("name = %s ") name; name

let read_import ic w =
  let module_name = read_name ic in
  let import_name = read_name ic in
  let description = read_importdesc ic in
  update_import_section w module_name import_name description

(* Function section *)
let read_function ic w = update_function_section w (read_idx ic)

(* Table section *)
let read_table ic w = update_table_section w (read_tabletype ic)

(* Memory section *)
let read_mem_type ic = read_limits ic
let read_memory ic w = update_memory_section w (read_mem_type ic)

(* Global section *)
let read_blocktype ic =
  let t = read_byte ic in
  match t with
  | 0x40 -> Emptytype
  | 0x7F | 0x7E | 0x7D | 0x7C | 0x70 | 0x6F -> Valuetype (valtype_of_int t)
  | _ -> Typeindex (read_i32' ic t)

let read_vec_valtype ic =
  List.init (read_vec_len ic) ~f:(fun _ -> (valtype_of_int (read_byte ic)))

let read_labelidx ic = uLEB ic 32
let rec read_vec_labelidx' ic len acc =
  match len with
  | 0 -> acc
  | _ ->
      let label = read_labelidx ic in
      read_vec_labelidx' ic (len-1) acc@[label]
let read_vec_labelidx ic =
  read_vec_labelidx' ic (read_vec_len ic) []

let read_instr ic opcode _ =
   match opcode with
  (* control instructions *)
  | 0x00 -> ("unreachable", EmptyArg, Control)
  | 0x01 -> ("nop", EmptyArg, Control)
  | 0x02 -> ("block", Blocktype (read_blocktype ic), Control)
  | 0x03 -> ("loop", Blocktype (read_blocktype ic), Control)
  | 0x04 -> ("if", Blocktype (read_blocktype ic), Control)
  | 0x05 -> ("else", EmptyArg, Control)
  | 0x0b -> ("end", EmptyArg, Control)
  | 0x0c -> ("br", Labelidx (read_idx ic), Control)
  | 0x0d -> ("br_if",  Labelidx (read_idx ic), Control)
  | 0x0e -> ("br_table", 
      (let table = (read_vec_labelidx ic) in let index = (read_labelidx ic) in
       BrTable {table; index}), Control)
  | 0x0f -> ("return", EmptyArg, Control)
  | 0x10 -> ("call", Funcidx (read_idx ic), Control)
  | 0x11 -> ("call_indirect", 
      (let y = read_idx ic in
       let x = read_idx ic in
       CallIndirect {y; x}), Control)
   (* reference instructions*)
  | 0xd0 -> ("ref.null", EmptyArg, Reference) (* TODO not what the spec says *)
  (* parametric instructions *)
  | 0x1a -> ("drop", EmptyArg, Parametric)
  | 0x1b -> ("select", EmptyArg, Parametric)
  | 0x1c -> ("select", ValtypeList (read_vec_valtype ic), Parametric)
  (* variable instructions*)
  | 0x20 -> ("local.get", Localidx (uLEB ic 32), VariableGL)
  | 0x21 -> ("local.set", Localidx (uLEB ic 32), VariableSL)
  | 0x22 -> ("local.tee", Localidx (uLEB ic 32), VariableTL)
  | 0x23 -> ("global.get", Globalidx (uLEB ic 32), VariableGG)
  | 0x24 -> ("global.set", Globalidx (uLEB ic 32), VariableSG)
  (* table instructions *)
  | 0x25 -> ("table.get", Tableidx (uLEB ic 32), Table)
  | 0x26 -> ("table.set", Tableidx (uLEB ic 32), Table)
  (* memory instructions *)
  | 0x28 -> ("i32.load", Memarg (read_memarg ic 32), MemoryL)
  | 0x29 -> ("i64.load", Memarg (read_memarg ic 64), MemoryL)
  | 0x2a -> ("f32.load", Memarg (read_memarg ic 32), MemoryL)
  | 0x2b -> ("f64.load", Memarg (read_memarg ic 64), MemoryL)
  | 0x2c -> ("i32.load8_s", Memarg (read_memarg ic 8), MemoryL)
  | 0x2d -> ("i32.load8_u", Memarg (read_memarg ic 8), MemoryL)
  | 0x2e -> ("i32.load16_s", Memarg (read_memarg ic 16), MemoryL)
  | 0x2f -> ("i32.load16_u", Memarg (read_memarg ic 16), MemoryL)
  | 0x30 -> ("i64.load8_s", Memarg (read_memarg ic 8), MemoryL)
  | 0x31 -> ("i64.load8_u", Memarg (read_memarg ic 8), MemoryL)
  | 0x32 -> ("i64.load16_s", Memarg (read_memarg ic 16), MemoryL)
  | 0x33 -> ("i64.load16_u", Memarg (read_memarg ic 16), MemoryL)
  | 0x34 -> ("i64.load32_s", Memarg (read_memarg ic 32), MemoryL)
  | 0x35 -> ("i64.load32_u", Memarg (read_memarg ic 32), MemoryL)
  | 0x36 -> ("i32.store", Memarg (read_memarg ic 32), MemoryS)
  | 0x37 -> ("i64.store", Memarg (read_memarg ic 64), MemoryS)
  | 0x38 -> ("f32.store", Memarg (read_memarg ic 32), MemoryS)
  | 0x39 -> ("f64.store", Memarg (read_memarg ic 64), MemoryS)
  | 0x3a -> ("i32.store8", Memarg (read_memarg ic 8), MemoryS)
  | 0x3b -> ("i32.store16", Memarg (read_memarg ic 16), MemoryS)
  | 0x3c -> ("i64.store8", Memarg (read_memarg ic 8), MemoryS)
  | 0x3d -> ("i64.store16", Memarg (read_memarg ic 16), MemoryS)
  | 0x3e -> ("i64.store32", Memarg (read_memarg ic 32), MemoryS)
  | 0x3f -> ("memory.size", EmptyArg, MemoryM) (* TODO not what the spec says *)
  | 0x40 -> ("memory grow", EmptyArg, MemoryM) (* TODO not what the spec says *)
  (* numeric instructions *)
  | 0x41 -> ("i32.const", I32value (read_i32 ic), Constop)
  |	0x42 -> ("i64.const", I64value (sLEB ic 64), Constop)
  | 0x43 -> ("f32.const", F32value (read_f32 ic), Constop)
  | 0x44 -> ("f64.const", F64value (read_f64 ic), Constop)

  | 0x45 -> ("i32.eqz", EmptyArg, Testop)
  | 0x46 -> ("i32.eq", EmptyArg, Relop "==")
  | 0x47 -> ("i32.ne", EmptyArg, Relop "!=")
  | 0x48 -> ("i32.lt_s", EmptyArg, Relop "<")
  | 0x49 -> ("i32.lt_u", EmptyArg, Relop "<")
  | 0x4a -> ("i32.gt_s", EmptyArg, Relop ">")
  | 0x4b -> ("i32.gt_u", EmptyArg, Relop ">")
  | 0x4c -> ("i32.le_s", EmptyArg, Relop "<=")
  | 0x4d -> ("i32.le_u", EmptyArg, Relop "<=")
  | 0x4e -> ("i32.ge_s", EmptyArg, Relop ">=")
  | 0x4f -> ("i32.ge_u", EmptyArg, Relop ">=")

  | 0x50 -> ("i64.eqz", EmptyArg, Testop)
  | 0x51 -> ("i64.eq", EmptyArg, Relop "==")
  | 0x52 -> ("i64.ne", EmptyArg, Relop "!=")
  | 0x53 -> ("i64.lt_s", EmptyArg, Relop "<")
  | 0x54 -> ("i64.lt_u", EmptyArg, Relop "<")
  | 0x55 -> ("i64.gt_s", EmptyArg, Relop ">")
  | 0x56 -> ("i64.gt_u", EmptyArg, Relop ">")
  | 0x57 -> ("i64.le_s", EmptyArg, Relop "<=")
  | 0x58 -> ("i64.le_u", EmptyArg, Relop "<=")
  | 0x59 -> ("i64.ge_s", EmptyArg, Relop ">=")
  | 0x5a -> ("i64.ge_u", EmptyArg, Relop ">=")

  | 0x5b -> ("f32.eq", EmptyArg, Relop "==")
  | 0x5c -> ("f32.ne", EmptyArg, Relop "!=")
  | 0x5d -> ("f32.lt", EmptyArg, Relop "<")
  | 0x5e -> ("f32.gt", EmptyArg, Relop ">")
  | 0x5f -> ("f32.le", EmptyArg, Relop "<=")
  | 0x60 -> ("f32.ge", EmptyArg, Relop ">")

  | 0x61 -> ("f64.eq", EmptyArg, Relop "==")
  | 0x62 -> ("f64.ne", EmptyArg, Relop "!=")
  | 0x63 -> ("f64.lt", EmptyArg, Relop "<")
  | 0x64 -> ("f64.gt", EmptyArg, Relop ">")
  | 0x65 -> ("f64.le", EmptyArg, Relop "<=")
  | 0x66 -> ("f64.ge", EmptyArg, Relop ">=")

  | 0x67 -> ("i32.clz", EmptyArg, Unop)
  | 0x68 -> ("i32.ctz", EmptyArg, Unop)
  | 0x69 -> ("i32.popcnt", EmptyArg, Unop)
  | 0x6a -> ("i32.add", EmptyArg, Binop "+")
  | 0x6b -> ("i32.sub", EmptyArg, Binop "-")
  | 0x6c -> ("i32.mul", EmptyArg, Binop "*")
  | 0x6d -> ("i32.div_s", EmptyArg, Binop "/s")
  | 0x6e -> ("i32.div_u", EmptyArg, Binop "/u")
  | 0x6f -> ("i32.rem_s", EmptyArg, Binop "rem_s")
  | 0x70 -> ("i32.rem_u", EmptyArg, Binop "rem_u")
  | 0x71 -> ("i32.and", EmptyArg, Binop "&&")
  | 0x72 -> ("i32.or", EmptyArg, Binop "||")
  | 0x73 -> ("i32.xor", EmptyArg, Binop "xor")
  | 0x74 -> ("i32.shl", EmptyArg, Binop "shl")
  | 0x75 -> ("i32.shr_s", EmptyArg, Binop "shr_s")
  | 0x76 -> ("i32.shr_u", EmptyArg, Binop "shr_u")
  | 0x77 -> ("i32.rotl", EmptyArg, Binop "rotl")
  | 0x78 -> ("i32.rotr", EmptyArg, Binop "rotr")

  | 0x79 -> ("i64.clz", EmptyArg, Unop)
  | 0x7a -> ("i64.ctz", EmptyArg, Unop)
  | 0x7b -> ("i64.popcnt", EmptyArg, Unop)
  | 0x7c -> ("i64.add", EmptyArg, Binop "+")
  | 0x7d -> ("i64.sub", EmptyArg, Binop "-")
  | 0x7e -> ("i64.mul", EmptyArg, Binop "*")
  | 0x7f -> ("i64.div_s", EmptyArg, Binop "/s")
  | 0x80 -> ("i64.div_u", EmptyArg, Binop "/u")
  | 0x81 -> ("i64.rem_s", EmptyArg, Binop "rem_s")
  | 0x82 -> ("i64.rem_u", EmptyArg, Binop "rem_u")
  | 0x83 -> ("i64.and", EmptyArg, Binop "&&")
  | 0x84 -> ("i64.or", EmptyArg, Binop "||")
  | 0x85 -> ("i64.xor", EmptyArg, Binop "xor")
  | 0x86 -> ("i64.shl", EmptyArg, Binop "shl")
  | 0x87 -> ("i64.shr_s", EmptyArg, Binop "shr_s")
  | 0x88 -> ("i64.shr_u", EmptyArg, Binop "shr_u")
  | 0x89 -> ("i64.rotl", EmptyArg, Binop "rotl")
  | 0x8a -> ("i64.rotr", EmptyArg, Binop "rotr")

  | 0x8b -> ("f32.abs", EmptyArg, Unop)
  | 0x8c -> ("f32.neg", EmptyArg, Unop)
  | 0x8d -> ("f32.ceil", EmptyArg, Unop)
  | 0x8e -> ("f32.floor", EmptyArg, Unop)
  | 0x8f -> ("f32.trunc", EmptyArg, Unop)
  | 0x90 -> ("f32.nearest", EmptyArg, Unop)
  | 0x91 -> ("f32.sqrt", EmptyArg, Unop)
  | 0x92 -> ("f32.add", EmptyArg, Binop "+")
  | 0x93 -> ("f32.sub", EmptyArg, Binop "-")
  | 0x94 -> ("f32.mul", EmptyArg, Binop "*")
  | 0x95 -> ("f32.div", EmptyArg, Binop "div")
  | 0x96 -> ("f32.min", EmptyArg, Binop "min")
  | 0x97 -> ("f32.max", EmptyArg, Binop "max")
  | 0x98 -> ("f32.copysign", EmptyArg, Binop "copysign")

  | 0x99 -> ("f64.abs", EmptyArg, Unop)
  | 0x9a -> ("f64.neg", EmptyArg, Unop)
  | 0x9b -> ("f64.ceil", EmptyArg, Unop)
  | 0x9c -> ("f64.floor", EmptyArg, Unop)
  | 0x9d -> ("f64.trunc", EmptyArg, Unop)
  | 0x9e -> ("f64.nearest", EmptyArg, Unop)
  | 0x9f -> ("f64.sqrt", EmptyArg, Unop)
  | 0xa0 -> ("f64.add", EmptyArg, Binop "+")
  | 0xa1 -> ("f64.sub", EmptyArg, Binop "-")
  | 0xa2 -> ("f64.mul", EmptyArg, Binop "*")
  | 0xa3 -> ("f64.div", EmptyArg, Binop "/")
  | 0xa4 -> ("f64.min", EmptyArg, Binop "min")
  | 0xa5 -> ("f64.max", EmptyArg, Binop "max")
  | 0xa6 -> ("f64.copysign", EmptyArg, Binop "copysign")

  | 0xa7 -> ("i32.wrap_i64", EmptyArg, Cvtop)
  | 0xa8 -> ("i32.trunc_f32_s", EmptyArg, Unop)
  | 0xa9 -> ("i32.trunc_f32_u", EmptyArg, Unop)
  | 0xaa -> ("i32.trunc_f64_s", EmptyArg, Unop)
  | 0xab -> ("i32.trunc_f64_u", EmptyArg, Unop)
  | 0xac -> ("i64.extend_i32_s", EmptyArg, Cvtop)
  | 0xad -> ("i64.extend_i32_u", EmptyArg, Cvtop)
  | 0xae -> ("i64.trunc_f32_s", EmptyArg, Unop)
  | 0xaf -> ("i64.trunc_f32_u", EmptyArg, Unop)
  | 0xb0 -> ("i64.trunc_f64_s", EmptyArg, Unop)
  | 0xb1 -> ("i64.trunc_f64_u", EmptyArg, Unop)
  | 0xb2 -> ("f32.convert_i32_s", EmptyArg, Cvtop)
  | 0xb3 -> ("f32.convert_i32_u", EmptyArg, Cvtop)
  | 0xb4 -> ("f32.convert_i64_s", EmptyArg, Cvtop)
  | 0xb5 -> ("f32.convert_i64_u", EmptyArg, Cvtop)
  | 0xb6 -> ("f32.demote_f64", EmptyArg, Cvtop)
  | 0xb7 -> ("f64.convert_i32_s", EmptyArg, Cvtop)
  | 0xb8 -> ("f64.convert_i32_u", EmptyArg, Cvtop)
  | 0xb9 -> ("f64.convert_i64_s", EmptyArg, Cvtop)
  | 0xba -> ("f64.convert_i64_u", EmptyArg, Cvtop)
  | 0xbb -> ("f64.promote_f64", EmptyArg, Cvtop)
  | 0xbc -> ("f32.reinterpret_f32", EmptyArg, Cvtop)
  | 0xbd -> ("i64.reinterpret_f64", EmptyArg, Cvtop)
  | 0xbe -> ("f32.reinterpret_i32", EmptyArg, Cvtop)
  | 0xbf -> ("f64.reinterpret_i64", EmptyArg, Cvtop)

  | 0xc0 -> ("i32.extend_8_s", EmptyArg, Cvtop)
  | 0xc1 -> ("i32.extend_16_s", EmptyArg, Cvtop)
  | 0xc2 -> ("i64.extend_8_s", EmptyArg, Cvtop)
  | 0xc3 -> ("i64.extend_16_s", EmptyArg, Cvtop)
  | 0xc4 -> ("i64.extend_32_s", EmptyArg, Cvtop)

  | 0xFC -> ("", TruncSat (read_i32 ic), Cvtop) (* ixx.trunc_sat_fyy_z *)

  (* unhandled opcode *)
  | _ -> (sprintf "unknown opcode: %x" opcode, EmptyArg, Control)

let read_valtype ic = valtype_of_int (read_byte ic)

let read_local ic = (fun _ ->
  let n = uLEB ic 32 in
  let v = read_valtype ic in
  eprintf "local count: %d type: %s\n" n (string_of_valtype v); 
  {n; v})

let rec read_expr' ic (nesting: int) (acc_instr: op_type list) : op_type list =
  let opcode = read_byte ic in
  let (opname, arg, instrtype) = (read_instr ic opcode read_expr') in
  match opcode with
  (* end *)
  | 0x0b ->
      (* does this end mark the end of the program? *)
      ( match nesting with
        (* yes *)
        | 0 -> acc_instr@[{opcode; opname; arg; nesting=nesting-1; instrtype}]
        (* no, it's the end of a block, loop, if [else] - decrease the nesting *)
        | _ -> read_expr' ic  (nesting-1)  (acc_instr@[{opcode; opname; arg; nesting=nesting-1; instrtype}])
      )
  (* block, loop, if - increase the nesting *)
  | 0x02 | 0x03 | 0x04 ->
      read_expr' ic (nesting+1) (acc_instr@[{opcode; opname; arg; nesting; instrtype}])
  (* else - descrease the nesting *)
  | 0x05 ->  
      read_expr' ic  nesting (acc_instr@[{opcode; opname; arg; nesting=nesting-1; instrtype}])
  (* all others - same nesting *)
  | _ ->  
      read_expr' ic nesting (acc_instr@[{opcode; opname; arg; nesting; instrtype}])
  
let read_expr ic = read_expr' ic 0 []
let read_global ic w = 
  let gt = read_globaltype ic in
  let e = read_expr ic in
  update_global_section w gt e

(* Export section *)
let read_exportdesc ic =
  let exportdesc_type = read_byte ic in
  match exportdesc_type with
  | 0x00 -> eprintf "func"; Func (read_idx ic)
  | 0x01 -> eprintf "table"; Table (read_idx ic)
  | 0x02 -> eprintf "mem "; Mem (read_idx ic)
  | 0x03 -> eprintf "global "; Global (read_idx ic)
  | _ -> printf("Invalid exportdesc %x!") exportdesc_type; Func (read_idx ic)

let read_export ic w = 
  let name = read_name ic in
  update_export_section w name (read_exportdesc ic)

(* Start section *)
let read_start ic w =
  read_section_length ic >= 0 (* discard the section length *)
  && update_start_section w (read_idx ic)

(* Element section *)
let read_elemkind ic: int =
  let k = read_byte ic in
  match k with
  | 0x00 -> k
  | _ -> printf "Invalid elemkind %x" k; k

let read_idx ic =
  match uLEB ic 32 with
  | -1 -> eprintf "idx error!\n"; 0
  | i -> eprintf "Index: %d " i; i

let read_element ic w =
  let element_type = read_byte ic in
  match element_type with
  | 0x00 ->
      let e = read_expr ic in
      let y = read_vec ic read_idx in
      update_element_section w (ExprFunc {e; y})
  | 0x01 ->
      let (_: int) = read_elemkind ic in
      let y = read_vec ic read_idx in
      update_element_section w (ElemFuncP {y})
  | 0x02 ->
      let x = read_idx ic in
      let e = read_expr ic in
      let (_: int) = read_elemkind ic in
      let y = read_vec ic read_idx in
      update_element_section w (TableExprElemFunc {x; e; y})
  | 0x03 -> 
      let (_: int) = read_elemkind ic in
      let y = read_vec ic read_idx in
      update_element_section w (ElemFuncD {y})
  | 0x04 -> 
      let e = read_expr ic in
      let el = read_vec ic read_expr in
      update_element_section w (ExprExpr {e; el})
  | 0x05 ->
      let et = read_reftype ic in
      let el = read_vec ic read_expr in
      update_element_section w (RefExprP {et; el})
  | 0x06 -> 
      let x = read_idx ic in
      let e = read_expr ic in
      let et = read_reftype ic in
      let el = read_vec ic read_expr in
      update_element_section w (TableExprRefExpr {x; e; et; el})
  | 0x07 -> 
      let et = read_reftype ic in
      let el = read_vec ic read_expr in
      update_element_section w (RefExprD {et; el})
  | _ ->  printf "Invalid element item %x" element_type; false

(* Code section *)
let read_code ic w =
  (uLEB ic 32) >= 0 (* we discard the size *)
  &&
  (* func *)
  let locals = read_vec ic (read_local ic) in
  let e = read_expr ic in
  eprintf "locals %s\n" (string_of_locals locals);
  update_code_section w locals e;
  true

(* Data section *)
let read_data ic w =
  let data_item_type = read_byte ic in
  match data_item_type with
  | 0x00 -> 
      let e = read_expr ic in
      let b = read_bytes ic in
      update_data_section w (ExprBytes {e; b})
  | 0x01 -> 
      let b = read_bytes ic in
      update_data_section w (Bytes b)
  | 0x02 -> 
      let x = read_idx ic in
      let e = read_expr ic in
      let b = read_bytes ic in
      update_data_section w (MemExprBytes {x; e; b})
  | _ -> printf "Invalid data item %x\n" data_item_type; false

(* Data count section *)
let read_data_count ic w =
  read_section_length ic >= 0 (* discard the section length *)
  && update_data_count_section w (uLEB ic 32)

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
  | 12 -> eprintf "Data count\n"; read_data_count ic w
  | _ -> eprintf "Unknown section, skipping\n"; skip_bytes ic (read_section_length ic)

let read_section_id ic =
  match read_byte ic with
  | id -> eprintf "\n\nSection type: %d\n" id; id

(* wasm Module reader *)
let rec read_sections ic w =
  match read_section_id ic with
  | -1 -> true
  | id -> read_section_body ic w id && read_sections ic w

let parse_wasm ic w =
  read_magic ic && read_version ic && read_sections ic w

let processFile file =
  eprintf "**** New file: %s\n" file;
  let ic = In_channel.create file in
  let w  = Wasm_module.create file in
  (match parse_wasm ic w with
   | true  -> printf "Success yes\n"
   | _     -> printf "Failed\n"
  );
  Wasm_module.print w; 
  print_reductions w !fn_arg


let () =
  Arg.parse speclist anon_fun usage_msg;
  List.iter ~f:processFile !input_files