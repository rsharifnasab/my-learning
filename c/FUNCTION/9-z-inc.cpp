#include <iostream>

int incrementAndGet(int& x){
    x = x+1;
    return x;
}

int getAndIncrement(int& x){
    int temp = x;
    x = x+1;
    return temp;
}

int main(){
    int a = 1;
    //int b = incrementAndGet(a); // ++a
    int b = getAndIncrement(a); // a++
    printf("a : %d , b : %d\n",a,b );
    return 0;
}
