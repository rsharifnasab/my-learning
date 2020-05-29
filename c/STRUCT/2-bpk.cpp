#include <iostream>

struct Student {
    int age = 10; // default
    double average = 0;
    const char *name = nullptr;
};


void printStudentByPointer(Student* s){
    std::cout << "printing student with name : " << s->name << '\n';
    if (s->average > 0.1 )
        std::cout << "his/her average is : " << s->average << '\n';
    std::cout << "he/she is " << s->age << " years old" << '\n';
    std::cout << '\n';
}

void printStudent(Student s){
    std::cout << "printing student with name : " << s.name << '\n';
    if (s.average > 0.1 )
        std::cout << "his/her average is : " << s.average << '\n';
    std::cout << "he/she is " << s.age << " years old" << '\n';
    std::cout << '\n';
}


int main(){

    Student *a;
    a = new Student;
    (*a).age = 20;
    (*a).name = "roozbeh";
    (*a).average = 16;

    printStudent(*a);
    /*
    note that *a is an student
    so (*a).age is valid
    */


    Student *b = new Student;
    b->age = 21;
    b->name = "another roozbeh";
    b->average = 17;

    // it is same as above!
    // just another syntactic sugar

    printStudentByPointer(b);

    return 0;
}
