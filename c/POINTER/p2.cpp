#include <iostream>
using namespace std;
int main(){
	// int *p = &a; // it now points to location of a
	int *p = new int;

	cout << "p address is memmory : "<< p << endl; // it prints location of a 

	cout << " enter a value for p " << endl;
	cin >> *p ;
	cout << " value of p is : " << *p << endl;
	cout << " address of p is still : " << p << endl;
	return 0;
}