// scoping in if
#include <iostream>
int main(){

	int a = 1 ;
	if( 1==a ){
		int a = 2;
		int b = 3;
		std::cout << "in if a is  : " << a << std::endl;
	}
	std::cout << "outside if, a is  : " << a << std::endl;

	std::cout << "what about b?" << b << std::endl;


	return 0;
}
