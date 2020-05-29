#include <iostream>
#include <stdlib.h>

void enqueue(char *&c, int &n, char value){
    char *temp = new char[n+1]; // make new array
    for (int i = 0; i < n; i++) {
        temp[i] = c[i]; // transfer new values
    }
    temp[n] = value; // oun akhari
    n++; // tool yeki ziad shod

    delete c;
    c = temp;
}

char dequeue(char *&c, int &n){
    char *temp = new char[n-1]; // make new array
    for (int i = 0; i < n-1; i++) {
        temp[i] = c[i+1]; // transfer new values
    }
    char value = c[0]; // oun akhari
    n--; // tool yeki kam shod

    delete c;
    c = temp; // be tartib esh deghat konid

    return value;
}

int main(){
    char *c = NULL;
    int n =0;
    enqueue(c,n,'1');
    enqueue(c,n,'2');
    enqueue(c,n,'3');
    std::cout << dequeue(c,n) << '\n';
    std::cout << dequeue(c,n) << '\n';
    std::cout << dequeue(c,n) << '\n';
    return 0;
}
