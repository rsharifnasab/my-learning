#include <iostream>
#include <stdio.h>
// input < 30
int printJadvalZarb(int n){
    int k = 0;
    // manfi - 0 - ashari
    for (int i = 1; i <= n ; i++) {
        for( int j=1; j<=n; j++){
            printf("%d\t", i*j );
            k++;
        }
        printf("\n");
    }
    return k;
}

int main(){

    int n;
    std::cin >> n;
    printJadvalZarb(n);

    return 0;
}
