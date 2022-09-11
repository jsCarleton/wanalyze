#!/usr/bin/env bash
for f in "$1"/funcs/*.wat; do
    ns=$(grep loop "$f" | wc -l)
    ne=$(grep 'ebb type:.*loop' "${f%%.*}".ebblocks | wc -l)
    nb=$(wc -l "${f%%.*}".bblocks)
    if [[ $ne -ne $ns ]] 
    then
        echo "loop counts: ${f%%.*} $ns $ne $nb"
    fi
done
