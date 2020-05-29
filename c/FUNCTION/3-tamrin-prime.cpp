#include <iostream>

int tedad_maghsum_alaih(int n){
    int counter = 0;

    for (int i = 1; i<= n; i++) {
        if(n%i == 0) counter++;
    }
    return counter;
}
inline bool isPrime(int n){
    int counter = tedad_maghsum_alaih(n);
    return counter == 2 ;
}

int main(){
    int a,b;
    std::cin >> a >> b;

    for (int i = a; i <= b; i++) {
        if(isPrime(i))
            std::cout << i << ',';
    }
    std::cout << std::endl;
    return 0;
}



// pure function
bool is_prime(long num){
    if(num < 2) return false;
    if (num%2==0) return num==2;
    for (int i = 3; i*i <= num; i+=2) {
        if(num%i==0) return false;
    }
    return true;
}
