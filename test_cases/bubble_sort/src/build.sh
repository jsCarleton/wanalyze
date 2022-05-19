gcc bubble_sort.c -o bubble_sort
emcc --emit-symbol-map -O1 bubble_sort.c -o bubble_sort.js