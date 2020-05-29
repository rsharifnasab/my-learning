#include <iostream>
int main(){
	int a = 1;
	double b = 2.1;
	void* p = &a;
	//p = &b;

	//std::cout << *p << std::endl;
	std::cout << *(  (double*) p  ) << std::endl;


	return 0;
}
