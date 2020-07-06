#include <iostream>
using namespace std;
int main(){
	int a;
	cin >> a;
	cout << a << endl;
	cout << "address a hast : " << &a << endl;

	int *p;
	p = &a; // it now points to location of a
	cout << "p is " <<  p << endl; // it prints location of a
	cout << "*p is " << (*p) << endl; // it prints value that p points to (exactly a!)
	return 0;
}
