#include <iostream>
#define up 200001
int main(){
	int low,high,n;
	scanf("%d %d %d",&n, &low, &high);
	int db[up];
    for (int i = 0; i < up; i++){
        db[i] = 0; // make array of zeros
    }
    
	for(int i=0;i < n;i++){
		int temp;
		scanf("%d",&temp); // get input
		db[temp]++; // O(n)
	}

	for( int i =0; i < up; i++){
		for(int j =0; j<db[i]; j++)
			printf("%d ",i); // print O(n)
	}
	printf("\n");

	return 0;
}
