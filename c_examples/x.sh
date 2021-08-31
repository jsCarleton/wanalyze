emcc -O2 -s USE_PTHREADS=1 -s PTHREAD_POOL_SIZE=2 -o consistency.js consistency.c
../wabt/build/wasm2wat --enable-all consistency.wasm >consistency.wat
