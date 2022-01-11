for FILE in "$1"/funcs/*.dot; do dot "$FILE" -Tpng -o "${FILE%%.*}.png"; done
