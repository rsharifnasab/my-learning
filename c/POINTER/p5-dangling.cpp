#include <iostream>

int* f(){
	int x = 2;
	int *p = &x;
	*p = 12;
	return p; // no warning!
}


int main(){
	int *p = f(); // dangling!
	std::cout << p << '\n';
	std::cout << *p << '\n';

	return 0;
}
