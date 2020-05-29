#include <iostream>
using namespace std;

int stringLength(char* s){
	int len = 0;
	for(len = 0; s[len] != '\0'; len++) { }
	return (len);
}

int main(){
	char *s ;
	s = new char(50);
	scanf("%s",s);
	cout << "len is " << stringLength(s) << endl;
	return 0;
}