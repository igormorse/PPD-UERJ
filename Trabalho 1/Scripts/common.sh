DATA=$(date "+%F %T")

OUTPUT_FILE="Results/${1} - $DATA.txt"

for i in {1..5};
	do
		echo -e "\t============================ EXECUÇÃO: $i ============================\n\n"

		(time ./primo_${1} 1 10000000)

		echo -e "\n\t============================ FIM EXECUÇÃO: $i ============================\n\n"
	done > "${OUTPUT_FILE}" 2>&1
