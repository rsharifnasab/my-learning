#include <iostream>
#include <stdlib.h>

using namespace std;
int main(){
	int *p = new int; // p = (int*) malloc( sizeof(int) );

	cout << "p address is memmory : "<< p << endl; // it prints location of a 

	cout << " enter a value for p " << endl;
	cin >> *p ;
	cout << " value of p is : " << *p << endl;
	cout << " address of p is still : " << p << endl;

	delete p;
	return 0;
}
