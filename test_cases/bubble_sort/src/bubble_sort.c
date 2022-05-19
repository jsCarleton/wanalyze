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

int main(int argc, char** argv) {

  // get the number of items to sort
  char* pEnd = NULL;
  int n = strtol(argv[1], &pEnd, 10);
  printf("generating and sorting %d items\n", n);

  // generate random data
  srand(time(NULL));
  int* data = malloc(n*sizeof(int));
  for (int i = 0; i < n; i++) {
    data[i] = rand();
  }

  // sort it
  bubble(n, data);
}
