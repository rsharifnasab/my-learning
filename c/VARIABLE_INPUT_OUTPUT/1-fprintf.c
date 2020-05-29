#include <stdio.h>
int main(){
    printf("%s\n","this is printing to stdout" );
    fprintf(stdout, "again printing to stdout!\n" );
    fprintf(stderr, "but now im printing to stderr\n");
    return 17;
}
