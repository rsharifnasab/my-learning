#include <iostream>
#include <stdlib.h>

int main(){

	// stack
	// int i
	// array [50][50]
	// ba'desh? naboud?
	//
	// heap
	// by programmer
	// int *p = malloc( 4 );
	// free()
	// age free nakonim?
	// memory leak
	//
	
	void* v = malloc(5); // 5 byte
	free(v);
	v = malloc(5);
	free(v);
	v = malloc(5);
	free(v);
	// memory leak


	int *p = (int*) malloc(sizeof(int)); // void* return mikone
	// cast from void* to int*

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
