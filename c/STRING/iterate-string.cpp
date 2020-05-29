#include <iostream>
using namespace std;


bool isNum(char c){
	char sefr = '0';
	char noh = '9';
	if (c <= noh && c >= sefr) return true;
	else return false;
}

void forInString(char* s){
	int len = 0;
	for(len = 0; s[len] != '\0'; len++) { }
	// now we have len
	for(int i =0; i < len ; i++){
		cout << s[i] << endl;
		cout << isNum(s[i]) << endl;
		cout << isNum(s[i])?"is num":"not num" << endl;
	}
}

int main(){
	char *s ;
	s = new char(50);
	scanf("%s",s);
	forInString(s);
	return 0;
}