open Core

(* Types *)
type numtype =
  | I32 | I64 | F32 | F64

type reftype =
  | Funcref | Externref

type valtype =
  | Numtype of numtype
  | Reftype of reftype

type resulttype = valtype

let resulttype_of_int i =
  match i with
  | 0x7f -> Numtype I32
  | 0x7e -> Numtype I64
  | 0x7d -> Numtype F32
  | 0x7c -> Numtype F64
  | 0x70 -> Reftype Funcref
  | 0x6f -> Reftype Externref
  | _ -> Numtype I32 (*TODO*)

type functype =
{
  rt1:    resulttype list;
  rt2:    resulttype list;
}
let create_functype rt1 rt2 =
  { rt1; rt2}

(* Imports *)
type importsec =
{
  x: string;
}

(* Functions *)
type typeidx = int
let string_of_typeidx = string_of_int

(* Tables *)
type tablesec =
{
  x: string;
}
type memsec =
{
  x: string;
}
type globalsec =
{
  x: string;
}
type exportsec =
{
  x: string;
}
type startsec =
{
  x: string;
}
type elemsec =
{
  x: string;
}
type datacountsec =
{
  x: string;
}

(* Code *)
type expr = int list (*TODO*)
type local_type =
{
  n:  int;
  v:  valtype;
}
type func =
{
  locals: local_type list;
  e:      expr;
}
type datasec =
{
  x: string;
}

(* Type section printing *)
let string_of_numtype nt =
  match nt with
  | I32 -> "i32" | I64 -> "i64"  | F32 -> "f32"  | F64 -> "f64" 
let string_of_reftype rt =
  match rt with  
  | Funcref -> "funcref" | Externref -> "externref"
let string_of_resulttype rt =
  match rt with
  | Numtype x -> string_of_numtype x
  | Reftype x -> string_of_reftype x
let string_of_param  p = "(param " ^ (string_of_resulttype p) ^ ")"
let string_of_result r = "(result " ^ (string_of_resulttype r) ^ ")"
let string_of_params pl = String.concat ~sep:"" (List.map ~f:string_of_param pl)
let string_of_results rl = String.concat ~sep:"" (List.map ~f:string_of_result rl)
let string_of_functype i ft = "  (type (;" ^ (string_of_int i) ^ ";) (func " ^ (string_of_params ft.rt1) ^ (string_of_results ft.rt2) ^ "))\n"
let string_of_type_section section = String.concat ~sep:"" (List.mapi ~f:string_of_functype section)

(* Modules *)
type wasm_module =
{
  module_name:              string;
  mutable type_section:     functype list;
  mutable function_section: typeidx list;
  mutable code_section:     func list;
}
let create name =
  { module_name = name; type_section = []; function_section = []; code_section = []}

(* Function section printing *)
let get_params w idx =
  match List.nth w.type_section idx with
  | Some x -> x
  | _ -> {rt1 = []; rt2 = []} (* TODO this shouldn't happen*)

let string_of_code w i =
  ""
let string_of_function w i idx = 
  "  (func (;" ^ (string_of_int i) ^ ";) (type " ^ (string_of_typeidx idx) ^ ") " 
    ^ (string_of_params (get_params w idx).rt1) ^ (string_of_results (get_params w idx).rt2)
    ^ (string_of_code w idx) ^")\n"
let string_of_function_section w = 
  String.concat ~sep:"" (List.mapi ~f:(string_of_function w) w.function_section)

(* Section updating *)
let update_type_section w ((b1, rt1),(b2, rt2)) =
  printf "updating, before:%d\n" (List.length w.type_section);
  printf "rt1 len:%d rt2 len:%d\n" (List.length rt1)(List.length rt2);
  match (b1,b2) with
  | (true, true) -> 
          w.type_section 
            <- List.append w.type_section [create_functype (List.map ~f:resulttype_of_int rt1) (List.map ~f:resulttype_of_int rt2) ]; true
  | _ -> false
let update_function_section w (b, i) =
  match b, i with
  | true, _ ->
          w.function_section
            <- List.append w.function_section [i]; true
  | _ -> false
let update_code_section w ((b1, locals), (b2, e)) =
  match b1, b2 with
  | true, true ->
        w.code_section
          <- List.append w.code_section [{locals; e}]; true
  | _ -> false

let print w =
  let ff x = (printf "%d") x in
  ff 1;
  printf "Module: %s\n" w.module_name;
  printf "(module\n";
  printf "%s" (string_of_type_section w.type_section);
  printf "%s" (string_of_function_section w);
  printf ")";