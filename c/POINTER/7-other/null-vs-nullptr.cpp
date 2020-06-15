#include <iostream>

void f(int x){
	std::cout << "called by int" << '\n';
}
void f(int* x){
	std::cout << "called by pointer" << '\n';
}

int main(){
	int *p1 = nullptr; // a null pointer
	std::cout << p1 << '\n';

	int *p2 = NULL; // zero!
	std::cout << p2 << '\n';

	*p2 = 4;


	return 0;
}
