echo "allium"
cd allium
time ../../wanalyze.native allium.wasm
diff -y --suppress-common-lines *t.wat *e.wat | grep -v f64 | grep -v f32 >diff.out
cd ../gifsicle
echo "gifsicle"
time ../../wanalyze.native gifsicle.wasm
diff -y --suppress-common-lines *t.wat *e.wat | grep -v f64 | grep -v f32 >diff.out
cd ../mozjpeg
echo "mozjpeg"
time ../../wanalyze.native mozjpeg.wasm
diff -y --suppress-common-lines *t.wat *e.wat | grep -v f64 | grep -v f32 >diff.out
cd ../oxipng
echo "oxipng"
time ../../wanalyze.native oxipng_bg.wasm
diff -y --suppress-common-lines *t.wat *e.wat | grep -v f64 | grep -v f32 >diff.out
cd ../vim-wasm
echo "vim"
time ../../wanalyze.native vim.wasm
diff -y --suppress-common-lines *t.wat *e.wat | grep -v f64 | grep -v f32 >diff.out
cd ../doom
echo "doom"
time ../../wanalyze.native websockets-doom.wasm
diff -y --suppress-common-lines *t.wat *e.wat | grep -v f64 | grep -v f32 >diff.out
# echo "autocad"
# cd ../autocad
# time ../../wanalyze.native autocad.wasm
