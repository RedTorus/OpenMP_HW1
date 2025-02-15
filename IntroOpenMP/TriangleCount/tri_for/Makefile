run_small:
	gcc -O2 tri_for.c -o tri_for.x -std=c99 -DN=6474 -DNUM_A=25144 -fopenmp
	cat small_IA.txt small_JA.txt | ./tri_for.x 10

run_medium:
	gcc -O2 tri_for.c -o tri_for.x -std=c99 -DN=9877 -DNUM_A=51946 -fopenmp
	cat medium_IA.txt medium_JA.txt | ./tri_for.x 10

run large:
	gcc -O2 tri_par.c -o tri_par.x -std=c99 -DN=9877 -DNUM_A=51946 -fopenmp
	cat medium_IA.txt medium_JA.txt | ./tri_par.x 10