#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void bubble(int n, int* data) {
  int i, j, temp;

  for(i = 0; i < n - 1; i++) {
    for(j = 0; j < n - i - 1; j++) {          
      if(data[j] > data[j + 1]) {               
          temp = data[j];
          data[j] = data[j + 1];
          data[j + 1] = temp;
      }
    }
  }
}

int __attribute__ ((noinline)) compute(int n, int x, int a, int b, int c) {
  if (n == 0)
    return a;
  else if (n == 1)
    return a*x + b;
  else if (n == 2)
    return a*x*x + b*x + c;
  else
    return x;
}

int main(int argc, char** argv) {

  compute (1, 2, 3, 4, 5);

  // get the number of items to sort
  char* pEnd = NULL;
  int n = strtol(argv[1], &pEnd, 10);
  printf("generating and sorting %d items\n", n);

  // generate random data
  srand(time(NULL));
  int* data = malloc(n*sizeof(int));
  for (int i = 0; i < n; i++) {
    data[compute (1, 2, 3, 4, 5)] = rand();
  }

  // sort it
  bubble(n, data);
}
