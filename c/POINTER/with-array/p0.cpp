#include <iostream>

int main(){

	int arr[] = {0,1,2,3,4,5,6,7,8,9,10};
	std::cout << 1[arr] << '\n';

	// what is the compiler error?
	// is there any syntax sugar?





	int *p = arr;
	std::cout << 2[p] << '\n';

	return 0;
}
