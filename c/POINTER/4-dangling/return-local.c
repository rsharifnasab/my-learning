#include <stdio.h>

int* f(){
	int x = 2;
	int *p = &x;
	*p = 12;
	return p; // no warning!
}


int main(){
	int *p = f(); // dangling!
        printf("%p\n",p);
        printf("%d\n",*p);

	return 0;
}
