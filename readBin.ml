open Stdlib
open Core

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
			| true -> printf "%X " x; x
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

let rec uLEB ic size =
	let n = get_byte ic in
	match (n < (1 lsl 7)) && (n < (1 lsl size)) with
	| true -> n
	| _ -> (1 lsl size) * (uLEB ic (size-7)) + (n - (1 lsl 7))

(* i64 helper functions *)
let i64lt i1 i2 = (Int64.compare i1 i2) < 0
let i64le i1 i2 = (Int64.compare i1 i2) <=0
let i64mul i1 i2 : int64 = Stdlib.Int64.mul i1 i2
let i64add i1 i2 : int64 = Stdlib.Int64.add i1 i2
let i64sub i1 i2 : int64 = Stdlib.Int64.sub i1 i2
let i64lsl i n : int64 = Stdlib.Int64.shift_left i n

let rec sLEB ic size : int64 =
	let n = Int64.of_int (get_byte ic) in
	match (i64lt n (i64lsl 1L 7)) && (size >=64 || (i64lt n (i64lsl 1L size))) with
	| true -> n
	| _ -> 
		(match (i64le (i64lsl 1L 6) n) && (i64lt n (i64lsl 1L 7)) 
				&& (i64le n (i64sub (i64lsl 1L 7) (i64lsl 1L (size-1)))) with
		 | true -> (i64sub n (i64lsl 1L 7))
		 | _ -> i64add (i64mul (i64lsl 1L size)  (sLEB ic (size-7)))  (i64sub n (i64lsl 1L 7))
		)

