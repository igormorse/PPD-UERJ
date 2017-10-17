DATA=$(date "+%F %T")

OUTPUT_FILE="Results/oversubscription - $DATA.txt"

for i in {2..128..2};
	do
		echo -e "----- NUM_THREADS: $i ------\n"
		export OMP_NUM_THREADS=$i
		time ./primo_thread 1 10000000
		echo -e "\n----- ACABOU NUM_THREAD: $i -------\n\n"

	done > "${OUTPUT_FILE}" 2>&1
