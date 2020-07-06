#include <iostream>
void f(int* p){
	std::cout << "in function" << std::endl;
	std::cout << "p : " << p << std::endl;
	*p = 4; 
}

void f(int a){
	a = 3;
}


int main(){
	int a = 2;
	f(a);

//	scanf("%d",&a);
	
	f(&a);
	std :: cout << "&a : " << &a << std::endl;

	std :: cout << "a : " << a << std::endl;

	return 0;	 	 
	
}
