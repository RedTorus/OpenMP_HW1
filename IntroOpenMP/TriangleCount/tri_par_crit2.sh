#!/bin/bash
# run_tri_par_crit2.sh

echo "Script starting..."

# List of thread counts to test (common for all scenarios)
THREADS_LIST=(1 2 4 8 16 2048)

######################################
# Small Scenario
######################################
echo "=== Running Small Scenario ==="
# Compile for small scenario
gcc -O2 tri_par_crit2.c -o tri_par_crit2.x -std=c99 -DN=6474 -DNUM_A=25144 -fopenmp

for threads in "${THREADS_LIST[@]}"; do
    echo "--------------------------------------------"
    echo "Small: Running with ${threads} thread(s):"
    echo "--------------------------------------------"
    export OMP_NUM_THREADS=${threads}
    # Pipe the concatenated small input files into the executable
    cat small_IA.txt small_JA.txt | ./tri_par_crit2.x 10
done

######################################
# Medium Scenario
######################################
echo "=== Running Medium Scenario ==="
# Compile for medium scenario
gcc -O2 tri_par_crit2.c -o tri_par_crit2.x -std=c99 -DN=9877 -DNUM_A=51946 -fopenmp

for threads in "${THREADS_LIST[@]}"; do
    echo "--------------------------------------------"
    echo "Medium: Running with ${threads} thread(s):"
    echo "--------------------------------------------"
    export OMP_NUM_THREADS=${threads}
    # Pipe the concatenated medium input files into the executable
    cat medium_IA.txt medium_JA.txt | ./tri_par_crit2.x 10
done

######################################
# Large Scenario
######################################
echo "=== Running Large Scenario ==="
# Compile for large scenario
gcc -O2 tri_par_crit2.c -o tri_par_crit2.x -std=c99 -DN=22687 -DNUM_A=109410 -fopenmp

for threads in "${THREADS_LIST[@]}"; do
    echo "--------------------------------------------"
    echo "Large: Running with ${threads} thread(s):"
    echo "--------------------------------------------"
    export OMP_NUM_THREADS=${threads}
    # Pipe the concatenated large input files into the executable
    cat large_IA.txt large_JA.txt | ./tri_par_crit2.x 10
done

echo "Script finished."
