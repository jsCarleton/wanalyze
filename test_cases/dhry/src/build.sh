emcc -O3 -sEXPORTED_FUNCTIONS=_main -s STANDALONE_WASM cpuidc64.c dhry_1.c dhry_2.c -o dhry.js
gcc -O3 cpuidc64.c dhry_1.c dhry_2.c -o dhry
