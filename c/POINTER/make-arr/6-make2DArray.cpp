#include <iostream>
#include <stdlib.h>


void makeArray(int **& p,int n,int m){// it is void,
	p = new int*[n];
	for (int i = 0; i < n; i++) {
		p[i] = new int[m];
	}
}


void makeFree(int **& p,int n){ // call by refrence of pointer
	for (int i = 0; i < n; i++) {
		delete p[i];
	}
	delete p; // how it knows the size?
	p = nullptr;
}

int main(){
	int n = 3, m=4;
	int **p;
	makeArray(p,n,m);
	// initialize pointer

	p[0][1] = 0; // no problem to do anything
	p[2][2]= 1;

	makeFree(p,n); // we should pass m?

	std::cout << "p is " << p << '\n'; // its null now

	return 0;

}
