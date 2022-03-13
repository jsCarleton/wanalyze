open Core
open Easy_logging
open ReadBin
open Wasm_module

(* create our logger *)
let logger = Logging.make_logger "wanalyze" Debug [ RotatingFile ("wanalyze", Debug, 65536, 5) ]

let usage_msg = "readBin [-f n] [-s] <file1> <file2> ..."
let input_files = ref []
let speclist = []
let anon_fun filename = input_files := filename::!input_files

let processFile file =
  logger#info  "**** New file: %s" file;
  let ic = In_channel.create file in
  let w  = Wasm_module.create file in
  parse_wasm ic w;
  Wasm_print.print w

let () =
  Arg.parse speclist anon_fun usage_msg;
  List.iter ~f:processFile !input_files