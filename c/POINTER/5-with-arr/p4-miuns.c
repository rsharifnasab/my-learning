#include<stdio.h>
#include<stdlib.h>


int main(int argc, char *argv[])
{
    int *p_asli = (int*) malloc( 4 * sizeof(int) ); // 1000
    int a[10];
    
    p_asli[0] = 0;
    p_asli[1] = 1;
    p_asli[2] = 2;
    p_asli[3] = 3;
//  [ , , , ]
//->
//  ->
    int *p2 = p_asli +1; // what will happen here?
    
    printf("%d\n",p2[-1]); // output?
    // p2[-1] =>  *(p2-1)  =>  *(p_asli)  =>  p_asli[0]
   

    printf("%d\n",p2[0]); // output? 1

    printf("%d\n",p2[+1]); // output? 2


    free(p_asli);
   // free(p2-1);
    return 0;
}

////////// table 
// 16 byte  1000
//
//
//
