echo "allium"
cd allium
time ../../wanalyze.native allium.wasm
diff *t.wat *e.wat >diff.out
cd ../gifsicle
echo "gifsicle"
time ../../wanalyze.native gifsicle.wasm
diff *t.wat *e.wat >diff.out
cd ../mozjpeg
echo "mozjpeg"
time ../../wanalyze.native mozjpeg.wasm
diff *t.wat *e.wat >diff.out
cd ../oxipng
echo "oxipng"
time ../../wanalyze.native oxipng_bg.wasm
diff *t.wat *e.wat >diff.out
cd ../vim-wasm
echo "vim"
time ../../wanalyze.native vim.wasm
diff *t.wat *e.wat >diff.out
cd ../doom
echo "doom"
time ../../wanalyze.native websockets-doom.wasm
diff *t.wat *e.wat >diff.out
# echo "autocad"
# cd ../autocad
# time ../../wanalyze.native autocad.wasm
