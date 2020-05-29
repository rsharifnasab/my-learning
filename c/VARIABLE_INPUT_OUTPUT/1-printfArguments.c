#include <stdio.h>

int main(){

	printf("hello to this program"); // greeting to the user

	int my_age = 2020 - 2001;
	printf("your age is : %d\n",my_age); // d for decimal

	double pi = 3.1415926F;

	printf("pi with default precision is : %lf\n",pi);
	printf("pi with 3 digits after precision : %.3lf\n" , pi);


	double toolani = 123456789.0123456789D; // this is dfouble literal
	printf("my long number with 4 digit : %.4lf\n" , toolani); // lf for double

	char my_char = 'R';
	printf("my character is : %c ", my_char); // c for character

	

	return 0;

}
