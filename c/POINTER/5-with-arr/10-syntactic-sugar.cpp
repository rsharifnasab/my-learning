#include <iostream>

int main(){

	int arr[] = {0,1,2,3,4,5,6,7,8,9,10};

	int *p = arr;
	//           arr[1]
	std::cout << p[1] << '\n'; // 1
	std::cout << *(p+1) << '\n';
	std::cout << *(1+p) << '\n';
	std::cout << 1[p] << '\n'; // syntax sugar!
	// *(1+p)




	return 0;
}
