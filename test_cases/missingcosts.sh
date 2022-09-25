#!/usr/bin/env bash
tests="allium gifsicle mozjpeg oxipng vim doom autocad"
infinities="x y z t"

for t in $tests
do
    echo $t
    for i in $infinities
    do
        n=$(grep Infinity-"$i" "$t"/funcs/*.ebblocks | wc -l)
        if [[ $n -ne 0 ]] 
        then
            echo "  Infinity-"$i": $n"
        fi
    done
    n=$(grep Inf "$t"/funcs/*.costs | wc -l)
    if [[ $n -ne 0 ]] 
    then
        echo "  Infinite ebb paths: $n"
    fi
done