let rec read_vbe' ic b =
	match b with
	| 0 -> 0
	| b -> (b land 0x7f) + ((read_vbe' ic (get_byte ic)) lsl 7)

let read_vbe ic =
	let b = get_byte ic in
	match b < 128 with
	| true -> 
		(match !verbose with
		 | true -> printf "Length %d\n " b; b
		 | _ -> b)
	| _ ->
		let len = (read_vbe' ic b) in
		(match !verbose with
		| true -> printf "Length %d\n" len; len
		| _ -> len)

let get_vec_len ic =
	match get_byte ic with
	| len -> printf "vector length: %d " len; len

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
		printf "align: %d " (read_vbe ic);
		printf "offset: %d " (read_vbe ic);
		true

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
let rec read_entry ic n entry_handler =
	match n with
	| 0 -> true
	| _ ->
		entry_handler ic &&
		read_entry ic (n-1) entry_handler

let read_section ic entry_handler =
	read_vbe ic >= 0
	&& read_entry ic (get_vec_len ic) entry_handler

(* Type section *)
let valtype ic =
	match get_byte ic with
	| 0 -> printf "None "; true
	| 0x7f -> printf "i32 "; true
	| 0x7e -> printf "i64 "; true
	| 0x7d -> printf "f32 "; true
	| 0x7c -> printf "f64 "; true
	| 0x70 -> printf "funcref "; true
	| 0x6f -> printf "externref "; true
	| x -> printf "invalid valtype %x" x; false

let rec get_types ic len =
	match len with
	| 0 -> true
	| _ -> valtype ic && get_types ic (len - 1)

let get_type_vector ic =
	match get_vec_len ic with
	| 0 -> true
	| len ->
		get_types ic len

let read_type ic =
	get_byte ic = 0x60
	&& get_type_vector ic
	&& get_type_vector ic

(* Import section *)
let limits ic =
	match get_byte ic with
	| 0x00 -> printf "lower: %d, no upper" (read_vbe ic); true
	| 0x01 -> printf "lower: %d, upper: %d" (read_vbe ic) (read_vbe ic); true
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
	valtype ic && mut ic

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
	| 0 -> printf "name length 0";true
	| n -> printf "name length %d" n; get_string ic n

let read_import ic =
	name ic
	&& name ic
	&& importdesc ic

(* Function section *)
let read_function ic = 
	get_idx ic

(* Table section *)
let read_table ic =
	get_table_type ic

(* Memory section *)
let memory_reader ic =
	get_mem_type ic

(* Global section *)
let read_global ic =
	globaltype ic && expr ic

(* Export section *)
let exportdesc ic =
	match get_byte ic with
	| 0x00 -> printf "func"; get_idx ic
	| 0x01 -> printf "table"; get_idx ic
	| 0x02 -> printf "mem "; get_idx ic
	| 0x03 -> printf "global "; get_idx ic
	| _ -> printf("Invalid exportdesc!"); false

let read_export ic =
	name ic &&
	exportdesc ic

(* Start section *)
let read_start_section ic =
	read_vbe ic >= 0
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

let element_reader ic = 
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
		| 0x7E -> printf "%d i32 " n; true
		| 0x7D -> printf "%d i32 " n; true
		| 0x7C -> printf "%d i32 " n; true
		| _ -> printf "Type error!\n"; false

let rec get_locals ic n =
	match n with
	| 0 -> true
	| _ ->
		get_local ic
		&& get_locals ic (n-1)

let rec val_type_list ic =
	match get_byte ic with
		| 0x00 -> printf "None "; val_type_list ic
		| 0x7F -> printf "i32 "; val_type_list ic
		| 0x7E -> printf "i64 "; val_type_list ic
		| 0x7D -> printf "f32 "; val_type_list ic
		| 0x7C -> printf "f64 "; val_type_list ic
		| n -> n

let get_code ic =
	expr ic

let read_code ic =
	read_vbe ic >= 0
	&& get_locals ic (get_vec_len ic)
	&& get_code ic

(* Data section *)
let rec vec_bytes ic n =
	match n with
	| 0 -> true
	| _ ->
		printf "%X " (get_byte ic);
		vec_bytes ic (n-1)

let data_reader ic =
	match get_byte ic with
	| 0x00 -> expr ic && vec_bytes ic (get_vec_len ic)
	| 0x01 -> vec_bytes ic (get_vec_len ic)
	| 0x02 -> get_idx ic && expr ic && vec_bytes ic (get_vec_len ic)
	| _ -> printf "Invalid data item\n"; false

let read_section_body ic id =
	match id with
	| 0 -> printf "Custom section - unimplemented\n";
	skip_bytes ic (read_vbe ic)
	| 1 -> printf "Type section\n"; read_section ic read_type
	| 2 -> printf "Import section\n"; read_section ic read_import
	| 3 -> printf "Function section\n"; read_section ic read_function
	| 4 -> printf "Table section\n"; read_section ic read_table
	| 5 -> printf "Memory section"; read_section ic memory_reader
	| 6 -> printf "Global section\n"; read_section ic read_global
	| 7 -> printf "Export section\n"; read_section ic read_export
	| 8 -> printf "Start section\n"; read_start_section ic
	| 9 -> printf "Element section\n"; read_section ic element_reader
	| 10 -> printf "Code section\n"; read_section ic read_code
	| 11 -> printf "Data section\n"; read_section ic data_reader
	| 12 -> printf "Data count section - unimplemented\n";
	skip_bytes ic (read_vbe ic)
	| _ -> printf "Unknown section\n";
	skip_bytes ic (read_vbe ic)

let read_section_id ic =
	match get_byte ic with
	| id ->
		printf "\n\nSection type: %d\n" id;
		id

let rec read_sections ic =
	match read_section_id ic with
	| -1 -> true
	| id ->
		read_section_body ic id
		&& read_sections ic

let parse_wasm ic =
	read_magic ic
	&& read_version ic
	&& read_sections ic

let rec parseFiles filelist =
	match filelist with
	| [] -> true
	| file::files ->
		printf "**** New file: %s\n" file;
	  	let ic = In_channel.create file in
			match parse_wasm ic with
			| true -> parseFiles files 
			| _ -> false

let () =
	let w = Wasm_module.create in
	Arg.parse speclist anon_fun usage_msg;
	match parseFiles !input_files with
	| true -> printf "Success!\n"
	| _ -> printf "Fail!\n"
