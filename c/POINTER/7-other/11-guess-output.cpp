#include<stdio.h>
#include<iostream>

using namespace std;

void fun(int* p)
{
    int q = 38;
    p = &q;
    (*p) *= 2;
}

int main()
{
    int r = 2;
    int *z = &r;
    (*z)++; // r = 3 
    fun(z);
    printf("%d\n", *z);


    //     a[  0  1  2  3    4]
    //     p[ -1  0  1  2    3]
    int a[] = {7, 8, 9, 10, 13};
   
    int *p = a + 1;
    *(a+3) = (*p) + 3;
    //a[3]   =  8 + 3 ;

    // a[ 7 8 9 11 13 

    p[1] = 4 * a[1];
  //a[2] = 4 * 8 = 32 
  //a[ 7 8 32 11 13 
    cout << a[0] << ", " << a[1] << ", " << a[2] << ", " << a[3] << ", " << a[4] << '\n';



    int arr[] = {12, 13, 14}; // 3 * sizeof(int)  -> 3*4 = 12 

    // sizeof(12) = 4

//    *arr -> arr[0]

    //                       12           4               4
    printf("%d, %d, %d\n", sizeof(arr), sizeof(*arr), sizeof(arr[0]));

    // sizeof(char) = 1 
    // sizeof('c') = 1
    // sizeof('c') = 1 

    char crr[] = {'c', 'b', 'g'}; // 3 * sizeof(char) = 3 * 1 = 3 

    printf("%d, %d, %d\n", sizeof(crr), sizeof(*crr), sizeof(crr[0]));


    // double precision 64 bit 
    // sizeof(double) 8 byte
      
    double drr[] = {12.23, 13.54, 14.098};// 3 * sizeof(double) = 3*8 = 24

    printf("%d, %d, %d\n", sizeof(drr), sizeof(*drr), sizeof(drr[0]));


    return 0;
}
