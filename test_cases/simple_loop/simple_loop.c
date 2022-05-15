#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int sum(int n, int* data) {
  int i, j, sum = 0;

  for(i = 0; i < n; i++) {
    sum = sum + data[i];
  }

  return sum;
}

int main(int argc, char** argv) {

  // get the number of items to sort
  char* pEnd = NULL;
  int n = strtol(argv[1], &pEnd, 10);
  printf("generating and summing %d items\n", n);

  // generate random data
  srand(time(NULL));
  int* data = malloc(n*sizeof(int));
  for (int i = 0; i < n; i++) {
    data[i] = rand();
  }

  // sum it
  sum(n, data);
}
