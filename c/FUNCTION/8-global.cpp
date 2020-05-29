#include <iostream>
#include <math>
int global0; //it is 0
int global1 = 1;
const int global3 = 3; // cant be changed
#define not_global 4


void print(int n){
    std::cout << n << std::endl;
}

void printAll(){
    print(global0);
    print(global1);
    print(global3);
    print(not_global);

}

int main(){
    int a = 5;
    int b = ++a;
    printAll();
    std::cout << "--------" << '\n';
    global1++;
    //global3++;
    //not_global++
    printAll();

    return 0;
}
