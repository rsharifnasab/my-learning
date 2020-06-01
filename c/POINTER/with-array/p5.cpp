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
	cin >> *(1+p);
	cout << 1[p] << endl;
	
	return 0;
}
