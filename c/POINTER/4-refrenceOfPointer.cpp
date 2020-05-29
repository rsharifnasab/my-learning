#include <iostream>
#include <stdlib.h>

void init(int *& p){
	p = new int;
}

void makeFree(int *& p){
	delete p;
	p = nullptr;
}

int main(){
	int *p;
	init(p); // initialize pointer

	// no problem for read and write
	*p = 2;
	std::cout << "*p is : " << *p << '\n';


	makeFree(p);
	std::cout << "p is " << p << " (NULL)\n";

	return 0;

}
