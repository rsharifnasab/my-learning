#include <iostream>
#include <cmath>

int main(){

    double a = 0.1;
    double b = 0.2;

    if(a+b == 0.3){
        std::cout << "same" << std::endl;
    }
    else {
        std::cout << "not same" << std::endl;
    }









    double dist = a+b - 0.3;
    const double epsilon = 0.0001;

    if (dist < epsilon && dist > -epsilon )
        std::cout << "equal" << std::endl;
    else
        std::cout << "not equal" << std::endl;


    if ( fabs(a+b-0.3) < epsilon )
        std::cout << "equal" << std::endl;
    else
        std::cout << "not equal" << std::endl;


    return 0;
}
