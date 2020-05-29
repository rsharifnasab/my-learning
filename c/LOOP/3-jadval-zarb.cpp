#include <stdio.h>

int main(){

    const int n = 8;

    for (int i = 1; i <= n; i++) {

        for (int j = 1; j <= n; j++) {
                //if (i<j) continue;
                printf("%3d ", i*j );
        }

        printf("\n");
    }

    return 0;
}
