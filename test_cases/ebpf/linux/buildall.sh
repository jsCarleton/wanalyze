#!/usr/bin/env bash
FILELIST=$(ls *.c)

for f in $FILELIST
do
    g=$(echo $f | cut -f 1 -d '.')
    emcc $f -o $g.js 
done