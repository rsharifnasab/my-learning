#include <iostream>
using namespace std;

int* stackPointerReturner(int input){
	int a = input;
	return &a;
}

int* heapPointerReturner(int input){
	int *p = new int;
	*p = input;
	return p;
}

int main(){
	int *p1 = stackPointerReturner(12);
	int *p2 = heapPointerReturner(13);

//	cout << *p1 << endl; // yeah this is dangling pointer now!
	cout << *p2 << endl;
	delete p2;
	
	return 0;
}
