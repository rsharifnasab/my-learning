#include <iostream>
int main(){

    const long int num = 123456789L;
    // we do not change the original one


    long copy = num;
    long ans = 0;



    while (copy>0) { // ta vaghti ragham mande
        int digit = copy%10;
        ans = ans * 10 + digit; // hame ro yeki shift bede
        copy /= 10;
    }

    std::cout << ans <<  std::endl;


    return 0;
}

/*
    example:
    digit : 0 ,  ans : 0  , copy : 123
    digit : 3 ,  ans : 3  , copy : 12
    digit : 2 ,  ans : 32  , copy : 1
    digit : 1 ,  ans : 321  , copy : 0
    end
*/
