#include <iostream>

struct Student {
    int age = 10; // default
    double average = 0;
    const char *name = nullptr;
};

struct {
    int x;
    int y;
    bool isPressed;
} mouse;
// because we just have one mouse in whole program


int main(){

    Student a;
    a.age = 19;
    a.name = "old name of ali alavi";
    a.name = "Ali alavi";

    // using the global mouse
    mouse.x = 2;
    mouse.y = 3;


    // other way :
    int mouse_x , mouse_y;
    bool mouse_isPressed;
    // do some stuff

    return 0;
}
