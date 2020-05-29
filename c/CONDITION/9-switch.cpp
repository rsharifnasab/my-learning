// or in swtich case
#include <iostream>
int main(){

	char a;
	std:: cin >> a;

	switch(a){

		case 'A':
		case 'E':
		case 'I':
		case 'O':
		case 'U':
			std::cout << "uppercase ";

		case 'a':
		case 'e':
		case 'i':
		case 'o':
		case 'u':
			std::cout << "vowel" << std::endl;
			break;

		default:
			std::cout << "consonant" << std::endl;
	}


	return 0;
}
