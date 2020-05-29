#include <iostream>
#include <stdlib.h>
#include <unistd.h>
int* stack(){
	int x = 2; // just in this scope
	int *p = &x;
	return p;
}

int* heap(){
	int *p = new int; // not in scope
	*p = 2;
	return p;
}

int main(){

	int *p1 = nullptr;
	p1 = stack();
//	p1 = heap();
	sleep(1.5);
	std::cout << *p1 << std::endl;
	*p1 = 5;
	sleep(1.5);
	std::cout << *p1 << std::endl;


	return 0;
}
