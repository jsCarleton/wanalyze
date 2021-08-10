open Core

let file = "example.wasm"

let get_byte ic =
	let b = In_channel.input_byte ic in
		match b with
		| None -> -1
		| Some x -> 
			printf "%X " x;
			x

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

let rec read_vbe' ic =
	match get_byte ic with
	| 0 -> 0
	| b -> (b land 0x7f) + ((read_vbe' ic) lsl 7)

let read_vbe ic = 
	match 
		read_vbe' ic
	with
	| len ->
		printf "Length: %d\n" len;
		len

let get_vec_len ic =
	match get_byte ic with
	| len -> printf "vector length: %d " len; len

let get_type ic =
	match get_byte ic with
	| 0 -> printf "None "; true
	| 0x7f -> printf "i32 "; true
	| 0x7e -> printf "i64 "; true
	| 0x7d -> printf "f32 "; true
	| 0x7c -> printf "f64 "; true
	| 0x70 -> printf "funcref "; true
	| 0x6f -> printf "externref "; true
	| _ -> printf "invalid "; false

let rec get_types ic len =
	match len with
	| 0 -> true
	| _ -> get_type ic && get_types ic (len - 1)

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

let get_idx ic =
	match get_byte ic with
	| -1 -> printf "idx error!\n"; false
	| i -> printf "Index: %d " i; true

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

let read_start_section ic =
	read_vbe ic >= 0
	&& get_idx ic

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

let print_op_code op =
	match op with
	| 0x0b -> printf "end "
	| _ -> printf "opcode: %x" op

let rec expr ic op =
	print_op_code op;
	match op with
	| 0x0b -> true
	| _ -> expr ic (get_byte ic)

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

let read_section_body ic id =
	match id with
	| 0 -> printf "Custom section\n";
	skip_bytes ic (read_vbe ic)
	| 1 -> printf "Type section\n"; read_type_section ic
	| 2 -> printf "Import section\n";
	skip_bytes ic (read_vbe ic)
	| 3 -> printf "Function section\n"; read_function_section ic
	| 4 -> printf "Table section\n";
	skip_bytes ic (read_vbe ic)
	| 5 -> printf "Memory section\n";
	skip_bytes ic (read_vbe ic)
	| 6 -> printf "Global section\n";
	skip_bytes ic (read_vbe ic)
	| 7 -> printf "Export section\n";
	skip_bytes ic (read_vbe ic)
	| 8 -> printf "Start section\n"; read_start_section ic
	| 9 -> printf "Element section\n";
	skip_bytes ic (read_vbe ic)
	| 10 -> printf "Code section\n"; read_code_section ic
	| 11 -> printf "Data section\n";
	skip_bytes ic (read_vbe ic)
	| 12 -> printf "Data count section\n";
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

let () =
	let ic = In_channel.create file in
		match parse_wasm ic with
		| true -> printf "Success!\n"
		| _ -> printf "Fail!\n"
