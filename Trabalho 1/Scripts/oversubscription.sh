DATA=$(date "+%F %T")

OUTPUT_FILE="Results/oversubscription - $DATA.txt"

for j in {1..5};

	do
		echo -e "\t============================ EXECUÇÃO: $j ============================\n\n"

		for ((i=8;i<=256;i*=2));

			do
				echo -e "----- NUM_THREADS: $i ------\n"
				export OMP_NUM_THREADS=$i
				time ./primo_thread 1 10000000
				echo -e "\n----- ACABOU NUM_THREAD: $i -------\n\n"

			done # > "${OUTPUT_FILE}" 2>&1

	echo -e "\n\t============================ FIM EXECUÇÃO: $j ============================\n\n"

	done > "${OUTPUT_FILE}" 2>&1
