#include <iostream>

int main(){
    
    while (true) { // it is only ok if we have break
        std::cout << "salam!" << '\n';
    }
    while (false) {
        std::cout << "ejra mishe?" << '\n';
    }
    do {
        std::cout << "in yeki chi?" << '\n';
    } while(false); // bad practice!


    return 0;
}
