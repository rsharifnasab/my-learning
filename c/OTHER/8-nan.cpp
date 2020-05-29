//division by zero and not a number
#include <iostream>
int main(){
	double a = 1;
	double b = 1-1;

	double c = a/b;
	std::cout << "1/0 is : " << c << std::endl;

	double d = b/b;
	std::cout << "0/0 is : " << d << std::endl;

	return 0;
}
