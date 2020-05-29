//no double in switch case
#include <iostream>
int main(){

	double a = 0.3; // is it really 0.3?

	switch( (int) a ){ // comile error

		case 0.3 :
			std::cout << "it is really 0.3!" << std::endl;
			break;

		default:
			std::cout << "case default" << std::endl;

	}



	return 0;
}
