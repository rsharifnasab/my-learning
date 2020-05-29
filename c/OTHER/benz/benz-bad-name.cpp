#include <iostream>
#include <stdlib.h>
int main(){

    srand(time(0));

    const long int a = 1000000;
    long b = 0;
    long c = 0;

    long d = 0;
    long e = 0;

    for (long i = 0; i < a; i++) {
        int f = rand()%3;
        int g = rand()%3;
        if (f == g) b++;
        else c++;
        int h = rand()%3;
        while(h == f || h == g)
            h = rand()%3;
        g =  3 - (g + h);
        if(g == f) d++;
        else e++;
    }

    std::cout << "b = "<<b*1.0/a << " c = " << c*1.0/a << std::endl;

    return 0;
}
