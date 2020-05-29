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

    Student *studentList = new Student[4];
    studentList[0].name = "ali alavi";
    studentList[0].age = 17;

    studentList[1]->name = "taghi taghavi";
    studentList[1]->age = 18;

    printStudentByPointer(    );
    printStudent(   );




    studentList[2].name = "naghi naghavi";
    studentList[2].age = 19;

    studentList[3].name = "ali alavi"; // again ali alavi
    studentList[3].age = 17;

    return 0;
}
