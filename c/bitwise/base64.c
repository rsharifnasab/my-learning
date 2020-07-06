#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

struct Base64{
    unsigned int value : 7; // 6+1
};

char b64represent(struct Base64 inp){
    if(inp.value <26) return 'A' + inp.value;
    else if(inp.value <52) return 'a' + inp.value-26;
    else if(inp.value <62) return '0' + inp.value-52;
    else if(inp.value == 62) return '+';
    else if(inp.value == 63) return '/';
    else return '='; //end
}

char *rtrim(char *str)
{
    const char* seps = "\t\n\v\f\r ";
    int i = strlen(str) - 1;
    while (i >= 0 && strchr(seps, str[i]) != NULL) {
        str[i] = '\0';
        i--;
    }
    return str;
}

int getNumberOfEquals(int len){
    switch(len % 3){
        case 0: return 0;
        case 1: return 2;
        default: return 1;
    }
}

char *encode(char *in){
    in = rtrim(in);
    int len = strlen(in);
    int equalsNum = getNumberOfEquals(len);
    int b64len = ceil(4./3.*len)+ equalsNum;
    struct Base64 *bArr = calloc(b64len, sizeof(struct Base64));
    
    int j = 0;
    for (int i = 0; i < len; i+=3) {
        /* 123456-78 1234-5678 12-345678 */
        bArr[j+0].value = (in[i+0]&0b11111100) >>2;
        bArr[j+1].value = (in[i+0]&0b00000011) <<4 | (in[i+1]&0b11110000)>>4;
        bArr[j+2].value = (in[i+1]&0b00001111) <<2 | (in[i+2]&0b11000000)>>6;
        bArr[j+3].value =  in[i+2]&0b00111111;
        j+=4;
    }
    for (int i = j; i >= j-equalsNum; i--) {
        bArr[i].value = 65; //set it to equal
    }

    
    char *out = calloc(b64len+1,sizeof(char));
    for (int i = 0; i < b64len; ++i) {
        out[i] = b64represent(bArr[i]);
    }

    free(bArr);
    return out;
}



char *decode(char *in){
    return NULL;
    // not working by now!

    int len = strlen(in);
    int b64len = ceil(3./4.*len)+ +1;
    char *out = calloc(b64len, sizeof(char));
    
    int j = 0;
    for (int i = 0; i < len; i+=4) {
//        ..TODOOOOO
        /* 123456-78 1234-5678 12-345678 */
        out[j+0] = in[i+0]<<2 | (in[i+1]&0b110000);
        out[j+1] = (in[i+0]&0b00000011) <<4 | (in[i+1]&0b11110000)>>4;
        out[j+2] = (in[i+1]&0b00001111) <<2 | (in[i+2]&0b11000000)>>6;
        j+=3;
    }

    return out;
}

int main(int argc, char *argv[])
{
    char *in = calloc(102, sizeof(char));
    fgets(in,100, stdin);
    char *out = encode(in);

    printf("%s\n",out);


    char *decoded = decode(out);

    free(in);
    free(out);
    free(decoded);
    return 0;
}
