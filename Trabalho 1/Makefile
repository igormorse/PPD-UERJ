run:
	gcc primo_static.c -lm -fopenmp -o primo_static -w
	gcc primo_guided.c -lm -fopenmp -o primo_guided -w
	gcc primo_dynamic.c -lm -fopenmp -o primo_dynamic -w
	gcc primo_sequential.c -lm -fopenmp -o primo_sequential -w
	gcc primo_thread.c -lm -fopenmp -o primo_thread -w

oversubscription:
	bash Scripts/oversubscription.sh

sequential:
	bash Scripts/common.sh sequential

static:
	bash Scripts/common.sh static

dynamic:
	bash Scripts/common.sh dynamic

guided:
	bash Scripts/common.sh guided

all:
	bash Scripts/oversubscription.sh
	bash Scripts/common.sh sequential
	bash Scripts/common.sh static
	bash Scripts/common.sh dynamic
	bash Scripts/common.sh guided

all-over:
	bash Scripts/common.sh sequential
	bash Scripts/common.sh static
	bash Scripts/common.sh dynamic
	bash Scripts/common.sh guided

clean:
	rm primo_static
	rm primo_guided
	rm primo_sequential
	rm primo_thread
	rm primo_dynamic
