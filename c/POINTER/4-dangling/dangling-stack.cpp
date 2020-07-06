#include <iostream>
#include <stdlib.h>
#include <unistd.h>

int* stack(){
	int x = 2; // in this scope's stack
	int *p = &x;
	return p;
} // return a pointer to a random place in stack

int* heap(){
	int *p = new int; // in heap
	*p = 2;
	return p;
} // return a pointer to 4 byte in heap

int main(){

	int *p1 = NULL;
	
	//p1 = stack(); // dangling?
	p1 = heap();
	sleep(1.5);
	std::cout << *p1 << std::endl;
	*p1 = 5;
	sleep(1.5);
	std::cout << *p1 << std::endl;

	delete p1; // necessary?

	return 0;
}
