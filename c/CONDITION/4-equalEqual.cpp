//fix a=2 error in condiotioning
#include <iostream>
int main(){

	// just a random fact:
	int z,x,c;
	z = x = c = 5; // all of them are 5;

	int a;
	std::cin >> a;


	if(a=2){ // wrong if
		std::cout << "we think a is 2!" << std::endl;
	}

	if(2==a){ // good if!
		std::cout << "a is really 2" << std::endl;
	}

	if(2=a){} // this will never run because of compile error

	return 0;
}
