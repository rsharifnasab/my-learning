#include <stdio.h>
int main(){

	int a = 10;
	a++; // a = 11
	printf("a +1 : %d \n" , a );
	a--; // a = 10

	printf(" a is : %d\n",a);

	int b = a++;  // a = 11  b = 10
	printf("new a is : %d , b is : %d \n",a,b);

	a = 10 ;
	int c = ++a; // a = 11 , c = 11
	printf("a = %d , c = %d \n",a,c);



	return 0;

}
