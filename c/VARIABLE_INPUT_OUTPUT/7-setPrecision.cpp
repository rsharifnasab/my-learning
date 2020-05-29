#include <iostream>
#include <iomanip> // we should include this for using setprecision
using namespace std;
int main(){

	const double pi = 3.1415926D;
	cout << "this is normal pi : " << pi << endl;
	cout << "printing pi with fixed and setprecision : " ;
	cout << fixed << setprecision(3) << pi << endl;

	return 0;
}
