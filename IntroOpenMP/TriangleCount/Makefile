# Makefile for running small, medium, and large scenarios

############################################
# Small Scenario
############################################
run_small:
	gcc -O2 triangle.c -o triangle.x -std=c99 -DN=6474 -DNUM_A=25144 -fopenmp
	cat small_IA.txt small_JA.txt | ./triangle.x 10

run_small_for:
	gcc -O2 tri_for.c -o tri_for.x -std=c99 -DN=6474 -DNUM_A=25144 -fopenmp
	cat small_IA.txt small_JA.txt | ./tri_for.x 10

run_small_forV2:
	gcc -O2 tri_for2.c -o tri_for2.x -std=c99 -DN=6474 -DNUM_A=25144 -fopenmp
	cat small_IA.txt small_JA.txt | ./tri_for2.x 10

run_small_par:
	gcc -O2 tri_par.c -o tri_par.x -std=c99 -DN=6474 -DNUM_A=25144 -fopenmp
	cat small_IA.txt small_JA.txt | ./tri_par.x 10

run_small_parV2:
	gcc -O2 tri_par2.c -o tri_par2.x -std=c99 -DN=6474 -DNUM_A=25144 -fopenmp
	cat small_IA.txt small_JA.txt | ./tri_par2.x 10

run_small_parcrit:
	gcc -O2 tri_par_crit.c -o tri_par_crit.x -std=c99 -DN=6474 -DNUM_A=25144 -fopenmp
	cat small_IA.txt small_JA.txt | ./tri_par_crit.x 10

run_small_parcritV2:
	gcc -O2 tri_par_crit2.c -o tri_par_crit2.x -std=c99 -DN=6474 -DNUM_A=25144 -fopenmp
	cat small_IA.txt small_JA.txt | ./tri_par_crit2.x 10

run_small_paratom:
	gcc -O2 tri_par_atom.c -o tri_par_atom.x -std=c99 -DN=6474 -DNUM_A=25144 -fopenmp
	cat small_IA.txt small_JA.txt | ./tri_par_atom.x 10

run_small_paratomV2:
	gcc -O2 tri_par_atom2.c -o tri_par_atom2.x -std=c99 -DN=6474 -DNUM_A=25144 -fopenmp
	cat small_IA.txt small_JA.txt | ./tri_par_atom2.x 10

############################################
# Medium Scenario
############################################
run_medium:
	gcc -O2 triangle.c -o triangle.x -std=c99 -DN=9877 -DNUM_A=51946 -fopenmp
	cat medium_IA.txt medium_JA.txt | ./triangle.x 10

run_medium_for:
	gcc -O2 tri_for.c -o tri_for.x -std=c99 -DN=9877 -DNUM_A=51946 -fopenmp
	cat medium_IA.txt medium_JA.txt | ./tri_for.x 10

run_medium_forV2:
	gcc -O2 tri_for2.c -o tri_for2.x -std=c99 -DN=9877 -DNUM_A=51946 -fopenmp
	cat medium_IA.txt medium_JA.txt | ./tri_for2.x 10

run_medium_par:
	gcc -O2 tri_par.c -o tri_par.x -std=c99 -DN=9877 -DNUM_A=51946 -fopenmp
	cat medium_IA.txt medium_JA.txt | ./tri_par.x 10

run_medium_parV2:
	gcc -O2 tri_par2.c -o tri_par2.x -std=c99 -DN=9877 -DNUM_A=51946 -fopenmp
	cat medium_IA.txt medium_JA.txt | ./tri_par2.x 10

run_medium_parcrit:
	gcc -O2 tri_par_crit.c -o tri_par_crit.x -std=c99 -DN=9877 -DNUM_A=51946 -fopenmp
	cat medium_IA.txt medium_JA.txt | ./tri_par_crit.x 10

run_medium_parcritV2:
	gcc -O2 tri_par_crit2.c -o tri_par_crit2.x -std=c99 -DN=9877 -DNUM_A=51946 -fopenmp
	cat medium_IA.txt medium_JA.txt | ./tri_par_crit2.x 10

run_medium_paratom:
	gcc -O2 tri_par_atom.c -o tri_par_atom.x -std=c99 -DN=9877 -DNUM_A=51946 -fopenmp
	cat medium_IA.txt medium_JA.txt | ./tri_par_atom.x 10

run_medium_paratomV2:
	gcc -O2 tri_par_atom2.c -o tri_par_atom2.x -std=c99 -DN=9877 -DNUM_A=51946 -fopenmp
	cat medium_IA.txt medium_JA.txt | ./tri_par_atom2.x 10

############################################
# Large Scenario
############################################
run_large:
	gcc -O2 triangle.c -o triangle.x -std=c99 -DN=22687 -DNUM_A=109410 -fopenmp
	cat large_IA.txt large_JA.txt | ./triangle.x 10

run_large_for:
	gcc -O2 tri_for.c -o tri_for.x -std=c99 -DN=22687 -DNUM_A=109410 -fopenmp
	cat large_IA.txt large_JA.txt | ./tri_for.x 10

run_large_forV2:
	gcc -O2 tri_for2.c -o tri_for2.x -std=c99 -DN=22687 -DNUM_A=109410 -fopenmp
	cat large_IA.txt large_JA.txt | ./tri_for2.x 10

run_large_par:
	gcc -O2 tri_par.c -o tri_par.x -std=c99 -DN=22687 -DNUM_A=109410 -fopenmp
	cat large_IA.txt large_JA.txt | ./tri_par.x 10

run_large_parV2:
	gcc -O2 tri_par2.c -o tri_par2.x -std=c99 -DN=22687 -DNUM_A=109410 -fopenmp
	cat large_IA.txt large_JA.txt | ./tri_par2.x 10

run_large_parcrit:
	gcc -O2 tri_par_crit.c -o tri_par_crit.x -std=c99 -DN=22687 -DNUM_A=109410 -fopenmp
	cat large_IA.txt large_JA.txt | ./tri_par_crit.x 10

run_large_parcritV2:
	gcc -O2 tri_par_crit2.c -o tri_par_crit2.x -std=c99 -DN=22687 -DNUM_A=109410 -fopenmp
	cat large_IA.txt large_JA.txt | ./tri_par_crit2.x 10

run_large_paratom:
	gcc -O2 tri_par_atom.c -o tri_par_atom.x -std=c99 -DN=22687 -DNUM_A=109410 -fopenmp
	cat large_IA.txt large_JA.txt | ./tri_par_atom.x 10

run_large_paratomV2:
	gcc -O2 tri_par_atom2.c -o tri_par_atom2.x -std=c99 -DN=22687 -DNUM_A=109410 -fopenmp
	cat large_IA.txt large_JA.txt | ./tri_par_atom2.x 10

############################################
# Run all thread variations using Bash scripts
############################################
run_all_for_diff_threads:
	bash tri_for.sh 

run_all_forV2_diff_threads:
	bash tri_for2.sh 

run_all_par_diff_threads:
	bash tri_par.sh

run_all_parV2_diff_threads:
	bash tri_par2.sh

run_all_parcrit_diff_threads:
	bash tri_par_crit.sh

run_all_parcritV2_diff_threads:
	bash tri_par_crit2.sh

run_all_paratom_diff_threads:
	bash tri_par_atom.sh

run_all_paratomV2_diff_threads:
	bash tri_par_atom2.sh
