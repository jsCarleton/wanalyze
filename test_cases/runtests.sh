#!/usr/bin/env bash
FILELIST="allium gifsicle mozjpeg oxipng vim doom autocad"
WATSUFFIX="-wanalyze.wat"

for f in $FILELIST
do
    echo $f
    cd $f
    # Run our analysis
    /usr/bin/time -p ../../wanalyze.native "$f".wasm
    # Analyze the outputs
    nl=$(wc -l <"$f""$WATSUFFIX")
    nf=$(grep "^  (func (;" "$f""$WATSUFFIX" | wc -l)
    nc=$(grep -v ' -1' "$f".costs | wc -l)
    np=$(grep "loop" "$f""$WATSUFFIX" | wc -l)
    lf=$(find ./funcs -name "*.wat" -print0 | xargs -0 grep -l loop | wc -l)
    nb=$(ls $(grep -l 'unknown number' funcs/*.ebblocks)|wc -l)
    # Print the result
    echo "lines of code: $nl"
    echo "# of functions: $nf"
    echo "# of costs: $nc"
    echo "# of loops: $np"
    echo "# functions with loops: $lf"
    echo "# functions with too many paths: $nb"
    # Compare the source file we created to the one created by wabt
    diff -y --suppress-common-lines *t.wat *e.wat | grep -v f64 | grep -v f32 >diff.out
    ds=$(stat --format=%s diff.out)
    if [ $ds -gt 0 ]
    then
        echo "Check diff output"
    fi
    cd ..
    echo ""
done
