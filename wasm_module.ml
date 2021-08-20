type typesec =
{
  ts_x: string;
}
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
  magic:        string;
  version:      string;
  type_section: typesec; 
}

let ts_create =
  { ts_x = "ts"}
let create =
  { magic = ""; version = ""; type_section = ts_create }