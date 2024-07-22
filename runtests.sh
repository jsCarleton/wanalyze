#!/usr/bin/env bash
FILELIST="bubble_sort dhry allium gifsicle mozjpeg oxipng vim"
#FILELIST="bubble_sort"
WATSUFFIX="-wanalyze.wat"
D="test_cases/"
W="./_build/default/src/wanalyze.exe"

for f in $FILELIST
do
    echo $f
    ff="$D$f/$f$WATSUFFIX"
    # Run our analysis
    /usr/bin/time -p "$W" "$D$f/$f".wasm
    # Analyze the outputs
    nl=$(wc -l <"$ff")
    nf=$(grep "^  (func (;" "$ff" | wc -l)
    np=$(grep "loop" "$ff" | wc -l)
    lf=$(find "$D$f"/"$f"-funcs -name "*.wat" -print0 | xargs -0 grep -l loop | wc -l)
    nb=$(find "$D$f"/"$f"-funcs -name "*.ebblocks" -print0 | xargs -0 grep -l 'unknown number' | wc -l)
    # Create the cfg diagrams except on Mac
    if [[ "$OSTYPE" != "darwin"* ]]; then
        ./create-cfg.sh "$D$f/$f-funcs" png
    fi
    # Print the result
    echo "lines of code: $nl"
    echo "# of functions: $nf"
    echo "# of loops: $np"
    echo "# functions with loops: $lf"
    echo "# functions with too many paths: $nb"
    # Compare the source file we created to the one created by wabt
    diff -y --suppress-common-lines "$D$f"/*t.wat "$D$f"/*e.wat | grep -v f64 | grep -v f32 >"$D$f"/diff.out
    if [[ "$OSTYPE" == "darwin"* ]]; then
        ds=$(stat -f %z "$D$f"/diff.out)
    else
        ds=$(stat --format=%s "$D$f"/diff.out)
    fi
    if [ $ds -gt 0 ]; then
        echo "Check diff output"
    else
        rm "$D$f"/diff.out
    fi
    echo ""
done
