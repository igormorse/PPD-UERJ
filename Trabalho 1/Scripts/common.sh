DATA=$(date "+%F %T")

OUTPUT_FILE="Results/${1} - $DATA.txt"

(time ./primo_${1} 1 10000000) > "${OUTPUT_FILE}" 2>&1
