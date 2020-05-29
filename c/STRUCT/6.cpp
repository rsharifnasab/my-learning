#include <iostream>


struct Student {
    const char *name = NULL;
    int id = 10; // default
    Student *next = NULL;
};

void printStudentByPointer(Student* s){
    std::cout << "printing student with name : " << s->name << '\n';
    std::cout << "id = " << s->id << "\n";
    std::cout << '\n';
}


/**

for (int i = 0; i < 5; i++) {
    s = s->next
}
// s!


**/


void print(Student *s){


    while (s->next != NULL){ // iteration!
        printStudentByPointer(s);
        s = s->next; // yeki mibare joko
    }
}


char* find(Student *s, int n){
    for (int i = 0; i < n; i++) {
        s = s->next
    }
    return s->name;
}


int main(){
    Student *s1 = new Student;
    *s1 = {"ali",1,NULL};

    s1->next = new Student;
    *( s1->next ) = {"taghi",2,NULL};


    s1->next->next = new Student;
    *( s1->next->next ) = {"naghi",3,NULL};


    Student *temp = new Student;
    *temp = {"roozbeh",4,NULL};
    s1->next->next->next = temp;

    print(s1);

    return 0;
}
