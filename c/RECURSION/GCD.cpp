#include <iostream>

using namespace std;

long gcd(long a, long b) {

    if (b == 0)
        return a;
    return gcd(b,a % b);

}


int main() {
   long number1,number2;
   cin>>number1>>number2;
   cout<<gcd(number1,number2);
}
