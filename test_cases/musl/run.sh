../../wanalyze.native "$1"/*.wasm >"$1".txt
nf=$(grep function "$1".txt | wc -l)
na=$(grep explode "$1".txt | wc -l)
lo=$(cat "$1"/*.wat | wc -l)
echo "$1: $nf functions, $na not analyzed, $lo LOC"


