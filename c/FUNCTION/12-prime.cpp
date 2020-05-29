#include <iostream>




/*
we can optimize
we can save fir later user
make code more readable
*/

bool is_aval(long); // you can get it all!

int main(){

    const int n = 20;

    for (int i = 0; i < n; i++) {
        if ( is_aval(i) ) { // much cleaner
            std::cout << i << std::endl;
        }
    }

    return 0;
}













bool is_aval(long num){
    if(num < 2) return false;
    if (num%2==0) return num==2;
    for (int i = 2; i*i <= num; i+=2) {
        if(num%i==0) return false;
    }
    return true;
}
