#include <iostream>

//pure function
// base to be tavan expo miresoune
long int naturalPow(int base, int expo){
    long result = 1;
    for( int i = 0; i < expo; i++){
        result *= base ;
    }
    return result;
}

int main(){
    int m,n;
    std::cin >> m >>n;
    std::cout << naturalPow(m,n) << std::endl;
    return 0;
}
