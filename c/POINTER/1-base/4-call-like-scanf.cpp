#include <iostream>
int f(int* p){
	std::cout << "in function" << std::endl;
	std::cout << "p : " << p << std::endl;
	std::cout << "*p " << *p << std::endl; 
	return (*p);
}

int main(){
	int a = 2;
	int b = f(&a);
	std :: cout << "&a : " << &a << std::endl;

	std :: cout << "b : " << b << std::endl;

	return 0;	 	 
	
}