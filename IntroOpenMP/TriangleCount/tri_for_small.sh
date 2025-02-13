#!/bin/bash
# tri_for_small.sh

# Compile the program with OpenMP support
echo "Script starting..."

gcc -O2 tri_for.c -o tri_for.x -std=c99 -DN=6474 -DNUM_A=25144 -fopenmp

# List of thread counts to test
THREADS_LIST=(1 2 4 8 16 2048)

# Loop over each thread count and run the executable
for threads in "${THREADS_LIST[@]}"; do
    echo "--------------------------------------------"
    echo "Running with ${threads} thread(s):"
    echo "--------------------------------------------"
    
    # Set the environment variable for the current run
    export OMP_NUM_THREADS=${threads}
    
    # Run the executable, piping the concatenated files as input
    cat small_IA.txt small_JA.txt | ./tri_for.x 10
done
