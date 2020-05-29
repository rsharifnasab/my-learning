#include <iostream>
int main(){
	int a = 1;
	double b = 2.1;
	void* p = NULL; // can point to eveytihng!
	p = &a; // point to int
	p = &b; // point to double

//	std::cout << *p << std::endl; // compile error
	std::cout << *(  (double*) p  ) << std::endl;

	return 0;
}
