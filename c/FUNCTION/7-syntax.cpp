#include <iostream>




void f(){
    std::cout << "f is called" << '\n';
}

int main(){
    int f;
    ::f();
    f;
}
