#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define BUF_SIZE 100
#define DEBUG_MODE 0

char* get_num(){
    char *buf = calloc(sizeof(char), BUF_SIZE+2);
    if(buf == NULL){
        printf("error happened in allocating memory\n");
    }
    fgets(buf, BUF_SIZE+1, stdin); //get input
    buf[strcspn(buf, "\r\n")] = 0; //trim
    return buf;
}

int max(int a, int b){
    if(b>a) return b;
    return a;
}

void print_answer(int arr[], int len){
    int biggest_num = 0;
    for (int i = len-1; i >= 0; --i) {
        biggest_num = max(biggest_num, arr[i]);
        if(biggest_num == 0) continue;
        printf("%d", arr[i]);
    }
    if(biggest_num == 0) 
        printf("0");
    printf("\n");
}
int char2digit(char c){
    return c-'0';
}

int* multiply_digit(char digit, char* number){
    int* ans = calloc(sizeof(int), 2*BUF_SIZE);
    int len = strlen(number);
    int db1 = 0; // dah bar 1
    for (int i = 0; i < len; ++i) {
        db1 += char2digit(digit) * char2digit(number[len-i-1]);
        ans[i] = db1%10;
        db1 /= 10;
    }
    ans[len] = db1;
#if DEBUG_MODE
    printf("%c * %s would be:\n", digit, number);
    print_answer(ans, 2*BUF_SIZE);
    printf("------\n");
#endif
    return ans;
}

void sum(int ans[], int ans_digit[], int start){
    int db1 = 0;
    for (int i = 0; i < 2*BUF_SIZE-start ; ++i) {
        db1 = db1 + ans[i+start] + ans_digit[i];
        ans[i+start] = db1 % 10;
        db1 /= 10;
    }
}

int main(int argc, char *argv[])
{
    char *num1 = get_num();
    char *num2 = get_num();
#if DEBUG_MODE
    printf("%s * %s\n", num1, num2);
#endif
    int ans[BUF_SIZE*2] = {0}; // initialize array to zero
 
    int len = strlen(num1);
    for (int i = 0; i < len; ++i) {
        int *ans_digit = multiply_digit(num1[len-i-1], num2);
        sum(ans, ans_digit, i);
        free(ans_digit);
    }

    print_answer(ans, sizeof(ans)/sizeof(ans[0]));
    free(num1);
    free(num2);
    return 0;
}
