#include<stdio.h>
#include<stdlib.h>


int main(int argc, char *argv[])
{
    int *p = (int*) malloc( 4 * sizeof(int) );
//     p->> [0,1,2,3]
    *p = 0; // 4 byte avval ro meghdar dadim 


    printf("%p\n", p); // 1000
    printf("%p\n", p+1); //1004 
    printf("%p\n", p+2); // 1008
    printf("%p\n", p+3); // 1012

    printf("%p\n", p-1); // just an address, we cant get value
 
    *(p+1) = 1;
    *(p+2) = 2;
    printf("%d\n", *(p+2) );
    

    p[3] = 3; // *(p+3)

    printf("%d",p[3]);

   free(p);
    return 0;
}

// why arrays start at zero?
