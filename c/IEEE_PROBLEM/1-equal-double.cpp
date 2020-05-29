#include <iostream>

bool is_equals(double d1,double d2){
    const double eps = 0.001;
    double dist = d1 - d2;
    if (dist < 0) dist *=-1;
    return ( dist < eps);

}

int main(){
    double d1 = 0.3;
    double d2 = 0.2 + 0.1;
    if( is_equals(d1,d2) )
        std::cout << "mosavi" << '\n';
    else
        std::cout << "na mosavi" << '\n';
    return 0;
}
