#include <iostream>

bool is_prime(int n, int q = 2){
	if (n < 2) return false; // n
	if (n == q) return true; // q = 2 to n-1
	if (n % q  == 0 ) return false;
	return is_prime(n,q+1);
}

int main(){

	int n;
	std::cin >> n;
	std::cout << (is_prime(n)?"Yes":"No") << std::endl;

	return 0;
}
