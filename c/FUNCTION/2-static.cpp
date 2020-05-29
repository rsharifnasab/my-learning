#include <iostream>
#include <stdio.h>
int z(){
    static int t = 0;
    t++; // tedad dafa'atee ke tabe seda zade shode!
    return t;
}
int main(){
    std::cout << z() << std::endl;
    std::cout << z() << std::endl;
    std::cout << z() << std::endl;
    printf("%d\n", z() );
    printf("%d\n", z() );
    printf("%d\n", z() );

    return 0;
}
