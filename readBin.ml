open Core

let usage_msg = "readBin -verbose <file1> <file2> ..."
let verbose = ref false
let input_files = ref []
let speclist =
	  [("-verbose", Arg.Set verbose, "Output debug information")]
let anon_fun filename =
       input_files := filename::!input_files

let get_byte ic =
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

let rec read_vbe' ic b =
	match b with
	| 0 -> 0
	| b -> (b land 0x7f) + ((read_vbe' ic (get_byte ic)) lsl 7)

let read_vbe ic =
	let b = get_byte ic in
	match b < 128 with
	| true -> printf "Length %d\n " b; b
	| _ ->
		let len = (read_vbe' ic b) in
			printf "Length %d\n" len; len

let get_vec_len ic =
	match get_byte ic with
	| len -> printf "vector length: %d " len; len

let get_idx ic =
	match get_byte ic with
	| -1 -> printf "idx error!\n"; false
	| i -> printf "Index: %d " i; true

let print_op_code op =
	match op with
	| 0x0b -> printf "end "
	| _ -> printf "opcode: %x" op

let rec expr ic op =
	print_op_code op;
	match op with
	| 0x0b -> true
	| _ -> expr ic (get_byte ic)

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

let rec read_types ic n =
	match n with
	| 0 -> true
	| _ ->
		read_type ic &&
		read_types ic (n-1)

let read_type_section ic =
	read_vbe ic >= 0
	&& read_types ic (get_vec_len ic)

(* Import section *)
let reftype ic =
	match get_byte ic with
	| 0x70 -> printf "funcref"; true
	| 0x6F -> printf "externref"; true
	| _ -> printf "Invalid reftype!"; false

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
	| 0x00 -> printf " const"; true
	| 0x01 -> printf " var"; true
	| _ -> printf "Invalid mut!"; false

let get_global_type ic =
	valtype ic && mut ic

let importdesc ic =
	match get_byte ic with
	| 0x00 -> printf "func"; (get_idx ic)
	| 0x01 -> printf "table"; get_table_type ic
	| 0x02 -> printf "mem "; get_mem_type ic
	| 0x03 -> printf "global "; get_global_type ic
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

let rec read_imports ic n =
	match n with
	| 0 -> true
	| _ ->
		read_import ic
		&& read_imports ic (n-1)

let read_import_section ic =
	read_vbe ic >=0
	&& read_imports ic (get_vec_len ic)

(* Function section *)
let read_function ic = 
	get_idx ic

let rec read_functions ic n =
	match n with
	| 0 -> true
	| _ ->
		read_function ic &&
		read_functions ic (n-1)

let read_function_section ic =
	read_vbe ic >= 0
	&& read_functions ic (get_vec_len ic)

(* Table section *)
let read_table ic =
	get_table_type ic

let rec read_tables ic n =
	match n with
	| 0 -> true
	| _ ->
		read_table ic &&
		read_tables ic (n-1)

let read_table_section ic =
	read_vbe ic >= 0
	&& read_tables ic (get_vec_len ic)

(* Memory section *)
let memory_reader ic =
	get_mem_type ic

(* Global section *)
let read_global ic =
	get_global_type ic &&
	expr ic (get_byte ic)

let rec read_globals ic n =
	match n with
	| 0 -> true
	| _ ->
		read_global ic &&
		read_globals ic (n-1)

let read_global_section ic =
	read_vbe ic >= 0
	&& read_globals ic (get_vec_len ic)

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

let rec read_exports ic n =
	match n with
	| 0 -> true
	| _ ->
		read_export ic &&
		read_exports ic (n-1)

let read_export_section ic =
	read_vbe ic >= 0
	&& read_exports ic (get_vec_len ic)

(* Start section *)
let read_start_section ic =
	read_vbe ic >= 0
	&& get_idx ic

(* Element section *)
let rec vec_idx ic n =
	match n with
	| 0 -> true
	| _ ->
		get_idx ic
		&& vec_idx ic (n-1)

let elemkind ic =
	match get_byte ic with
	| 0x00 -> true
	| _ -> printf "Invalid elemkind"; false

let rec vec_expr ic n =
	match n with
	| 0 -> true
	| _ ->
		expr ic (get_byte ic)
		&& vec_expr ic (n-1)

let element_reader ic = 
	match get_byte ic with
	| 0x00 ->
		expr ic (get_byte ic)
		&& vec_idx ic (get_byte ic)
	| 0x01 ->
		elemkind ic
		&& vec_idx ic (get_byte ic)
	| 0x02 ->
		get_idx ic
		&& expr ic (get_byte ic)
		&& elemkind ic
		&& vec_idx ic (get_byte ic)
	| 0x03 ->
		elemkind ic
		&& vec_idx ic (get_byte ic)
	| 0x04 ->
		expr ic (get_byte ic)
		&& vec_expr ic (get_byte ic)
	| 0x05 ->
		reftype ic
		&& vec_expr ic (get_byte ic)
	| 0x06 -> 
		get_idx ic
		&& expr ic (get_byte ic)
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
	expr ic (val_type_list ic)

let read_code ic =
	read_vbe ic >= 0
	&& get_locals ic (get_vec_len ic)
	&& get_code ic

let rec read_codes ic n =
	match n with
	| 0 -> true
	| _ ->
		read_code ic &&
		read_codes ic (n-1)

let read_code_section ic =
	read_vbe ic >= 0
	&& read_codes ic (get_vec_len ic)

(* Data section *)
let rec vec_bytes ic n =
	match n with
	| 0 -> true
	| _ ->
		printf "%X " (get_byte ic);
		vec_bytes ic (n-1)

let data_reader ic =
	match get_byte ic with
	| 0x00 -> expr ic (get_byte ic) && vec_bytes ic (get_vec_len ic)
	| 0x01 -> vec_bytes ic (get_vec_len ic)
	| 0x02 -> get_idx ic && expr ic (get_byte ic) && vec_bytes ic (get_vec_len ic)
	| _ -> printf "Invalid data item\n"; false

let read_section_body ic id =
	match id with
	| 0 -> printf "Custom section - unimplemented\n";
	skip_bytes ic (read_vbe ic)
	| 1 -> printf "Type section\n"; read_type_section ic
	| 2 -> printf "Import section\n"; read_import_section ic
	| 3 -> printf "Function section\n"; read_function_section ic
	| 4 -> printf "Table section\n"; read_table_section ic
	| 5 -> printf "Memory section"; read_section ic memory_reader
	| 6 -> printf "Global section\n"; read_global_section ic
	| 7 -> printf "Export section\n"; read_export_section ic
	| 8 -> printf "Start section\n"; read_start_section ic
	| 9 -> printf "Element section\n"; read_section ic element_reader
	| 10 -> printf "Code section\n"; read_code_section ic
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
	Arg.parse speclist anon_fun usage_msg;
	match parseFiles !input_files with
	| true -> printf "Success!\n"
	| _ -> printf "Fail!\n"
