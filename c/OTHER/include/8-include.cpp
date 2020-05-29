#include <iostream>

#include "my_lib.h"

int main(){
    printf("salam\n" );
    printf("value of f() is : %d\n", f() );

    extern int x; // bedoun ye x i hast

    printf("value of x is : %d\n", x );
    return 0;
}
