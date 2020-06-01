#include <stdio.h>
#include <stdlib.h>


int* makeArray(int n){
	int *p = (int*) malloc(n * sizeof(int) );
	return p;
}

void makeFree(int * p){ // call by refrence of pointer
	free(p); // how it knows the size?
}

int main(){
	int n = 3;
	int *p = makeArray(n);
	// initialize pointer

	p[0] = 0; // no problem to do anything
	p[1] = 1;

	makeFree(p); // we should pass n?
        p = NULL;


	return 0;

}
