#include <iostream>
using namespace std;
void print(int a){
    cout<<"Print int: "<<a<<endl;
}

void print(double a){
    cout<<"Print double: "<<a<<endl;
}
void print(int a, int b){
    cout<<"Print two integers: "<<a<<","<<b<<endl;
}
int main(){

    print(5);

    print(5.0);

    print(5,6);

    print(5.0,6.0);

}
