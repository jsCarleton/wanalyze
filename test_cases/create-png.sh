for FILE in "$1"/funcs/*.dot; do 
    echo "creating ${FILE%%.*}.png"
    dot "$FILE" -Tpng -o "${FILE%%.*}.png"; 
done
