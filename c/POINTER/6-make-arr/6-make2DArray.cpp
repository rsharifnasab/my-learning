#include <iostream>
#include <stdlib.h>


int **makeArray(int n,int m){
	int **p = (int**) malloc(n * sizeof(int*) );
	for (int i = 0; i < n; i++) {
    p[i] = (int*) malloc( m *  sizeof(int));
  }
  return p;
}

/*****
0: # # # 
1: # 
2: # # # # # # #
3: # # 
*//////

void makeFree(int ** p,int n){ // call by refrence of pointer
	for (int i = 0; i < n; i++) {
    free(p[i] );
	}
  free(p);
}

int main(){
	int n = 3, m=4;
	int **p = makeArray(n,m);
	// initialize pointer

	p[0][1] = 0; // no problem to do anything
	p[2][2]= 1;

	makeFree(p,n); // we should pass m?

	std::cout << "p is " << p << '\n'; // its not null now

	return 0;

}
