# Triangle Counting - OpenMP Implementations

## Parallel For with Reduction

This implementation uses `#pragma omp for reduction(+:triangle_count)` to parallelize the loop where each thread computes a portion of the work and contributes to the final count using the reduction clause.

### Run Commands:
- **Small:**  
  ```bash
  make run_small_for
  ```
- **Medium:**  
  ```bash
  make run_medium_for
  ```
- **Large:**  
  ```bash
  make run_large_for
  ```
- **Run for all datasets:**  
  ```bash
  make run_all_for
  ```

### Parallel For Version 2 (Inner Loop Parallelized)
In `forV2`, the **inner loop** of the triangle counting function is also parallelized. However, this results in significant overhead, making it **slower than `for`** due to frequent synchronizations.

### Run Commands:
- **Small:**  
  ```bash
  make run_small_forV2
  ```
- **Medium:**  
  ```bash
  make run_medium_forV2
  ```
- **Large:**  
  ```bash
  make run_large_forV2
  ```
- **Run for all datasets:**  
  ```bash
  make run_all_forV2
  ```

---

## Parallel Region with Reduction

This implementation uses `#pragma omp parallel` to parallelize the triangle counting process while using the **reduction clause** to combine results.

### Run Commands:
- **Small:**  
  ```bash
  make run_small_par
  ```
- **Medium:**  
  ```bash
  make run_medium_par
  ```
- **Large:**  
  ```bash
  make run_large_par
  ```
- **Run for all datasets:**  
  ```bash
  make run_all_par
  ```

### Variations:
- **`parV2` & `parV4`**: Also parallelizes the **inner loop** of the computation (similar to `forV2`), but this version generally **performs worse** due to synchronization overhead.
- **`parV3` & `parV4`**: Use **block partitioning** for loop distribution.
- **`parV1` & `parV2`**: Use **cyclic distribution** for loop partitioning.

### Run Commands:
- **Small:**  
  ```bash
  make run_small_parV2
  make run_small_parV3
  make run_small_parV4
  ```
- **Medium:**  
  ```bash
  make run_medium_parV2
  make run_medium_parV3
  make run_medium_parV4
  ```
- **Large:**  
  ```bash
  make run_large_parV2
  make run_large_parV3
  make run_large_parV4
  ```
- **Run all datasets:**  
  ```bash
  make run_all_parV2
  make run_all_parV3
  make run_all_parV4
  ```

---

## Parallel Region with Critical Section

This implementation uses `#pragma omp parallel` along with `#pragma omp critical` to prevent multiple threads from updating the shared triangle count simultaneously. While this ensures correctness, it introduces significant synchronization overhead.

### Run Commands:
- **Small:**  
  ```bash
  make run_small_parcrit
  ```
- **Medium:**  
  ```bash
  make run_medium_parcrit
  ```
- **Large:**  
  ```bash
  make run_large_parcrit
  ```
- **Run for all datasets:**  
  ```bash
  make run_all_parcrit
  ```

### Parallel Critical Section Version 2
- **`parcritV1`**: Uses **cyclic for loop parallelization**.  
- **`parcritV2`**: Uses **block partitioning**, which may reduce thread contention.

### Run Commands:
- **Small:**  
  ```bash
  make run_small_parcritV2
  ```
- **Medium:**  
  ```bash
  make run_medium_parcritV2
  ```
- **Large:**  
  ```bash
  make run_large_parcritV2
  ```
- **Run all datasets:**  
  ```bash
  make run_all_parcritV2
  ```

---

## Parallel Region with Atomics

This implementation uses `#pragma omp parallel` along with `#pragma omp atomic` to **avoid critical sections** while ensuring only one thread updates the shared counter at a time. This reduces the overhead of `critical`, but **atomic operations still introduce contention**.

### Run Commands:
- **Small:**  
  ```bash
  make run_small_paratom
  ```
- **Medium:**  
  ```bash
  make run_medium_paratom
  ```
- **Large:**  
  ```bash
  make run_large_paratom
  ```
- **Run for all datasets:**  
  ```bash
  make run_all_paratom
  ```

### Parallel Atomics Version 2
- **`paratomV2`**: Optimized version with block partitioning.

### Run Commands:
- **Small:**  
  ```bash
  make run_small_paratomV2
  ```
- **Medium:**  
  ```bash
  make run_medium_paratomV2
  ```
- **Large:**  
  ```bash
  make run_large_paratomV2
  ```
- **Run all datasets:**  
  ```bash
  make run_all_paratomV2
  ```

---

## Running All Implementations for Different Thread Configurations

The following commands will execute **all** variations across **small, medium, and large datasets** using different thread counts:

- **Parallel For Variants:**  
  ```bash
  make run_all_for_diff_threads
  make run_all_forV2_diff_threads
  ```
- **Parallel Region Variants:**  
  ```bash
  make run_all_par_diff_threads
  make run_all_parV2_diff_threads
  make run_all_parV3_diff_threads
  make run_all_parV4_diff_threads
  ```
- **Parallel Critical Section Variants:**  
  ```bash
  make run_all_parcrit_diff_threads
  make run_all_parcritV2_diff_threads
  ```
- **Parallel Atomics Variants:**  
  ```bash
  make run_all_paratom_diff_threads
  make run_all_paratomV2_diff_threads
  ```

---

## Notes:
1. **Reduction-based implementations (`for`, `par`, `parV2`, `parV4`)** are generally the fastest.
2. **Critical section (`parcrit`, `parcritV2`)** slows down execution due to synchronization bottlenecks.
3. **Atomic operations (`paratom`, `paratomV2`)** can perform better than `critical`, but still have contention.
4. **Block partitioning (`parV3`, `parV4`)** can be more efficient in certain cases compared to cyclic distribution.


