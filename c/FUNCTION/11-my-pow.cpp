#include <iostream>

long my_pow(long paye,long tavan){
    if (paye == 0) return 0;
    long ans = 1;
    for (int i = 0; i < tavan; i++) {
        ans *= paye;
    }
    return ans;
}


int main(){

    std::cout << my_pow(3,2) << std::endl;

    std::cout << my_pow(2,3) << std::endl;

    std::cout << my_pow(10,0) << std::endl;

    std::cout << my_pow(0,5) << std::endl;


    return 0;
}
