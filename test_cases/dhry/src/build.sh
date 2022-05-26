emcc --emit-symbol-map -O2 cpuidc64.c dhry_1.c dhry_2.c -o dhry.js
gcc -O2 cpuidc64.c dhry_1.c dhry_2.c -o dhry
