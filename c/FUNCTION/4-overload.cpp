#include <stdio.h>
int f(){
    return 1;
}

int f(int a){
    return 2;
}

int f(double a){
    return 3;
}

int main(){
    printf("%d\n", f() );
    printf("%d\n", f(10) );
    printf("%d\n", f(10.0) );
}
