#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(){

	int *p1 = (int*) malloc(sizeof(int));
        *p1 = 5;
        printf("  p1 is %p\n",p1);
        printf(" *p1 is %d\n",*p1);
        free(p1);

	sleep(4.5);
	
        printf("  p1 is %p\n",p1);
        printf(" *p1 is %d\n",*p1);
	*p1 = 5;
        printf(" *p1 is %d\n",*p1);

	return 0;
}
