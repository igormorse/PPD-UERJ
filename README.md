# PPD-UERJ

gcc soma_vet_omp_v03.c mytime.c -o soma_vet_omp_v03 -O3 -DPROFILE -DPROC_PESADO=100 -lm -fopenmp

time ./soma_vet_omp_v03 1000000 a_desbalanceado.in b_desbalanceado.in c.desb.omp

for ((i=2; i<=4; i++)); do export OMP_NUM_THREADS=$i ;  time ./soma_vet_omp_v04_static 1000000 a_desbalanceado.in b_desbalanceado.in /tmp/c.desb.static.out ; sleep 1; done

gcc mytime.c soma_vet_omp_v04.c -o soma_vet_omp_v04_static -DPROFILE -DPROC_PESADO=100 -DBAL=static -lm -fopenmp -O3

#pragma omp parallel for reduction(+:cp)
