//how to handle IEEE error
#include <iostream>
int main(){
	double d1 = 0.1;
	double d2 = 0.2;
	double d3 = 0.3;

	// tehe wrong solution
	if(d1 + d2 == d2)
		std::cout << "same" << std::endl;
	else
		std::cout << "not same" << std::endl;

	// the correct solution
	const double epsilon = 0.0001; // minimum fasele to make sure they are equal
	double fasele = (d1 + d2) - d3;
	if ( -epsilon  < fasele && fasele < epsilon ) // magical if!
		std::cout << "equal" << std::endl;
	else
		std::cout << "not equal" << std::endl;


	return 0;
}
