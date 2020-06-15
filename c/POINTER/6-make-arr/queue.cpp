#include <iostream>
#include <stdlib.h>

/*
 * QUEUE
   p ->  []

   e a 
   p ->  [a]


   e b 
   p -> [ a,b ] 

   d 
   p -> [b]


*/


char *c = NULL;
int n =0;


void enqueue(char value){
  char *temp = (char*) malloc((n+1) * sizeof(char)); // make new array
  for (int i = 0; i < n; i++) {
    temp[i] = c[i]; // transfer new values
  }
  temp[n] = value; // oun akhari
  n++; // tool yeki ziad shod

  free(c); // oun ghadimie 
  c = temp; // point to the new array
}


char dequeue(){
  char *temp = (char*) malloc( (n-1) * sizeof(char)); // make new array
  for (int i = 0; i < n-1; i++) {
    temp[i] = c[i+1]; // transfer new values
  }
  char value = c[0]; // oun avali
  n--; // tool yeki kam shod

  free (c);
  c = temp; // be tartib esh deghat konid

  return value;
}

int main(){
  enqueue('1');
  enqueue('2');
  enqueue('3');
  std::cout << dequeue() << '\n';
  std::cout << dequeue() << '\n';
  std::cout << dequeue() << '\n';
  return 0;
}
