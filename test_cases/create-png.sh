for FILE in "$1"/funcs/*.bblocks; do
    nbb=$(wc -l <"$FILE")
    if [ $nbb -gt 515 ]
    then
        echo "file too large $FILE"
    else
        echo "creating ${FILE%%.*}.png"
        dot "${FILE%%.*}.dot" -Tpng -o "${FILE%%.*}.png"; 
        dot "${FILE%%.*}-e.dot" -Tpng -o "${FILE%%.*}-e.png"; 
    fi
done
