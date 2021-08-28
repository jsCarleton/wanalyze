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

(* TODO in the spec resulttype is a vec of valtype *)
let valtype_of_int i =
  match i with
  | 0x7f -> Numtype I32
  | 0x7e -> Numtype I64
  | 0x7d -> Numtype F32
  | 0x7c -> Numtype F64
  | 0x70 -> Reftype Funcref
  | 0x6f -> Reftype Externref
  | _ -> Numtype I32 (*TODO*)

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
let string_of_valtype vt = string_of_resulttype vt
  
type functype =
{
  rt1:    resulttype list;
  rt2:    resulttype list;
}
let create_functype rt1 rt2 =
  { rt1; rt2}


(* Instructions *)
(* TODO - do I want to use this?
type memarg =
{
  align:  int; (* TODO spec actually says uint32 *)
  offset: int;
}
type memory_instruction_args =
{ size:   numtype;
  m:      memarg;
}
type control_instruction = Unreachable | Nop | Block | Loop | If | IfElse | Bt | BtElse | Br | BrIf | Return | Call | CallIndirect
type reference_instruction = RefNull | RefIsNull | RefFunc
type parametric_instruction = Drop | Select | SelectType
type variable_instruction = LocalGet | LocalSet | LocalTee | GlobalGet | GlobalSet
type table_instruction = TableGet | TableSet | TableInit | ElemDrop | TableCopy | TableGrow | TableSize | TableFill
type memory_instruction = Load of memory_instruction_args | Store of memory_instruction_args
type numeric_instruction = Const
type instruction_type = 
    ControlInstruction of control_instruction 
    | ReferenceInstruction of reference_instruction
    | ParametricInstruction of parametric_instruction
    | VariableInstruction of variable_instruction
    | TableInstruction of table_instruction
    | MemoryInstruction of memory_instruction
    | NumericInstruction of numeric_instruction

type instruction =
{ opcode:       int;
  name:         string;
  details:      instruction_type;
}

let all_instructions =
  [
    {opcode=0x00; name="unreachable"; details=ControlInstruction Unreachable};
    {opcode=0x01; name="nop"; details=ControlInstruction Nop};
    {opcode=0x02; name="block %s %s end"; details=ControlInstruction Block};
    {opcode=0x03; name="loop %s %s end"; details=ControlInstruction Loop}
    {opcode=0x04; name="if %s %s end"; details=ControlInstruction If}
  ]
 *)
(* Imports *)
type importsec =
{
  x: string;
}

(* Functions *)
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
type labelidx = int
type blockidx = int
type blocktype = int
type funcidx = int
type typeidx = int
type tableidx = int
type localidx = int
type globalidx = int
type elemidx = int
type dataidx = int
type br_table =
{
  table:  labelidx list;
  index:  labelidx;
}
type call_indirect =
{
  y:      typeidx;
  x:      tableidx;
}
type table_init =
{
  y:      elemidx;
  x:      tableidx;
}
type table_copy =
{
  x:      tableidx;
  y:      tableidx;
}
type memarg =
{
  a:      int;
  o:      int;
}
type op_arg =
  | Blocktype of blocktype
  | Labelidx of labelidx
  | BrTable of br_table
  | Funcidx of funcidx
  | CallIndirect of call_indirect
  | Reftype of reftype
  | ValtypeList of valtype list
  | Globalidx of globalidx
  | Localidx of localidx
  | Tableidx of tableidx
  | Elemidx of elemidx
  | TableCopy of table_copy
  | Memarg of memarg
  | Dataidx of dataidx
  | I32value of int
  | I64value of int64
  | F32value of float (* do we distinguish between float32 and float64? *)
  | F64value of float
  | None
type op_type =
{
  opcode:   int;
  opname:   string;
  args:     int list;
  nesting:  int;
}
type expr = op_type list
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
let list_item l i =
  match List.nth l i with
  | Some x -> x
  | None -> -1

