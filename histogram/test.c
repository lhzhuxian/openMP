#include <omp.h>
int main() {
  
  int sum = 0;
  int n = 100;
#pragma omp parallel for default(shared) private(i) reduction(+:sum)
  for(i=0; i<n; i++)
    sum = sum + i;
  printf("sum = %d\n", sum);
}
