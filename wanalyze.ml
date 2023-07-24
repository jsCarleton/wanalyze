open Core

let usage_msg = "wanalyze [-f n] <file1> [<file2>] ..."
let input_files = ref []
let fnum = ref (-1)
let speclist = [("-f", Arg.Set_int fnum, "ID of function to analyze")]
let anon_fun filename = input_files := filename::!input_files

let processFile fnum cwd path =
  Core_unix.chdir (Filename.dirname path);
  let ic = In_channel.create (Filename.basename path) in
  let w  = Wm.create (Filename.basename path) in
  ReadBin.parse_wasm ic w;
  Wasm_print.print w fnum;
  In_channel.close ic;
  Core_unix.chdir cwd

let () =
  Arg.parse speclist anon_fun usage_msg;
  List.iter ~f:(processFile !fnum (Core_unix.getcwd ())) !input_files
