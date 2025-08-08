gcc -O1 bubble_sort_only.c -o bubble_sort_only
emcc --emit-symbol-map -O1 -sEXPORTED_FUNCTIONS=_bubble,_main bubble_sort_only.c -o bubble_sort_only.js
