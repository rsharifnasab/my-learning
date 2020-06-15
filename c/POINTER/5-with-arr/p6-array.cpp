#include <iostream>

int main(){
	int arr[10] = {1,2,3,4,5,6,7,8,9,10};
	int *p = arr;
	std::cout << *p << '\n';
	p++;
	std::cout << *p << '\n';

	p+=2;
	std::cout << *p << '\n';

	std::cout << p[-2] << '\n'; // p + 3 - 2 = p[1]

	std::cout << *p << '\n';

	return 0;
}
