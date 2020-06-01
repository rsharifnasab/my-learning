
#include <stdio.h>
#include <stdlib.h>
#define std_id 8

void func(int *a, int *b){
    a=b-2;
    a[9] = 2020;
    b = (int*)malloc(sizeof(int));
    *b = a[2];
}

int main(){
    int *array = (int*)calloc(std_id,sizeof(int));
    //input
    for (int i=0; i<std_id; i++){
        scanf("%d", &array[i]);
    }

    //breakpoint 1
    int *pt1 = &array[6];
    printf("%d\n",pt1[-6]); // aval e array
    for (int i=0; i<std_id; i++){
        printf("%d ",pt1[i]);
        pt1--;
    }
    printf("\n");

    //breakpoint 2
    printf("%d\n",pt1);

    //breakpoint 3
    func(pt1, array);
    printf("%d %d\n",array[7], array[0]);

    free(array);

    return 0;
}
