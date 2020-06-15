#include <stdio.h>
#include <stdlib.h>

char enc(char c,int key){ // harf small
  int x = c - 'a';
  int ans = (x+key)%26;
  return ans + 'a';
}

int main(int argc, char const *argv[]) {
    char command;
    scanf(" %c\n",&command);
    int key;
    scanf("%d\n", &key);

    if(command == 'D') key -=1;


    char* a = malloc(1001*sizeof(char));
    fgets(a,1000,stdin);

    for (int i = 0; a[i] != '\0'; i++) {
      a[i] = enc(a[i],key);
    }

    printf("%s\n",a );


    return 0;
}
