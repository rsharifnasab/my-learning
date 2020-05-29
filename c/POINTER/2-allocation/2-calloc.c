#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

int main(){

	void *p1 = malloc(25 * sizeof(int));
	if (p1 == NULL){
		printf("couldnt allocate memory for p1\n" );
		exit(0);
	}
	void *p2 = calloc(25, sizeof(int)); // serfan zarb ro khodesh..!
	if (p2 == NULL){
		printf("couldnt allocate memory for p2\n" );
		exit(0);
	}

//	free(p1);
//	free(p2);
	// is p1 and p2 null?
	printf("after delete p1 is : %p\n", p1 );
	printf("after delete p2 is : %p\n", p2 );
	// we should make them null
	p1 = NULL;
	p2 = NULL;

	return 0;
}
