// a program to compare for with while with do-while
#include <iostream>
int main(){

    const int a = 1; // from
    const int b = 10; // to

    // mikhaim barname az a ta b bere
    
    std::cout << "with for:" << '\n';
    int i ;
    for (i = a; i <= b; i+=2) { // 1 , 2 , 3

        std::cout << i << " ";
    }

    std::cout << std::endl;


    std::cout << "with while:" << '\n';
    int j = a; // 1
    while (j<=b) { // 2

        std::cout << j << " ";

        j+=2; // 3
    }
    std::cout << std::endl;


    std::cout << "with do-while" << '\n';
    int k=a; // 1
    do {

        std::cout << k << " ";

        k+=2; //3
    } while(k<=b); // 2
    std::cout << std::endl;


    std::cout << '\n' << "another example" << '\n';
    const long int n = 1921681100;

    long copy1 = n;


    while (copy1 > 0) { // good habbit
        std::cout << copy1%10 << " ";
        copy1 /= 10;
    }
    std::cout << std::endl;


    long copy2 = n;
    for (;copy2 > 0;) { // bad habbit
        std::cout << copy2%10 << " ";
        copy2 /= 10;
    }
    std::cout << std::endl;


    return 0;
}


/*

for behtare:
 az a ta b
 az 0 ta x , 2 ta 2 ta
 **tedad tekrar na maloum**

while behtare:
  ta vaghti adademoun ragham dasht
  ta vaghti karbar 0 vared nakarde
  **TA VAGHTI shart e ... bargharare**

do-while?

*/
