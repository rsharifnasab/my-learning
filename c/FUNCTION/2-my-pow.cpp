#include <iostream>

// tavan baraye addad tabiee
int my_pow (int a , int b)
{
    int ans = 1;
    for (int i=0; i<b; i++)
        ans *= a;
    return ans;
}

int main(){
/*
    int m,n;
    std::cin >> m >> n;
    std::cout << my_pow(m,n) std::endl;
*/
    std::cout << my_pow(3,2) << std::endl;

    std::cout << my_pow(2,3) << std::endl;

    std::cout << my_pow(10,0) << std::endl;

    std::cout << my_pow(0,5) << std::endl;

    return 0;
}

