#include <iostream>

int main(){
	char *s = "abc";
	s[3] = 'd';

	std::cout << s << '\n';
	return 0;
}
