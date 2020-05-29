#include <iostream>

// pure function
bool is_equals(double d1, double d2){
    const double epsilon = 0.0001;
    double dist = d1 - d2;
    double pos_dist = (dist < 0 ? -1 * dist : dist); // abs
    return (pos_dist < epsilon);
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