let get_params w idx =
  match List.nth w.type_section idx with
  | Some x -> x
  | _ -> {rt1 = []; rt2 = []} (* TODO this shouldn't happen*)

let string_of_local i local = 
  "  (local " ^ (string_of_int i) ^ " count: " ^ (string_of_int local.n) ^ " " ^ (string_of_valtype local.v)

let string_of_locals locals =
  String.concat ~sep:"" (List.mapi ~f:string_of_local locals)

let string_of_memarg a o =
  "align: " ^ (string_of_int a) ^ " offset: " ^ (string_of_int o)

(* let string_of_opcode e i =
  match list_item e i with
  | 0x00 -> ("    unreachable", 1)
  | 0x0b -> ("    end", 1)
  | 0x10 -> ("    call " ^ (string_of_int (list_item e (i+1))), 2)
  | 0x11 -> ("    call_indirect "^ (string_of_int (list_item e (i+1))) ^ " " ^ (string_of_int (list_item e (i+2))), 3)
  | 0x20 -> ("    local.get " ^ (string_of_int (list_item e (i+1))), 2)
  | 0x23 -> ("    global.get " ^ (string_of_int (list_item e (i+1))), 2)
  | 0x24 -> ("    global.set " ^ (string_of_int (list_item e (i+1))), 2)
  | 0x25 -> ("    table.get " ^ (string_of_int (list_item e (i+1))), 2)
  | 0x26 -> ("    table.set " ^ (string_of_int (list_item e (i+1))), 2)
  | 0x2c -> ("    i32.load8_s "^ (string_of_memarg (list_item e (i+1)) (list_item e (i+2))), 3)
  | 0x32 -> ("    i64.load16_s " ^ (string_of_memarg (list_item e (i+1)) (list_item e (i+2))), 3)
  | 0x3a -> ("    i32.store8 " ^ (string_of_memarg (list_item e (i+1)) (list_item e (i+2))), 3)
  | 0x3f -> ("    memory.size", 1)
  | 0x41 -> ("    i32.const " ^ (string_of_int (list_item e (i+1))), 2)
  | 0x6a -> ("    i32.add", 1)
  | 0x72 -> ("    i32.or ", 1)
  | -1 -> ("Unexpected error!", 1)
  | opcode -> ("Unknown opcode: " ^ (sprintf "%x" opcode), 1)
 *)
let string_of_opcode e idx =
    let op = List.nth e idx in
    match op with
    | Some op -> (String.make (op.nesting*2 + 4) ' ') ^ op.opname
    | _ -> "** unknown **"

let rec string_of_expr' e idx acc =
  match idx < (List.length e) with
  | false -> acc
  | true -> string_of_expr' e (idx+1) (acc ^ (string_of_opcode e idx) ^ "\n")

let string_of_expr e =
  string_of_expr' e 0 ""

let string_of_code w idx =
  let code = List.nth w.code_section idx in
  match code with
  | Some code' ->
    (string_of_locals code'.locals) ^ (string_of_expr code'.e)
  | _ -> "Error"

let string_of_function w i idx = 
  "  (func (;" ^ (string_of_int i) ^ ";) (type " ^ (string_of_typeidx idx) ^ ") " 
    ^ (string_of_params (get_params w idx).rt1) ^ (string_of_results (get_params w idx).rt2)
    ^ "\n" ^ (string_of_code w i) ^ "  )\n"
let string_of_function_section w = 
  String.concat ~sep:"" (List.mapi ~f:(string_of_function w) w.function_section)

(* Section updating *)
let update_type_section w ((b1, rt1),(b2, rt2)) =
  printf "updating, before:%d\n" (List.length w.type_section);
  printf "rt1 len:%d rt2 len:%d\n" (List.length rt1)(List.length rt2);
  match (b1,b2) with
  | (true, true) -> 
          w.type_section 
            <- List.append w.type_section [create_functype (List.map ~f:valtype_of_int rt1) (List.map ~f:valtype_of_int rt2) ]; true
  | _ -> false
let update_function_section w (b, i) =
  match b, i with
  | true, _ ->
          w.function_section
            <- List.append w.function_section [i]; true
  | _ -> false
let update_code_section w ((b1, locals), (b2, e)) =
  (* TODO locals always seems to be empty *)
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