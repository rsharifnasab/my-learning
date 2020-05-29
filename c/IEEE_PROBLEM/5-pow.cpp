// demo of pow problem with int
#include <cmath>
#include <iostream>
int main(){

    int a = pow(5,2); // it return double
    int b = pow(5,2) + 0.001; // it is safer
    std::cout << a << " " << b << std::endl;

    // why? because of IEEE754!
    // how its work? slow?
    return 0;
}
