#include <iostream>
// pure function
int abs(int x){
    if(x < 0) return -1 * x;
    else return x;
}

int zarbdar2(int x){
    return x * 2;
}

void duplicator(int& x){
    x = x * 2;
}

void printer(int x){
    std::cout << "x : " << x << '\n';
}

double getPi(){
    return 3.1415926D;
}

int dice(){
    srand(time(0));
    return (rand()%6) + 1;
}

int getUserInfo(int x){
    std::cout << "hello please enter :" << x << "info" << '\n';
    for (int i = 0; i < x; i++) {
        int a;
        std::cin >> a;
        std::cout << "entered" << a << '\n';
    }
    std::cout << "done" << '\n';
    return 0;
}

bool isUpperCase(char c){
    return ( c >= 'A' && c <= 'Z') ;
}






int main(){

    return 0;
}
