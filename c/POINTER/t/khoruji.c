

#include <stdio.h>
#include <stdlib.h>

void func(float* ptr){
    (*ptr)++;
}

void swap(int* a ,int* b){
    int temp = *a;

    a = (int*)malloc(sizeof(int));
    *a = *b;
    b = (int*)malloc(sizeof(int));
    *b = temp;
}

int main(){
        //breakpoint 1
    int num1 = 11;
    float num2 = num1;

    float* p1 = (float*)&num1;
    float* p2 = &num2;

    func(p1);
    func(p2);

    printf("%d %f\n",num1,*p2);

        //breakpoint 2
    int a=5,b=6;
    swap(&a, &b);
    printf("%d %d\n",a,b);

    return 0;
}
