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
    (*z)++;
    fun(z);
    printf("%d\n", *z);

    int a[] = {7, 8, 9, 10, 13};
    int *p = a + 1;
    *(a + 3) = *p + 3;
    p[1] = 4 * a[1];
    cout << a[0] << ", " << a[1] << ", " << a[2] << ", " << a[3] << ", " << a[4] << '\n';

    int arr[] = {12, 13, 14};
    printf("%d, %d, %d\n", sizeof(arr), sizeof(*arr), sizeof(arr[0]));
    char crr[] = {'c', 'b', 'g'};
    printf("%d, %d, %d\n", sizeof(crr), sizeof(*crr), sizeof(crr[0]));
    double drr[] = {12.23, 13.54, 14.098};
    printf("%d, %d, %d\n", sizeof(drr), sizeof(*drr), sizeof(drr[0]));
    return 0;
}