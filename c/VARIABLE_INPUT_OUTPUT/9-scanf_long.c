#include <stdio.h>
int main(){

	char e; 
	printf("scanning a char : \n");
	scanf("%c",&e);

	
	int a;
	printf("scanning an int: \n");
	scanf("%d",&a);
	
	long int b;
	printf("scanning an long int: \n");
	scanf("%ld",&b);
		
	float c ;
	printf("scanning an float: \n");
	scanf("%f",&c);

	double d;
	printf("scanning a double: \n");
	scanf("%lf",&d);


	printf("your int was : %d ,\nyour long int was %ld ,\nyour float was %f\nyour double was %lf,\nyour char was : %c\n",a,b,c,d,e);
		
	return 0;
}