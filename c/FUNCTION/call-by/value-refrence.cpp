#include <iostream>
using namespace std;


void a(int x) // call by value
{
	x = x + 1 ;
}

void b(int &x) // call by refrence
{
	x = x + 1;
}


int main ()
{
	int aV = 1 ;
	int bV = 1;
	a(aV);
	b(bV);

	cout << " a is " << aV << endl;
	cout << " b is " << bV << endl;

	a(1);
	b(1);

	return 0;
}
