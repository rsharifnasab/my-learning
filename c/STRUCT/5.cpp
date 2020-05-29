#include <iostream>


struct Student {
    const char *name = nullptr;
    int id = 10; // default
    Student *next;
};

void printStudentByPointer(Student* s){
    std::cout << "printing student with name : " << s->name << '\n';
    std::cout << "id = " << s->id << "\n";
    std::cout << '\n';
}

int main(){
    Student *s1 = new Student;
    *s1 = {"ali",1,NULL};
    printStudentByPointer(s1);



    Student *s2 = new Student;
    s1->next = s2;
    *( s2 ) = {"taghi",2,NULL};
   *( (*s1).next ) = {"taghi",2,NULL}; // ya in ya paeenei
    *( s1->next ) = {"taghi",2,NULL};
    printStudentByPointer(s1->next);


    s1->next->next = new Student;
//    *( *( (*s1).next ).next ) = {"naghi",3,NULL};
    *( s1->next->next ) = {"naghi",3,NULL};
    printStudentByPointer(s1->next->next);


    Student *temp = new Student;
    *temp = {"roozbeh",4,NULL};
    s1->next->next->next = temp;
    printStudentByPointer(s1->next->next->next);


    return 0;
}
