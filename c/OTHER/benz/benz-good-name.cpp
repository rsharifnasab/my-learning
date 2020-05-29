// mounty hall problem

#include <iostream>
#include <stdlib.h>
int main(){

    srand(time(0));

    const long int n = 100000;//tedad tekrar

    // halat adi
    long win = 0;
    long lose = 0;

    //halati ke avaz kone
    long avaz_won = 0;
    long avaz_lose = 0;

    for (long i = 0; i < n; i++) {
        int benz = rand()%3;
        int choose = rand()%3;
        // avaz nakone
        if (benz == choose) win++;
        else lose++;
        // avaz kone
        int baz = rand()%3;
        while(baz == benz || baz == choose)
            baz = rand()%3;
        choose =  3 - (choose + baz); // oun yeki
        if(choose == benz) avaz_won++;
        else avaz_lose++;

    }

    std::cout << "avaz nakone:" << '\n';
    std::cout << "win :"<<win*1.0/n << " lose = " << lose*1.0/n << std::endl;

    std::cout << "avaz kone:" << '\n';
    std::cout << "win :"<<avaz_won*1.0/n << " lose = " << avaz_lose*1.0/n << std::endl;

    return 0;
}
