for FILE in "$1"/funcs/*.bblocks; do
    to='timeout'
    if [[ "$OSTYPE" == "darwin"* ]]; then
        to='gtimeout'
    fi

    echo "creating ${FILE%%.*}.png"
    ${to} 20s dot "${FILE%%.*}.dot" -Tpng -o "${FILE%%.*}.png"; 
    echo "creating ${FILE%%.*}-e.png"
    ${to} 20s dot "${FILE%%.*}-e.dot" -Tpng -o "${FILE%%.*}-e.png"; 
done
