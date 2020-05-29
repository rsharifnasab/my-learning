#include <iostream>
using namespace std;

int main(){
	char my_char;
	cin >>  my_char;

	cout << "you char is : " << my_char << endl;

	int asci_code = my_char;
	cout << "ascii code of your char is : " << asci_code << endl;

	int asci_code_2 =  (int) my_char;
	cout << "and again ascii code of your char is : " << asci_code_2 << endl;

	return 0;
}
