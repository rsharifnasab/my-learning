#include <iostream>
#include <stdlib.h>


int* makeArray(int n){
	int *p = new int[n];
	return p;
}

void makeFree(int *& p){ // call by refrence of pointer
	delete p; // how it knows the size?
	p = nullptr; // make it null
}

int main(){
	int n = 3;
	int *p = makeArray(n);
	// initialize pointer

	p[0] = 0; // no problem to do anything
	p[1] = 1;

	makeFree(p); // we should pass n?

	std::cout << "p is " << p << '\n'; // its null now

	return 0;

}
