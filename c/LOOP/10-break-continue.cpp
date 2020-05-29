#include <iostream>

int main(){

    for (int i = 0; i < 10; i++) {
        std::cout << i << ' ';
        if( i == 5) break;
    }


    std::cout << std::endl;

    for (int i = 0; i < 15; i++) {
        if(i%3 != 0)
            std::cout << i << " ";
    }
    std::cout << std::endl;

    return 0;
}
