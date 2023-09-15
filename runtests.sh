#!/usr/bin/env bash
FILELIST="bubble_sort dhry allium gifsicle mozjpeg oxipng"
WATSUFFIX="-wanalyze.wat"
D="test_cases/"

for f in $FILELIST
do
    echo $f
    ff="$D$f/$f$WATSUFFIX"
    # Run our analysis
    /usr/bin/time -p ./wanalyze.native "$D$f/$f".wasm
    # Analyze the outputs
    nl=$(wc -l <"$ff")
    nf=$(grep "^  (func (;" "$ff" | wc -l)
    np=$(grep "loop" "$ff" | wc -l)
    lf=$(find "$D$f"/"$f"-funcs -name "*.wat" -print0 | xargs -0 grep -l loop | wc -l)
    nb=$(find "$D$f"/"$f"-funcs -name "*.ebblocks" -print0 | xargs -0 grep -l 'unknown number' | wc -l)
    # Create the cfg diagrams
    ./create-cfg.sh "$D$f/$f-funcs" png
    # Print the result
    echo "lines of code: $nl"
    echo "# of functions: $nf"
    echo "# of loops: $np"
    echo "# functions with loops: $lf"
    echo "# functions with too many paths: $nb"
    # Compare the source file we created to the one created by wabt
    diff -y --suppress-common-lines "$D$f"/*t.wat "$D$f"/*e.wat | grep -v f64 | grep -v f32 >diff.out
    ds=$(stat --format=%s diff.out)
    if [ $ds -gt 0 ]
    then
        echo "Check diff output"
    fi
    echo ""
done
