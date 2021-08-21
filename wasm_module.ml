type numtype =
  | I32 | I64 | F32 | F64

type reftype =
  | Funcref | Externref

type valtype =
  | Numtype of numtype
  | Reftype of reftype

type resulttype =
{
  t:      valtype;
}

type functype =
{
  rt1:    resulttype list;
  rt2:    resulttype list;
}
let create_functype rt1 rt2 =
  { rt1; rt2}

type importsec =
{
  x: string;
}
type funcsec =
{
  x: string;
}
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
type codesec =
{
  x: string;
}
type datasec =
{
  x: string;
}

type wasm_module =
{
  mutable type_section: functype list; 
}
let ts_update w ((b1, rt1),(b2, rt2)) =
  match (b1,b2) with
  | (true, true) -> w.type_section <- List.append w.type_section [create_functype rt1 rt2]; true
  | _ -> false
let create =
  { type_section = [] }