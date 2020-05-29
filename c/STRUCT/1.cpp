#include <iostream>
using namespace std;
struct Student {
    int age = 10; // default
    double average = 0;
    const char *name = nullptr;
};

void setAverage( Student & s ){
    s.average = 10;

}


void printStudent( Student s){
    cout << " im printing sudent" << endl;
    cout << s.name << endl;
    cout << s.age << endl;
    cout << s.average << endl;
}



int main(){

    Student a;
    a.age = 19;
    a.name = "old name of ali alavi";
    a.name = "Ali alavi";

    printStudent(a);


    Student b = {18,  12.5, "taghi taghavi"}; // intori meghdar bedim
    printStudent(b);

    setAverage(b);

    std::cout << "after set average, b : " << '\n';
    printStudent(b);


    return 0;
}
