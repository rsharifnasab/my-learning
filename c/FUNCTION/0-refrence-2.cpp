#include <iostream>
int main(){
	int a = 2;
	const int&b = a;
	std::cout << b << std::endl;
	a++;
	std::cout << b << std::endl;
	return 0;
	
}