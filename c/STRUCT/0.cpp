#include <iostream>

struct Student {
      int age;
      double average;
      const char* name;
};


struct{
      int x;
      int y;
      bool isPressed;
} mouse;



int main(){
      // using old fashioned mouse :
      int mouse_x , mouse_y;
      bool mouse_isPressed;

      // using old fashioned student :
      double s1_average = 12;
      int s1_age = 18;
      const char *s1_name = "ali alavi";



      Student s1;
      s1.age = 12;

      if(mouse.isPressed){

      }
      mouse.x = 2;



      return 0;
}
