#include <iostream>

// pure function
int tedad_maghsum_alaih(int n){
    int divisors = 0;
    for (int i = 1; i  <= n; i++) {
        if(n%i == 0) ++divisors;
    }
    return divisors;
}

// pure function
bool is_prime(int n){
    return (tedad_maghsum_alaih(n) == 2);
}

int name(int n,bool x){
    if(x)
        return tedad_maghsum_alaih(n);
    else
        return is_prime(n);
}


// pure function
bool is_prime_fast(int num){
    if(num < 2) return false;
    if (num%2==0) return num==2;
    for (int i = 3; i*i <= num; i+=2) {
        if(num%i==0) return false; // return (num%i == 0) ?
    }
    return true;

}

int main(){

    int n;
    std::cin >> n;
    std::cout << tedad_maghsum_alaih(n) << std::endl;
    if (is_prime(n))
        std::cout << "aval hast" << '\n';
    else
        std::cout << "aval nist" << '\n';

    return 0;
}
