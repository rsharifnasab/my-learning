#include<stdio.h>
#include<stdlib.h>


int main(int argc, char *argv[])
{
    int *p_asli = (int*) malloc( 4 * sizeof(int) );

    p_asli[0] = 0;
    p_asli[1] = 1;
    p_asli[2] = 2;
    p_asli[3] = 3;


    int *p2 = p_asli +1; // what will happen here?
    
    printf("%d\n",p2[-1]); // output?
    // p2[-1] =>  *(p2-1)  =>  *(p_asli-0)  =>  p_asli[0]
   

    printf("%d\n",p2[0]); // output?

    printf("%d\n",p2[+1]); // output?


    free(p_asli);
    // we dont do:  free(p2);
    return 0;
}
