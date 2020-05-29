#include <iostream>

// TODO : struct of student type
struct Student{
    int age;
    double average;
    const char* name;
};


// TODO : struct of ONE mouse
struct{
    int x;
    int y;
    bool isPressed;
} mouse;



int main(){
    Student s1;
    s1.age = 12;
    
    if(mouse.isPressed){

    }
    mouse.x = 2;


    // using old fashioned mouse :
    int mouse_x , mouse_y;
    bool mouse_isPressed;

    // using old fashioned student :
    double s1_average = 12;
    int s1_age = 18;
    const char *s1_name = "ali alavi";


    return 0;
}


/*
const int *const p = new int;
*p = 2;
//p = new int;
*/
