#include <iostream>


struct Student {
    const char *name = nullptr;
    int age = 10; // default
    struct{
        double riazi1;
        double adabiat;
        double mabani;
    }score;
};



int main(){

    Student *studentList = new Student[4];
    studentList[0].name = "ali alavi";
    studentList[0].age = 17;
    studentList[0].score = {17,18,19};

    studentList[0] = { "taghi taghavi", 19, {14,15,16} };
    /*
        this is ok too
        studentList[0] = { "taghi taghavi", 19, 14,15,16 };
    */



    return 0;
}
