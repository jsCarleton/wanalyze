gcc -O1 bubble_sort.c -o bubble_sort
emcc --emit-symbol-map -O1 -sEXPORTED_FUNCTIONS=_main,_bubble -s STANDALONE_WASM bubble_sort.c -o bubble_sort.js
