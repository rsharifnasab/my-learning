
#include <stdio.h>
#include <stdlib.h>

int values[] = { 88, 56, 100, 2, 25 };

int m;

int cmpfunc (const void * a, const void * b) {
   int *a1 = (int*) a;
   int *b1 = (int*) b;
    
   int a2 =  *(a1);
   int b2 = *(b1);

   int diff = a2 - b2;

///////////////

if(a2 >= m){
    return 1;
}
if ( b2 >=m) {
    return -1;
}


//////////////

   if( diff == 0 ) return 0;
   else if( diff > 0) return 1;
   else  return -1;


}

int main () {
   int n;

   printf("Before sorting the list is: \n");
   for( n = 0 ; n < 5; n++ ) {
      printf("%d ", values[n]);
   }

   qsort(values, 5, sizeof(int), cmpfunc);

   printf("\nAfter sorting the list is: \n");
   for( n = 0 ; n < 5; n++ ) {   
      printf("%d ", values[n]);
   }
  
   return(0);
}

// 1 3 5 8 12 
//sum =  1 + 3  = 4 
//
//
//sorted: 11 12 1 3 5 8 
//sum = 11 + 12 + 1 = 24
