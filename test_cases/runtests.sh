#!/usr/bin/env bash
FILELIST="allium gifsicle mozjpeg oxipng vim doom autocad"
WATSUFFIX="-wanalyze.wat"

for f in $FILELIST
do
    echo $f
    cd $f
    /usr/bin/time -f "elapsed time: %E" ../../wanalyze.native "$f".wasm
    nlines=$(wc -l "$f""$WATSUFFIX")
    echo "lines of code: $nlines"
    nfuncs=$(grep "(func (" "$f""$WATSUFFIX" | wc -l)
    echo "# of functions: $nfuncs"
    nloops=$(grep "loop" "$f""$WATSUFFIX" | wc -l)
    echo "# of loops: $nloops"
    lf=$(grep -l loop funcs/*.wat | wc -l)
    echo "#functions with loops: $lf"
    diff -y --suppress-common-lines *t.wat *e.wat | grep -v f64 | grep -v f32 >diff.out
    diffsize=$(find diff.out -printf "%s")
    if [ $diffsize -gt 0 ]
    then
        echo "Check diff output"
    fi
    cd ..
    echo ""
done
