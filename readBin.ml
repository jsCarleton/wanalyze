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
	| 0 -> 0
	| _ ->
		get_byte ic + skip_bytes ic (n-1)

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

let read_section_body ic =
	skip_bytes ic (read_vbe ic)

let read_section_id ic =
	match get_byte ic with
	| id ->
		printf "Section id: %d\n" id;
		id

let rec read_sections ic =
	match read_section_id ic with
	| -1 -> true
	| _ ->
		read_section_body ic >= 0
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
