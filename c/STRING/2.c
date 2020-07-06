#include <stdio.h>
#include <stdlib.h>

char toLowerChar(char c){
  if(c <= 'Z' && c >= 'A'){
    return c + 'a' - 'A';
  }
  else return c;
}

int stringLength(char* s){
	int len = 0;
	for(len = 0; s[len] != '\0'; len++) { }
	return (len);
}

char* toLowerArr(char* a){
  int len = stringLength(a);
  char *ans = malloc( (len+1) * sizeof(char));

  for (int i = 0; a[i] != '\0' ; i++) {
    ans[i] = toLowerChar(a[i]);
  }
  ans[len] = '\0';

  return ans;
}



int main(int argc, char const *argv[]) {
      char* a = malloc(1001*sizeof(char));
      fgets(a,1000,stdin);

      char* b = malloc(1001*sizeof(char));
      fgets(b,1000,stdin);

      for (int i = 0; a[i] != '\0'; i++) {
        int count = 0;
        for (int = 0; b[j] != '\0' && a[i+j] != '\0'; j++) {
          if(a[i+j] == b[j]) count++; // ))((
        }
        if(count == len(b)){
          for (int = 0; b[j] != '\0'; j++) {
            a[i+j] = '*';
          }
        }
      }

      /*
-----------------
([ )
------------------

      */


    return 0;
}
