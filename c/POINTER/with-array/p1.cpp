#include <iostream>

int main(){
	int z = 2;
	int* p1 = &z;

	printf("p1 = %p\n",p1); // %p
	printf("%p value =%d\n",p1, *p1);

	std::cout << "\n*p =  *p + 1\n\n";
	(*p1)++; // *p1 = *p1 + 1
	std::cout << "p1 is pointing to this address : " << p1 << '\n';
	std::cout << "the value of " << p1 << " is " << *p1 << '\n';


	return 0;
}
