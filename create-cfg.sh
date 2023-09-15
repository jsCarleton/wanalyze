for FILE in "$1"/*.bblocks; do
    to='timeout'
    if [[ "$OSTYPE" == "darwin"* ]]; then
        to='gtimeout'
    fi

#    echo "creating ${FILE%%.*}.$2"
    ${to} 20s dot "${FILE%%.*}.dot" -T"$2" -o "${FILE%%.*}.$2"; 
#    echo "creating ${FILE%%.*}-e.$2"
    ${to} 20s dot "${FILE%%.*}-e.dot" -T"$2" -o "${FILE%%.*}-e.$2"; 
done
