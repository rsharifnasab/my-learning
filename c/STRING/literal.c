#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void f1(){
    char *str = "warning and run time error!";
    str[0] = 'a'; // this cause run time error
    printf("%s\n", str);
}

void f2(){
    char const *str = "compile error but safe";
    // str[0] = 'a'; 
    // this is compile error
    printf("%s\n", str);
}

void f3(){ // better way heap
    char *str = (char*) calloc(100, sizeof(char));
    strcpy(str, "better way strcpy heap");
    str[0] = 'B';
    printf("%s\n", str);
    free(str);
}

void f4(){ // better way stack 
    char str [100];
    strcpy(str, "better way strcpy stack");
    str[0] = 'B';
    printf("%s\n", str);
}

int main(int argc, char *argv[])
{

    f2();
    f3();
    f4();
    f1();
    return 0;
}
