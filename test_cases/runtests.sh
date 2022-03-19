#!/usr/bin/env bash
FILELIST="allium gifsicle mozjpeg oxipng vim doom autocad"
WATSUFFIX="-wanalyze.wat"

for f in $FILELIST
do
    echo $f
    cd $f
    time ../../wanalyze.native "$f".wasm
    diff -y --suppress-common-lines *t.wat *e.wat | grep -v f64 | grep -v f32 >diff.out
    wc "$f""$WATSUFFIX"
    grep "(func (" "$f""$WATSUFFIX" | wc
    grep "loop" "$f""$WATSUFFIX" | wc
    ls -l diff.out
    cd ..
    echo ""
done
