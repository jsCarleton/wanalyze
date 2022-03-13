echo "allium"
cd allium
time ../../wanalyze.native allium.wasm
cd ../gifsicle
echo "gifsicle"
time ../../wanalyze.native gifsicle.wasm
cd ../mozjpeg
echo "mozjpeg"
time ../../wanalyze.native mozjpeg.wasm
cd ../oxipng
echo "oxipng"
time ../../wanalyze.native oxipng_bg.wasm
cd ../vim-wasm
echo "vim"
time ../../wanalyze.native vim.wasm
cd ../doom
echo "doom"
time ../../wanalyze.native websockets-doom.wasm
# echo "autocad"
# cd ../autocad
# time ../../wanalyze.native autocad.wasm
