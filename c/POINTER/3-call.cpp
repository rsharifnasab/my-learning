#include <iostream>

void setZeroByPointer(int* p){
	*p = 0;
}
void setZeroByRefrence(int &i){
	i = 0;
}
void setZeroByValue(int v){ // is it works?
	int *p = &v;
	*p = 0;
}
/*************************/
void setNull1(int *a) {
	a = NULL;
}
void setNull2(int *&a) {
	a = NULL;
}
void setNull3(int **a) {
	*a = NULL;
}
/******************************/
int main(){
	int i1 = 1;
	setZeroByPointer(&i1); // attention to calling, it's like scanf
	std::cout << i1 << '\n';

	int i2 = 2;
	setZeroByRefrence(i2);
	std::cout << i2 << '\n';

	int i3 = 3;
	setZeroByValue(i3);
	std::cout << i3 << '\n';
/*************************/
	int *i4_ptr;
	setNull1(i4_ptr); // by pointer or value?
	std::cout << i4_ptr << '\n';

	int *i5_ptr; // by refrence!
	setNull2(i5_ptr);
	std::cout << i5_ptr << '\n';

	int *i6_ptr; // by pointer!
	setNull3(&i6_ptr); // watchout the calling
	/*
		ya hamchenin:
		int **p = &i6_ptr;
		setNull3(p);
	*/
	std::cout << i6_ptr << '\n';

	return 0;
}
