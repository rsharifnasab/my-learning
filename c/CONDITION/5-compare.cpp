// fix 1<=a<=10 error
#include <iostream>
int main(){

	int a;
	std::cin >> a;

	// we want to check if its between 5,10 or not;

	if(5<=a<=10){
		std::cout << "the wrong if is true" << std::endl;
	}

	if(5<=a && a<=10){
		std::cout << "it is really in bound" << std::endl;
	}



	return 0;
}
