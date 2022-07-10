open Core
open Easy_logging

(* create our logger *)
let logger = Logging.make_logger "wanalyze" Debug [ RotatingFile ("wanalyze", Debug, 65536, 5) ]

let usage_msg = "wanalyze [-f n] <file1> [<file2>] ..."
let input_files = ref []
let fnum = ref (-1)
let speclist = [("-f", Arg.Set_int fnum, "ID of function to analyze")]
let anon_fun filename = input_files := filename::!input_files

let processFile fnum file =
  logger#info  "**** New file: %s %d" file fnum;
  let ic = In_channel.create file in
  let w  = Wm.create file in
  ReadBin.parse_wasm ic w;
  Wasm_print.print w fnum

let () =
  Arg.parse speclist anon_fun usage_msg;
  List.iter ~f:(processFile !fnum) !input_files
