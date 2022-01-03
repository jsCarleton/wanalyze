#include <pthread.h>
#include <stdio.h>
#include <time.h>    

#define X 0
#define Y 1
#define r0 2
#define r1 3

void *lh_func(void *arg) {
  int *values = (void *)arg;
  values[X] = 1;
  values[r0] = values[Y];
  return 0;
}

void *rh_func(void *arg) {
  int *values = (void *)arg;
  values[Y] = 1;
  values[r1] = values[X];
  return 0;
}

void *lh_funcA(void *arg) {
  int *values = (void *)arg;
  __atomic_store_n (&values[X], 1, __ATOMIC_SEQ_CST);
  __atomic_store_n (&values[r0],
    __atomic_load_n(&values[Y], __ATOMIC_SEQ_CST),
      __ATOMIC_SEQ_CST);
  return 0;
}

void *rh_funcA(void *arg) {
  int *values = (void *)arg;
  __atomic_store_n (&values[Y], 1, __ATOMIC_SEQ_CST);
  __atomic_store_n (&values[r1], __atomic_load_n(&values[X], __ATOMIC_SEQ_CST), __ATOMIC_SEQ_CST);
  return 0;
}

// Foreground thread and main entry point
int main(int argc, char *argv[]) {
    int values[4];
    pthread_t lh_thread, rh_thread;
    int count[4] = {0, 0, 0, 0};

    clock_t start = clock();
    for (int i=0; i < 1; i++) {

        // initialize the data
        values[X] = 0;
        values[Y] = 0;

        if (i & 1) {
            // create the lefthand thread
            if (pthread_create(&lh_thread, NULL, lh_func, &values)) {
                perror("Thread create failed");
                return 1;
            }
            // create the righthand thread
            if (pthread_create(&rh_thread, NULL, rh_func, &values)) {
                perror("Thread create failed");
                return 1;
            }
        }
        else {
            // create the righthand thread
            if (pthread_create(&rh_thread, NULL, rh_func, &values)) {
                perror("Thread create failed");
                return 1;
            }
            // create the lefthand thread
            if (pthread_create(&lh_thread, NULL, lh_func, &values)) {
                perror("Thread create failed");
                return 1;
            }
        }

        // wait for background threads to finish
        if (pthread_join(lh_thread, NULL)) {
            perror("lh Thread join failed");
            return 2;
        }
        if (pthread_join(rh_thread, NULL)) {
            perror("rh Thread join failed");
            return 3;
        }
        if (values[r0] == 0 && values[r1] == 0)
            count[0]++;
        if (values[r0] == 0 && values[r1] == 1)
            count[1]++;
        if (values[r0] == 1 && values[r1] == 0)
            count[2]++;
        if (values[r0] == 1 && values[r1] == 1)
            count[3]++;
    }
    clock_t end = clock();

    // Show the result from the background threads
    printf("r0 is 0, r1 is 0, %d times\n", count[0]);
    printf("r0 is 0, r1 is 1, %d times\n", count[1]);
    printf("r0 is 1, r1 is 0, %d times\n", count[2]);
    printf("r0 is 1, r1 is 1, %d times\n", count[3]);
    printf("Elapsed time is %ld seconds\n", (end - start)/CLOCKS_PER_SEC);

    return 0;
}
