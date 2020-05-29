#include <iostream>
#include <stdlib.h>
#include <limits.h>

int main(){
	int n = 10;
	//n = 2000000000; // kheliii

	int *p;
	void* v = malloc(5);

	p = (int*) malloc(n * sizeof(int)); // void* return mikone

	if (p==NULL) {
		std::cout << "couldnt allocate" << '\n';
	}
	else{
		// ok
		std::cout << "ok, memory allocated succesfully" << '\n';
	}

	printf("press anything to continue\n");
	scanf("\n");

	free(p);

	return 0;

}
