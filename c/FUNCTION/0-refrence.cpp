#include <iostream>
int main(){

    int a = 0;
    int& b = a;
    //int& c = 2; //compiler error

    std::cout << "a : " << a << '\n';
    std::cout << "b : " << b << '\n';

    a++;
    std::cout << "after incrementing a" << '\n';
    std::cout << "a : " << a << '\n';
    std::cout << "b : " << b << '\n';

    b++;
    std::cout << "after incrementing b" << '\n';
    std::cout << "a : " << a << '\n';
    std::cout << "b : " << b << '\n';

    return 0;
}
