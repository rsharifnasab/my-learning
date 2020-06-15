#include <iostream>

struct Student {
    int age = 10; // default
    double average = 0;
    const char *name = nullptr;
};


void printStudent(Student s){
    std::cout << "printing student with name : " << s.name << '\n';
    if (s.average > 0.1 )
        std::cout << "his/her average is : " << s.average << '\n';
    std::cout << "he/she is " << s.age << " years old" << '\n';
    std::cout << '\n';
}


int main(){

    Student a;
    a.age = 19;
    a.name = "old name of ali alavi";
    a.name = "Ali alavi";
    // no average!
    //std::cout << a << '\n';
    printStudent(a);


    Student b = {18,  12.5, "taghi taghavi"};
    printStudent(b);

    return 0;
}
