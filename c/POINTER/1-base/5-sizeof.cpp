#include <iostream>

int main(){
	double d1;
	double *d1_ptr = &d1;
	std::cout << "size of d1:" << sizeof(d1) << '\n';
	//double size = 8 byte
	std::cout << "size of d1 ptr:" << sizeof(d1_ptr) << '\n';
	// 64 bit system, pointer size : 64 / 8  = 8 byte


	bool i1;
	bool *i2 = &i1;
	std::cout << "size of i1:" << sizeof(i1) << '\n';
	// int size : 4 byee
	std::cout << "size of i1 ptr:" << sizeof(i2) << '\n';
	// int* size = 8


	return 0;
}
