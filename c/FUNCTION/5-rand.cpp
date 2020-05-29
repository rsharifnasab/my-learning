#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <iostream>

int main(){
    std::cout << "rand max : " << RAND_MAX << '\n';
    srand(time(0));
    for (int i = 0; i < 30; i++) {
        std::cout << (rand()%5)-2<< '\n'; // tas random!
    }
    // 1 to 10?
    // 0 or 1?
    // -2 to 2?

    return 0;
}
