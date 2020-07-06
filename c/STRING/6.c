#include <stdio.h>
#include <stdlib.h>

struct point{
  int x;
  int y;
};

struct rect{
  struct point[4];
}


int main(int argc, char const *argv[]) {
  struct user d;
  d.email = malloc(1000 * sizeof(char));
  d.password = malloc(1000 * sizeof(char));

  fgets(d.email,1000,stdin);
  fgets(d.password,1000,stdin);
  // encryption
  scanf("%d\n",&age);

  struct user test;
  test.email = malloc(1000 * sizeof(char));
  test.password = malloc(1000 * sizeof(char));
  fgets(test.email,1000,stdin);
  fgets(test.password,1000,stdin);
  // encryption

  // check string equals



    for (int i = 0; a[i] != '\0'; i++) {
      a[i] = enc(a[i],key);
    }

    printf("%s\n",a );


    return 0;
}
