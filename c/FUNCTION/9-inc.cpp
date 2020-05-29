#include <iostream>

int incrementAndGet(int& a){
    a=a+1;
    return a;
}

int getAndIncrement(int &a){
    int b=a;
    a+=1;
    return b;
}

int main(){
    int a = 1;
    //int b = incrementAndGet(a); // ++a
    int b = getAndIncrement(a); // a++
    printf("a : %d , b : %d\n",a,b );
    return 0;
}
