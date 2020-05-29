#include <iostream>
using namespace std;

int* arrayMaker (int size){
	int *p = new int[size];
	return p;
}

int main(){
	int *p = arrayMaker(3);
	cin >> *(p+0);
	cout << p[0] << endl;
	cin >> *(p+1);
	cout << p[1] << endl;
	cout << "un initialized value is " <<  p[2] << endl;
	
	return 0;
}