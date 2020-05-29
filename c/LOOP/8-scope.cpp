#include <iostream>

int main(){

    int i = 0;
    int j =0; // chera inja?
    while (i<5) {
        j = 0;
        while (j<3) {
            std::cout << "i : " << i;
            std::cout << ", j :" << j << std::endl;
            j++;
        }
        i++;
    }
    return 0;
}
