// constant and unsinged!
#include <iostream>
int main(){

	signed int a = 0; // no need! int a is enough
	unsigned int b = 1;

	if(b > -1){ // it should be true but..!
		std::cout << "b is greater than -1" << std::endl;
	} else{
		std::cout << "not" << std::endl;
	}

	const double pi = 3.1415926; // it never change!

	 pi++; // compile error

}
