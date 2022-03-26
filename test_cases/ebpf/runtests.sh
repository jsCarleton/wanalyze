#!/usr/bin/env bash
FILELIST=$(ls *.wasm)

for f in $FILELIST
do
    ../../wanalyze.native $f
    g=$(echo $f | cut -f 1 -d '.')
    ../../../wabt/bin/wasm2wat $f >$g-wabt.wat
    diff $g-wanalyze.wat $g-wabt.wat
done