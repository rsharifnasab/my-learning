#include <iostream>

int main(){
	double d1 = 3.14;
	double *d1_ptr = &d1;
	double **d1_ptr_ptr = &d1_ptr;

	std::cout << "d1         " << d1 << '\n';
	std::cout << "d1 ptr     " << d1_ptr << '\n';
	std::cout << "d1 ptr ptr " << d1_ptr_ptr << '\n';

//	std::cout << " *d1 : " << *d1 << '\n'; //compiler error
	std::cout << " *d1_ptr     " << *d1_ptr << '\n';
	std::cout << " *d1_ptr_ptr " << *d1_ptr_ptr << '\n'; // &d۱
	std::cout << "**d1_ptr_ptr " << **d1_ptr_ptr << '\n';


	return 0;


}

